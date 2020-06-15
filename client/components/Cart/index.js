import React, { useState, useEffect } from "react";
import { MDBContainer } from "mdbreact";
import CartList from "./CartList";
import CartOverall from "./CartOverall";
import cartChange from "../../helpers/cartManagement";
import { connect } from "react-redux";
import { setOverallPrice, changePaymentState } from "../../redux/actions";

const Cart = ({ changePaymentState, setOverallPrice }) => {
  const [cart, setCart] = useState([]);
  useEffect(() => {
    const cart = JSON.parse(localStorage.getItem("cart"));
    const getData = async () => {
      const data = await fetch(
        `https://orchclub-ecommerce.herokuapp.com/orchid?id=${cart
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
      <CartList cart={cart} handleClick={handleClick} />
      <CartOverall cart={cart} initStateChange={initStateChange} />
    </MDBContainer>
  );
};

const mapDispatchToProps = {
  setOverallPrice,
  changePaymentState,
};

export default connect(null, mapDispatchToProps)(Cart);
