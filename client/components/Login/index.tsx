import React, {useState, useEffect, SyntheticEvent} from "react";
import { MDBCol } from "mdbreact";
import { useRouter } from "next/router";
import LoginForm from "./LoginForm";
import {HOSTNAME} from "../../constants/Constants";

const Login = () => {
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  const [error, setError] = useState(false);

  const router = useRouter();
  const makeLogin = async (e:SyntheticEvent<HTMLButtonElement, Event>) => {
    const btn = e.target as HTMLButtonElement;
    btn.disabled = true;
    console.log(`http://${HOSTNAME(document)}/auth/login`);
    await fetch(`http://${HOSTNAME(document)}/auth/login`, {
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
      const { status } = await fetch(
        `http://${HOSTNAME(document)}/auth/verify`,
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
