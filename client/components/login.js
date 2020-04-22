import React, { useState, useEffect } from "react";
import {
  MDBBtn,
  MDBCard,
  MDBCardBody,
  MDBInput,
  MDBCol,
} from "mdbreact";
import {useRouter} from 'next/router'


const Login = () => {
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  
  const router = useRouter();
  const makeLogin = async (e) => {
    e.preventDefault();
    const username = e.target.children[0].children[1].value;
    const password = e.target.children[1].children[1].value;
    const data = await fetch("http://localhost:9000/auth/login", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ username, password }),
      credentials: 'include'
    }).then(({status}) => {
      if(status === 200) {
        router.replace('/');
      } 
    });
  };
  useEffect(() => {
    const getAuth = async () => {
      const {status} = await fetch(
        `http://localhost:9000/auth/verify`, {credentials: 'include'}
      );
      if(status === 200) {
        router.replace('/');
      }
    };
    getAuth();
  }, []);
  return (
    <MDBCol md="5" xl="4">
      <MDBCard id="classic-card">
        <MDBCardBody className="black-text">
          <h3 className="text-center"> Увійти в систему:</h3>
          <hr className="hr-light" />
          <form onSubmit={makeLogin}>
            <MDBInput
              className="black-text"
              iconClass="black-text"
              label="Ваш логін"
              icon="user-alt"
              value={username}
              onChange={({ value }) => setUsername(value)}
            />
            <MDBInput
              className="black-text"
              iconClass="black-text"
              label="Ваш пароль"
              icon="lock"
              type="password"
              value={password}
              onChange={({ value }) => setPassword(value)}
            />
            <div className="text-center mt-4 white-text d-flex flex-column justify-content-center">
              <MDBCol className="text-center">
                <MDBBtn color="black" className="white-text" type="submit">
                  Увійти
                </MDBBtn>
              </MDBCol>
              <MDBCol className="black-text text-center mt-3">
                Немає облікового запису?{" "}
                <a className="blue-text underline">
                  <u>Створіть його!</u>
                </a>
              </MDBCol>
            </div>
          </form>
        </MDBCardBody>
      </MDBCard>
    </MDBCol>
  );
};


export default Login;
