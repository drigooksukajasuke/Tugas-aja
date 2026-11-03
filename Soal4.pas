program KelulusanMahasiswaTanpaRecord;
var
  n, i: integer;
  nTugas, nKuis, nUTS, nUAS, nRataRata: array[1..5] of real;

begin
  { Meminta input jumlah mahasiswa dengan validasi (1 <= n <= 5) }
  repeat
    write('Masukkan jumlah mahasiswa (1-5): ');
    readln(n);
  until (n >= 1) and (n <= 5);

  { Memasukkan nilai komponen untuk setiap mahasiswa }
  for i := 1 to n do
  begin
    writeln;
    writeln('--- Data Mahasiswa ke-', i, ' ---');
    write('Masukkan Nilai Tugas : ');
    readln(nTugas[i]);
    write('Masukkan Nilai Kuis  : ');
    readln(nKuis[i]);
    write('Masukkan Nilai UTS   : ');
    readln(nUTS[i]);
    write('Masukkan Nilai UAS   : ');
    readln(nUAS[i]);

    { Menghitung rata-rata dari keempat komponen nilai }
    nRataRata[i] := (nTugas[i] + nKuis[i] + nUTS[i] + nUAS[i]) / 4;
  end;

  { Menampilkan rekapitulasi nilai, rata-rata, dan status kelulusan }
  writeln;
  writeln('==================================================');
  writeln('            REKAPITULASI NILAI MAHASISWA          ');
  writeln('==================================================');
  for i := 1 to n do
  begin
    writeln('Mahasiswa ke-', i);
    writeln('  - Tugas     : ', nTugas[i]:0:2);
    writeln('  - Kuis      : ', nKuis[i]:0:2);
    writeln('  - UTS       : ', nUTS[i]:0:2);
    writeln('  - UAS       : ', nUAS[i]:0:2);
    writeln('  - Rata-rata : ', nRataRata[i]:0:2);
    
    { Menentukan status kelulusan berdasarkan syarat rata-rata >= 70 }
    if nRataRata[i] >= 70 then
      writeln('  - Keterangan: LULUS')
    else
      writeln('  - Keterangan: TIDAK LULUS');
    writeln('--------------------------------------------------');
  end;
end.