
--alter procedure usp_UserPost @names nvarchar(50)
--AS
--SELECT
--CONCAT(Users.FirstName,' ', Users.LastName) as 'FulName',
--Post.PostTitle,Post.PostContent,Post.PostWriteTime,
--CONCAT(Users.Email,'  ',Users.Number) as 'Email and Number',
--Comment.CommentContent,Comment.CommentWriteTime
--from Post
--join Users on Post.PostWriteUserId = Users.Id
--join Comment on Post.PostWriteUserId = Comment.Id
--  where FirstName = @names

--execute usp_UserPost 'Nurlan'

--alter procedure usp_PostId @postId int
--AS
--select 
--Post.PostTitle,Post.PostContent,
--Comment.CommentContent,
--Comment.CommentWriteTime ,
--CONCAT(Users.FirstName,'  ',Users.LastName) as 'Komenti Yazan',
--users.Email,users.Number
--from Post
--join Comment on Comment.CommentWritePostId = Post.Id
--join Users on  Comment.CommentWriteUserId = Users.Id
--where Post.Id = @postId

--execute usp_PostId 2


alter procedure usp_PostLikeCount @postId int
as
select 
Post.Id,Post.PostTitle,Post.PostContent,
CONCAT(Users.FirstName ,'  ',Users.LastName) as 'Like Eden'
from Post
join LikePosted on LikePosted.LikePostId = Post.Id 
Join Users on  LikePosted.LikeUsersId = Users.Id
where post.Id = @postId 

execute usp_PostLikeCount @postId = 2