import React from "react";
import { MDBBtn, MDBIcon } from "mdbreact";
import { ICartListProps } from "../../interfaces/components/ICartProps";
import "../../stylesheets/cardMedia.css";

const CartList = ({ cart, handleClick }: ICartListProps) => (
  <>
    {cart &&
      cart.map((item, i) => (
        <div className="cont">
          <div className="cart-item">
            <img src={item.Image} className="item-img" alt={item.Name} />

            <div className="item-body">
              <h4 className="text-style">{item.Name}</h4>
              <h5 style={{ marginTop: "20px" }}>
                Цена: <b>{item.quantity && item.Price * item.quantity} грн </b>
              </h5>
              <div
                className="w-100 d-flex justify-content-center"
                style={{ margin: "0px" }}
              >
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
                    style={{ padding: "0px" }}
                  />
                </div>
                <button
                  className="btn bg-color-black text-white width-btn"
                  onClick={() => handleClick(i, "+")}
                >
                  +
                </button>
              </div>
              <MDBBtn
                color="red"
                className="w-30 text-white align-self-center"
                onClick={() => handleClick(i, "del")}
                style={{ marginBottom: "30px", marginTop: "20px" }}
              >
                <MDBIcon
                  icon="trash"
                  className="pr-2"
                  style={{ fontSize: "16px" }}
                />
                Удалить
              </MDBBtn>
            </div>
          </div>
        </div>
      ))}
  </>
);

export default CartList;
