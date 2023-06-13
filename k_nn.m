function [loss_rate] = k_nn(w, VERI, uzaklik_bagintisi, k)
global komsu;

test_ornek_sayisi = length(VERI.y_test);

for i=1: test_ornek_sayisi
uzaklik_dizisi=Uzaklik_Hesapla(uzaklik_bagintisi,VERI.x_train,VERI.x_test(i, :), w);

[komsu]=Komsu_Bul(k,uzaklik_dizisi,VERI.y_train);
[sinif]=Sinif_Bul();
predictions(i) = sinif;
end
loss_rate = Calculate_Loss_Rate(predictions, VERI.y_test);

clear VERI;