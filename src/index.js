import React from "react";
import ReactDOM from "react-dom";
import "antd/dist/antd.css";

import App from "./App.jsx";
import startQiankun from "./micro";

// 初始化微前端
startQiankun();

ReactDOM.render(<App />, document.getElementById("main-root"));
