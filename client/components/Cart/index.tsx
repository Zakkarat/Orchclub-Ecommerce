import React, { useState, useEffect } from "react";
import { MDBContainer } from "mdbreact";
import CartList from "./CartList";
import CartOverall from "./CartOverall";
import cartChange from "../../helpers/cartManagement";
import { connect } from "react-redux";
import { setOverallPrice, changePaymentState } from "../../redux/actions";
import {ICartProps} from "../../interfaces/components/ICartProps";
import IOrchid from "../../../interfaces/IOrchid";

const Cart = ({ changePaymentState, setOverallPrice }:ICartProps) => {
  const [cart, setCart] = useState([] as IOrchid[]);
  useEffect(() => {
    const rawCart = localStorage.getItem("cart");
    if (rawCart) {
      const cart = JSON.parse(rawCart);
      const getData = async () => {
        const data = await fetch(
            `http://localhost:9000/orchid?id=${cart
                .map(({item}:{item:number}) => item)
                .join(",")}`
        ).then(async (data) => await data.json());
        setCart(
            data.map((orchid:IOrchid) => {
              orchid.quantity = cart.filter(
                  ({item}:{item:string}) => parseInt(item) === orchid.Id
              )[0].quantity;
              return orchid;
            })
        );
      };
      if (cart) {
        getData();
      }
    }
  }, []);

  const handleClick = (i:number, sign:string) => {
    let newItem:IOrchid = cart[i];
    let newCart:IOrchid[] = [...cart];
    if (sign === "+"&& newItem.quantity && newItem.Stock && newItem.quantity < newItem.Stock) {
      newItem.quantity += 1;
    }
    if (sign === "-" && newItem.quantity && newItem.quantity !== 1) {
      newItem.quantity -= 1;
    }
    if (sign === "del") {
      newCart.splice(i);
      newItem.quantity = 0;
    }
    if (newItem.quantity) {
      cartChange(newItem.Id, newItem.quantity, localStorage);
    }
    newCart[i] = newItem;
    const noEmptyItemsCart = newCart.filter((elem) => elem.quantity !== 0);
    setCart(noEmptyItemsCart);
  };

  const initStateChange = () => {
    setOverallPrice(
      cart.reduce((acc, curr) => {
        if (curr.quantity) {
        return acc + curr.quantity * curr.Price;
          }
        return acc;
      }, 0)
    );
    changePaymentState("1");
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
