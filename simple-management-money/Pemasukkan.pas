program Pemasukkan;

uses crt;
const
        nMax = 100;

type
        arrString = array[1..nMax] of string;
        arrInteger = array[1..nMax] of longint;

var
        sumberPemasukkan, sumberPengeluaran : arrString;
        jumlahPemasukkan, jumlahPengeluaran : arrInteger;
        jumlahSumber,i, pilihMenu, n : integer;
        saldo, totalPemasukkan, totalPengeluaran, jumlahTarget : longint;
        jawaban : char;

procedure Azmi;
begin
			writeln('======================================');
			writeln('||           SEE YOU MONEY          ||');
			writeln('======================================');
			writeln;
			writeln;
			writeln('            Press Any Key..           ');
			writeln;
			writeln('                   Created by FnZ     ');
			readln;
end;
        
procedure menuUtama;
    begin
    clrscr;
        writeln('---------- SELAMAT DATANG ----------');
        writeln;
        writeln('1. Input Pemasukkan');
        writeln('2. Riwayat Pemasukkan');
        writeln('3. Input Pengeluaran');
        writeln('4. Keluar');
        writeln;
        write('Pilih menu : ');
        
    end;
    
procedure menuPemasukkan;
    begin
        
                    writeln;
                    writeln('---------- PEMASUKKAN ----------');
                    writeln;

                    write('Berapa sumber pemasukan? ');
                    readln(jumlahSumber);

                    for i:=1 to jumlahSumber do
                        begin
                        
                            n := n + 1;
                            write('- Sumber pemasukkan ke ', i, '? ');
                            readln(sumberPemasukkan[n]);
                            write('  Jumlah pemasukkan: Rp. ');
                            readln(jumlahPemasukkan[n]);
                            totalPemasukkan := totalPemasukkan + jumlahPemasukkan[n];
                        
                        end ;

                    saldo := totalPemasukkan;
                    writeln;
                    writeln('Tekan enter untuk ke menu lainnya');
                    readln;
                    
    end;
    
procedure menuRiwayatPemasukkan;
    begin
    
                    if totalPemasukkan = 0 then
                        begin
                            
                            writeln;
                            writeln('--------------------');
                            writeln('Pemasukkan tidak ada');
                            
                        end
                    else 
                        begin
                            writeln;
                            writeln('---------- RIWAYAT PEMASUKKAN ----------');
                            writeln;

                            for i:=1 to n do
                                begin
                                    writeln(i, ') Pemasukkan dari: ',sumberPemasukkan[i]);
                                    writeln('   Jumlah pemasukkan: Rp.', jumlahPemasukkan[i]);
                                end;

                            writeln;
                            writeln('--------------------');
                            writeln('Total pemasukkan: Rp. ', totalPemasukkan);
                        end;
                    writeln;
                    writeln('Tekan enter untuk ke menu lainnya');
                    readln;
    
    end;
    
procedure menuPengeluaran;
    begin
    
                    if totalPemasukkan = 0 then
                        begin
                        
		                            writeln;
		                            writeln('--------------------');
		                            writeln('Pemasukkan tidak ada, input pemasukkan dulu');
		                        
                        end
                    else
                        begin
                
		                            writeln;
		                            writeln('---------- TARGET PENGELUARAN ----------');
		                            writeln;

		                            writeln('Input target pengeluaran terlebih dahulu');
		                            
		                            repeat
		                            
				                                writeln('Saldo : Rp. ', saldo);
				                                writeln('Berapa target pengeluaran?');
				                                write('Rp. ');
				                                readln(jumlahTarget);
				                                
				                                if jumlahTarget > saldo then
				                                    begin
				                                    
				                                        writeln('Target anda terlalu besar');
				                                        writeln;
				                                    
				                                    end;
				                                
		                            until saldo >= jumlahTarget;                            

		                            writeln;
		                            writeln('Tekan enter untuk menghitung pengeluaran');
		                            readln;
		                    
		                            writeln;
		                            writeln('---------- PENGELUARAN ----------');
		                            writeln;

                        	    repeat
			                    			clrscr;
			                                totalPengeluaran := 0;
			                                write('Berapa kebutuhan yang diinginkan? ');
			                                readln(jumlahSumber);

			                                for i:=1 to jumlahSumber do
			                                    begin
			                   
			                                        write('- Kebutuhan ke ', i, '? ');
			                                        readln(sumberPengeluaran[i]);
			                                        write('  Jumlah pengeluaran: Rp. ');
			                                        readln(jumlahPengeluaran[i]);
			                                        totalPengeluaran := totalPengeluaran + jumlahPengeluaran[i];
			               
			                                    end;

			                                writeln;
			                                writeln('--------------------');
			                                writeln('Total pengeluaran         : Rp. ', totalPengeluaran);
			                                writeln('Jumlah target pengeluaran : Rp. ',jumlahTarget);
			                                writeln;

			                                if jumlahTarget < totalPengeluaran then
			                                    begin
			                       
			                       
			                                        writeln;
			                                        writeln('--------------------');
			                                        writeln('Total pengeluaran anda melebihi target!');
			                                        writeln;
			                                        writeln('Tekan enter untuk mengulangi lagi');
			                                        readln;
			                                        writeln;
			                                        jawaban := 'y';
			                            
			                                    end
			                                else
			                                    begin
			                       
					                                        saldo := saldo - totalPengeluaran;
					                                        jumlahTarget := jumlahTarget - totalPengeluaran;
					                                        writeln;
					                                        writeln('--------------------');
					                                        writeln('Total pengeluaran anda mencukupi target!');
					                                        writeln('Sisa target pengeluaran : Rp. ', jumlahTarget);
					                                        writeln('Sisa saldo              : Rp. ', saldo);
					                                        writeln;
					                                        writeln('--------------------');
					                                        
					                                        if jumlahTarget = 0 then
					                                            begin
					                                            
								                                                writeln('Target pengeluaran anda telah habis');
								                                                jawaban := 'n';
								                                            
					                                            end
					                                        else
					                                            begin 
					                                       
								                                                writeln('Tambah pengeluaran lagi? [y/n]');
								                                                write('Jawab: ');
								                                                readln(jawaban);
								                                        
					                                            end;
					                                            
					                                        writeln;
			                          
			                                    end;

		                            until jawaban = 'n';
                    
                        end;
                    
                    writeln;
                    writeln('Tekan enter untuk ke menu lainnya');
                    readln;
    
    end;
    
// procedure riwayatPengeluaran;
// 	var
// 		j: Integer;
// 	begin
			
//                         for j:=1 to jumlahSumber do
//                         begin
//                             writeln(jumlahPengeluaran[i],'Dengan harga = ',sumberPengeluaran[i]);
//                         end;


                       
// 	end;


procedure menuKeluar;
    begin
    
                    writeln;
                    writeln('---------- TERIMA KASIH ----------');
                    writeln('Tekan enter untuk mengakhiri program');
                    readln;
    
    end;
    
procedure menuLainnya;
    begin
    
                    writeln;
                    writeln('--------------------');
                    writeln('Pilihan tidak ada');
                    writeln;
                    writeln('Tekan enter untuk ke menu lainnya');
                    readln;
    
    end;

BEGIN

        clrscr;
        totalPemasukkan := 0;
        n := 0;
        
        Azmi;
        repeat
       
        menuUtama;
        readln(pilihMenu);
        
        case pilihMenu of
            1: 
                begin
                    
                    menuPemasukkan;
                    
                end;
            2: 
                begin
                
                    menuRiwayatPemasukkan;
                
                end;
            3: 
                begin
                
                    menuPengeluaran;
                    
                end;
            4: 
                begin
                
                    menuKeluar;
                
                end;
                
            else
                begin
                
                    menuLainnya;
                
                end;
        end;
        
        until pilihMenu = 4;
        
END.