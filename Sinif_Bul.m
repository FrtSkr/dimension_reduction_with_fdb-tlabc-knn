
function [sinif]= Sinif_Bul( )
global komsu;
for i=1:length(komsu)
    for j=1:length(komsu)
      if(strcmpi(komsu(i).sinif,komsu(j).sinif))
              komsu(i).adet=komsu(i).adet +1;
      end
    end
  
end
  
for i=1:length(komsu)-1
      if((komsu(i).adet<komsu(i+1).adet))
              en_cok_sinif_indeks=i+1;
      else
          en_cok_sinif_indeks=i;
     end
end
    sinif=komsu(en_cok_sinif_indeks);

end

