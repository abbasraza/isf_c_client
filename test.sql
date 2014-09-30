/*
  Press F2 or Click "Pretty Print" button to format SQL.
  Don't want to show this demo sql? Just uncheck "open demo SQL after startup SQL Pretty Printer" in settings tab.
*/
create function infFKfrom(@tbID int, @colID smallint) returns varchar(2000) as 
begin declare @r varchar(2000), @a varchar(200)
select @r='', @a=''
DECLARE cs CURSOR FOR
      select FKfrom=convert(varchar(200),object_name(rkeyid)+'.'+r.[name])
 from sysforeignkeys c     join syscolumns f on c.fkeyid=f.[id] and c.fkey=f.colID
join syscolumns r on c.rkeyid=r.[id] and c.rkey=r.colID where fkeyID=@tbID and fkey=@colID
    order by keyNo

OPEN cs
 FETCH NEXT FROM cs INTO @a
WHILE @@FETCH_STATUS = 0 BEGIN
select @r=@r+case when len(@r)>0 then ', ' else '' end+@a
FETCH NEXT FROM cs INTO @a
END
   CLOSE cs
 DEALLOCATE cs
   return(@r)
end
GO