import React from "react";
import withRedux from "next-redux-wrapper";
import {createStore, Store} from "redux";
import { Provider } from "react-redux";
import reducer from "../redux/reducers";
import "bootstrap-css-only/css/bootstrap.min.css";
import {AppProps} from "next/app";

interface Props {
    store:Store
}

const makeStore = (initialState:Object) => {
  return createStore(reducer, initialState);
};

const MyApp = ({ Component, pageProps, store }:AppProps & Props) => {
  return (
    <Provider store={store}>
      <Component {...pageProps} />
    </Provider>
  );
};

export default withRedux(makeStore)(MyApp);
