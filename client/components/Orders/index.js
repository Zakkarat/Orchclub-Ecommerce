import React from "react";
import { MDBContainer } from "mdbreact";
import useFetch from "../../hooks/useFetch";
import OrderList from "./OrderList";

const Orders = () => {
  const ordersData = useFetch(
    "https://orchclub-ecommerce.herokuapp.com/orders/userOrders"
  );
  return (
    <MDBContainer
      className="d-flex align-items-center flex-column "
      style={{ marginTop: "96px" }}
    >
      {ordersData.data && <OrderList ordersData={ordersData} />}
    </MDBContainer>
  );
};

export default Orders;
