import React from "react";
import setValue from "../../helpers/setValue";
import {
  MDBNavbar,
  MDBNavbarNav,
  MDBNavItem,
  MDBBtn,
  MDBCollapse,
} from "mdbreact";
import {IFilterNavBarProps, IPriceRange} from "../../interfaces/components/INavBarProps";

const FilterNavBar = ({
  secondBar,
  size,
  setSize,
  sort,
  setSort,
  priceRange,
  setPriceRange,
  handleFilterChange,
}:IFilterNavBarProps) => (
  <MDBNavbar expand="lg" color="white" className="pt-3 fixed-top filters ">
    <MDBNavbarNav className="flex-row justify-content-center search">
      <MDBCollapse
        id="navbarCollapse3"
        className="d-flex flex-column"
        isOpen={secondBar}
        navbar
      >
        <MDBNavItem className="d-flex align-items-center py-2">
          Цена от &nbsp;
          <input
    className="form-control search text-center price-block p-0"
    type="number"
    value={priceRange.min}
    onChange={({target}) =>
        setPriceRange(
            Object.assign({}, priceRange, {
                min: parseInt(target.value),
            })
        )
    }
    />{" "}
          &nbsp; до &nbsp;
          <input
    className="form-control search text-center price-block p-0"
    type="number"
    value={priceRange.max}
    onChange={({target}) => {
        const range:IPriceRange = Object.assign({}, priceRange, {
            max: parseInt(target.value),
        })
        setPriceRange(
            range
        )
    }}
    />
          &nbsp; грн.
        </MDBNavItem>
        <MDBNavItem className="d-flex align-items-center py-2 w-275-px">
          Размер:&nbsp;
          <select
            value={size}
            onChange={(e) => setValue(e, setSize)}
            className="browser-default custom-select"
          >
            <option value="">Не выбрано</option>
            <option value="F/S">F/S</option>
            <option value="B/S">B/S</option>
            <option value="NB/S">NB/S</option>
            <option value="S/S">S/S</option>
          </select>
        </MDBNavItem>
        <MDBNavItem className="d-flex align-items-center py-2 w-275-px">
          Сортировать:&nbsp;
          <select
            value={sort}
            onChange={(e) => setValue(e, setSort)}
            className="browser-default custom-select"
          >
            <option value="">Не выбрано</option>
            <option value="Алфавит ↑">Алфавит ↑</option>
            <option value="Алфавит ↓">Алфавит ↓</option>
            <option value="Цена ↑">Цена ↑</option>
            <option value="Цена ↓">Цена ↓</option>
          </select>
        </MDBNavItem>
        <MDBNavItem>
          <MDBBtn
              color='dark'
            className="text-white"
            onClick={handleFilterChange}
          >
            Подтвердить
          </MDBBtn>
        </MDBNavItem>
      </MDBCollapse>
    </MDBNavbarNav>
  </MDBNavbar>
);

export default FilterNavBar;
