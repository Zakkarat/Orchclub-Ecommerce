import withRedux from "next-redux-wrapper";
import { createStore, compose } from "redux";
import { Provider } from "react-redux";
import reducer from "../redux/reducers";
import "bootstrap-css-only/css/bootstrap.min.css";

const makeStore = (initialState, options) => {
  return createStore(reducer, initialState);
};

const MyApp = ({ Component, pageProps, store }) => {
  return (
    <Provider store={store}>
      <Component {...pageProps} />
    </Provider>
  );
};

export default withRedux(makeStore)(MyApp);
