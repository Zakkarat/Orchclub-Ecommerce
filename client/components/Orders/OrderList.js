import React from "react";
import { MDBCard, MDBRow, MDBCol, MDBCardBody } from "mdbreact";

const OrderList = ({ ordersData }) => (
  <>
    {ordersData.data.map((elem, i) => (
      <MDBCard
        className="d-flex flex-row"
        style={{ width: "45rem", marginTop: "1rem" }}
        key={i}
      >
        <MDBCardBody>
          <MDBRow className="d-flex w-100 justify-content-between ml-0">
            <MDBCol xl="3">Номер заказа: {elem.Id}</MDBCol>
            <MDBCol xl="4">Цена заказа: {elem.Overall}</MDBCol>
            <MDBCol xl="5">Статус заказа: {elem.PaymentStatus}</MDBCol>
          </MDBRow>
        </MDBCardBody>
      </MDBCard>
    ))}
  </>
);

export default OrderList;
