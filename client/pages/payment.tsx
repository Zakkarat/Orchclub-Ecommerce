import React from "react";
import Head from "next/head";
import NavBar from "../components/NavBar";
import Cart from "../components/Cart";
import { connect } from "react-redux";
import ProtectedRoute from "../HOC/ProtectedRoute";
import PaymentDetails from "../components/PaymentDetails";
import "bootstrap-css-only/css/bootstrap.min.css";
import "../stylesheets/orchid.css";
import {IPaymentProps} from "../interfaces/pages/IPaymentProps";

const Payment = ({ payment }:IPaymentProps) => {
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
    />
      </Head>
      <NavBar />
      <ProtectedRoute>
        {!payment.stage ? (
          <Cart/>
        ) : (
          <PaymentDetails price={payment.price}/>
        )}
      </ProtectedRoute>
    </>
  );
};

const mapStateToProps = ({ payment }:IPaymentProps) => ({
  payment,
});

export default connect(mapStateToProps)(Payment);
