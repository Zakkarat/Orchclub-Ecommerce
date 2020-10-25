const chai = require("chai");
const chaiHttp = require("chai-http");
const app = require("../../app");

chai.use(chaiHttp);
chai.should();


describe("/POST auth/login", () => {
    it("Checks a success auth", (done) => {
        chai
            .request(app)
            .post(`/auth/login`)
            .set("Accept", "application/json")
            .send({username: "Merilend", password: "Yakuza"})
            .end((err, res) => {
                res.status.should.be.equal(200);
                done();
            });
    });

    it("Checks no password error", (done) => {
        chai
            .request(app)
            .post(`/auth/login`)
            .set("Accept", "application/json")
            .send({username: "Merilend"})
            .end((err, res) => {
                res.status.should.be.equal(422);
                res.should.have.property("text").that.eql("Password required.");
                done();
            });
    });
    it("Checks no username error", (done) => {
        chai
            .request(app)
            .post(`/auth/login`)
            .set("Accept", "application/json")
            .send({password: "Yakuza"})
            .end((err, res) => {
                res.status.should.be.equal(422);
                res.should.have.property("text").that.eql("Username required.");
                done();
            });
    });

    it("Checks wrong credentials error", (done) => {
        chai
            .request(app)
            .post(`/auth/login`)
            .set("Accept", "application/json")
            .send({username: "Merilend", password: "Yakuz"})
            .end((err, res) => {
                res.status.should.be.equal(401);
                res.should.have
                    .property("text")
                    .that.eql("Incorrect username and/or password.");
                done();
            });
    });
});

describe("/POST auth/register", () => {
    it("Checks an error for non unique username", (done) => {
        chai
            .request(app)
            .post(`/auth/register`)
            .set("Accept", "application/json")
            .send({
                name: "Zakkaray",
                password: "heh",
                region: "Kirovohradska oblast",
                city: "Lviv",
                adress: "Darnitsa",
                phone: "0636348229",
            })
            .end((err, res) => {
                res.status.should.be.equal(401);
                res.should.have.property("text").that.eql("Wrong data");
                done();
            });
    });

    it("Checks an error for non unique phone", (done) => {
        chai
            .request(app)
            .post(`/auth/register`)
            .set("Accept", "application/json")
            .send({
                name: "Zakkarayt",
                password: "heh",
                region: "Kirovohradska oblast",
                city: "Lviv",
                adress: "Darnitsa",
                phone: "0636348227",
            })
            .end((err, res) => {
                res.status.should.be.equal(401);
                res.should.have.property("text").that.eql("Wrong data");
                done();
            });
    });
});
