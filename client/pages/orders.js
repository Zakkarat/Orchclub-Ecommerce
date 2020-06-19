import React from "react";
import Head from "next/head";
import NavBar from "../components/NavBar";
import ProtectedRoute from "../HOC/ProtectedRoute";
import Orders from "../components/Orders";
import "bootstrap-css-only/css/bootstrap.min.css";
import "../stylesheets/orchid.css";

const Order = () => {
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
      <ProtectedRoute>
        <Orders></Orders>
      </ProtectedRoute>
    </>
  );
};

export default Order;
