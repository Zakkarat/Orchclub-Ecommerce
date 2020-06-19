import { useEffect, useState } from "react";

const useAuth = (router) => {
  useEffect(() => {
    const getAuth = async () => {
      await fetch(`https://orchclub-ecommerce.herokuapp.com/auth/verify`, {
        credentials: "include",
      }).then((data) => {
        if (data.status !== 200) {
          router.replace("/auth/login");
        }
      });
    };
    getAuth();
  }, []);
};

export default useAuth;
