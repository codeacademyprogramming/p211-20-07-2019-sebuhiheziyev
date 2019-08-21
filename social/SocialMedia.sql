--create database Social

--create table Users(
--   Id int primary key identity,
--   LastName nvarchar(50) not null,
--   FirstName nvarchar(50),
--   Email nvarchar(100) unique,
--   Number nvarchar(100) unique

--)

--create table Post(
--Id int primary key identity,
--PostWriteUserId int references Users(Id),
--PostTitle nvarchar(100),


--PostContent nvarchar(100),
--PostWriteTime date
--)

--create table Comment(
--Id int primary key identity,
--CommentContent nvarchar(max) not null,
--CommentWritePostId int references Post(Id),
--CommentWriteUserId int references Users(Id),
--CommentWriteTime date 
--)

--alter table Post
--add PostLikeId int references PostLiked(Id)

--create table LikePosted(
--Id int primary key identity,
--LikePostId int references Post(Id),
--LikeUsersId int references Users(Id),
--)




--select *from Users
--select *from Post
--select *from Comment

--create view PostYazanHm
--as
--select 
--CONCAT(Users.FirstName,' ', Users.LastName) as 'FulName',
--Post.PostTitle,Post.PostContent,Post.PostWriteTime,
--CONCAT(Users.Email,'  ',Users.Number) as 'Email and Number',
--Comment.CommentContent,Comment.CommentWriteTime
--from Post
--join Users on Post.PostWriteUserId = Users.Id
--join Comment on Post.PostWriteUserId = Comment.Id


--create view ComentYazanHm
--as
--select 
--Post.PostTitle,Post.PostContent,
--Comment.CommentContent,
--Comment.CommentWriteTime ,
--CONCAT(Users.FirstName,'  ',Users.LastName) as 'Komenti Yazan',
--users.Email,users.Number
--from Post
--join Comment on Post.PostCommentId = Comment.Id
--join Users on  Comment.CommentWriteUserId = Users.Id



--create view PostLikeHm
--as
--select 
--Post.Id,Post.PostTitle,Post.PostContent,
--CONCAT(Users.FirstName ,'  ',Users.LastName) as 'Like Eden'
--from Post
--join LikePosted on LikePosted.LikePostId = Post.Id 
--Join Users on  LikePosted.LikeUsersId = Users.Id



select * from PostYazanHm
select * from ComentYazanHm
select * from PostLikeHm

	