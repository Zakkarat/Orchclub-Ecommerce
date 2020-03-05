import Head from 'next/head'
import NavBar from '../components/NavBar'
import "@fortawesome/fontawesome-free/css/all.min.css";
import "bootstrap-css-only/css/bootstrap.min.css";
import "mdbreact/dist/css/mdb.css";
import "../stylesheets/nav.css"

const Home = () => {

  return (<>
    <NavBar />
    <MDBRow><ImageBox></ImageBox></MDBRow>
    </>
  )
}

export default Home
