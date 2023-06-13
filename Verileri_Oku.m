function Verileri_Oku(dataset_name)
global VERI

if(dataset_name == "user_knowledge")
dataset_path = "./user_knowledge.xlsx";
train_sheet= "train_data";

VERI.x_train= xlsread(dataset_path, train_sheet, "A2:E259");
[~, VERI.y_train]=xlsread(dataset_path, train_sheet, "F2:F259");

test_sheet= "test_data";

VERI.x_test=xlsread(dataset_path, test_sheet, "A2:E146");
[~, VERI.y_test]=xlsread(dataset_path, test_sheet, "F2:F146");

end

if(dataset_name == "z-alizadeh")
dataset_path = "./extension_of_z-alizadeh_sani.xlsx";

[dataset, labels]= xlsread(dataset_path, 1, "A2:BG304");
VERI.x_train=dataset(1:243, 1:end-1);
VERI.y_train =labels(1:243, end);

VERI.x_test = dataset(244:end, 1:end-1);
VERI.y_test= labels(244:end, end);


end
end

