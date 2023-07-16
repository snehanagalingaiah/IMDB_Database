CREATE TABLE `moviedatabase`.`movie` (
  `MovieID` INT NOT NULL,
  `MovieName` VARCHAR(45) NULL,
  PRIMARY KEY (`MovieID`));
  
  CREATE TABLE `moviedatabase`.`movie_genre` (
  `MovieID` INT NOT NULL,
  `GenreID` INT NOT NULL,
  PRIMARY KEY (`MovieID`, `GenreID`));
  
  CREATE TABLE `moviedatabase`.`genre` (
  `GenreID` INT NOT NULL,
  `Name` VARCHAR(45) NULL,
  PRIMARY KEY (`GenreID`));
  
  CREATE TABLE `moviedatabase`.`media` (
  `MediaID` INT NOT NULL,
  `FilePath` longtext NULL,
  PRIMARY KEY (`MediaID`));
  
  CREATE TABLE `moviedatabase`.`movie_media` (
  `MovieID` INT NOT NULL,
  `MediaID` INT NOT NULL,
  PRIMARY KEY (`MovieID`, `MediaID`));
  
  CREATE TABLE `moviedatabase`.`reviews` (
  `ReviewsID` INT NOT NULL,
  `ReviewText` longtext NULL,
  `UserID` INT NULL,
  PRIMARY KEY (`ReviewsID`));
  
  CREATE TABLE `moviedatabase`.`users` (
  `UserID` INT NOT NULL,
  `UserName` VARCHAR(45) NULL,
  PRIMARY KEY (`UserID`));
  
  CREATE TABLE `moviedatabase`.`movie_reviews` (
  `MovieID` INT NOT NULL,
  `ReviewID` INT NOT NULL,
  PRIMARY KEY (`MovieID`, `ReviewID`));
  
  
  CREATE TABLE `moviedatabase`.`artist` (
  `ArtistID` INT NOT NULL,
  `ArtistName` VARCHAR(45) NULL,
  PRIMARY KEY (`ArtistID`));
  
  CREATE TABLE `moviedatabase`.`skills` (
  `skillID` INT NOT NULL,
  `SkillName` VARCHAR(45) NULL,
  PRIMARY KEY (`skillID`));
  
  CREATE TABLE `moviedatabase`.`artist_skills` (
  `ArtistID` INT NOT NULL,
  `SkillID` INT NOT NULL,
  PRIMARY KEY (`ArtistID`, `SkillID`));
  
  CREATE TABLE `roles` (
  `RoleID` int NOT NULL,
  `RoleName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`RoleID`)) ;

  CREATE TABLE `moviedatabase`.`movie_role` (
  `MovieID` INT NOT NULL,
  `RoleID` INT NOT NULL,
  `ArtistID` INT NOT NULL,
  PRIMARY KEY (`MovieID`, `RoleID`, `ArtistID`));
  
  