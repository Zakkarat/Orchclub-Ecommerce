import React, { useState } from "react";
import { useRouter } from "next/router";
import useFetch from "../../hooks/useFetch";
import { changeFilters } from "../../redux/actions";
import { connect } from "react-redux";

import MainNavBar from "./MainNavBar";
import FilterNavBar from "./FilterNavBar";

const NavBar = (props) => {
  const router = useRouter();
  const isLogged = useFetch(
    "http://localhost:9000/auth/verify"
  );
  const [size, setSize] = useState(
    props.filters.size ? props.filters.size : ""
  );
  const [sort, setSort] = useState(
    props.filters.sort ? props.filters.sort : ""
  );
  const [search, setSearch] = useState(
    props.filters.search ? props.filters.search : ""
  );
  const [priceRange, setPriceRange] = useState(
    props.filters.priceRange ? props.filters.priceRange : { min: 0, max: 5000 }
  );
  const [secondBar, setSecondBar] = useState(false);
  const [isOpen, setIsOpen] = useState(false);

  const handleFilterChange = () => {
    props.changeFilters({ size, sort, priceRange, search });
  };

  return (
    <>
      <MainNavBar
        router={router}
        isLogged={isLogged}
        search={search}
        setSearch={setSearch}
        secondBar={secondBar}
        setSecondBar={setSecondBar}
        isOpen={isOpen}
        setIsOpen={setIsOpen}
        handleFilterChange={handleFilterChange}
      />
      {secondBar && (
        <FilterNavBar
          secondBar={secondBar}
          size={size}
          handleFilterChange={handleFilterChange}
          setSize={setSize}
          sort={sort}
          setSort={setSort}
          priceRange={priceRange}
          setPriceRange={setPriceRange}
        />
      )}
    </>
  );
};

const mapDispatchToProps = {
  changeFilters,
};

const mapStateToProps = ({ filters }) => ({
  filters,
});

export default connect(mapStateToProps, mapDispatchToProps)(NavBar);
