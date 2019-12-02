- add data into the database

-- add for user table
INSERT INTO User(Username, Email, Password) VALUES ('birdsrcool', 'robert@gmail.com', 'password123');
INSERT INTO User(Username, Email, Password) VALUES ('rbg1', 'ruthbaderginsberg@gmail.com', 'secret');
INSERT INTO User(Username, Email, Password) VALUES ('dennis', 'dennis@gmail.com', 'mybirthday');
INSERT INTO User(Username, Email, Password) VALUES ('fred12', 'fred12@gmail.com', '%^&$yikes');
INSERT INTO User(Username, Email, Password) VALUES ('jane_smith', 'jane@gmail.com', 'cats247');

--add for profile
INSERT INTO Profile(ProfileID, FirstName, MiddleName, LastName, Description) VALUES (1, 'Robert', 'James', 'Smith', 'bird lover based in NYC' );
INSERT INTO Profile(ProfileID, FirstName, MiddleName, LastName, Description) VALUES (2, 'Ruth', 'Bader', 'Ginsberg', 'supreme court justice by day, mushroom forager by night' );
INSERT INTO Profile(ProfileID, FirstName, LastName, Description) VALUES (3, 'Dennis', 'Gross', 'lover of all things birds and flowers' );
INSERT INTO Profile(ProfileID, FirstName, LastName, Description) VALUES (4, 'Fred', 'Armisen', 'tree hugger');
INSERT INTO Profile(ProfileID, FirstName, MiddleName, LastName, Description) VALUES (5, 'Jane', 'Eleanor', 'Smith', 'travelling the world! exploring new places!');

--add for Has
INSERT INTO Has(ProfileID, Username) VALUES (1, 'birdsrcool' );
INSERT INTO Has(ProfileID, Username) VALUES (2, 'rbg1' );
INSERT INTO Has(ProfileID, Username) VALUES (3, 'dennis' );
INSERT INTO Has(ProfileID, Username) VALUES (4, 'fred12' );
INSERT INTO Has(ProfileID, Username) VALUES (5, 'jane_smith' );

--------------------------------------------------------------------------------------------------------------
--add for blog
INSERT INTO Blog(Name, Description) VALUES ('birding101', 'birdwatching things');
INSERT INTO Blog(Name, Description) VALUES ('mushrooms_for_all', 'blog detailing my adventures in foraging for mushrooms');
INSERT INTO Blog(Name, Description) VALUES ('flowerboy', 'Hi I am Dennis and I love birds and flowers.');
INSERT INTO Blog(Name, Description) VALUES ('speaksforthetrees', 'Tree and plant enthusiast');
INSERT INTO Blog(Name, Description) VALUES ('naturerocks', 'world traveller sharing what I find along the way');

--add for runs
INSERT INTO Runs(Username, Name) VALUES ('birdsrcool', 'birding101');
INSERT INTO Runs(Username, Name) VALUES ('rbg1', 'mushrooms_for_all');
INSERT INTO Runs(Username, Name) VALUES ('dennis', 'flowerboy');
INSERT INTO Runs(Username, Name) VALUES ('fred12', 'speaksforthetrees');
INSERT INTO Runs(Username, Name) VALUES ('jane_smith', 'naturerocks');

-- START ADDING HERE !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

--add posts
INSERT INTO Post(PostID, Title, Date, Photo, TextContent, City, State, Country) VALUES (11, 'Robin Watching', '12/03/2018', 'robin.jpeg', 'Today I spotted a beautiful robin. It was protecting its bright blue eggs.', 'Bhubaneswar', 'Odisha', 'India');
INSERT INTO Post(PostID, Title, Date, Photo, TextContent, City, State, Country) VALUES (12, 'Reishi Mushroom', '01/12/2019', 'reishi.jpeg', 'These mushrooms are red-variant kidney shapped.', 'Agusta', 'Maine', 'USA');
INSERT INTO Post(PostID, Title, Date, Photo, TextContent, City, State, Country) VALUES (13, 'Orchids in wild', '05/20/2019', 'orchids.jpeg', 'Orchids are beautifu and look like as if they float in the air.', 'Portland', 'Oregon', 'USA');
INSERT INTO Post(PostID, Title, Date, Photo, TextContent, City, State, Country) VALUES (14, 'Endangered Dragon Trees', '07/25/2019', 'dragontrees.jpeg', 'We should put our efforts in saving these endangered trees', 'Morocco', 'Maderia', 'Carpe Islands');
INSERT INTO Post(PostID, Title, Date, Photo, TextContent, City, State, Country) VALUES (15, 'Deer in headlights', '11/30/2019', 'deer.jpg', 'Saw a deer in a small island in the middle of the Mississippi, he must have swam there!', 'La Crosse', 'Wisconsin', 'USA');

--add contains table
INSERT INTO Contains( Name, PostID ) VALUES ('birding101', 1 );
INSERT INTO Contains( Name, PostID ) VALUES ('mushrooms_for_all', 2);
INSERT INTO Contains( Name, PostID ) VALUES ('flowerboy' , 3);
INSERT INTO Contains( Name, PostID ) VALUES ('speaksforthetrees' , 4);
INSERT INTO Contains( Name, PostID ) VALUES ('naturerocks' , 5);

--comments_On (ADD COMMENT TEXT/BLOB ?????????????????? )
INSERT INTO Comments_On(Username, PostID, Timestamp) VALUES ('birdsrcool', 2, '2019-11-09 01:11:22');
INSERT INTO Comments_On(Username, PostID, Timestamp) VALUES ('dennis', 1, '2019-12-12 19:17:03');
INSERT INTO Comments_On(Username, PostID, Timestamp) VALUES ('rbg1', 5, '2019-04-01 12:02:57');
INSERT INTO Comments_On(Username, PostID, Timestamp) VALUES ('fred12', 1, '2019-12-11 03:20:20');
INSERT INTO Comments_On(Username, PostID, Timestamp) VALUES ('rbg1', 5, '2019-04-02 01:04:33');

-- add follow 
INSERT INTO Follows(Username, Name) VALUES ('birdsrcool', 'naturerocks');
INSERT INTO Follows(Username, Name) VALUES ('rbg1', 'naturerocks');
INSERT INTO Follows(Username, Name) VALUES ('rbg1', 'birding101');
INSERT INTO Follows(Username, Name) VALUES ('dennis', 'speaksforthetrees');
INSERT INTO Follows(Username, Name) VALUES ('dennis', 'rbg1');

-------------------------------------------------ADD here ------------------------------------------------------------------------

--add Nature Item
INSERT INTO NatureItem( SpeciesID, Species, Characteristics) VALUES (1, 'Robin', 'bird ');
INSERT INTO NatureItem( SpeciesID, Species, Characteristics) VALUES (2, 'Reishi Mushroom', 'mushroom plant fungi');
INSERT INTO NatureItem( SpeciesID, Species, Characteristics) VALUES (3, 'Orchid', 'orchid flower plant');
INSERT INTO NatureItem( SpeciesID, Species, Characteristics) VALUES (4, 'Dragon Tree', 'endangered tree plant');
INSERT INTO NatureItem( SpeciesID, Species, Characteristics) VALUES (5, 'Deer', 'deer animal');

--add Affiliated
INSERT INTO Affiliated( SpeciesID, PostID ) VALUES (1, 1);
INSERT INTO Affiliated( SpeciesID, PostID ) VALUES (2, 2);
INSERT INTO Affiliated( SpeciesID, PostID ) VALUES (3, 3);
INSERT INTO Affiliated( SpeciesID, PostID ) VALUES (4, 4);
INSERT INTO Affiliated( SpeciesID, PostID ) VALUES (5, 5);
