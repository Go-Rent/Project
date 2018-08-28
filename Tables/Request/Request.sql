Create TABLE Request(
	RequestId INT identity(500000,1) constraint pk_ReqId Primary key,
	RequestDescription nvarchar(500) not null,
	RequestTitle nvarchar(50) not null,
	UserId int not null,
	AddressId int not null
)