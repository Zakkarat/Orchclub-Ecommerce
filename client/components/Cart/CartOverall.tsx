import React from "react";
import { MDBRow, MDBCol, MDBBtn, MDBIcon } from "mdbreact";
import { ICartOverallProps } from "../../interfaces/components/ICartProps";

const CartOverall = ({ cart, initStateChange }: ICartOverallProps) => (
  <MDBRow style={{ width: "40rem", marginTop: "2rem" }}>
    <MDBCol className="d-flex justify-content-start pr-3">
      <h4 className="pt-2">
        Всего к оплате:{" "}
        <b>
          {" "}
          {cart.reduce((acc, curr) => {
            if (curr.quantity) {
              return acc + curr.quantity * curr.Price;
            }
            return acc;
          }, 0)}{" "}
          ₴{" "}
        </b>
      </h4>
    </MDBCol>
    <MDBCol className="d-flex justify-content-end">
      <MDBBtn
        color="green"
        onClick={initStateChange}
        disabled={!cart.length}
        className="text-white font-input"
        style={{ padding: " 10px 20px 10px 20px" }}
      >
        <MDBIcon icon="dolly" className="pr-2" style={{ fontSize: "16px" }} />
        Продолжить
      </MDBBtn>
    </MDBCol>
  </MDBRow>
);

export default CartOverall;
