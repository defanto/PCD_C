function [hasilSobel] = operatorsobel(gambar);
  sobel = double(gambar);
  for i=2:size(sobel,1) - 1 #row
    for j=2:size(sobel,2 ) - 1 #col
      %Sobel mask for x-direction:
      Gx=((sobel(i+1,j-1)+2*sobel(i+1,j)+sobel(i+1,j+1))-(sobel(i-1,j-1)+2*sobel(i-1,j)+sobel(i-1,j+1)));
      %Sobel mask for y-direction:
      Gy=(sobel(i-1,j+1)+(2*sobel(i,j+1)+sobel(i+1,j+1))-(sobel(i-1,j-1)+2*sobel(i,j-1)+sobel(i+1,j-1)));  
      %The gradient of the image
      hasilSobel(i,j)=sqrt(Gx.^2+Gy.^2);
    end  
  end
  hasilSobel=uint8(hasilSobel);
endfunction