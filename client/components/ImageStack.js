import React, { useState, useEffect } from "react";
import { useRouter } from 'next/router';
import {
  MDBContainer,
  MDBCol,
  MDBCard,
  MDBCardImage,
  MDBCardBody,
  MDBCardTitle,
} from "mdbreact";
import { LazyLoadImage } from "react-lazy-load-image-component";
import Masonry from "react-masonry-component";
import { connect } from "react-redux";

const ImageStack = ({ filters }) => {
  const router = useRouter();
  const [orchids, setOrchids] = useState([]);

  useEffect(() => {
    const getData = async () => {
      const data = await fetch(
        `http://localhost:9000/orchids?category=${filters.category}`, {credentials: "include"}
      ).then(async (data) => await data.json());
      setOrchids(data);
    };
    getData();
    console.log(orchids);
  }, [filters]);

  const handleClick = (id) => {
    console.log(id);
    router.push({
      pathname: '/orchid',
      query: { id: id },
    })
  }

  return (
    <div className="orchid-gallery mt-5 mx-auto">
      <Masonry

className={'mx-auto'}
      >
        {orchids
          ? orchids.sort((a,b) => a.Id - b.Id)
              .filter((elem, i) => elem.Image)
              .map((elem, i) => (
                <MDBCard className="orch-card" key={elem.Name} onClick={() => handleClick(elem.Id)}>
                  <img
                    className="img-fluid rounded w-100 h-responsive"
                    effect="blur"
                    src={elem.Image}
                  />
                  <MDBCardBody>
                    <MDBCardTitle tag="h6" className="text-center">
                      {elem.Name}
                    </MDBCardTitle>
                  </MDBCardBody>
                </MDBCard>
              ))
          : "loading"}
      </Masonry>
    </div>
  );
};

const mapStateToProps = ({ filters }) => ({
  filters,
});

export default connect(mapStateToProps)(ImageStack);
