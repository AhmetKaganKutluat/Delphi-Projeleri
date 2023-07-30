uses crt;
 var
   tus:char;

begin
  clrscr;
  writeln('f2 tusuna bas calıstır');
  repeat
    tus:=readkey;
    if(tus=#60) then begin
    writeln('MERHABA DUNYA');
    end;
  until tus in[#60] ;
  readln;
end.

