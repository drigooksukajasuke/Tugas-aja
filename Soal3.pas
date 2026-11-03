program UrutNilaiUAS;
var
  n, i, j, temp: integer;
  nilai: array[1..10] of integer; 

begin
  { Meminta input jumlah mahasiswa dengan validasi (1 <= n <= 10) }
  repeat
    write('Masukkan jumlah mahasiswa (1-10): ');
    readln(n);
  until (n >= 1) and (n <= 10);

  { Memasukkan nilai UAS setiap mahasiswa }
  for i := 1 to n do
  begin
    write('Masukkan nilai UAS mahasiswa ke-', i, ': ');
    readln(nilai[i]);
  end;

  { Mengurutkan nilai dari terendah ke tertinggi (Ascending) }
  for i := 1 to n - 1 do
  begin
    for j := 1 to n - i do
    begin
      if nilai[j] > nilai[j + 1] then
      begin
        temp := nilai[j];
        nilai[j] := nilai[j + 1];
        nilai[j + 1] := temp;
      end;
    end;
  end;

  { Menampilkan hasil pengurutan nilai }
  writeln;
  writeln('Daftar nilai UAS mahasiswa (dari terendah ke tertinggi):');
  for i := 1 to n do
  begin
    writeln('Nilai ke-', i, ': ', nilai[i]);
  end;
end.