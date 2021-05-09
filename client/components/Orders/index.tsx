import React, {useEffect, useState} from "react";
import { MDBContainer } from "mdbreact";
import OrderList from "./OrderList";
import {IOrder} from "../../interfaces/components/IOrderProps";
import {HOSTNAME} from "../../constants/Constants";

const Orders = () => {
  const [orders, setOrders] = useState([] as IOrder[])
  useEffect(() => {
    const load = async () => await fetch(`http://${HOSTNAME(document)}/users/userOrders`, {credentials:"include"})
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
