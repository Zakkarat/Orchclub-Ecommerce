import React from "react";
import setValue from "../../helpers/setValue";
import { MDBBtn, MDBCard, MDBCardBody, MDBInput, MDBCol } from "mdbreact";
import Link from "next/link";
import { ILoginFormProps } from "../../interfaces/components/ILoginProps";

const LoginForm = ({
  username,
  password,
  setUsername,
  setPassword,
  error,
  makeLogin,
}: ILoginFormProps) => (
  <div style={{ marginLeft: "35vw" }}>
    <MDBCard id="classic-card">
      <MDBCardBody className="black-text">
        <h3 className="text-center"> Войти в систему:</h3>
        <hr className="hr-light" />
        <MDBInput
          className="black-text"
          iconClass="black-text"
          label="Ваш логин"
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
          value={password}
          onChange={(e) => setValue(e, setPassword)}
        />
        {error && (
          <p className="text-center text-danger">
            Проверьте правильность введенных данных.
          </p>
        )}
        <div className="text-center mt-4 white-text d-flex flex-column justify-content-center">
          <MDBCol className="text-center">
            <MDBBtn color="dark" className="white-text" onClick={makeLogin}>
              Войти
            </MDBBtn>
          </MDBCol>
          <MDBCol className="black-text text-center mt-3">
            Нету учетной записи?{" "}
            <a className="blue-text underline">
              <u>
                <Link href="/auth/register">
                  <a style={{ color: "blue" }}> Создайте тут!</a>
                </Link>
              </u>
            </a>
          </MDBCol>
        </div>
      </MDBCardBody>
    </MDBCard>
  </div>
);

export default LoginForm;
