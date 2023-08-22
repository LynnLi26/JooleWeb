use JooleDatabase
go

​
Insert Into users(UserName, UserEmail, UserPassword) Values ('admin', 'admin@test.com', 'admin');
go

Insert Into Category(CategoryID,CategoryName) Values (1,'Mechanical');
Insert Into Category(CategoryID,CategoryName) Values (2,'Electrical');
Insert Into Category(CategoryID,CategoryName) Values (3,'Stationary');
Insert Into Category(CategoryID,CategoryName) Values (4,'Furniture');
go
​
Insert Into SubCategory(SubCategoryID, SubCategoryName, CategoryID) values (1,'Fans', 2);
Insert Into SubCategory(SubCategoryID, SubCategoryName, CategoryID) values (2,'Vaccums', 2);
Insert Into SubCategory(SubCategoryID, SubCategoryName, CategoryID) values (3,'Toasters', 2);
Insert Into SubCategory(SubCategoryID, SubCategoryName, CategoryID) values (4,'Couch', 4);
Insert Into SubCategory(SubCategoryID, SubCategoryName, CategoryID) values (5,'Chair', 4);
Insert Into SubCategory(SubCategoryID, SubCategoryName, CategoryID) values (6,'Table', 4);
Insert Into SubCategory(SubCategoryID, SubCategoryName, CategoryID) Values (7,'Wrenches', 1);
Insert Into SubCategory(SubCategoryID, SubCategoryName, CategoryID) Values (8,'Hammers', 1);
Insert Into SubCategory(SubCategoryID, SubCategoryName, CategoryID) Values (9,'Nails', 1);
Insert Into SubCategory(SubCategoryID, SubCategoryName, CategoryID) Values (10,'Books', 3);
Insert Into SubCategory(SubCategoryID, SubCategoryName, CategoryID) Values (11,'Pens', 3);
Insert Into SubCategory(SubCategoryID, SubCategoryName, CategoryID) Values (12,'Paper', 3);
go

Insert Into Manufacturers(ManufacturerID, ManufacturerName, ManufacturerWeb) Values (5, 'Google','google.com');
Insert Into Manufacturers(ManufacturerID, ManufacturerName, ManufacturerWeb) Values (6, 'Apple','apple.com');
Insert Into Manufacturers(ManufacturerID, ManufacturerName, ManufacturerWeb) Values(7, 'Microsoft','ms.com');
Insert Into Manufacturers(ManufacturerID, ManufacturerName, ManufacturerWeb) Values (8, 'Amazon','amazon.com');
go

-- insert values into products 
-- so far only adding 'fans'
Insert Into Products(ProductID, ManufacturerID,SubcategoryID ,ProductName, Series, Model, ModelYear) 
	Values(1, 5, 1, 'FanA' , 'Series350', 'A', 2013);
Insert Into Products(ProductID, ManufacturerID,SubcategoryID ,ProductName, Series, Model, ModelYear) 
	Values(2, 5, 1, 'FanB' , 'Series351', 'B', 2016);
Insert Into Products(ProductID, ManufacturerID,SubcategoryID ,ProductName, Series, Model, ModelYear) 
	Values(3, 6, 1, 'FanC' , 'Series352', 'A', 2019);
Insert Into Products(ProductID, ManufacturerID,SubcategoryID ,ProductName, Series, Model, ModelYear) 
	Values(4, 6, 1, 'FanD' , 'Series353', 'B', 2022);
Insert Into Products(ProductID, ManufacturerID,SubcategoryID ,ProductName, Series, Model, ModelYear) 
	Values(5, 7, 1, 'FanE' , 'Series354', 'C', 2023);
Insert Into Products(ProductID, ManufacturerID,SubcategoryID ,ProductName, Series, Model, ModelYear) 
	Values(6, 7, 1, 'FanF' , 'Series355', 'D', 2008);
Insert Into Products(ProductID, ManufacturerID,SubcategoryID ,ProductName, Series, Model, ModelYear) 
	Values(7, 8, 1, 'FanG' , 'Series356', 'C', 2000);
Insert Into Products(ProductID, ManufacturerID,SubcategoryID ,ProductName, Series, Model, ModelYear) 
	Values(8, 8, 1, 'FanH' , 'Series357', 'D', 2012);
go
​
-- Inserting TechSpec Property Names
Insert Into Property(PropertyID, PropertyName, IsType, IsTechSpec) Values (1, 'AirFlow (CFM)', 0, 1);
Insert Into Property(PropertyID, PropertyName, IsType, IsTechSpec) Values (2, 'Max Power (W)', 0, 1);
Insert Into Property(PropertyID, PropertyName, IsType, IsTechSpec) Values (3, 'Sound at Max Speed (dbA)', 0, 1);
Insert Into Property(PropertyID, PropertyName, IsType, IsTechSpec) Values (4, 'Fan Sweep Diameter (in)', 0, 1);
Insert Into Property(PropertyID, PropertyName, IsType, IsTechSpec) Values (5, 'Color', 1, 0);
go
​
-- Inserting TechSpecFilter and related sub category
Insert Into TechSpecFilter(PropertyID, SubCategoryID, MinValue, MaxValue) Values (1, 1, 0, 100);
Insert Into TechSpecFilter(PropertyID, SubCategoryID, MinValue, MaxValue) Values (2, 1, 0, 2000);
go
​​
--Inserting TypeFilter and related sub category
Insert Into TypeFilter(PropertyID, SubCategoryID, TypeName) Values (5, 1, 'Type-Color');
go
​
​
-- Inserting values into PropertyValues table
Insert into propertyvalue(ProductID, PropertyID, PropertyValue) values(1,1,68);
Insert into propertyvalue(ProductID, PropertyID, PropertyValue) values(2,1,45);
Insert into propertyvalue(ProductID, PropertyID, PropertyValue) values(3,1,13);
Insert into propertyvalue(ProductID, PropertyID, PropertyValue) values(4,1,68);
Insert into propertyvalue(ProductID, PropertyID, PropertyValue) values(5,1,89);
Insert into propertyvalue(ProductID, PropertyID, PropertyValue) values(6,1,99);
Insert into propertyvalue(ProductID, PropertyID, PropertyValue) values(7,1,75);
Insert into propertyvalue(ProductID, PropertyID, PropertyValue) values(8,1,25);
go

Insert into propertyvalue(ProductID, PropertyID, PropertyValue) values(1,2,1080);
Insert into propertyvalue(ProductID, PropertyID, PropertyValue) values(2,2,1568);
Insert into propertyvalue(ProductID, PropertyID, PropertyValue) values(3,2,1888);
Insert into propertyvalue(ProductID, PropertyID, PropertyValue) values(4,2,1573);
Insert into propertyvalue(ProductID, PropertyID, PropertyValue) values(5,2,998);
Insert into propertyvalue(ProductID, PropertyID, PropertyValue) values(6,2,900);
Insert into propertyvalue(ProductID, PropertyID, PropertyValue) values(7,2,500);
Insert into propertyvalue(ProductID, PropertyID, PropertyValue) values(8,2,1400);
go

Insert into propertyvalue(ProductID, PropertyID, PropertyValue) values(2,3,60);
Insert into propertyvalue(ProductID, PropertyID, PropertyValue) values(3,3,30);
Insert into propertyvalue(ProductID, PropertyID, PropertyValue) values(4,3,70);
Insert into propertyvalue(ProductID, PropertyID, PropertyValue) values(5,3,85);
go

Insert into propertyvalue(ProductID, PropertyID, PropertyValue) values(1,4,20);
Insert into propertyvalue(ProductID, PropertyID, PropertyValue) values(5,4,8);
Insert into propertyvalue(ProductID, PropertyID, PropertyValue) values(7,4,18);
Insert into propertyvalue(ProductID, PropertyID, PropertyValue) values(8,4,26);
go

Insert into propertyvalue(ProductID, PropertyID, PropertyValue) values(1,5,'Green');
Insert into propertyvalue(ProductID, PropertyID, PropertyValue) values(2,5,'Green');
Insert into propertyvalue(ProductID, PropertyID, PropertyValue) values(3,5,'Green');
Insert into propertyvalue(ProductID, PropertyID, PropertyValue) values(4,5,'Green');
Insert into propertyvalue(ProductID, PropertyID, PropertyValue) values(5,5,'Black');
Insert into propertyvalue(ProductID, PropertyID, PropertyValue) values(6,5,'Black');
Insert into propertyvalue(ProductID, PropertyID, PropertyValue) values(7,5,'Black');
Insert into propertyvalue(ProductID, PropertyID, PropertyValue) values(8,5,'Black');
go

update Products set ProductImage = '\Image\Electrical\Fans\FanA.png' where ProductID = 1;
update Products set ProductImage = '\Image\Electrical\Fans\FanB.png' where ProductID = 2;
update Products set ProductImage = '\Image\Electrical\Fans\FanC.png' where ProductID = 3;
update Products set ProductImage = '\Image\Electrical\Fans\FanD.jpg' where ProductID = 4;
update Products set ProductImage = '\Image\Electrical\Fans\FanE.png' where ProductID = 5;
update Products set ProductImage = '\Image\Electrical\Fans\FanF.png' where ProductID = 6;
update Products set ProductImage = '\Image\Electrical\Fans\FanG.png' where ProductID = 7;
update Products set ProductImage = '\Image\Electrical\Fans\FanH.jpg' where ProductID = 8;
go

--Add chair products
Insert into Property(PropertyID,PropertyName,IsType,IsTechSpec) values (6,'Materials',1,0);
Insert into Property(PropertyID,PropertyName,IsType,IsTechSpec) values (7,'Usage Scenario',1,0);
go

Insert into TypeFilter(PropertyID,SubCategoryID,TypeName) values (6,5,'Type-Materials');
Insert into TypeFilter(PropertyID,SubCategoryID,TypeName) values (7,5,'Type-Usage Scenario');
go

insert into Property(PropertyID,PropertyName,IsType,IsTechSpec) values (8,'Length (meters)',0,1);
insert into Property(PropertyID,PropertyName,IsType,IsTechSpec) values (9,'Width (meters)',0,1);
insert into Property(PropertyID,PropertyName,IsType,IsTechSpec) values (10,'Height (kilometers)',0,1);
go

insert into TechSpecFilter(PropertyID,SubCategoryID,MinValue,MaxValue) values (8,5,0,100);
insert into TechSpecFilter(PropertyID,SubCategoryID,MinValue,MaxValue) values (9,5,0,100);
insert into TechSpecFilter(PropertyID,SubCategoryID,MinValue,MaxValue) values (10,5,0,100);
go

insert into Manufacturers(ManufacturerID, ManufacturerName, ManufacturerWeb) values (4,'Heaven','heaven.com');
go

insert into Products(ProductID,ManufacturerID,SubCategoryID,ProductName,ProductImage,Series,Model,ModelYear)
	values (9,4,5,'ChairA','\Image\Furniture\Chairs\ChairA.png','Series123','A',1990);
insert into Products(ProductID,ManufacturerID,SubCategoryID,ProductName,ProductImage,Series,Model,ModelYear)
	values (10,5,5,'ChairB','\Image\Furniture\Chairs\ChairB.png','Series234','B',1345);
insert into Products(ProductID,ManufacturerID,SubCategoryID,ProductName,ProductImage,Series,Model,ModelYear)
	values (11,6,5,'ChairC','\Image\Furniture\Chairs\ChairC.png','Series345','C',2077);
insert into Products(ProductID,ManufacturerID,SubCategoryID,ProductName,ProductImage,Series,Model,ModelYear)
	values (12,4,5,'ChairD','\Image\Furniture\Chairs\ChairD.png','Series456','D',1893);
go

insert into TypeFilter(PropertyID,SubCategoryID,TypeName) values (5,5,'Type-Color');
go

insert into PropertyValue(ProductID,PropertyID,PropertyValue) values (9,5,'Brown');
insert into PropertyValue(ProductID,PropertyID,PropertyValue) values (9,6,'Wood');
insert into PropertyValue(ProductID,PropertyID,PropertyValue) values (9,7,'Jail');
insert into PropertyValue(ProductID,PropertyID,PropertyValue) values (9,8,'99');
insert into PropertyValue(ProductID,PropertyID,PropertyValue) values (9,9,'88');
insert into PropertyValue(ProductID,PropertyID,PropertyValue) values (9,10,'77');
go

insert into PropertyValue(ProductID,PropertyID,PropertyValue) values (10,5,'Brown');
insert into PropertyValue(ProductID,PropertyID,PropertyValue) values (10,6,'Wood');
insert into PropertyValue(ProductID,PropertyID,PropertyValue) values (10,7,'Family');
insert into PropertyValue(ProductID,PropertyID,PropertyValue) values (10,8,'1');
insert into PropertyValue(ProductID,PropertyID,PropertyValue) values (10,9,'1');
insert into PropertyValue(ProductID,PropertyID,PropertyValue) values (10,10,'1');
go

insert into PropertyValue(ProductID,PropertyID,PropertyValue) values (11,5,'Grey');
insert into PropertyValue(ProductID,PropertyID,PropertyValue) values (11,6,'Fur');
insert into PropertyValue(ProductID,PropertyID,PropertyValue) values (11,7,'Aerial');
insert into PropertyValue(ProductID,PropertyID,PropertyValue) values (11,8,'2');
insert into PropertyValue(ProductID,PropertyID,PropertyValue) values (11,9,'2');
insert into PropertyValue(ProductID,PropertyID,PropertyValue) values (11,10,'3');
go

insert into PropertyValue(ProductID,PropertyID,PropertyValue) values (12,5,'Black');
insert into PropertyValue(ProductID,PropertyID,PropertyValue) values (12,6,'Metal');
insert into PropertyValue(ProductID,PropertyID,PropertyValue) values (12,7,'Jail');
insert into PropertyValue(ProductID,PropertyID,PropertyValue) values (12,8,'3');
insert into PropertyValue(ProductID,PropertyID,PropertyValue) values (12,9,'2');
insert into PropertyValue(ProductID,PropertyID,PropertyValue) values (12,10,'5');
go