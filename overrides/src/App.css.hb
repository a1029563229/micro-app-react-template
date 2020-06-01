#main-root {
  height: 100%;
}

{{#if isMain}}
#cns-main-app {
  height: 100%;
  position: relative;
}

#cns-main-app .cns-menu-wrapper {
  position: fixed;
  left: 0;
  top: 0;
  bottom: 0;
  z-index: 40;
  width: 172px;
  overflow-x: hidden;
  overflow-y: auto;
}

#cns-main-app .cns-nav-wrapper {
  position: fixed;
  width: 100%;
  min-width: 1060px;
  padding-left: 172px;
  left: 0;
  top: 0;
  z-index: 30;
}

.cns-frame-wrapper {
  padding-left: 172px;
  flex-grow: 1;
  height: 100%;
  width: 100%;
  position: relative;
}

#cns-frame {
  width: 100%;
  height: 100%;
}

#cns-frame> :first-child {
  height: 100%;
}
{{/if}}