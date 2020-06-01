const apps = [
  {{#each microApps}}
  {
    name: {{this.name}},
    entry: {{this.entry}},
    container: {{this.container}},
    activeRule: {{this.activeRule}},
  },
  {{/each}}
];

export default apps;
