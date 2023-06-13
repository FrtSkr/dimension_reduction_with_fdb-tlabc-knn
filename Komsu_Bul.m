
function [komsu]= Komsu_Bul( komsu_sayisi,uzaklik_dizisi,veri_siniflari)

[en_kucukler,indeksleri]=sort(uzaklik_dizisi);

for i=1:komsu_sayisi
    komsu(i).sinif=veri_siniflari(indeksleri(i));
    komsu(i).indeks=indeksleri(i);
    komsu(i).uzaklik=uzaklik_dizisi(indeksleri(i));
    komsu(i).adet=0;   % i. komþunun sýnýfndan kaç adet var
    komsu(i).ters_uzaklik=0; % aðýrlýklý oylamada ihtiyaç duyulan deðer
end

end

