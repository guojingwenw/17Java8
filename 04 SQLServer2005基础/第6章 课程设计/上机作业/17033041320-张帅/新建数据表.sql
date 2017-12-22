--商品类别表（Category）
  create table category(
--主键（cid）
  cid int primary key identity(1,1),
--类型名称（Cname）
  cname nvarchar(10) not null unique,--类别描述(Description)  description nvarchar(50) )--商品信息表（Ware）  create table ware(--商品的编号，即条形码（Wid）  wid  int primary key identity(1,1),--商品名称（Wname）  wname nvarchar(10) not null unique,--商品所属的类别,外键,(Cid)  cid int not null foreign key references category(cid),--商品进价(PurchasePrice)  purchaseprice decimal(10,2) not null check(purchaseprice>0),--商品售价(SalesPrice)  salesPrice decimal(10,2) not null check(salesPrice>0),--商品库存量(Amount)  amount int not null check(amount>0),) --员工表（Employee）  create table employee(--员工编号（Eid）  eid int primary key identity(1001,1),--员工姓名（Ename）  ename nvarchar(10) not null,--员工密码( Epassword )  epassword varchar(10) check(len(Epassword)>6),--备注( Remark )  remark nvarchar(50))--销售记录表（SalesInfo）   create table salesInfo(--主键( Sid )   sid int primary key identity(1,1),--销售商品的编号,外键，（Wid）  wid int not null foreign key references ware(wid),--商品销售的时间（SalesDate）  salesdate varchar(30) not null,--商品销售的数量（SalesAmount）  salesamount int not null,check(salesAmount>0),--收银员的编号，外键，（Eid）  eid int foreign key references employee(Eid))　　drop table categorydrop table waredrop table salesInfodrop table employee