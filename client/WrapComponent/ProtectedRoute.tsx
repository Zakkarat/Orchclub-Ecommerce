import React, {FunctionComponent} from "react";
import { useRouter } from "next/router";
import useAuth from "../hooks/useAuth";

const ProtectedRoute:FunctionComponent = ({ children }) => {
  const router = useRouter();
  useAuth(router);
  return <div>{children}</div>;
};

export default ProtectedRoute;
