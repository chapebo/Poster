CREATE TABLE User (
    UniqueID        INT PRIMARY KEY AUTO_INCREMENT,
    id              VARCHAR(50) UNIQUE NOT NULL,
    name            VARCHAR(100) NOT NULL,
    surname         VARCHAR(100) NOT NULL,
    email           VARCHAR(255) UNIQUE NOT NULL,
    phone           VARCHAR(20),
    password        VARCHAR(255) NOT NULL,
    avatar          VARCHAR(500),
    role            ENUM('user', 'admin') DEFAULT 'user'
);

CREATE TABLE Events (
    UniqueID        INT PRIMARY KEY AUTO_INCREMENT,
    id              VARCHAR(50) NOT NULL,
    title           VARCHAR(255),
    url             VARCHAR(500),
    description     TEXT,
    shortDescription VARCHAR(500),
    categories      VARCHAR(255),
    location        VARCHAR(255),
    price           DECIMAL(10, 2),
    seats           INT
);

CREATE TABLE Bookings (
    UniqueID        INT PRIMARY KEY AUTO_INCREMENT,
    id              VARCHAR(50) NOT NULL,
    userId          INT NOT NULL,
    eventId         INT NOT NULL,
    status          VARCHAR(50),
    seatsCount      INT,
    totalPrice      DECIMAL(12, 2),
    contactName     VARCHAR(200),
    contactEmail    VARCHAR(255),
    contactPhone    VARCHAR(20),
    FOREIGN KEY (userId) REFERENCES User(UniqueID),
    FOREIGN KEY (eventId) REFERENCES Events(UniqueID)
);
