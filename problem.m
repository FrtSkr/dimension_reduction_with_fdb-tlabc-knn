function [ loss_rate ] = problem( w, VERI, uzaklik_bagintisi, k)

    loss_rate = k_nn(w, VERI, uzaklik_bagintisi, k);

end

