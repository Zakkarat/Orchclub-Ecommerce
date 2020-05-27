import React, { useState } from "react";
import Link from "next/link";
import { useRouter } from "next/router";
import {
  MDBNavbar,
  MDBNavbarBrand,
  MDBNavbarNav,
  MDBNavItem,
  MDBBtn,
  MDBNavbarToggler,
  MDBCollapse,
  MDBFormInline,
  MDBDropdown,
  MDBDropdownToggle,
  MDBDropdownMenu,
  MDBDropdownItem,
  MDBIcon,
} from "mdbreact";
import useFetch from "../hooks/useFetch";
import { changeFilters } from "../redux/actions";
import { connect } from "react-redux";
import setValue from "../helpers/setValue";

const NavBar = (props) => {
  const router = useRouter();
  const isLogged = useFetch("http://localhost:9000/auth/verify");
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
      <MDBNavbar
        color="white"
        light
        expand="md"
        className="pt-3 fixed-top pointer"
      >
        <MDBNavbarBrand>
          <Link href="/">
            <strong>OrchClub</strong>
          </Link>
        </MDBNavbarBrand>
        <MDBNavbarToggler onClick={() => setIsOpen(!isOpen)} right />
        <MDBCollapse id="navbarCollapse3" isOpen={isOpen} navbar>
          {!router.pathname.slice(1) ? (
            <MDBNavbarNav className="align-items-center">
              <MDBNavItem className="search d-flex" xl="3">
                <MDBFormInline className="search" waves>
                  <div className="lg-form my-0 search">
                    <input
                      value={search}
                      onChange={({ target }) => setSearch(target.value)}
                      className="form-control mr-lg-2 search text-center"
                      type="text"
                      placeholder="Search"
                      aria-label="Search"
                    />
                  </div>
                </MDBFormInline>
                <MDBBtn
                  color="black"
                  className="text-white"
                  onClick={handleFilterChange}
                >
                  <MDBIcon icon="search"></MDBIcon>
                </MDBBtn>
              </MDBNavItem>
              <MDBNavItem>
                <MDBBtn
                  color="white"
                  onClick={() => setSecondBar(!secondBar)}
                  className="btn-nav"
                >
                  Фильтр
                </MDBBtn>
              </MDBNavItem>
            </MDBNavbarNav>
          ) : (
            ""
          )}
          <MDBNavbarNav right>
            <MDBNavItem className="mr-5">
              <MDBDropdown>
                <MDBDropdownToggle className="black-dropdown" nav caret>
                  <span className="mr-2">
                    <MDBIcon icon="user"></MDBIcon>
                  </span>
                </MDBDropdownToggle>
                <MDBDropdownMenu className="mr-5">
                  {isLogged.status === 200 ? (
                    <>
                      <MDBDropdownItem href="/payment">Корзина</MDBDropdownItem>
                      <MDBDropdownItem href="/orders">
                        Мои заказы
                      </MDBDropdownItem>
                    </>
                  ) : (
                    <>
                      <MDBDropdownItem href="/auth/login">
                        Войти
                      </MDBDropdownItem>
                      <MDBDropdownItem href="/auth/register">
                        Зарегистрироваться
                      </MDBDropdownItem>
                    </>
                  )}
                </MDBDropdownMenu>
              </MDBDropdown>
            </MDBNavItem>
          </MDBNavbarNav>
        </MDBCollapse>
      </MDBNavbar>
      {secondBar && (
        <MDBNavbar
          expand="lg"
          color="white"
          className="pt-3 fixed-top filters "
        >
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
                  onChange={({ target }) =>
                    setPriceRange(
                      Object.assign({}, priceRange, {
                        min: parseInt(target.value),
                      })
                    )
                  }
                ></input>{" "}
                &nbsp; до &nbsp;
                <input
                  className="form-control search text-center price-block p-0"
                  type="number"
                  value={priceRange.max}
                  onChange={({ target }) =>
                    setPriceRange(
                      Object.assign({}, priceRange, {
                        max: parseInt(target.value),
                      })
                    )
                  }
                ></input>
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
                  color="black"
                  className="text-white"
                  onClick={handleFilterChange}
                >
                  Подтвердить
                </MDBBtn>
              </MDBNavItem>
            </MDBCollapse>
          </MDBNavbarNav>
        </MDBNavbar>
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
