import React, { useState, useEffect } from "react";
import Link from "next/link";
import { MDBCard, MDBCardBody, MDBCardTitle } from "mdbreact";
import Masonry from "react-masonry-component";
import { connect } from "react-redux";
import CircularProgress from "@material-ui/core/CircularProgress";

const ImageStack = ({ filters }) => {
  const [orchids, setOrchids] = useState([]);
  const [loading, setLoading] = useState(false);

  useEffect(() => {
    const getData = async () => {
      setLoading(true);
      const data = await fetch(
        `https://orchclub-ecommerce.herokuapp.com/orchids?category=${filters.category}`,
        { credentials: "include" }
      ).then(async (data) => await data.json());
      setOrchids(data);
    };
    getData();
    console.log(orchids);
  }, [filters]);

  return (
    <div className="orchid-gallery mt-5 mx-auto">
      <Masonry
        className="mx-auto d-flex justify-content-center"
        onImagesLoaded={() => setLoading(false)}
        options={{ transitionDuration: 0 }}
      >
        {!loading ? (
          orchids &&
          orchids
            .sort((a, b) => {
              const { sort } = filters;
              if (!sort) {
                return a.Id - b.Id;
              }
              if (sort === "Алфавит ↑") {
                return a.Name < b.Name ? -1 : a.Name > b.Name ? 1 : 0;
              }
              if (sort === "Алфавит ↓") {
                return a.Name < b.Name ? 1 : a.Name > b.Name ? -1 : 0;
              }
              if (sort === "Цена ↑") {
                return b.Price - a.Price;
              }
              if (sort === "Цена ↓") {
                return a.Price - b.Price;
              }
            })
            .filter((elem) =>
              filters.size ? filters.size === elem.Size : true
            )
            .filter(
              (elem) =>
                elem.Price > filters.priceRange.min &&
                elem.Price < filters.priceRange.max
            )
            .filter((elem) =>
              filters.search
                ? elem.Name.split(" ").some((word) =>
                    word
                      .toLowerCase()
                      .match(new RegExp(filters.search.toLowerCase()), "ig")
                  )
                : true
            )
            .filter((elem) => elem.Image)
            .map((elem) => (
              <MDBCard className="orch-card" key={elem.Id}>
                <Link href={`/orchid?id=${elem.Id}`}>
                  <a>
                    <img
                      className="img-fluid rounded w-100 h-responsive"
                      effect="blur"
                      src={elem.Image}
                    />
                    <MDBCardBody>
                      <MDBCardTitle tag="h6" className="text-center undecorate">
                        {elem.Name}
                      </MDBCardTitle>
                    </MDBCardBody>
                  </a>
                </Link>
              </MDBCard>
            ))
        ) : (
          <div className="position-relative">
            <CircularProgress disableShrink></CircularProgress>
          </div>
        )}
      </Masonry>
    </div>
  );
};

const mapStateToProps = ({ filters }) => ({
  filters,
});

export default connect(mapStateToProps)(ImageStack);
