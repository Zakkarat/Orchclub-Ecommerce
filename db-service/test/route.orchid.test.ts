import { Response } from "koa";

const chai = require("chai");
const chaiHttp = require("chai-http");
const app = require("../src/app");

chai.use(chaiHttp);

const expect = chai.expect;
chai.should();

describe("/GET /orchids", () => {
    it("Checks if json returned with all orchids", (done) => {
        chai
            .request(app)
            .get(`/orchids`)
            .end((_:Error, res:Response) => {
                res.status.should.be.equal(200);
                res.body.should.be.a("array");
                done();
            });
    });
});

describe("/GET orchid", () => {
    it("Checks if json returned with expected orchid", (done) => {
        chai
            .request(app)
            .get(`/orchid?id=3`)
            .end((_:Error, res:Response) => {
                res.status.should.be.equal(200);
                res.body.should.be.a("array");
                res.body.length.should.be.eql(1);
                expect(res.body[0]).to.have.property("Id", 3);
                done();
            });
    });
    it("Checks if error occured with unexpected number", (done) => {
        chai
            .request(app)
            .get(`/orchid?id=-1`)
            .end((_:Error, res:Response) => {
                res.status.should.have.be.equal(404);
                res.body.should.be.eql({});
                done();
            });
    });
});
