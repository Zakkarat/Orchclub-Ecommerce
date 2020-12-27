import React from "react";
import { MDBRow, MDBCol, MDBBtn } from "mdbreact";
import {ICartOverallProps} from "../../interfaces/components/ICartProps";

const CartOverall = ({ cart, initStateChange }:ICartOverallProps) => (
  <MDBRow style={{ width: "40rem", marginTop: "2rem" }}>
    <MDBCol className="d-flex justify-content-start pr-3">
      <h3 className="pt-2">
        Всего к оплате:{" "}
        {cart.reduce((acc, curr) => {
            if(curr.quantity) {
                return acc + curr.quantity * curr.Price
            }
            return acc;
            }, 0)}
      </h3>
    </MDBCol>
    <MDBCol className="d-flex justify-content-end">
      <MDBBtn
        color="dark"
        onClick={initStateChange}
        disabled={!cart.length}
        className="text-white font-input"
      >
        Продолжить
      </MDBBtn>
    </MDBCol>
  </MDBRow>
);

export default CartOverall;
