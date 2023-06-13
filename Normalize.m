function [normalized_dataset] = Normalize(dataset)

min_vals = min(dataset);  % Her bir özelliğin minimum değerini bul
max_vals = max(dataset);  % Her bir özelliğin maksimum değerini bul

normalized_dataset = (dataset - min_vals) ./ (max_vals - min_vals);

end

