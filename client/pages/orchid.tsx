import React from "react";
import Head from "next/head";
import NavBar from "../components/NavBar";
import OrchidComp from "../components/Orchid";

import "bootstrap-css-only/css/bootstrap.min.css";
import "../stylesheets/cards.css";
import "../stylesheets/nav.css";
import "../stylesheets/orchid.css";

const Orchid = () => {
  return (
    <>
      <Head>
        <link
          rel="stylesheet"
          href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
        />
        <link
          href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.15.0/css/mdb.min.css"
          rel="stylesheet"
        ></link>
      </Head>
      <NavBar />
      <OrchidComp />
    </>
  );
};

export default Orchid;
