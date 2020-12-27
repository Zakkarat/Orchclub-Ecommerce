import React, {useEffect, useState} from "react";
import { MDBContainer } from "mdbreact";
import OrderList from "./OrderList";
import {IOrder} from "../../interfaces/components/IOrderProps";

const Orders = () => {
  const [orders, setOrders] = useState([] as IOrder[])
  useEffect(() => {
    const load = async () => await fetch("http://localhost:9000/orders/userOrders", {credentials:"include"})
        .then(async data => setOrders(await data.json()))
  load()
  }, [])
  return (
    <MDBContainer
      className="d-flex align-items-center flex-column "
      style={{ marginTop: "96px" }}
    >
      {orders && <OrderList ordersData={orders} />}
    </MDBContainer>
  );
};

export default Orders;
