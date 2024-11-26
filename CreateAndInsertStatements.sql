create table ZipCode (ZipCodeID int not null primary key,
ZipCode int not null,
City varchar(100) not null,
[State] char(2) not null)

create table Employee (EmpID int not null primary key,
EmpFirstName varchar(50) not null,
EmpLastName varchar(50) not null,
EmpStreetAddress varchar(100) not null,
ZipCodeID int not null foreign key references ZipCode(ZipCodeID),
EmpPhoneNumber char(12) not null,
EmpEmail varchar(100) not null)

create table SoundFile (SoundFileID int not null primary key,
SoundFileName varchar(50) not null,
SoundFileStatus varchar(8) not null)

create table Customer (CustomerID int not null primary key,
CustFirstName varchar(50) not null,
CustLastName varchar(50) not null,
CustStreetAddress varchar(100) not null,
CustEmail varchar(100) not null,
CustPhoneNumber char(12) not null,
CustAccBalance decimal(10,2) not null,
CustLastPaymentDate date not null,
ZipCodeID int not null foreign key references ZipCode(ZipCodeID),
SoundFileID int foreign key references SoundFile(SoundFileID))

create table PricingPlan (PricingPlanID int not null primary key,
PlanName varchar(100) not null,
PlanDescription varchar(20) not null,
MonthlyFee decimal(5,2) not null,
MaxRideDuration int not null)

create table CustomerPricingPlan (CustomerPricingPlanID int not null primary key,
CustomerID int not null foreign key references Customer(CustomerID),
PricingPlanID int not null foreign key references PricingPlan(PricingPlanID),
DateBought date not null,
DateEnded date,
PricingPlanStatus varchar(10) not null)


insert into ZipCode (ZipCodeID, ZipCode, City, State) values 
(1, 32301, 'Tallahassee', 'FL'),
(2, 32304, 'Tallahassee', 'FL'),
(3, 32310, 'Tallahassee', 'FL'),
(4, 32306, 'Tallahassee', 'FL'),
(5, 30022, 'Johns Creek', 'GA'),
(6, 30022, 'Alpharetta', 'GA'),
(7, 30005, 'Alpharetta', 'GA'),
(8, 32605, 'Gainesville', 'FL'),
(9, 32667, 'Micanopy', 'FL'),
(10, 32784, 'Umatilla', 'FL'),
(11, 32814, 'Orlando', 'FL'),
(12, 32828, 'Orlando', 'FL'),
(13, 32931, 'Cocoa Beach', 'FL'),
(14, 33012, 'Hialeah', 'FL'),
(15, 33013, 'Hialeah', 'FL'),
(16, 33021, 'Hollywood', 'FL'),
(17, 33128, 'Miami', 'FL'),
(18, 33143, 'Miami', 'FL'),
(19, 33145, 'Miami', 'FL'),
(20, 33317, 'Fort Lauderdale', 'FL')

insert into Employee (EmpID, EmpFirstName, EmpLastName, EmpStreetAddress, ZipCodeID, EmpPhoneNumber, EmpEmail) values
(1, 'Emma', 'Martin', '700 Pine Ln', 1, 1112223333, 'emma.martin@gmail.com'),
(2, 'Benjamin', 'Anderson', '218 Poplar Blvd', 20, 3456789101, 'benjamin.anderson@gmail.com'),
(3, 'Mason', 'Davis', '2996 Cedar Terrace', 3, 6789906521, 'mason.davis@fsu.edu'),
(4, 'Amelia', 'Davis', '2996 Cedar Terrace', 3, 4043215678, 'adavis@gmail.com'),
(5, 'Jackson', 'Gonzalez', '3932 Cedar Dr', 5, 9909913489, 'jgonzalez@gmail.com'),
(6, 'Sophia', 'Gonzalez', '382 Spruce Ct', 16, 2234589934, 'sophiagonzalez@gmail.com'),
(7, 'Mia', 'Anderson', '211 Cedar Ave', 4, 7709873321, 'mia.anderson@fsu.edu'),
(8, 'Noah', 'Smith', '787 Redwood Ave', 19, 5556783322, 'noah.smith@yahoo.com'),
(9, 'Elijah', 'Martinez', '2145 Walnut Terrace', 13, 3349905678, 'e.martinez@yahoo.com'),
(10, 'Harper', 'White', '345 Magnolia Dr', 18, 2223334444, 'harper.white@fsu.edu'),
(11, 'Lucas', 'Taylor', '990 Chestnut Ln', 15, 9544117839, 'lucastay@gmail.com'),
(12, 'Ben', 'Williams', '1518 Maple Ln', 12, 7705432221, 'benjwilliams@gmail.com'),
(13, 'Olivia', 'Lopez', '787 Redwood Ave', 2, 9903432278, 'olopez@fsu.edu'),
(14, 'Elijah', 'Brown', '390 Sycamore Place', 9, 3345789900, 'elijahbrown123@yahoo.com'),
(15, 'Harper', 'Hernandez', '390 Sycamore Place', 9, 3347834477, 'hhernandez1@gmail.com'),
(16, 'Sophia', 'Moore', '888 Spruce Blvd', 10, 7783326767, 'sophmoore@fsu.edu'),
(17, 'Lucas', 'Blue', '721 Oak Ln', 6, 4321115656, 'lucasblue@fsu.edu'),
(18, 'James', 'Lee', '990 Oak Ln', 14, 9994443535, 'jameslee34@yahoo.com'),
(19, 'Caroline', 'Lee', '990 Oak Ln', 14, 7776323636, 'carolinalee34@yahoo.com'),
(20, 'Mason', 'Black', '1010 Birch Dr', 1, 9909999292, 'black.mason@yahoo.com')

insert into SoundFile (SoundFileID, SoundFileName, SoundFileStatus) values
(1, 'ThunderClap.mp3', 'Accepted'),
(2, 'Birdsong.mp4', 'Waiting'),
(3, 'Windchime.wav', 'Accepted'),
(4, 'LeavesRustle.mp4', 'Denied'),
(5, 'CatPurr.wav', 'Accepted'),
(6, 'PuppyBark.mp3', 'Accepted'),
(7, 'BubblingWater.wav', 'Denied'),
(8, 'PigSnort.mp4', 'Waiting'),
(9, 'LionRoar.mp3', 'Denied'),
(10, 'CowMoo.wav', 'Accepted'),
(11, 'DuckQuack.wav', 'Waiting'),
(12, 'PigOink.mp3', 'Accepted'),
(13, 'MouseSqueak.wav', 'Accepted'),
(14, 'SnakeHiss.mp3', 'Denied'),
(15, 'TurkeyGobble.mp4', 'Waiting'),
(16, 'HyenaLaugh.wav', 'Denied'),
(17, 'CrowCaw.mp4', 'Waiting'),
(18, 'CamelGrunt.mp3', 'Accepted'),
(19, 'BirdTweet.mp4', 'Accepted'),
(20, 'FishSplash.wav', 'Denied')

insert into Customer (CustomerID, CustFirstName, CustLastName, CustStreetAddress, CustEmail, CustPhoneNumber, CustAccBalance, CustLastPaymentDate, ZipCodeID, SoundFileID) values
(1, 'Sophia', 'Smith', '482 Sunset Blv', 'sophiasmith@fsu.edu', 1118883283, 0.00, '10/12/2024', 1, 3),
(2, 'Liam', 'Johnson', '2791 Ocean Ave', 'ljohnson@fsu.edu', 7768889090, 12.91, '1/1/2022', 2, 1),
(3, 'Isabella', 'Williams', '105 River Rd', 'isawilliams@gmail.com', 9998887777, 0.00, '2/12/2024', 6, 2),
(4, 'Mason', 'Brown', '723 Horizon Ln', 'brown.mason1@gmail.com', 1119993434, 25.00, '10/3/2023', 20, 4),
(5, 'Olivia', 'Jones', '8989 Park St', 'oliviaj@fsu.edu', 2223337777, 10.00, '8/19/2024', 18, 5),
(6, 'Noah', 'Garcia', '1344 Ridge Dr', 'garcianoah123@yahoo.com', 2749268585, 0.00, '6/1/2024', 19, 6),
(7, 'Emma', 'Davis', '4500 Meadow Way', 'emmadavis@gmail.com', 8885654455, 12.12, '11/1/2024', 3, 7),
(8, 'James', 'Rodriguez', '222 Valley Ct', 'james.rodriguez10@gmail.com', 0003237766, 25.12, '8/10/2024', 14, 8),
(9, 'Ava', 'Martinez', '672 Lakeview Way', 'ava.mart@fsu.edu', 3332221111, 0.00, '11/9/2024', 15, null),
(10, 'Lucas', 'Hernandez', '3391 Crescent Blvd', 'lucashern123@gmail.com', 3785556767, 3.50, '10/10/2024', 5, null),
(11, 'Amelia', 'White', '583 Garden Rd', 'amelia.white@fsu.edu', 9908764433, 10.11, '3/12/2024', 17, null),
(12, 'Elijah', 'Brown', '785 Harbor Pl', 'ebrown999@yahoo.com', 7776542211, 1.50, '7/12/2023', 6, 9),
(13, 'Mia', 'Wilson', '128 Sterling St', 'wilson.mia@gmail.com', 7654443456, 12.25, '8/20/2024', 17, 10),
(14, 'Benjamin', 'Anderson', '4033 Grand Ave', 'benjaminanderson@yahoo.com', 9881117878, 0.00, '2/18/2024', 3, null),
(15, 'Harper', 'Thomas', '265 Parkside Dr', 'thomasharper@gmail.com', 7705642277, 12.15, '10/2/2024', 19, null),
(16, 'Logan', 'Taylor', '7194 Sunset Blvd', 'logtaylor12@gmail.com', 5643327788, 6.50, '11/1/2024', 8, 11),
(17, 'Evelyn', 'Moore', '5123 Belmont Ct', 'evelynm@fsu.edu', 2246753344, 0.00, '2/28/2023', 13, 13),
(18, 'Jackson', 'Martin', '814 Crystal Ln', 'jacksonmartin9@yahoo.com', 1326654747, 3.50, '8/15/2024', 14, 15),
(19, 'Abigail', 'Lee', '814 Crystal Ln', 'abbylee@gmail.com', 1327658899, 0.00, '8/12/2024', 14, 16),
(20, 'Henry', 'Taylor', '1555 Madison Blvd', 'henrytay2@yahoo.com', 7765432288, 10.00, '7/2/2024', 5, 18)

insert into PricingPlan (PricingPlanID, PlanName, PlanDescription, MonthlyFee, MaxRideDuration) values
(1, 'Bronze', '10% Rate Reduction', 10, 5),
(2, 'Silver', '20% Rate Reduction', 20, 10),
(3, 'Gold', '30% Rate Reduction', 30, 15),
(4, 'Platinum', '40% Rate Reduction', 40, 20)

insert into CustomerPricingPlan (CustomerPricingPlanID, CustomerID, PricingPlanID, DateBought, DateEnded, PricingPlanStatus) values
(1, 1, 4, '3-14-2023', null, 'Active'),
(2, 2, 1, '2-25-2022', '5-30-2023', 'Inactive'),
(3, 3, 2, '10-10-2022', null, 'Active'),
(4, 4, 2, '1-3-2022', null, 'Active'),
(5, 5, 1, '3-12-2022', '11-13-2024', 'Inactive'),
(6, 6, 3, '6-28-2022', null, 'Active'),
(7, 7, 4, '3-21-2021', '6-29-2021', 'Inactive'),
(8, 7, 3, '6-29-2021', null, 'Active'),
(9, 8, 1, '5-21-2023', null, 'Active'),
(10, 9, 2, '12-25-2022', '11-13-2024', 'Inactive'),
(11, 10, 3, '5-1-2021', null, 'Active'),
(12, 11, 1, '10-10-2022', '11-13-2024', 'Inactive'),
(13, 12, 1, '7-12-2023', '11-13-2024', 'Inactive'),
(14, 12, 2, '11-13-2024', null, 'Active'),
(15, 13, 3, '9-8-2023', null, 'Active'),
(16, 14, 4, '11-13-2024', null, 'Active'),
(17, 15, 1, '9-9-2023', null, 'Active'),
(18, 16, 2, '3-3-2023', '3-3-2024', 'Inactive'),
(19, 17, 2, '2-20-2021', null, 'Active'),
(20, 18, 1, '8-19-2022', null, 'Active'),
(21, 19, 4, '2-2-2021', '9-3-2023', 'Inactive'),
(22, 20, 1, '10-31-2023', null, 'Active')


Create table [Location] (LocationID int primary key not null,
LocationNickname varchar(100) not null,
LocationStreetAddress varchar(100) not null,
LocationLongitude decimal(15,13) not null,
LocationLatitude decimal(15,13) not null);

Insert into [Location] (LocationID, LocationNickname, LocationStreetAddress, LocationLatitude, LocationLongitude) values
(1, 'Tucker Center', '505 W Pensacola St', 30.4378923621300
 , -84.2866579876409), 
(2, 'Club Publix', '800 Ocala Rd', 30.4459963350358
, -84.3186647879582), 
(3, 'Publix GreenWise', '625 W Gaines St', 30.4351334583685
, -84.2918494031949), 
(4, 'Onyx Apartments', '444 W College', 30.4413507100537
, 84.2876007841164), 
(5, 'McDonalds', '672 W Tennessee', 30.4452971722078
, -84.2936818148555), 
(6, 'Einstein Bagels', '977 Learning Way', 30.4427491828590
, -84.2983034007059), 
(7, 'Strozier Library', '116 Honors Way', 30.4430566937556
, -84.2950008461396), 
(8, 'Madison Social', '705 S Woodward Ave #101', 30.4366532918018, -84.2985468405548), 
(9, 'Leach Center', '118 Varsity Dr', 30.4419860368110
, -84.3018431612597), 
(10, 'Domi Station', '914 Railroad Ave', 30.4340170445222, -84.2906509403536), 
(11, 'Oyster City Brewing Company', '603 W Gaines St #7', 30.4352402450129, -84.2906960495522), 
(12, 'Oglesby Union', '75 N Woodward Ave', 30.4446096575820, -84.2969222635995), 
(13, 'Mendenhall Bldg', '969 Learning Way', 30.4425749264836, -84.2986303571184), 
(14, 'FSU Testing Center', '296 Champions Way', 30.4377206225097, -84.3052469048643), 
(15, 'College of Engineering', '2525 Pottsdamer St', 30.4202084380496, -84.3172953877573), 
(16, 'College of Music', '122 N Copeland St', 30.4432648248087, -84.2909504513742), 
(17, 'Suwanee Room', '143 Honors Way', 30.4412969684289
, -84.2935261866599), 
(18, 'Turnbull Conference Center', '555 W Pensacola St', 30.4386704715553, -84.2899317193225), 
(19, 'Police Department', '830 W Jefferson St', 30.4400441226432, -84.2976603673855), 
(20, 'FSU Innovation Hub', '142 Collegiate Loop', 30.445800, -84.299900);

CREATE TABLE VehicleType(
    VehicleTypeID INT NOT NULL PRIMARY KEY,
    VehicleTypeName VARCHAR(50) NOT NULL, 
    VehicleDescription VARCHAR(255)
);

INSERT INTO VehicleType (VehicleTypeID, VehicleTypeName, VehicleDescription) VALUES
(101, 'E-Bike', 'Electric bike with motor-assisted pedaling'),
(102, 'Scooter', 'Electric scooter for short-distance travel'),
(103, 'Manual Bike', 'Standard bike without motor assistance');

Create table Vehicle (VehicleID int primary key not null,
VehicleTypeID int not null foreign key references VehicleType(VehicleTypeID),
VehiclePurchaseDate date not null, 
VehicleDisposalDate date,
BatteryLevel int not null, 
VehicleMaintenceStatus varchar(255) not null,
VehicleLastMaintDate date,
VehicleTotalRunTime decimal (10,2) not null);

Insert into Vehicle (VehicleID, VehicleTypeID, VehiclePurchaseDate, VehicleDisposalDate, BatteryLevel, VehicleMaintenceStatus, VehicleLastMaintDate, VehicleTotalRunTime) values
(1, 101, '2020-01-15', '2025-01-15', 85, 'Operational', '2023-11-01', 1500.50), 
(2, 102, '2019-03-20', '2024-03-20', 75, 'Under Maintenance', '2023-10-15', 2000.75), 
(3, 103, '2021-05-10', '2026-05-10', 90, 'Operational', '2023-09-20', 1800.60), 
(4, 102, '2022-07-25', NULL, 95, 'Operational', '2023-11-05', 1000.30), 
(5, 102, '2020-12-01', '2025-12-01', 60, 'Under Maintenance', '2023-10-10', 2200.85), 
(6, 101, '2018-06-15', '2023-06-15', 50, 'Decommissioned', '2022-12-30', 3000.40), 
(7, 103, '2023-01-10', NULL, 80, 'Operational', '2023-11-01', 500.25), 
(8, 102, '2019-09-05', '2024-09-05', 45, 'Under Maintenance', '2023-08-15', 2400.00), 
(9, 101, '2021-11-22', '2026-11-22', 70, 'Operational', '2023-09-30', 1200.90), 
(10, 101, '2020-02-18', '2025-02-18', 88, 'Operational', '2023-07-20', 1900.80), 
(11, 101, '2017-10-12', '2022-10-12', 40, 'Decommissioned', '2022-08-01', 4000.50), 
(12, 102, '2020-05-25', NULL, 65, 'Operational', '2023-10-05', 1400.25), 
(13, 103, '2019-11-30', '2024-11-30', 55, 'Under Maintenance', '2023-06-15', 2600.75), 
(14, 103, '2022-02-14', NULL, 85, 'Operational', '2023-09-10', 700.40), 
(15, 102, '2021-04-07', '2026-04-07', 93, 'Operational', '2023-11-01', 1100.50), 
(16, 101, '2018-12-21', '2023-12-21', 30, 'Decommissioned', '2023-05-01', 3200.00), 
(17, 102, '2023-06-01', NULL, 100, 'Operational', '2023-11-01', 300.00), 
(18, 103, '2018-08-18', '2023-08-18', 20, 'Decommissioned', '2023-07-10', 3600.60), 
(19, 101, '2021-03-15', NULL, 75, 'Operational', '2023-09-25', 1800.90), 
(20, 102, '2020-07-30', '2025-07-30', 92, 'Operational', '2023-08-20', 2100.85);

Create table Rental (RentalID int not null primary key, 
CustomerID int not null, 
VehicleID int not null, 
TotalCharge decimal(10,2) not null,
StartLocation int not null foreign key references Location(LocationID),
EndLocation int not null foreign key references Location(LocationID),
RentalStart date not null,
RentalEnd date,
Foreign key (CustomerID) references Customer(CustomerID),
Foreign key (VehicleID) references Vehicle(VehicleID))

Insert into Rental (RentalID, CustomerID, VehicleID, TotalCharge, StartLocation, EndLocation, RentalStart, RentalEnd) values
(1, 1, 1, 25.50, 1, 2, '2024-11-01', '2024-11-02'), 
(2, 2, 2, 45.75, 4, 19, '2024-11-03', '2024-11-04'), 
(3, 3, 3, 30.00, 3, 2, '2024-11-05', '2024-11-06'), 
(4, 4, 4, 50.00, 10, 11, '2024-11-06', '2024-11-07'), 
(5, 5, 5, 75.25, 19, 20, '2024-11-08', '2024-11-09'), 
(6, 6, 6, 15.00, 11, 1, '2024-11-10', '2024-11-11'), 
(7, 7, 7, 100.00, 2, 6, '2024-11-12', '2024-11-13'), 
(8, 8, 8, 120.50, 9, 1, '2024-11-14', '2024-11-15'), 
(9, 9, 9, 85.75, 10, 11, '2024-11-16', '2024-11-17'), 
(10, 10, 10, 60.00, 20, 5, '2024-11-18', '2024-11-19'), 
(11, 11, 1,35.00, 3, 4, '2024-11-20', '2024-11-21'), 
(12, 12, 3, 90.00,11, 12, '2024-11-22', '2024-11-23'), 
(13, 13, 5, 40.25, 13, 14, '2024-11-24', '2024-11-25'), 
(14, 14, 7,  20.50, 1, 2, '2024-11-26', '2024-11-27'), 
(15, 15, 9,  70.75, 9, 8,  '2024-11-28', '2024-11-29'), 
(16, 16, 2,  50.00, 3, 2, '2024-11-30', '2024-12-01'), 
(17, 17, 4,  80.50,17, 18,  '2024-12-02', '2024-12-03'), 
(18, 18, 6,  95.00, 16, 3, '2024-12-04', '2024-12-05'), 
(19, 19, 8, 110.25, 14, 15,  '2024-12-06', '2024-12-07'), 
(20, 20, 10, 125.00, 16, 17,  '2024-12-08', '2024-12-09');

Create table Penalty (PenaltyID int not null primary key,
PenaltyDescription varchar(255) not null,
PenaltyAmount int not null);

Insert into Penalty (PenaltyID, PenaltyDescription, PenaltyAmount) values
(1, 'Not Parked in Approved Location', 5), 
(2, 'Customer-Caused Damage', 10), 
(3, 'Not Following Traffic Laws', 5), 
(4, 'Riding on Sidewalk', 5), 
(5, 'Driving Against Flow of Traffic', 5), 
(6, 'Parking in a Restricted Zone', 7), 
(7, 'Exceeding Speed Limit', 15), 
(8, 'Vehicle Left Unlocked', 8), 
(9, 'Failure to Yield to Pedestrians', 10), 
(10, 'Overloading Vehicle Capacity', 12), 
(11, 'Unreported Vehicle Damage', 20), 
(12, 'Using Unauthorized Vehicle Routes', 10), 
(13, 'Tampering with Vehicle Equipment', 25), 
(14, 'Failure to Follow Parking Instructions', 6), 
(15, 'Leaving Vehicle in Unsafe Location', 8), 
(16, 'Improper Vehicle Use on Campus', 10), 
(17, 'Unauthorized Use of Charging Station', 5), 
(18, 'Illegal Vehicle Modifications', 15), 
(19, 'Failure to Return Vehicle on Time', 10), 
(20, 'Blocking Emergency Exits with Vehicle', 20);

Create table RentalPenalty (RentalPenaltyID int not null primary key,
RentalID int not null,
PenaltyID int not null, 
PenaltyDate Date not null,
Foreign key (RentalID) references Rental(RentalID),
Foreign key (PenaltyID) references Penalty(PenaltyID));

Insert into RentalPenalty (RentalPenaltyID, RentalID, PenaltyID, PenaltyDate) values
(1, 1, 3, '2024-11-02'), 
(2, 2, 5, '2024-11-04'), 
(3, 3, 1, '2024-11-06'), 
(4, 4, 2, '2024-11-07'), 
(5, 5, 4, '2024-11-09'), 
(6, 6, 5, '2024-11-11'), 
(7, 7, 1, '2024-11-13'), 
(8, 8, 3, '2024-11-15'), 
(9, 9, 2, '2024-11-17'), 
(10, 10, 4, '2024-11-19'), 
(11, 11, 5, '2024-11-21'), 
(12, 12, 1, '2024-11-23'), 
(13, 13, 3, '2024-11-25'), 
(14, 14, 2, '2024-11-27'), 
(15, 15, 4, '2024-11-29'), 
(16, 16, 2, '2024-12-01'), 
(17, 17, 5, '2024-12-03'), 
(18, 18, 3, '2024-12-05'), 
(19, 19, 4, '2024-12-07'), 
(20, 20, 1, '2024-12-09');


CREATE TABLE Position (
    PositionID INT NOT NULL PRIMARY KEY,
    PositionName VARCHAR(100) NOT NULL,
    PositionDescription VARCHAR(255) not null,
);
INSERT INTO Position (PositionID, PositionName, PositionDescription) VALUES
(1, 'Maintenance Technician', 'Responsible for maintaining and repairing vehicles'),
(2, 'Customer Service Representative', 'Handles customer inquiries and issues'),
(3, 'Operations Manager', 'Oversees daily operations and staff'),
(4, 'Field Technician', 'Deploys and relocates vehicles as needed'),
(5, 'Data Analyst', 'Analyzes rental and usage data for business insights'),
(6, 'Marketing Specialist', 'Promotes ZeusMobile services to increase user base'),
(7, 'Product Manager', 'Oversees product development and improvements'),
(8, 'HR Coordinator', 'Manages recruitment and employee relations'),
(9, 'Software Engineer', 'Develops and maintains the ZeusMobile app and website'),
(10, 'Quality Assurance Engineer', 'Ensures product quality through testing'),
(11, 'Accountant', 'Manages finances and budgeting for ZeusMobile'),
(12, 'Sales Representative', 'Drives customer acquisition and retention'),
(13, 'Logistics Coordinator', 'Coordinates vehicle deployments and resources'),
(14, 'Graphic Designer', 'Designs promotional materials and branding'),
(15, 'Content Creator', 'Creates engaging content for marketing and education'),
(16, 'Customer Success Manager', 'Ensures customer satisfaction and retention'),
(17, 'Fleet Manager', 'Manages the ZeusMobile vehicle fleet'),
(18, 'Financial Analyst', 'Performs financial analysis for decision-making'),
(19, 'IT Support Specialist', 'Provides technical support for ZeusMobile operations'),
(20, 'Operations Assistant', 'Assists with operational tasks and administration');


CREATE TABLE PositionType (
    PositionTypeID INT NOT NULL PRIMARY KEY,
    PositionTypeName VARCHAR(50) NOT NULL 
);
INSERT INTO PositionType(PositionTypeID, PositionTypeName)values
(1, 'Salaried'),
(2, 'Seasonal Hourly'),
(3, 'Permanent Hourly');


CREATE TABLE CompensationHistory (
    CompensationHistoryID INT NOT NULL PRIMARY KEY,
    EmpID INT NOT NULL, -- Foreign key to Employee
    PositionID INT NOT NULL, -- Foreign key to Position
    PositionTypeID INT NOT NULL, -- Foreign key to PositionType
    StartDate DATE NOT NULL,
    EndDate DATE,
    SalaryOrHourlyRate DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (EmpID) REFERENCES Employee(EmpID),
    FOREIGN KEY (PositionID) REFERENCES Position(PositionID),
    FOREIGN KEY (PositionTypeID) REFERENCES PositionType(PositionTypeID))

INSERT INTO CompensationHistory (CompensationHistoryID, EmpID, PositionID, PositionTypeID, StartDate, EndDate, SalaryOrHourlyRate) VALUES
(1, 1, 1, 3, '2022-01-01', '2023-01-01', 20.00),
(2, 1, 1, 3, '2023-01-02', NULL, 22.00),
(3, 2, 2, 2, '2022-06-01', '2022-12-31', 15.00),
(4, 3, 3, 1, '2021-05-01', NULL, 60000.00),
(5, 4, 4, 3, '2023-01-01', NULL, 18.00),
(6, 5, 5, 1, '2023-02-01', NULL, 55000.00),
(7, 6, 6, 1, '2022-09-01', NULL, 50000.00),
(8, 7, 7, 1, '2022-04-01', NULL, 70000.00),
(9, 8, 8, 3, '2021-10-01', NULL, 23.00),
(10, 9, 9, 1, '2022-05-01', NULL, 80000.00),
(11, 10, 10, 1, '2022-01-01', NULL, 33.50),
(12, 11, 11, 1, '2023-03-01', NULL, 60000.00),
(13, 12, 12, 2, '2023-06-01', '2023-12-31', 20.00),
(14, 13, 13, 3, '2021-07-01', NULL, 25.00),
(15, 14, 14, 2, '2022-08-01', '2022-12-31', 18.00),
(16, 15, 15, 3, '2021-11-01', NULL, 30.00),
(17, 16, 16, 1, '2022-07-01', NULL, 65000.00),
(18, 17, 17, 1, '2021-03-01', NULL, 85000.00),
(19, 18, 18, 2, '2022-02-01', '2022-10-01', 22.00),
(20, 19, 19, 3, '2023-04-01', NULL, 24.00);



Create Table Certification(CertificationID INT NOT NULL PRIMARY KEY,
CertificationName varchar(100) NOT NULL)

Insert into Certification(CertificationID, CertificationName) values
(1, 'Tire Replacement & Repair Technician Certification'),
(2, 'Tire Patch Technician Certification'),
(3, 'Brake System Repair & Adjustment Specialist Certification'),
(4, 'Battery Maintenance & Replacement Technician Certification'),
(5, 'Frame Inspection & Repair Technician Certification'),
(6, 'Firmware & Software Update Technician Certification'),
(7, 'Comfort Features Installation & Repair Technician Certification'),
(8, 'Tire Replacement & Repair Technician Certification'),
(9, 'Wheel Truing & Alignment Specialist Certification'),
(10, 'Drivetrain Service & Repair Technician Certification'),
(11, 'Electrical Wiring & Connector Repair Technician Certification'),
(12, 'Throttle & Pedal Assist Adjustment Specialist Certification'),
(13, 'Diagnostic Tools Specialist Certification'),
(14, 'Frame Inspection & Repair Technician Certification'),
(15, 'Lighting & Signal System Repair Technician Certification'),
(16, 'Cable & Housing Maintenance Technician Certification'),
(17, 'Hydraulic Brake Bleeding Technician Certification'),
(18, 'Sensor Calibration Technician Certification'),
(19, 'Comfort Features Installation Technician Certification'),
(20, 'Hub Motor Maintenance & Repair Specialist Certification');


Create Table Maintenance(MaintenanceID int not null primary key, 
MaintenanceDescription varchar(50) not null, 
PriorityLevel int not null)

Insert into Maintenance(MaintenanceID,MaintenanceDescription,PriorityLevel) Values
(1, 'Tire Replace',8),
(2, 'Tire Patch',8),
(3,'Front Brakes',4),
(4, 'Rear Brakes', 4),
(5, 'Both Brakes', 8),
(6, 'Battery Dead', 8),
(7, 'Hole in Basket',2),
(8, 'Boost Mode Not Working',3),
(9, 'Broken Seat', 8),
(10, 'Throttle Not Responding', 8),
(11, 'Electrical Wiring Issue', 8),
(12, 'Motor Failure', 8),
(13, 'Pedal Assist Not Engaging', 8),
(14, 'Speedometer Malfunction', 3),
(15, 'Suspension Fork Leak', 4),
(16, 'Loose Handlebars', 8),
(17, 'Flat Front Tire', 8),
(18, 'Loose Crankset', 4),
(19, 'Chain Slippage', 8),
(20, 'Headlight Not Working', 3);


Create Table ServiceTech(ServiceTechID int not null primary key, 
TechAvailability varchar(25) not null,
EmpID int not null foreign key references Employee(EmpID))
insert into ServiceTech(ServiceTechID,TechAvailability,EmpID) values
(1, 'Not Available', 17),
(2, 'Available', 4),
(3, 'Not Available', 12),
(4, 'Available', 15),
(5, 'Not Available', 7),
(6, 'Available', 19),
(7, 'Not Available', 9),
(8, 'Available', 13),
(9, 'Not Available', 6),
(10, 'Available', 14),
(11, 'Not Available', 11),
(12, 'Available', 1),
(13, 'Not Available', 16),
(14, 'Available', 18),
(15, 'Not Available', 8),
(16, 'Available', 2),
(17, 'Not Available', 3),
(18, 'Available', 20),
(19, 'Available', 5),
(20, 'Available', 10);



Create Table ServiceTechCertification(ServiceTechCertificationID int not null primary key, 
CertReceivedDate date not null,
CertificationScore int not null, 
ServiceTechID int not null foreign key references ServiceTech(ServiceTechID),
CertificationID int not null foreign key references Certification(CertificationID))

insert into ServiceTechCertification
(ServiceTechCertificationID,CertReceivedDate, CertificationScore,ServiceTechID,CertificationID)values
(1, '2023-09-15', 37, 1, 1),
(2, '2021-03-22', 92, 2, 2),
(3, '2022-06-05', 68, 3, 3),
(4, '2020-12-19', 54, 4, 4),
(5, '2024-07-30', 81, 5, 5),
(6, '2021-11-13', 47, 6, 6),
(7, '2023-02-28', 99, 7, 7),
(8, '2022-08-14', 23, 8, 8),
(9, '2020-10-10', 65, 9, 9),
(10, '2021-01-17', 80, 10, 10),
(11, '2023-05-25', 59, 11, 11),
(12, '2022-11-01', 14, 12, 12),
(13, '2020-04-09', 76, 13, 13),
(14, '2021-08-23', 35, 14, 14),
(15, '2023-12-11', 91, 15, 15),
(16, '2022-02-17', 28, 16, 16),
(17, '2020-07-02', 50, 17, 17),
(18, '2021-10-05', 60, 18, 18),
(19, '2023-04-12', 11, 19, 19),
(20, '2022-09-28', 84, 20, 20);




Create Table VehicleMaintenance(VehicleMaintenanceID int not null primary key, 
DateFixed date not null, 
VehicleID int not null foreign key references Vehicle(VehicleID),
MaintenanceID int not null foreign key references Maintenance(MaintenanceID),
ServiceTechCertificationID int not null foreign key references ServiceTechCertification(ServiceTechCertificationID),
RentalID int not null foreign key references Rental(RentalID))

insert into VehicleMaintenance
(VehicleMaintenanceID, DateFixed, VehicleID, MaintenanceID, ServiceTechCertificationID, RentalID)values
(1, '2023-08-15', 12, 1, 1, 14),
(2, '2023-06-10', 3, 2, 2, 6),
(3, '2024-03-12', 17, 3, 3, 8),
(4, '2023-01-05', 16, 4, 3, 18),
(5, '2022-10-25', 18, 5, 3, 20),
(6, '2024-01-09', 7, 6, 4, 16),
(7, '2023-11-14', 11, 7, 5, 13),
(8, '2023-02-17', 14, 8, 6, 4),
(9, '2023-05-01', 8, 9, 7, 2),
(10, '2022-12-05', 19, 10, 12, 15),
(11, '2024-02-21', 5, 11, 11, 9),
(12, '2023-08-30', 9, 12, 20, 11),
(13, '2023-04-22', 2, 13, 12, 19),
(14, '2022-11-11', 20, 14, 13, 7),
(15, '2022-07-17', 4, 15, 14, 17),
(16, '2023-09-13', 6, 16, 14, 5),
(17, '2022-08-02', 13, 17, 8, 10),
(18, '2023-06-18', 15, 18, 10, 12),
(19, '2023-01-23', 10, 19, 10, 1),
(20, '2023-10-07', 1, 20, 15, 3);