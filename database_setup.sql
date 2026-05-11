
CREATE DATABASE IF NOT EXISTS monitoring
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

USE monitoring;

CREATE TABLE IF NOT EXISTS senzori (
  id          INT          NOT NULL AUTO_INCREMENT,
  temperatura DECIMAL(5,2) NOT NULL COMMENT 'Температура во степени Целзиусови',
  vlaga       DECIMAL(5,2) NOT NULL COMMENT 'Релативна влага во проценти',
  vreme       DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Датум и час на мерење',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE INDEX idx_vreme ON senzori (vreme);

INSERT INTO senzori (temperatura, vlaga) VALUES (22.50, 54.30);

SELECT * FROM senzori;