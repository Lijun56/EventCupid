CREATE DATABASE IF NOT EXISTS EventCupid;
USE EventCupid;
CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    Username VARCHAR(50),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(20),
    UserType ENUM('Organizer', 'Manager')
);

CREATE TABLE ServiceBundles (
    BundleID INT PRIMARY KEY,
    BundlePrice DECIMAL(10, 2)
);

CREATE TABLE Venues (
    VenueID INT PRIMARY KEY,
    ManagerID INT,
    VenueName VARCHAR(100),
    Address VARCHAR(500),
    MaxCapacity INT,
    FOREIGN KEY (ManagerID) REFERENCES Users(UserID)
);

CREATE TABLE Vendors (
    VendorID INT PRIMARY KEY,
    VendorName VARCHAR(100),
    ServiceCategory VARCHAR(50),
    Description VARCHAR(500),
    BasePrice DECIMAL(10, 2)
);

CREATE TABLE Services (
    ServiceID INT PRIMARY KEY,
    VendorID INT DEFAULT NULL,
    BundleID INT DEFAULT NULL,
    ServiceName VARCHAR(100),
    Description VARCHAR(500),
    Price DECIMAL(10, 2),
    FOREIGN KEY (VendorID) REFERENCES Vendors(VendorID) ON DELETE CASCADE,
    FOREIGN KEY (BundleID) REFERENCES ServiceBundles(BundleID) ON DELETE CASCADE
);

CREATE TABLE Events (
    EventID INT PRIMARY KEY,
    VenueID INT,
    OrganizerID INT,
    EventName VARCHAR(100),
    EventType VARCHAR(50),
    EventDate DATE,
    Budget DECIMAL(10, 2),
    Description VARCHAR(500),
    FOREIGN KEY (VenueID) REFERENCES Venues(VenueID) ON DELETE CASCADE,
    FOREIGN KEY (OrganizerID) REFERENCES Users(UserID) ON DELETE CASCADE
);

CREATE TABLE Reviews (
    ReviewID INT PRIMARY KEY,
    ServiceID INT,
    VenueID INT,
    UserID INT,
    Rating INT,
    Comment VARCHAR(1000),
    ReviewDate DATE,
    FOREIGN KEY (ServiceID) REFERENCES Services(ServiceID) ON DELETE CASCADE,
    FOREIGN KEY (VenueID) REFERENCES Venues(VenueID) ON DELETE CASCADE,
    FOREIGN KEY (UserID) REFERENCES Users(UserID) ON DELETE CASCADE
);