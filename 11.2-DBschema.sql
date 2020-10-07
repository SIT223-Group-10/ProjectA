create table Vehicles
(make varchar(12) Not null,
model varchar(10) not null,
Series varchar(6),
BodyType varchar(8),
yearBuilt number(4) not null,
VIN char(17) Constraint vin_pk Primary Key,
Rego varchar(10) UNIQUE,
owner varchar(7) Constraint owner_fk References Owners(ownerID));


insert into vehicles values('Mitsubishi', 'Lancer', 'SX', 'sedan', 2010,
'vhsl34534lku53fcs', '2rego', 'owners1');
 
 create table Owners
 (OwnerID varchar(7) Constraint owner_pk Primary Key,
 F_name varchar(12) Not Null,
 L_name varchar(15) Not Null,
 Organisation varchar(15),
 Country varchar(7) Not Null,
 State varchar(5) Not Null,
 City varchar(12),
 Email varchar(20) Not Null Unique,
 Mobile number(10) Not Null Unique,
 Reg_date DATE,
 Last_signin TIMESTAMP);
 
 insert into Owners values
 ('owners1', 'John', 'Doe', 'Deakin', 'AUS', 'VIC', 'Melbourne',
 'j.doe@gmail.com', 0453412204, null, null);
 
 create table Recalls
 (RecallID varchar(8) Constraint recall_pk Primary Key,
 VINre char(17) Constraint VINre_fk References Vehicles(VIN),
 faultyPart varchar(12) Not Null,
 Description varchar(200),
 Status varchar(8) Not Null);
 
 insert into Recalls values
 ('recall12', 'vhsl34534lku53fcs', 'Air Bag',
 'Liable to blow shrapnel into your face.', 'Resolved');
 
 create table Dealerships
 (dealer_id varchar(6) Constraint dealer_pk Primary Key,
 D_name varchar(15) Not Null,
 Make varchar(12)Not Null,
 Country varchar(7) Not Null,
 State varchar(5) Not Null,
 City varchar(12) Not Null,
 Email varchar(20) Not Null,
 Pho_no number(10) Not Null,
 Website varchar(25) Not Null);
 
 insert into Dealerships values
 ('AU3102', 'Joes Guzzlers', 'Mitsubishi', 'AUS', 'VIC', 'Melbourne',
 'j.guzzlers@gmail.com', 0897213000,'www.joesguzzlers.com.au');