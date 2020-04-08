import Head from "next/head";
import NavBar from "../components/NavBar";
// import "@fortawesome/fontawesome-free/css/all.min.css";
import "bootstrap-css-only/css/bootstrap.min.css";
//import "mdbreact/dist/css/mdb.css";
// import "../stylesheets/nav.css"
import {
  MDBContainer,
  MDBCol,
  MDBCard,
  MDBCardImage,
  MDBCardBody,
  MDBCardTitle,
} from "mdbreact";
import StackGrid from "react-stack-grid";
import orchs from "../orchs.json";

const Home = () => {
  return (
    <>
      <NavBar  />
      <StackGrid columnWidth={300} gutterWidth={25} duration={2000} className="mt-5">
        {orchs.pafiopedilumy
          .filter((elem) => elem.image)
          .map((elem, i) => (
            <MDBCol key={i}>
              <MDBCard style={{ width: "300px", border: "0px" }}>
                <MDBCardImage className="img-fluid rounded" src={elem.image} waves />
                <MDBCardBody>
                  <MDBCardTitle tag="h6" className="text-center">
                    {elem.text}
                  </MDBCardTitle>
                </MDBCardBody>
              </MDBCard>
            </MDBCol>
          ))
          .sort(() => Math.random() - 0.5)}
      </StackGrid>
    </>
  );
};

export default Home;
