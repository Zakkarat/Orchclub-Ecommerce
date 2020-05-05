import React, { useState } from "react";
import Link from "next/link";
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
import {changeFilters} from  "../redux/actions";
import {connect} from "react-redux";

const NavBar = (props) => {
  const isLogged = useFetch("http://localhost:9000/auth/verify");
  const [size, setSize] = useState("0");
  const [sort, setSort] = useState("0");
  console.log(props);
  return (
    <>
      <MDBNavbar color="white" expand="md" className="pt-3 fixed-top">
        <MDBNavbarBrand>
          <Link href="/">
            <strong>OrchClub</strong>
          </Link>
        </MDBNavbarBrand>
        <MDBNavbarToggler />
        <MDBCollapse id="navbarCollapse3" navbar>
          <MDBNavbarNav className="align-items-center">
            <MDBNavItem className="search" xl="3">
              <MDBFormInline className="search" waves>
                <div className="lg-form my-0 search">
                  <input
                    className="form-control mr-lg-2 search text-center"
                    type="text"
                    placeholder="Search"
                    aria-label="Search"
                  />
                </div>
              </MDBFormInline>
            </MDBNavItem>
            <MDBNavItem>
              <MDBBtn className="btn-nav">Фильтр</MDBBtn>
            </MDBNavItem>
          </MDBNavbarNav>
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
                      <MDBDropdownItem href="#!">Мои данные</MDBDropdownItem>
                      <MDBDropdownItem href="/payment">Корзина</MDBDropdownItem>
                      <MDBDropdownItem href="/orders">
                        Мои заказы
                      </MDBDropdownItem>
                    </>
                  ) : (
                    <>
                      <MDBDropdownItem href="/auth">Войти</MDBDropdownItem>
                      <MDBDropdownItem href="payment">
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
      <MDBNavbar color="white" className="pt-3 fixed-top filters ">
        <MDBNavbarNav className="flex-row justify-content-center search">
          <MDBNavItem className="d-flex align-items-center">
            Цена от &nbsp;
            <input
              className="form-control search text-center price-block p-0"
              type="text"
            ></input>{" "}
            &nbsp; до &nbsp;
            <input
              className="form-control search text-center price-block p-0"
              type="text"
            ></input>
            &nbsp; грн.
          </MDBNavItem>
          <MDBNavItem className="d-flex align-items-center">
            Размер:&nbsp;
            <select
              value={size}
              onChange={(target) => setSize(target.value)}
              className="browser-default custom-select"
            >
              <option value="0">Не выбрано</option>
              <option value="1">F/S</option>
              <option value="2">B/S</option>
              <option value="3">NB/S</option>
              <option value="4">S/S</option>
            </select>
          </MDBNavItem>
          <MDBNavItem className="d-flex align-items-center">
            Сортировать:&nbsp;
            <select
              value={sort}
              onChange={(target) => setSort(target.value)}
              className="browser-default custom-select"
            >
              <option value="0">Не выбрано</option>
              <option value="1">Алфавит ↑</option>
              <option value="2">Алфавит ↓</option>
              <option value="3">Цена ↑</option>
              <option value="4">Цена ↓</option>
            </select>
          </MDBNavItem>
          <MDBNavItem>
              <MDBBtn color="black" className="text-white">Подтвердить</MDBBtn>
            </MDBNavItem>
        </MDBNavbarNav>
      </MDBNavbar>
    </>
  );
};

const mapDispatchToProps = {
  changeFilters
}

const mapStateToProps = ({filters}) => {
  filters
}
 
export default connect(mapStateToProps,mapDispatchToProps)(NavBar);
