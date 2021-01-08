import React from "react";
import {
  MDBCard,
  MDBRow,
  MDBCol,
  MDBCardTitle,
  MDBBtn,
  MDBIcon,
  MDBCardBody,
} from "mdbreact";
import { ICartListProps } from "../../interfaces/components/ICartProps";

const CartList = ({ cart, handleClick }: ICartListProps) => (
  <>
    {cart &&
      cart.map((item, i) => (
        <MDBCard
          key={i}
          className="d-flex flex-row"
          style={{ marginTop: "1rem", width: "50rem" }}
        >
          <MDBCol xl="3" className="px-0">
            <img
              src={item.Image}
              className="rounded-left"
              style={{ width: "16rem", height: "240px", paddingRight:"60px" }}
              alt={item.Name}
            />
          </MDBCol>
          <MDBCol className="d-flex flex-column justify-content-center align-items-center">
            <MDBCardTitle style={{ marginTop: "20px" }}>{item.Name}</MDBCardTitle>
            <MDBCardBody style={{ margin: "-10px" }}>
              Цена: <b>{item.quantity && item.Price * item.quantity} грн </b>
            </MDBCardBody>
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
              color="red"
              className="w-30 text-white align-self-center"
              onClick={() => handleClick(i, "del")}
              style={{ marginBottom: "30px" }}
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
