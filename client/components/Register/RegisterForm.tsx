import React from "react";
import {
  MDBBtn,
  MDBCard,
  MDBCardBody,
  MDBInput,
  MDBCol,
  MDBIcon,
} from "mdbreact";
import MenuItem from "@material-ui/core/MenuItem";
import InputLabel from "@material-ui/core/InputLabel";
import FormControl from "@material-ui/core/FormControl";
import Select from "@material-ui/core/Select";
import cities from "../../libs/ua-cities.json";
import setValue from "../../helpers/setValue";
import {IRegisterFormProps} from "../../interfaces/components/IRegisterProps";

const RegisterForm = ({
  name,
  setName,
  password,
  setPassword,
  region,
  setRegion,
  city,
  setCity,
  adress,
  setAdress,
  phone,
  handleValidPhone,
  handleSubmit,
  error,
}:IRegisterFormProps) => (
  <MDBCard id="classic-card">
    <MDBCardBody className="black-text">
    <form>
      <h3 className="text-center"> Регистрация:</h3>
      <hr className="hr-light" />
      <MDBInput
        validate
        className="black-text"
        iconClass="black-text"
        label="Ваше имя"
        icon="user"
        value={name}
        onChange={(e) => setValue(e, setName)}
      />
      <MDBInput
      validate
        className="black-text"
        iconClass="black-text"
        label="Ваш пароль"
        icon="lock"
        type="password"
        value={password}
        onChange={(e) => setValue(e, setPassword)}
      />
      <MDBCol className="d-flex align-content-center px-0">
        <MDBIcon className="pt-3 ic-32 font-size-fix" icon="mountain" />
        <FormControl className="ml-2 w-100">
          <InputLabel id="demo-simple-select-label">Регион</InputLabel>
          <Select
            labelId="demo-simple-select-label"
            id="demo-simple-select"
            value={region}
            onChange={(e) => setValue(e, setRegion)}
            required
          >
            {cities[0].regions.map((region, i) => (
              <MenuItem key={i} value={region.name}>
                {region.name}
              </MenuItem>
            ))}
          </Select>
        </FormControl>
      </MDBCol>
      
      <MDBCol className="d-flex align-content-center px-0 mt-3">

        <MDBIcon className="pt-3 ic-32 font-size-fix" icon="city" />
        <FormControl className="ml-2 w-100">
          <InputLabel id="demo-simple-select-label">Город</InputLabel>
          <Select
          required
            disabled={!region}
            labelId="demo-simple-select-label"
            id="demo-simple-select"
            value={city}
            onChange={(e) => setValue(e, setCity)}
          >
            {region &&
              cities[0].regions
                .filter((elem) => elem.name === region)[0]
                .cities.map((city, i) => (
                  <MenuItem key={i} value={city.name}>
                    {city.name}
                  </MenuItem>
                ))}
          </Select>
        </FormControl>
      </MDBCol>
      <MDBInput
      required
        className="black-text mb-2"
        iconClass="black-text"
        label="Ваш адресс"
        icon="map-signs"
        type="text"
        value={adress}
        onChange={(e) => setValue(e, setAdress)}
      />
      <MDBInput
      required
        className="black-text mb-2"
        iconClass="black-text"
        label="Ваш телефон"
        icon="phone"
        type="phone"
        value={phone}
        onChange={(e) => handleValidPhone(e)}
      />
      {error && (
        <p className="text-center text-danger">
          Проверьте правильность введенных данных.
        </p>
      )}
      <div className="text-center mt-4 white-text">
        <MDBBtn color="dark" type="submit" onClick={handleSubmit} className="white-text">
          Подтвердить
        </MDBBtn>
      </div>
      </form>
    </MDBCardBody>
  </MDBCard>
);

export default RegisterForm;
