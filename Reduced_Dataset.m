function [x_train, x_test] = Reduced_Dataset(attributes, dataset)

x_train = dataset.x_train(:, attributes);
x_test = dataset.x_test(:, attributes);

end

