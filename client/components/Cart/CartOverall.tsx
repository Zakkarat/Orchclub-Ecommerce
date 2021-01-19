import React from "react";
import { MDBBtn, MDBIcon } from "mdbreact";
import { ICartOverallProps } from "../../interfaces/components/ICartProps";
import "../../stylesheets/cardMedia.css";

const CartOverall = ({ cart, initStateChange }: ICartOverallProps) => (
  <div className="content-fix">
    <div className="price-fix">
      <h4>
        Всего к оплате:{" "}
        <b>
          {" "}
          {cart.reduce((acc, curr) => {
            if (curr.quantity) {
              return acc + curr.quantity * curr.Price;
            }
            return acc;
          }, 0)}{" "}
          ₴
        </b>
      </h4>
    </div>

    <div className="button-fix">
      <MDBBtn
        color="green"
        onClick={initStateChange}
        disabled={!cart.length}
        className="text-white font-input"
        style={{ padding: " 10px 40px 10px 40px" }}
        aria-label="continue"
      >
        <MDBIcon icon="dolly" className="pr-2" style={{ fontSize: "16px" }} alt="continue" />
        Продолжить
      </MDBBtn>
    </div>
  </div>
);

export default CartOverall;
