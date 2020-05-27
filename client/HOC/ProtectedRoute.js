import React, { useEffect } from "react";
import { useRouter, Router } from "next/router";
import useAuth from "../hooks/useAuth";

const ProtectedRoute = ({ children }) => {
  const router = useRouter();
  useAuth(router);
  return <div>{children}</div>;
};

export default ProtectedRoute;
