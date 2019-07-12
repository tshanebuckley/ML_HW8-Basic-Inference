example = importdata('example.txt');
patient_probs = [];
for c = 1:size(example,1)
    fe = 1;
    pa = 1;
    co = 1;
    wb = 1;
    if example(c,1) == 1
        fe = fever_ML_T;
    elseif example(c,1) == 0
        fe = fever_ML_F;
    end
    if example(c,2) == 1
        pa = paleness_ML_T;
    elseif example(c,2) == 0
        pa = paleness_ML_F;
    end
    if example(c,3) == 1
        co = cough_ML_T;
    elseif example(c,3) == 0
        co = cough_ML_F;
    end
    if example(c,4) == 1
        wb = highWBCount_ML_T;
    elseif example(c,4) == 0
        wb = highWBCount_ML_F;
    end
    patient_probs = [patient_probs,prob_pn_T*fe*pa*co*wb];
end
patient_probs
