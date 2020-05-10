import React from "react";
import {
  MDBContainer,
  MDBCard,
  MDBRow,
  MDBCol,
  MDBCardTitle,
  MDBBtn,
  MDBIcon,
  MDBCardBody,
} from "mdbreact";
import useFetch from "../hooks/useFetch";

const Orders = () => {
    const ordersData = useFetch('http://localhost:9000/orders/userOrders');
    console.log(ordersData);
  return (
    <MDBContainer className="d-flex align-items-center flex-column " style={{marginTop: "96px"}}>
      {ordersData.data ? ordersData.data.map(elem => (<MDBCard
        className="d-flex flex-row"
        style={{ width: "45rem", marginTop: "1rem" }}
      >
        <MDBCardBody>
          <MDBRow className="d-flex w-100 justify-content-between ml-0">
      <MDBCol xl="3">Номер заказа: {elem.Id}</MDBCol>
      <MDBCol xl="4">Цена заказа: {elem.Overall}</MDBCol>
      <MDBCol xl="5">Статус заказа: {elem.PaymentStatus}</MDBCol>
          </MDBRow>
        </MDBCardBody>
      </MDBCard>)) : ''}
    </MDBContainer>
  );
};

export default Orders;
