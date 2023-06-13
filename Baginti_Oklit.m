function [ uzaklik_dizisi ] = Baginti_Oklit(veri_seti,yeni_veri)
[ornek_sayisi,ozellik_sayisi]=size(veri_seti);

for i=1:ornek_sayisi
toplam=0;
    for j=1:ozellik_sayisi
        toplam=toplam+(veri_seti(i,j)-yeni_veri(1,j))^2;
    end
uzaklik_dizisi(i)=sqrt(toplam);
end

end
