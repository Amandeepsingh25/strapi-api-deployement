module.exports = () => ({
  host: '0.0.0.0',
  port: 1337,
  app: {
    keys: ["FkCRjbndTDCiyifG+Kl1Ig==", "fe5fCRmaKad5u5na307DUQ==", "w3hBTce8o1q6MlCWmuu51g==", "zjHq0xA5sfnAOmMRLivuJA=="],
  },
  webhooks: {
    populateRelations: false,
  },
  apiToken: {
    salt: 'o27BzpPVn+hV1eOOhlW6yA==',
  },
  admin: {
    auth: {
      secret: 'uBipVEdYY3YJFSQhJIg6fg==',
    },
  },
  transfer: {
    token: {
      salt: 'OAPV5e8N5zx3nrgmJZcG+g==',
    },
  },
  database: {
    client: 'sqlite',
    connection: {
      filename: '.tmp/data.db',
    },
  },
  jwt: {
    secret: 'Xs38vABG+SKPR5YkO1XifA==',
  },
});
