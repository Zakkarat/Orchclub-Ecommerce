import React from "react";
import { MDBRow, MDBCol, MDBBtn } from "mdbreact";

const CartOverall = ({ cart, initStateChange }) => (
  <MDBRow style={{ width: "40rem", marginTop: "2rem" }}>
    <MDBCol className="d-flex justify-content-start pr-3">
      <h3 className="pt-2">
        Всего к оплате:{" "}
        {cart.reduce((acc, curr) => acc + curr.quantity * curr.Price, 0)}
      </h3>
    </MDBCol>
    <MDBCol className="d-flex justify-content-end">
      <MDBBtn
        color="black"
        onClick={initStateChange}
        disabled={cart.length ? false : true}
        className="text-white font-input"
      >
        Продолжить
      </MDBBtn>
    </MDBCol>
  </MDBRow>
);

export default CartOverall;
