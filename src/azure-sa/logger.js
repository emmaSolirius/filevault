const winston = require('winston');

const logger = winston.createLogger({
  level: 'info',
  format: winston.format.json(),
  transports: [
    new winston.transports.Console() // This logs to stdout
  ]
});

// Example usage
logger.info('This is an info message');
logger.error('This is an error message');

module.exports = logger;
