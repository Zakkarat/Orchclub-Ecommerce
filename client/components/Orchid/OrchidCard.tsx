import React from "react";
import {
    MDBRow,
    MDBCol,
    MDBCardTitle,
    MDBCard,
    MDBCardBody,
    MDBBtn,
    MDBIcon,
  } from "mdbreact";
  import changeCart from "../../helpers/cartManagement";
import {IOrchidCardProps} from "../../interfaces/components/IOrchidProps";

const OrchidCard = ({ orchid, handleClick, items, router}:IOrchidCardProps) => (
  <MDBCard>
    <MDBCardTitle className="text-center pt-3">{orchid.Name}</MDBCardTitle>
    <hr className="my-0"/>
    <MDBCardBody className="pt-0 p-0">
      <MDBCol className="px-0">
        <img
    className="w-100"
    style={{maxHeight: "500px"}}
    src={orchid.Image}
    />
      </MDBCol>
      <hr/>
      <MDBCol className="text-center d-flex align-content-center justify-content-center flex-column">
        <h3 className="h3-responsive align-self-center">
          {" "}
          Размер: {orchid.Size}
        </h3>
        <h3 className="h3-responsive align-self-center">
          {" "}
          Цена: {orchid.Price} грн
        </h3>
        <h3 className="h3-responsive align-self-center">
          В наличии: {orchid.Stock}
        </h3>
        <MDBRow className="d-flex justify-content-center">
          <button
            className="btn bg-color-black text-white width-btn"
            onClick={handleClick}>
            -
          </button>
          <div className="width-input form-group mb-0 d-flex align-items-center">
            <input
              type="text"
              readOnly
              value={items}
              className="form-control text-center font-weight-bolder font-input"
              id="formGroupExampleInput"
            />
          </div>
          <button
            className="btn bg-color-black text-white width-btn"
            onClick={handleClick}
          >
            +
          </button>
        </MDBRow>
        <MDBBtn
          color="dark"
          className="w-30 text-white align-self-center"
          onClick={() => changeCart(Number(router.query.id), items, localStorage)}
        >
          <MDBIcon
            icon="cart-arrow-down"
            className="pr-2"
            style={{ fontSize: "16px" }}
          />
          В корзину
        </MDBBtn>
      </MDBCol>
    </MDBCardBody>
  </MDBCard>
);

export default OrchidCard;
