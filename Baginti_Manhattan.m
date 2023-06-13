function [ uzaklik_dizisi ] = Baginti_Manhattan( veri_seti,yeni_veri )
[ornek_sayisi,ozellik_sayisi]=size(veri_seti);

    for i=1:ornek_sayisi
    toplam=0;
        for j=1:ozellik_sayisi
        toplam=toplam+abs(veri_seti(i,j)-yeni_veri(38,j));
    end
    uzaklik_dizisi(i)=toplam;
    end

end
