import React, { useState, useEffect, SyntheticEvent } from "react";
import { MDBCol } from "mdbreact";
import { useRouter } from "next/router";
import LoginForm from "./LoginForm";

const Login = () => {
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  const [error, setError] = useState(false);

  const router = useRouter();
  const makeLogin = async (e: SyntheticEvent<HTMLButtonElement, Event>) => {
    const btn = e.target as HTMLButtonElement;
    btn.disabled = true;
    await fetch("http://localhost:9000/auth/login", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ username, password }),
      credentials: "include",
    }).then(({ status }) => {
      if (status === 200) {
        router.replace("/");
      } else {
        btn.disabled = false;
        setError(true);
      }
    });
  };
  useEffect(() => {
    const getAuth = async () => {
      const { status } = await fetch(`http://localhost:9000/auth/verify`, {
        credentials: "include",
      });
      if (status === 200) {
        router.replace("/");
      }
    };
    getAuth();
  }, []);
  return (
    <MDBCol lg="11" xl="7">
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
