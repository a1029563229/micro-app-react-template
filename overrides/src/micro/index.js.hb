import apps from "./apps";
import NProgress from "nprogress";
import "nprogress/nprogress.css";
import {
  registerMicroApps,
  addGlobalUncaughtErrorHandler,
  runAfterFirstMounted,
  start,
} from "qiankun";

registerMicroApps(apps, {
  beforeLoad: (app) => {
    NProgress.start();
    console.log("before load", app.name);
    return Promise.resolve();
  },
  afterMount: (app) => {
    NProgress.done();
    console.log("after mount", app.name);
    return Promise.resolve();
  },
});

addGlobalUncaughtErrorHandler((event) => {
  const { message } = event;
  if (message && message.includes("died in status LOADING_SOURCE_CODE")) {
    const frame = document.getElementById("frame");
    frame.innerHTML = "应用加载失败，请检查应用是否可运行";
  }
});

runAfterFirstMounted(() => {
  console.log("[MainApp] first app mounted");
});

export default start;
