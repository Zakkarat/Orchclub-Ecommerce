import React from "react";
import {
  MDBRow,
  MDBCol,
  MDBCardTitle,
  MDBCard,
  MDBCardBody,
  MDBBtn,
  MDBIcon,
} from "mdbreact";
import changeCart from "../../helpers/cartManagement";
import { IOrchidCardProps } from "../../interfaces/components/IOrchidProps";
import "../../stylesheets/orchCard.css";

const OrchidCard = ({ orchid, handleClick, items, router }: IOrchidCardProps) => (
  <MDBCard className="conteiner test">
    <MDBCardTitle className="text-center pt-4" style={{fontSize:"18px"}}>{orchid.Name}</MDBCardTitle>
    <MDBCardBody className="pt-0 p-0">
      <MDBCol className="px-0">
        <img
          className="w-100"
          style={{ maxHeight: "500px" }}
          src={orchid.Image}
        />
      </MDBCol>

      <MDBCol className="text-center d-flex align-content-center justify-content-center flex-column" style={{ marginTop: "20px" }}>
        <h5 className="h5-responsive align-self-center">
          {" "}
          Размер: {orchid.Size}
        </h5>
        <h4 className="h4-responsive align-self-center">
          {" "}
          Цена: <b>{orchid.Price} грн</b>
        </h4>
        <MDBRow className="d-flex justify-content-center">
          <button
            className="btn bg-color-black text-white width-btn"
            onClick={handleClick}>
            -
          </button>
          <div className="width-input form-group mb-0 d-flex align-items-center">
            <input
              type="text"
              readOnly
              value={items}
              className="form-control text-center font-weight-bolder font-input"
              id="formGroupExampleInput"
              style={{ padding: "0px" }}
            />
          </div>
          <button
            className="btn bg-color-black text-white width-btn"
            onClick={handleClick}
          >
            +
          </button>
        </MDBRow>
        <h6 className="h6-responsive align-self-center" style={{ color: "gray" }}>
          В наличии: {orchid.Stock}
        </h6>
        <MDBBtn
          color="green"
          className="w-30 text-white align-self-center"
          onClick={() => changeCart(Number(router.query.id), items, localStorage)}
          style={{ marginBottom: "40px", marginTop: "10px", padding: "8px 16px 8px 16px" }}
          aria-label="add to cart"
        >
          <MDBIcon
            icon="cart-arrow-down"
            className="pr-2"
            style={{ fontSize: "16px" }}
            alt="arrow"
          />
          В корзину
        </MDBBtn>
      </MDBCol>
    </MDBCardBody>
  </MDBCard>
);

export default OrchidCard;
