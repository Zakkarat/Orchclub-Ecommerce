const chai = require("chai");
const chaiHttp = require("chai-http");
const app = require("../app");
const { pool } = require("../db/config");

chai.use(chaiHttp);
chai.should()

describe("/GET orders/userOrders", () => {
    it("Checks if token threw an error", (done) => {
        chai
            .request(app)
            .get(`/orders/userOrders`)
            .set("Cookie", `UID=${process.env.token};`)
            .end((err, res) => {
                res.status.should.be.equal(400);
                res.should.have
                    .property("text")
                    .that.eql("Invalid token, please log in again");
                done();
            });
    });
});

describe("/POST orders/createOrder", () => {
    it("Checks if token threw an error", (done) => {
        chai
            .request(app)
            .post(`/orders/createOrder`)
            .end((err, res) => {
                res.status.should.be.equal(400);
                res.should.have
                    .property("text")
                    .that.eql("Invalid token, please log in again");
                done();
            });
    });

    it("Checks a success ordering", (done) => {
        chai
            .request(app)
            .post(`/orders/createOrder`)
            .set("Cookie", `UID=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjE3LCJpYXQiOjE2MDQ1ODY1OTl9.K2uZnEpFUvfyFzdU3GkkbWBFZKSQbKtzgCfbagb_K9s;`)
            .send({
                user: "Merilend",
                deliveryInfo: {
                  deliveryType: "1",
                  takeAway: "0",
                  NPdepartment: "2",
                  paymentDetails: "1",
                },
                overall: "9999",
                cart: [
                  {item: "1", quantity: 99}
                ],
            })
            .end((err, res) => {
                res.status.should.be.equal(200);
                done();
            });
    });


    it("Checks a success ordering without takeAway and NPDepartment", (done) => {
        chai
            .request(app)
            .post(`/orders/createOrder`)
            .set("Cookie", `UID=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjE3LCJpYXQiOjE2MDQ1ODY1OTl9.K2uZnEpFUvfyFzdU3GkkbWBFZKSQbKtzgCfbagb_K9s;`)
            .send({
                user: "Merilend",
                deliveryInfo: {
                    deliveryType: "1",
                    paymentDetails: "1",
                },
                overall: "8888",
                cart: [
                    {item: "2", quantity: 88}
                ],
            })
            .end((err, res) => {
                res.status.should.be.equal(200);
                done();
            });
    });

});
