import React from "react";
import Head from "next/head";
import { useRouter } from "next/router";
import Register from "../../components/Register";
import "bootstrap-css-only/css/bootstrap.min.css";
import "../../stylesheets/auth.css";

const Auth = () => {
  const router = useRouter();
  console.log(router.pathname)
  return (
    <>
      <Head>
        <link
          rel="stylesheet"
          href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
        />
        <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.15.0/css/mdb.min.css" rel="stylesheet"></link>
      </Head>
      <div className="bg-login d-flex align-items-center justify-content-center">
        <Register></Register>
      </div>
      </>
  );
};

export default Auth;
