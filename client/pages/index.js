import Head from "next/head";
import NavBar from "../components/NavBar";
import "bootstrap-css-only/css/bootstrap.min.css";
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
import '../stylesheets/cards.css'
import '../stylesheets/nav.css'
import Categories from "../components/Categories";

const Home = () => {
  return (
    <>
          <Head>
        <link
          rel="stylesheet"
          href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
        />
        <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.15.0/css/mdb.min.css" rel="stylesheet"></link>
      </Head>
      <NavBar />
      <Categories />
      <StackGrid
        columnWidth={300}
        gutterWidth={25}
        gutterHeight={25}
        duration={2000}
        className="mt-5"
      >
        {orchs.pafiopedilumy
          .filter((elem) => elem.image)
          .map((elem, i) => (
            <MDBCol key={i}>
              <MDBCard className="orch-card">
                <MDBCardImage
                  className="img-fluid rounded"
                  src={elem.image}
                />
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
