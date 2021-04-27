import axios from "axios";

export const API = axios.create({
  baseURL: "http://api.jouzie.onlinecamp.id:5000",
});

const setAuth = (token) => {
  if (token) {
    axios.defaults.headers.common["Authorization"] = token;
  } else {
    delete axios.defaults.headers.common["Authorization"];
  }
};

export default setAuth;
