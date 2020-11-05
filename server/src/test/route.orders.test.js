const chai = require("chai");
const chaiHttp = require("chai-http");
const { pool } = require("../db/config");
const app = require("../../app");

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

    after(async() => {
      await pool.query(`DELETE FROM "OrderItems" WHERE "Quantity"=99`)
      await pool.query(`DELETE FROM "Orders" WHERE "Overall"='9999'`)
    });

    // it("Checks wrong delivery info error", (done) => {
    //   chai
    //       .request(app)
    //       .post(`/orders/createOrder`)
    //       .set("Cookie", `UID=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjE3LCJpYXQiOjE2MDQ1ODY1OTl9.K2uZnEpFUvfyFzdU3GkkbWBFZKSQbKtzgCfbagb_K9s;`)
    //       .send({
    //         user: "Merilend",
    //         deliveryInfo: {
    //           deliveryType: "404",
    //           takeAway: "-10",
    //           NPdepartment: "5",
    //           paymentDetails: "8",
    //         },
    //         overall: "-1000",
    //       })
    //       .end((err, res) => {
    //         res.status.should.be.equal(401);
    //         res.should.have
    //             .property("text")
    //             .that.eql("Wrong data");
    //         done();
    //       });
    // });
    //
    // after(async() => {
    //   //await pool.query(`DELETE FROM "OrderItems" WHERE "Quantity"=99`)
    //   await pool.query(`DELETE FROM "Orders" WHERE "Overall"='-1000'`)
    // });
});
