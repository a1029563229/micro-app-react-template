import React, { Suspense, useState, useEffect } from "react";
import { Menu } from "antd";
import { BrowserRouter as Router, Route, Switch, Link } from "react-router-dom";

import Home from "./pages/home";
{{#if isMain}}
import "./App.css";

const menus = [
  {
    key: "react",
    route: "/",
    title: "主页",
  },
];

const Frame = () => <section id="frame"></section>;

const App = () => {
  const [refresh, setRefresh] = useState(0);
  const [selectedKeys, setSelectKeys] = useState(["react"]);
  useEffect(() => {
    const { pathname } = window.location;
    const menu = menus.find((item) => item.route === pathname);
    setSelectKeys(() => [menu ? menu.key : "react"]);
  }, [refresh]);

  // 设置路由命名空间
  return (
    <Router>
      <section id="cns-main-app">
        <section className="cns-menu-wrapper">
          <Menu
            theme="dark"
            mode="vertical"
            style={{ width: 200, height: "100%" }}
            selectedKeys={selectedKeys}
            onClick={() => setRefresh((refresh) => ++refresh)}
          >
            {menus.map((item) => (
              <Menu.Item key={item.key}>
                <Link to={item.route}>{item.title}</Link>
              </Menu.Item>
            ))}
          </Menu>
        </section>
        <section className="cns-frame-wrapper">
          <Suspense fallback={null}>
            <Switch>
              <Route exact path="/" component={Home} />
              <Route path="*" component={Frame} />
            </Switch>
          </Suspense>
        </section>
      </section>
    </Router>
  );
};
{{else}}
import List from "./pages/list";

const menus = [
  {
    key: "react",
    route: "/",
    title: "主页",
  },
  {
    key: "react-list",
    route: "/list",
    title: "列表页",
  },
];

const BASE_NAME = window.__POWERED_BY_QIANKUN__ ? "/react" : "";

const App = () => {
  const [refresh, setRefresh] = useState(0);
  const [selectedKeys, setSelectKeys] = useState(["react"]);
  useEffect(() => {
    const { pathname } = window.location;
    const menu = menus.find((item) => `${BASE_NAME}${item.route}` === pathname);
    setSelectKeys(() => [menu ? menu.key : "react"]);
  }, [refresh]);

  // 设置路由命名空间
  return (
    <Router basename={BASE_NAME}>
      <section>
        <Menu
          onClick={() => setRefresh((refresh) => ++refresh)}
          selectedKeys={selectedKeys}
          mode="horizontal"
        >
          {menus.map((item) => (
            <Menu.Item key={item.key}>
              <Link to={item.route}>{item.title}</Link>
            </Menu.Item>
          ))}
        </Menu>
        <Suspense fallback={null}>
          <Switch>
            <Route exact path="/" component={Home} />
            <Route path="/list" component={List} />
          </Switch>
        </Suspense>
      </section>
    </Router>
  );
};
{{/if}}
export default App;