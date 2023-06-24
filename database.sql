-- Active: 1679026840982@@127.0.0.1@3306@zameendar

CREATE Table Agent(
    Agent_ID VARCHAR(20) PRIMARY KEY,
    Name VARCHAR(40),
    Phone_no BIGINT NOT NULL,
    Email VARCHAR(40) NOT NULL,
    Agent_Share INT,
    City VARCHAR(40)
);

CREATE TABLE Property(
    Property_ID VARCHAR(40) PRIMARY KEY,
    BHK VARCHAR(10),
    Price INT,
    Total_Area DECIMAL,
    Year_Of_Construction INT,
    Type VARCHAR(20),
    City VARCHAR(30),
    Date VARCHAR(20),
    Address VARCHAR(200)
);
CREATE TABLE Owners(
    Aadhar_Card VARCHAR(30),
    Name VARCHAR(30),
    Phone_No BIGINT NOT NULL,
    Email VARCHAR(40),
    PRIMARY KEY (Aadhar_Card)
);

CREATE TABLE Client(
    Aadhar_Card VARCHAR(30) PRIMARY KEY,
    Name VARCHAR(30),
    Phone_No BIGINT NOT NULL,
    Email VARCHAR(40)
);

CREATE TABLE Owns(
    Aadhar_Card VARCHAR(30),
    Property_ID VARCHAR(40),
    PRIMARY KEY (Aadhar_Card,Property_ID),
    FOREIGN KEY (Aadhar_Card) REFERENCES Owners(Aadhar_Card),
    FOREIGN KEY (Property_ID) REFERENCES Property(Property_ID)
);

CREATE TABLE Completed_Deals(
    Agent_ID VARCHAR(20),
    Property_ID VARCHAR(20),
    Buyer_ID VARCHAR(30),
    Owner_ID VARCHAR(30),
    Sold_Date VARCHAR(30) NOT NULL,
    PRIMARY KEY (Agent_ID,Property_ID),
    Foreign KEY (Property_ID) REFERENCES Property(Property_ID),
    FOREIGN KEY (Agent_ID) REFERENCES Agent(Agent_ID),
    FOREIGN KEY (Buyer_ID) REFERENCES Client(Aadhar_Card),
    FOREIGN KEY (Owner_ID) REFERENCES Owners(Aadhar_Card)
);

CREATE TABLE Sell_Orders(
    Agent_ID VARCHAR(20),
    Property_ID VARCHAR(20),
    Buyer_ID VARCHAR(30),
    Owner_ID VARCHAR(30),
    PRIMARY KEY (Property_ID),
    Foreign KEY (Property_ID) REFERENCES Property(Property_ID),
    FOREIGN KEY (Agent_ID) REFERENCES Agent(Agent_ID),
    FOREIGN KEY (Buyer_ID) REFERENCES Client(Aadhar_Card),
    FOREIGN KEY (Owner_ID) REFERENCES Owners(Aadhar_Card)
);


INSERT INTO Property (Property_ID, BHK, Price, Total_Area, Year_Of_Construction, Type, City, Date, Address) 
VALUES 
('PROP001', '2 BHK', 5000000, 1200.50, 2010, 'For Rent', 'Mumbai', '2022-03-30', '123, ABC Street, XYZ Society, Mumbai'),
('PROP002', '3 BHK', 7500000, 1800.75, 2015, 'For Sell', 'Bangalore', '2022-03-29', '456, PQR Street, DEF Colony, Bangalore'),
('PROP003', '1 BHK', 2500000, 700.25, 2005, 'For Rent', 'Delhi', '2022-03-28', '789, LMN Street, GHI Enclave, Delhi'),
('PROP004', '4 BHK', 10000000, 2500.00, 2020, 'For Sell', 'Chennai', '2022-03-27', '321, EFG Street, JKL Colony, Chennai'),
('PROP005', '2 BHK', 4000000, 1000.00, 2012, 'For Rent', 'Kolkata', '2022-03-26', '654, RST Street, MNO Society, Kolkata'),
('PROP006', '3 BHK', 6500000, 1500.00, 2016, 'For Sell', 'Hyderabad', '2022-03-25', '987, UVW Street, PQR Colony, Hyderabad'),
('PROP007', '2 BHK', 4500000, 1100.50, 2011, 'For Rent', 'Mumbai', '2022-03-24', '147, HIJ Street, XYZ Society, Mumbai'),
('PROP008', '3 BHK', 8000000, 2000.75, 2017, 'For Sell', 'Bangalore', '2022-03-23', '258, KLM Street, DEF Colony, Bangalore'),
('PROP009', '1 BHK', 2000000, 600.25, 2004, 'For Rent', 'Delhi', '2022-03-22', '369, NOP Street, GHI Enclave, Delhi'),
('PROP010', '4 BHK', 12000000, 3000.00, 2021, 'For Sell', 'Chennai', '2022-03-21', '741, QRS Street, JKL Colony, Chennai'),
('PROP011', '2 BHK', 3500000, 900.00, 2010, 'For Rent', 'Kolkata', '2022-03-20', '852, TUV Street, MNO Society, Kolkata'),
('PROP012', '3 BHK', 6000000, 1400.00, 2014, 'For Sell', 'Hyderabad', '2022-03-19', '963, WXY Street, PQR Colony, Hyderabad'),
('PROP013', '2 BHK', 5500000, 1300.50, 2013, 'For Rent', 'Mumbai', '2022-03-18', '159, ABC Street, XYZ Society, Mumbai'),
('PROP014', '3 BHK', 7000000, 1700.75, 2018, 'For Sell', 'Bangalore', '2022-03-17', '267, PQR Street, DEF Colony, Bangalore'),
('PROP015', '1 BHK', 1800000, 500.25, 2003, 'For Rent', 'Delhi', '2022-03-16', '375, LMN Street, GHI Enclave, Delhi'),
('PROP016', '4 BHK', 11000000, 2700.00, 2020, 'For Sell', 'Chennai', '2022-03-15', '489, EFG Street, JKL Colony, Chennai'),
('PROP017', '2 BHK', 4200000, 950.00, 2011, 'For Rent', 'Kolkata', '2022-03-14', '687, RST Street, MNO Society, Kolkata'),
('PROP018', '3 BHK', 6800000, 1600.00, 2015, 'For Sell', 'Hyderabad', '2022-03-13', '792, UVW Street, PQR Colony, Hyderabad'),
('PROP019', '2 BHK', 4800000, 1300.50, 2012, 'For Rent', 'Mumbai', '2022-03-12', '159, HIJ Street, XYZ Society, Mumbai'),
('PROP020', '3 BHK', 8500000, 1900.75, 2016, 'For Sell', 'Bangalore', '2022-03-11', '369, KLM Street, DEF Colony, Bangalore'),
('PROP021', '1 BHK', 2200000, 650.25, 2005, 'For Rent', 'Delhi', '2022-03-10', '741, NOP Street, GHI Enclave, Delhi'),
('PROP022', '4 BHK', 13000000, 3200.00, 2022, 'For Sell', 'Chennai', '2022-03-09', '852, QRS Street, JKL Colony, Chennai'),
('PROP023', '2 BHK', 3800000, 1000.00, 2010, 'For Rent', 'Kolkata', '2022-03-08', '963, TUV Street, MNO Society, Kolkata'),
('PROP024', '3 BHK', 6200000, 1500.00, 2013, 'For Sell', 'Hyderabad', '2022-03-07', '159, WXY Street, PQR Colony, Hyderabad'),
('PROP025', '2 BHK', 6000000, 1400.50, 2014, 'For Rent', 'Mumbai', '2022-03-06', '159, ABC Street, XYZ Society, Mumbai'),
('PROP026', '3 BHK', 8500000, 1900.75, 2017, 'For Sell', 'Bangalore', '2022-03-05', '267, PQR Street, DEF Colony, Bangalore'),
('PROP027', '1 BHK', 2000000, 550.25, 2004, 'For Rent', 'Delhi', '2022-03-04', '375, LMN Street, GHI Enclave, Delhi'),
('PROP029', '2 BHK', 4000000, 900.00, 2009, 'For Rent', 'Kolkata', '2022-03-02', '489, EFG Street, JKL Colony, Kolkata'),
('PROP030', '3 BHK', 6000000, 1400.00, 2012, 'For Sell', 'Hyderabad', '2022-03-01', '792, UVW Street, PQR Colony, Hyderabad'),
('PROP031', '2 BHK', 4600000, 1200.50, 2010, 'For Rent', 'Mumbai', '2022-02-28', '159, HIJ Street, XYZ Society, Mumbai'),
('PROP032', '3 BHK', 7800000, 1800.75, 2016, 'For Sell', 'Bangalore', '2022-02-27', '369, KLM Street, DEF Colony, Bangalore'),
('PROP033', '1 BHK', 2100000, 600.25, 2006, 'For Rent', 'Delhi', '2022-02-26', '741, NOP Street, GHI Enclave, Delhi'),
('PROP034', '4 BHK', 12000000, 3000.00, 2020, 'For Sell', 'Chennai', '2022-02-25', '852, QRS Street, JKL Colony, Chennai'),
('PROP035', '2 BHK', 3600000, 800.00, 2008, 'For Rent', 'Kolkata', '2022-02-24', '963, TUV Street, MNO Society, Kolkata'),
('PROP036', '3 BHK', 6400000, 1600.00, 2014, 'For Sell', 'Hyderabad', '2022-02-23', '159, WXY Street, PQR Colony, Hyderabad'),
('PROP037', '2 BHK', 5500000, 1200.50, 2013, 'For Rent', 'Mumbai', '2022-02-22', '159, ABC Street, XYZ Society, Mumbai'),
('PROP038', '3 BHK', 9000000, 2000.75, 2018, 'For Sell', 'Bangalore', '2022-02-21', '267, PQR Street, DEF Colony, Bangalore'),
('PROP039', '1 BHK', 1900000, 450.25, 2002, 'For Rent', 'Delhi', '2022-02-20', '375, LMN Street, GHI Enclave, Delhi'),
('PROP040', '4 BHK', 10500000, 2600.00, 2019, 'For Sell', 'Chennai', '2022-02-19', '489, EFG Street, JKL Colony, Chennai'),
('PROP041', '2 BHK', 4200000, 1000.00, 2011, 'For Rent', 'Kolkata', '2022-02-18', '687, RST Street, MNO Society, Kolkata'),
('PROP042', '3 BHK', 6700000, 1500.00, 2015, 'For Sell', 'Hyderabad', '2022-02-17', '792, UVW Street, PQR Colony, Hyderabad'),
('PROP044', '3 BHK', 8500000, 1900.75, 2017, 'For Sell', 'Bangalore', '2022-02-15', '159, HIJ Street, XYZ Society, Bangalore'),
('PROP045', '1 BHK', 1800000, 400.25, 2001, 'For Rent', 'Delhi', '2022-02-14', '741, NOP Street, GHI Enclave, Delhi'),
('PROP046', '4 BHK', 11500000, 2800.00, 2021, 'For Sell', 'Chennai', '2022-02-13', '852, QRS Street, JKL Colony, Chennai'),
('PROP047', '2 BHK', 3800000, 850.00, 2007, 'For Rent', 'Kolkata', '2022-02-12', '963, TUV Street, MNO Society, Kolkata'),
('PROP048', '3 BHK', 6200000, 1450.00, 2014, 'For Sell', 'Hyderabad', '2022-02-11', '159, WXY Street, PQR Colony, Hyderabad'),
('PROP049', '2 BHK', 4900000, 1150.50, 2011, 'For For Rent', 'Mumbai', '2022-02-10', '159, ABC Street, XYZ Society, Mumbai'),
('PROP050', '3 BHK', 8200000, 1850.75, 2017, 'For Sell', 'Bangalore', '2022-02-09', '267, PQR Street, DEF Colony, Bangalore');



INSERT INTO Agent (Agent_ID, Name, Phone_no, Email, Agent_Share, City) VALUES
('AGT001', 'John Doe', 9876543210, 'johndoe@email.com', 10, 'Mumbai'),
('AGT002', 'Jane Smith', 8765432109, 'janesmith@email.com', 15, 'Mumbai'),
('AGT003', 'Bob Johnson', 7654321098, 'bjohnson@email.com', 12, 'Bangalore'),
('AGT004', 'Emily Davis', 6543210987, 'edavis@email.com', 8, 'Bangalore'),
('AGT005', 'Mike Brown', 5432109876, 'mbrown@email.com', 18, 'Delhi'),
('AGT006', 'Karen Wilson', 4321098765, 'kwilson@email.com', 20, 'Delhi'),
('AGT007', 'David Lee', 3210987654, 'dlee@email.com', 13, 'Chennai'),
('AGT008', 'Ava Jackson', 2109876543, 'ajackson@email.com', 11, 'Chennai'),
('AGT009', 'Jack Thompson', 1098765432, 'jthompson@email.com', 9, 'Kolkata'),
('AGT010', 'Sophie Harris', 987654321, 'sharris@email.com', 16, 'Kolkata'),
('AGT011', 'Peter Green', 876543210, 'pgreen@email.com', 14, 'Hyderabad'),
('AGT012', 'Natalie Wilson', 765432109, 'nwilson@email.com', 17, 'Hyderabad'),
('AGT013', 'Henry Thomas', 654321098, 'hthomas@email.com', 10, 'Mumbai'),
('AGT014', 'Sarah Parker', 543210987, 'sparker@email.com', 12, 'Delhi'),
('AGT015', 'Daniel Wright', 432109876, 'dwright@email.com', 15, 'Kolkata');



INSERT INTO Owners (Aadhar_Card, Name, Phone_No, Email) VALUES
('1234 5678 9012', 'John Smith', 9876543210, 'johnsmith@email.com'),
('3456 7890 1234', 'Tom Wilson', 7654321098, 'tomwilson@email.com'),
('5678 9012 3456', 'Robert Brown', 5432109876, 'robertbrown@email.com'),
('7890 1234 5678', 'David Lee', 3210987654, 'davidlee@email.com'),
('8901 2345 6789', 'Ava Thompson', 2109876543, 'avathompson@email.com'),
('0123 4567 8901', 'Sophie Wilson', 987654321, 'sophiewilson@email.com'),
('2345 6789 0123', 'Ethan Davis', 8765432109, 'ethandavis@email.com'),
('4567 8901 2345', 'Olivia Garcia', 7654321098, 'oliviagarcia@email.com'),
('6789 0123 4567', 'Mia Wilson', 6543210987, 'miawilson@email.com')
;

INSERT INTO Owns (Aadhar_Card, Property_ID) VALUES
('1234 5678 9012', 'PROP001'),
('1234 5678 9012', 'PROP002'),
('3456 7890 1234', 'PROP003'),
('3456 7890 1234', 'PROP004'),
('5678 9012 3456', 'PROP005'),
('5678 9012 3456', 'PROP006'),
('7890 1234 5678', 'PROP007'),
('8901 2345 6789', 'PROP008'),
('8901 2345 6789', 'PROP009'),
('0123 4567 8901', 'PROP010'),
('0123 4567 8901', 'PROP011'),
('2345 6789 0123', 'PROP012'),
('2345 6789 0123', 'PROP013'),
('4567 8901 2345', 'PROP015'),
('4567 8901 2345', 'PROP014'),
('6789 0123 4567', 'PROP016'),
('6789 0123 4567', 'PROP017'),
('8901 2345 6789', 'PROP018'),
('0123 4567 8901', 'PROP019'),
('2345 6789 0123', 'PROP020'),
('4567 8901 2345', 'PROP021'),
('6789 0123 4567', 'PROP022'),
('0123 4567 8901', 'PROP023'),
('2345 6789 0123', 'PROP024'),
('4567 8901 2345', 'PROP025'),
('6789 0123 4567', 'PROP026'),
('6789 0123 4567', 'PROP027'),
('0123 4567 8901', 'PROP029'),
('2345 6789 0123', 'PROP030'),
('4567 8901 2345', 'PROP031'),
('6789 0123 4567', 'PROP032'),
('0123 4567 8901', 'PROP033'),
('2345 6789 0123', 'PROP034'),
('4567 8901 2345', 'PROP035'),
('6789 0123 4567', 'PROP036'),
('0123 4567 8901', 'PROP037'),
('2345 6789 0123', 'PROP038'),
('4567 8901 2345', 'PROP039'),
('6789 0123 4567', 'PROP040'),
('0123 4567 8901', 'PROP041'),
('2345 6789 0123', 'PROP042'),
('6789 0123 4567', 'PROP044'),
('0123 4567 8901', 'PROP045'),
('2345 6789 0123', 'PROP046'),
('4567 8901 2345', 'PROP047'),
('6789 0123 4567', 'PROP048'),
('0123 4567 8901', 'PROP049'),
('2345 6789 0123', 'PROP050')
;


SELECT * FROM `Property` WHERE `City`='Mumbai';

SELECT * FROM `Property` WHERE `Year_Of_Construction`>=2010 and `Type`='For Rent';

SELECT * FROM `Property` WHERE `Price`>4000000 and `Price`<10000000;

SELECT * FROM `Property` WHERE Address ="159, ABC Street, XYZ Society, Mumbai" AND BHK="2 BHK" AND Price<8000000;

SELECT * FROM `Property` ORDER BY `Price` DESC LIMIT 10;


SELECT Owners.`Property_ID`,`Aadhar_Card`,`Name`,`BHK`,`Price`,`Total_Area`,`Year_Of_Construction`,`Type`,`City`,`Date`,`Address`  FROM `Owners` INNER JOIN `Property` ON Owners.`Property_ID`=Property.`Property_ID` WHERE Owners.`Name`='Mia Wilson';



