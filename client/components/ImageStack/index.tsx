import React, { useState, useEffect } from "react";
import Masonry from "react-masonry-component";
import { connect } from "react-redux";
import ImageList from "./ImageList";
import {IImageStackProps} from "../../interfaces/components/IImageStackProps";

const ImageStack = ({ filters }:IImageStackProps) => {
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
  }, [filters]);

  return (
    <div className="orchid-gallery mt-5 mx-auto">
      <Masonry
        className="mx-auto d-flex justify-content-center"
        onImagesLoaded={() => setLoading(false)}
        options={{ transitionDuration: 0 }}
      >
        <ImageList filters={filters} orchids={orchids} loading={loading} />
      </Masonry>
    </div>
  );
};

const mapStateToProps = ({ filters }:IImageStackProps) => ({
  filters,
});

export default connect(mapStateToProps)(ImageStack);
