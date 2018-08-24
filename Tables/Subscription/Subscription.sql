create table Subscription(
SubID int Identity(700000,1) constraint pk_SubID primary key,
SubDesc nvarchar(500) not null,
SubAmount Money null,
SubTitle nvarchar(50) not null

)