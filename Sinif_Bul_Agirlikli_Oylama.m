
function [sinif_2]= Sinif_Bul_Agirlikli_Oylama(  )
global komsu;
for i=1:length(komsu)
    komsu(i).ters_uzaklik=0;
    for j=1:length(komsu)
      if(strcmpi(komsu(i).sinif,komsu(j).sinif))
             komsu(i).ters_uzaklik=(1/((komsu(j).uzaklik)^2))+komsu(i).ters_uzaklik;
      end
    end
  
end
  
ters_uzaklik=0;
for i=1:length(komsu)
      if((komsu(i).ters_uzaklik>ters_uzaklik))
              max_ters_uzaklik_indeks=i;
              ters_uzaklik=komsu(i).ters_uzaklik;
      end
end
    sinif_2=komsu(max_ters_uzaklik_indeks);
end



