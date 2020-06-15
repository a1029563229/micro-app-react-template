{
  "name": "micro-app-react",
  "version": "0.1.0",
  "private": true,
  "dependencies": {
    "antd": "^4.0.3",
    "axios": "^0.19.2",
    "cra-template": "1.0.3",
    "react": "^16.13.1",
    "react-dom": "^16.13.1",
    "react-router-dom": "^5.1.2",
    "react-scripts": "3.4.1"{{#if hasExternals}},{{/if}}
    {{#if hasExternals}}{{{externals}}}{{/if}}
  },
  "devDependencies": {
    "eslint": "6.6.0",
    "npm-force-resolutions": "^0.0.3",
    "react-app-rewired": "^2.1.6"
  },
  "resolutions": {
    "moment": "2.24.0"
  },
  "preinstall": "npx npm-force-resolutions",
  "scripts": {
    "start": "react-app-rewired start",
    "build": "react-app-rewired build",
    "test": "react-app-rewired test",
    "eject": "react-app-rewired eject"
  },
  "browserslist": {
    "production": [
      ">0.2%",
      "not dead",
      "not op_mini all"
    ],
    "development": [
      "last 1 chrome version",
      "last 1 firefox version",
      "last 1 safari version"
    ]
  }
}
