USE testDB;
GO

-- Users ცხრილი
CREATE TABLE Users (
    UserId INT PRIMARY KEY,
    UserName NVARCHAR(50) NOT NULL
);

-- UserProfiles ცხრილი (One-to-One)
CREATE TABLE UserProfiles (
    UserId INT PRIMARY KEY,
    BirthDate DATE,
    City NVARCHAR(50),
    CONSTRAINT FK_UserProfiles_Users
        FOREIGN KEY (UserId)
        REFERENCES Users(UserId)
);
