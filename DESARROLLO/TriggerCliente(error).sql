delimiter //
create trigger AutoIncremento
  after insert 
  on cliente
  for each row
begin

   if not exists (select tabla from numerador) = 'Cliente' 
   then begin
   
   insert into numerador (tabla, siguiente)
   values ("Cliente",1);
   
   end; end if;
   
   update cliente
   set id = numerador.siguiente
   where numerador.tabla = 'Cliente';
end 