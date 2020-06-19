import React, { useEffect, useState } from "react";
import { MDBRow, MDBContainer } from "mdbreact";
import { CarouselProvider } from "pure-react-carousel";
import Carousel from "./Carousel";
import { connect } from "react-redux";
import "pure-react-carousel/dist/react-carousel.es.css";
import { categoryChange } from "../../redux/actions";

const Categories = ({ categoryChange }) => {
  const [categories, setCategories] = useState([]);
  const [windowWidth, setWindowWidth] = useState("");

  useEffect(() => {
    setWindowWidth(window.innerWidth);
    const category = async () => {
      setCategories(
        await fetch(
          "https://orchclub-ecommerce.herokuapp.com/orchids/categories",
          {
            credentials: "include",
          }
        ).then(async (data) => await data.json())
      );
    };
    category();
  }, []);

  return (
    <MDBContainer style={{ marginTop: "96px" }}>
      <MDBRow>
        <CarouselProvider
          className="w-100 d-flex"
          naturalSlideWidth={400}
          naturalSlideHeight={200}
          visibleSlides={windowWidth < 993 ? (windowWidth < 769 ? 1 : 2) : 3}
          totalSlides={categories.length}
        >
          <Carousel categories={categories} categoryChange={categoryChange} />
        </CarouselProvider>
      </MDBRow>
    </MDBContainer>
  );
};

const mapDispatchToProps = {
  categoryChange,
};

export default connect(null, mapDispatchToProps)(Categories);
