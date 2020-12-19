import React from "react";
import Head from "next/head";
import NavBar from "../components/NavBar";
import "bootstrap-css-only/css/bootstrap.min.css";
import "../stylesheets/cards.css";
import "../stylesheets/nav.css";
import Categories from "../components/Categories";
import ImageStack from "../components/ImageStack";

const Home = () => {
  return (
    <>
      <Head>
          <title>Orchclub</title>

          <link
          rel="stylesheet"
          href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
        />
        <link
    href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.15.0/css/mdb.min.css"
    rel="stylesheet"
    />
          <meta name="description" content="Meta description for orchclub" />
      </Head>
      <NavBar />
      <Categories />
      <ImageStack />
    </>
  );
};

export default Home;
