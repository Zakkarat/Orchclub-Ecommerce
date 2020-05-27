import React, { useState, useEffect } from "react";
import {
  MDBContainer,
  MDBCard,
  MDBRow,
  MDBCol,
  MDBCardTitle,
  MDBBtn,
  MDBIcon,
} from "mdbreact";
import "../stylesheets/cart-items.css";
import cartChange from "../helpers/cartManagement";
import { connect } from "react-redux";
import { setOverallPrice, changePaymentState } from "../redux/actions";

const Cart = ({ changePaymentState, setOverallPrice }) => {
  const [cart, setCart] = useState([]);
  useEffect(() => {
    const cart = JSON.parse(localStorage.getItem("cart"));
    const getData = async () => {
      const data = await fetch(
        `http://localhost:9000/orchid?id=${cart
          .map((elem) => elem.item)
          .join(",")}`
      ).then(async (data) => await data.json());
      setCart(
        data.map((item) => {
          item.quantity = cart.filter(
            (elem) => parseInt(elem.item) === item.Id
          )[0].quantity;
          return item;
        })
      );
    };
    if (cart) {
      getData();
    }
  }, []);

  const handleClick = (i, sign) => {
    let newItem = cart[i];
    let newCart = [...cart];
    if (sign === "+" && newItem.quantity < cart[i].Stock) {
      newItem.quantity += 1;
    }
    if (sign === "-" && newItem.quantity !== 1) {
      newItem.quantity -= 1;
    }
    if (sign === "del") {
      newCart.splice(i);
      newItem.quantity = 0;
    }
    cartChange(newItem.Id.toString(), newItem.quantity, localStorage);
    newCart[i] = newItem;
    setCart(newCart.filter((elem) => elem.quantity !== 0));
  };

  const initStateChange = () => {
    setOverallPrice(
      cart.reduce((acc, curr) => acc + curr.quantity * curr.Price, 0)
    );
    changePaymentState(1);
  };
  return (
    <MDBContainer
      className="d-flex align-items-center flex-column"
      style={{ marginTop: "96px" }}
    >
      {cart &&
        cart.map((item, i) => (
          <MDBCard className="d-flex flex-row" style={{ marginTop: "1rem" }}>
            <MDBCol xl="4" className="px-0">
              <img
                src={item.Image}
                className="rounded-left"
                style={{ width: "13rem", height: "230px" }}
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
    </MDBContainer>
  );
};

const mapDispatchToProps = {
  setOverallPrice,
  changePaymentState,
};

export default connect(null, mapDispatchToProps)(Cart);
