import React from "react";
import Link from "next/link";
import { useRouter } from "next/router";
import { useEffect, useState } from "react";
import { MDBContainer, MDBCol, MDBIcon } from "mdbreact";
import OrchidCard from "./OrchidCard";

const Orchid = () => {
  const router = useRouter();

  const [items, setItems] = useState(0);
  const [orchid, setOrchid] = useState({});

  useEffect(() => {
    const getData = async () => {
      const data = await fetch(
        `https://orchclub-ecommerce.herokuapp.com/${router.pathname.slice(
          1
        )}?id=${router.query.id}`
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
  return (
    <>
      <Link href="/">
        <MDBIcon
          style={{ fontSize: "36px", marginTop: "96px" }}
          className="ml-5 pointer"
          icon="chevron-circle-left"
        />
      </Link>
      <div className="orchid-cont">
        <MDBContainer className="d-flex justify-content-center">
          <MDBCol xl="5">
            <OrchidCard
              orchid={orchid}
              handleClick={handleClick}
              items={items}
              router={router}
            />
          </MDBCol>
        </MDBContainer>
      </div>
    </>
  );
};

export default Orchid;
