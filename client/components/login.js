import React, { useState, useEffect } from "react";
import Link from "next/link";
import { MDBBtn, MDBCard, MDBCardBody, MDBInput, MDBCol } from "mdbreact";
import { useRouter } from "next/router";
import setValue from "../helpers/setValue";

const Login = () => {
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  const [error, setError] = useState(false);

  const router = useRouter();
  const makeLogin = async (e) => {
    const btn = e.target;
    btn.disabled = true;
    await fetch("https://orchclub-ecommerce.herokuapp.com/auth/login", {
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
      const { status } = await fetch(`https://orchclub-ecommerce.herokuapp.com/auth/verify`, {
        credentials: "include",
      });
      if (status === 200) {
        router.replace("/");
      }
    };
    getAuth();
  }, []);
  return (
    <MDBCol lg="6" xl="3">
      <MDBCard id="classic-card">
        <MDBCardBody className="black-text">
          <h3 className="text-center"> Увійти в систему:</h3>
          <hr className="hr-light" />
          <MDBInput
            className="black-text"
            iconClass="black-text"
            label="Ваш логін"
            icon="user-alt"
            value={username}
            onChange={(e) => setValue(e, setUsername)}
          />
          <MDBInput
            className="black-text"
            iconClass="black-text"
            label="Ваш пароль"
            icon="lock"
            type="password"
            onChange={(e) => setValue(e, setPassword)}
          />
          {error && (
            <p className="text-center text-danger">
              Проверьте правильность введенных данных.
            </p>
          )}
          <div className="text-center mt-4 white-text d-flex flex-column justify-content-center">
            <MDBCol className="text-center">
              <MDBBtn color="black" className="white-text" onClick={makeLogin}>
                Увійти
              </MDBBtn>
            </MDBCol>
            <MDBCol className="black-text text-center mt-3">
              Немає облікового запису?{" "}
              <a className="blue-text underline">
                <u>
                  <Link href="/auth/register">
                    <a>Створіть його!</a>
                  </Link>
                </u>
              </a>
            </MDBCol>
          </div>
        </MDBCardBody>
      </MDBCard>
    </MDBCol>
  );
};

export default Login;
