#Tugas 1
#membaca citra berwarna
I = imread('1.jpg');

#mengambil rata -rata dari r,g, dan b
floatAbu = mean(I,3);
#mengubah citra berwarna ke citra keabuan
abu2 = uint8(floatAbu);

R = I(:,:,1);
G = I(:,:,2);
B = I(:,:,3);

subplot(1,3,1), hist(R), title('Hist Red');
subplot(1,3,2), hist(G), title('Hist Green');
subplot(1,3,3), hist(B), title('Hist Blue');

subplot(1,2,1), imshow(abu2), title('Abu');
subplot(1,2,2), hist(abu2), title('Hist Abu');

#transformasi logaritmik
logaritmik1 = 0.05*log(1+abu2);
logaritmik2 = 0.1*log(1+abu2);
logaritmik3 = 0.15*log(1+abu2);
subplot(1,2,1), imshow(logaritmik1), title('c=0.05');
subplot(1,2,2), hist(logaritmik1), title('Hist Transf Log');
subplot(1,2,1), imshow(logaritmik2), title('c=0.1');
subplot(1,2,2), hist(logaritmik2), title('Hist Transf Log');
subplot(1,2,1), imshow(logaritmik3), title('c=0.15');
subplot(1,2,2), hist(logaritmik3), title('Hist Transf Log');


#Tugas 2
#mengambil ukuran baris dan kolom
[a,b] = size(abu2);

#mengubah citra keabuan dengan menambah dan mengurangi dengan 80
for baris=1:a
  for kolom=1:b
    abu2tambah(baris,kolom) = abu2(baris,kolom)+80;
    abu2kurang(baris,kolom) = abu2(baris,kolom)-80;
  endfor
endfor

#menampilkan gambar dan histogram
subplot(1,2,1), imshow(abu2tambah), title('Keabuan tambah');
subplot(1,2,2), hist(abu2tambah), title('Hist Keabuan tambah');

subplot(1,2,1), imshow(abu2kurang), title('Keabuan kurang');
subplot(1,2,2), hist(abu2kurang), title('Hist Keabuan kurang');

#memanggil fungsi operatorsobel dengan parameter berupa gambar yang sudah diubah keabuannya
sobeltambah = operatorsobel(abu2tambah);
sobelkurang = operatorsobel(abu2kurang);

subplot(1,2,1), imshow(sobeltambah), title('Sobel tambah');
subplot(1,2,2), hist(sobeltambah), title('Hist Sobel tambah');

subplot(1,2,1), imshow(sobelkurang), title('Sobel kurang');
subplot(1,2,2), hist(sobelkurang), title('Hist Sobel kurang');
