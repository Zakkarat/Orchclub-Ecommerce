import React, { useState } from "react";
import { useRouter } from "next/router";
import useFetch from "../../hooks/useFetch";
import { changeFilters } from "../../redux/actions";
import { connect } from "react-redux";

import MainNavBar from "./MainNavBar";
import FilterNavBar from "./FilterNavBar";
import {IFilters, INavBarProps} from "../../interfaces/components/INavBarProps";

const NavBar = ({filters, changeFilters}:INavBarProps) => {
  const router = useRouter();
  const isLogged = useFetch(
    "https://orchclub-ecommerce.herokuapp.com/auth/verify"
  );

  const [size, setSize] = useState(
    filters.size ? filters.size : ""
  );
  const [sort, setSort] = useState(
    filters.sort ? filters.sort : ""
  );
  const [search, setSearch] = useState(
    filters.search ? filters.search : ""
  );
  const [priceRange, setPriceRange] = useState(
    filters.priceRange ? filters.priceRange : { min: 0, max: 5000 }
  );
  const [secondBar, setSecondBar] = useState(false);
  const [isOpen, setIsOpen] = useState(false);

  const handleFilterChange = ():void => {
    const filters:IFilters = { size, sort, priceRange, search }
    changeFilters(filters);
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

const mapStateToProps = ({ filters }:{filters:IFilters}) => ({
  filters,
});

export default connect(mapStateToProps, mapDispatchToProps)(NavBar);
