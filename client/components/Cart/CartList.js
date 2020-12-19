import React from "react";
import {
  MDBCard,
  MDBRow,
  MDBCol,
  MDBCardTitle,
  MDBBtn,
  MDBIcon,
} from "mdbreact";

const CartList = ({ cart, handleClick }) => (
  <>
    {cart &&
      cart.map((item, i) => (
        <MDBCard
          key={i}
          className="d-flex flex-row"
          style={{ marginTop: "1rem" }}
        >
          <MDBCol xl="4" className="px-0">
            <img
              src={item.Image}
              className="rounded-left"
              style={{ width: "13rem", height: "230px" }}
              alt={item.Name}
            ></img>
          </MDBCol>
          <MDBCol className="d-flex flex-column justify-content-center align-items-center">
            <MDBCardTitle>{item.Name}</MDBCardTitle>
            <MDBCardTitle>Цена: {item.Price * item.quantity}</MDBCardTitle>
            <MDBRow className="w-100 d-flex justify-content-center">
              <button
                className="btn bg-color-black text-white width-btn"
                onClick={() => handleClick(i, "-")}
              >
                -
              </button>
              <div className="width-input form-group mb-0 d-flex align-items-center">
                <input
                  type="text"
                  readOnly
                  value={item.quantity}
                  className="form-control text-center font-weight-bolder font-input"
                />
              </div>
              <button
                className="btn bg-color-black text-white width-btn"
                onClick={() => handleClick(i, "+")}
              >
                +
              </button>
            </MDBRow>
            <MDBBtn
              color="black"
              className="w-30 text-white align-self-center"
              onClick={() => handleClick(i, "del")}
            >
              <MDBIcon
                icon="trash"
                className="pr-2"
                style={{ fontSize: "16px" }}
              />
              Удалить
            </MDBBtn>
          </MDBCol>
        </MDBCard>
      ))}
  </>
);

export default CartList;
