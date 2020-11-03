import React, { useState, useEffect } from "react";
import { MDBCol } from "mdbreact";
import { useRouter } from "next/router";
import LoginForm from "./LoginForm";

const Login = () => {
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  const [error, setError] = useState(false);

  const router = useRouter();
  const makeLogin = async (e) => {
    const btn = e.target;
    btn.disabled = true;
    await fetch("http://localhost:9000/auth/login", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ username, password }),
      credentials: "include",
    }).then((res) => {
      if (res.status === 200) {
        router.replace("/");
      } else {
        btn.disabled = false;
        setError(true);
      }
    });
  };
  useEffect(() => {
    const getAuth = async () => {
      const { status } = await fetch(
          `https://orchclub-ecommerce.herokuapp.com/auth/verify`,
          {
            credentials: "include",
          }
      );
      if (status === 200) {
        router.replace("/");
      }
    };
    getAuth();
  }, []);
  return (
      <MDBCol lg="6" xl="3">
        <LoginForm
            username={username}
            password={password}
            setPassword={setPassword}
            setUsername={setUsername}
            makeLogin={makeLogin}
            error={error}
        />
      </MDBCol>
  );
};

export default Login;