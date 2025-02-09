function [data_x_train,data_y_train,data_x_test,data_y_test] = crossdata(data,s)
    data = data(randperm(length(data)),:);
    middle = fix(length(data)*s);
    data_x_train = data(1:middle,1:end-1);
    data_x_test = data(middle+1:end,1:end-1);
    data_y_test = data(middle+1:end,end);
    data_y_train = data(1:middle,end);
end