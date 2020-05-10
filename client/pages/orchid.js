import Head from "next/head";
import Link from "next/link";
import { useRouter } from "next/router";
import { useEffect, useState } from "react";
import NavBar from "../components/NavBar";
import {
  MDBContainer,
  MDBRow,
  MDBCol,
  MDBCardTitle,
  MDBCard,
  MDBCardBody,
  MDBBtnGroup,
  MDBBtn,
  MDBIcon,
} from "mdbreact";

import changeCart from '../helpers/cartManagement'

import "bootstrap-css-only/css/bootstrap.min.css";
import "../stylesheets/cards.css";
import "../stylesheets/nav.css";
import "../stylesheets/orchid.css";

const Orchid = () => {
  const router = useRouter();

  const [items, setItems] = useState(0);
  const [orchid, setOrchid] = useState({});

  useEffect(() => {
    const getData = async () => {
      const data = await fetch(
        `http://localhost:9000/${router.pathname.slice(1)}?id=${
          router.query.id
        }`
      ).then(async (data) => await data.json());
      setOrchid(data[0]);
    };
    getData();
  }, []);

  const handleClick = ({ target }) => {
    const sign = target.innerText;
    if (sign === "+" && items < orchid.Stock) {
      setItems(items + 1);
    }
    if (sign === "-" && items !== 0) {
      setItems(items - 1);
    }
  };
  console.log(orchid);
  return (
    <>
      <Head>
        <link
          rel="stylesheet"
          href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
        />
        <link
          href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.15.0/css/mdb.min.css"
          rel="stylesheet"
        ></link>
      </Head>
      <NavBar />
      <Link href="/">
        <MDBIcon
          style={{ fontSize: "36px", marginTop: "96px"}}
          className="ml-5 pointer"
          icon="chevron-circle-left"
        />
      </Link>
      <div className="orchid-cont">
        <MDBContainer className="d-flex justify-content-center">
          <MDBCol xl="5">
            <MDBCard>
              <MDBCardTitle className="text-center pt-3">
                {orchid.Name}
              </MDBCardTitle>
              <hr className="my-0"></hr>
              <MDBCardBody className="pt-0 p-0">
                <MDBCol className="px-0">
                  <img
                    className="w-100"
                    style={{ maxHeight: "500px" }}
                    src={orchid.Image}
                  ></img>
                </MDBCol>
                <hr></hr>
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
                      onClick={handleClick}
                      waves={false}
                    >
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
                      waves={false}
                    >
                      +
                    </button>
                  </MDBRow>
                  <MDBBtn
                    color="black"
                    className="w-30 text-white align-self-center"
                    onClick={() => changeCart(router.query.id, items, localStorage)}
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
          </MDBCol>
        </MDBContainer>
      </div>
    </>
  );
};

export default Orchid;
