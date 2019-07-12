function [patient_probs] = pneumonia_inference(example)
for c = 1:size(example,1)
    fe = 1;
    pa = 1;
    co = 1;
    wb = 1;
    if example(c,1) == 1
        fe = (num_true_and_true(pneumonia,5,1)/500)/fever_ML;
    elseif example(c,1) == 0
        fe = (num_true_and_false(pneumonia,5,1)/500)/fever_ML;
    end
    if example(c,2) == 1
        pa = (num_true_and_true(pneumonia,5,1)/500)/paleness_ML;
    elseif example(c,2) == 0
        pa = (num_true_and_false(pneumonia,5,1)/500)/paleness_ML;
    end
    if example(c,3) == 1
        co = (num_true_and_true(pneumonia,5,1)/500)/cough_ML;
    elseif example(c,3) == 0
        co = (num_true_and_false(pneumonia,5,1)/500)/cough_ML;
    end
    if example(c,4) == 1
        wb = (num_true_and_true(pneumonia,5,1)/500)/highWBCount_ML;
    elseif example(c,4) == 0
        wb = (num_true_and_false(pneumonia,5,1)/500)/highWBCount_ML;
    end
    patient_probs = [patient_probs,fe*pa*co*wb];
end
end

