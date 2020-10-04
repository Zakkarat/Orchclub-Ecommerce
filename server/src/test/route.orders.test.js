const chai = require("chai");
const chaiHttp = require("chai-http");
const app = require("../../app");

chai.use(chaiHttp);

describe("/GET orders/userOrders", () => {
  it("Checks if token threw an error", (done) => {
    chai
      .request(app)
      .get(`/orders/userOrders`)
      .set("Cookie", `UID=${process.env.token};`)
      .end((err, res) => {
        res.should.have.status(400);
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
        res.should.have.status(400);
        res.should.have
          .property("text")
          .that.eql("Invalid token, please log in again");
        done();
      });
  });
});
