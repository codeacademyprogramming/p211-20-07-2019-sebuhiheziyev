# p211-20-07-2019

### Homework - SQL Procedure, Function
- Aşağıdakı mövzuları araşdırın:
  - SQL Procedure, Procedure with output parameter
  - SQL Functions
  - Difference between Functions and procedures
  
- Aşağıdakı linklərdən View və Procedurlar haqqında oxuyun:
  - https://www.w3schools.com/sql/sql_view.asp
  - https://www.tutorialspoint.com/sql/sql-using-views.htm
  - https://www.w3schools.com/sql/sql_stored_procedures.asp
  - https://www.mssqltips.com/sqlservertutorial/160/sql-server-stored-procedure-tutorial/

- Sosial şəbəkə tipli databaza yaradın. İstifadəçilər olacaq, onlar haqqında əsas məlumatlar saxlanılacaq. Postlar (paylaşımlar) olacaq, postun başlığı, məzmunu, nə zaman yazıldığı, kim tərəfindən yazıldığı bilinəcək. Kommentlər olacaq, kommentin məzmunu, hansı posta yazıldığı, kim tərəfindən yazıldığı, nə zaman yazıldığı bilinəcək. Həm postların, həm də kommentlərin kim tərəfindən "like" olunduğu saxlanacaq. 
View-lar olacaq. Postlar və postu yazmış şəxs haqqında əsas məlumatları göstərəcək view, kommentlər, kommentin yazıldığı post və komenti yazan haqqında əsas məlumatların görsəndiyi view.
Procedurlar olacaq. Tarixə görə postlara baxmaq üçün (minDate və maxDate parametrləri), İstifadəçi adı göndərildikdə həmin istifadəçinin yazdığı postları göstərmək üçün (username parametri), PostId göndərildikdə həmin posta aid olan bütün kommentləri göstərmək üçün(postId parametri), PostId göndərildikdə həmin postun "like" sayını qaytarmaq üçün(postId, likeCount OUTPUT).

*Sabaha qədər. Uğurlar.*
