module.exports = {
  apps: [
    {
      name: "express",
      script: "index.js", // Your entry point
      instances: 1,
      autorestart: true, // THIS is the important part, this will tell PM2 to restart your app if it falls over
      max_memory_restart: "1G",
    },
  ],
};
