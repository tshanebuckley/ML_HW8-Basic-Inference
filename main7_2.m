pneumonia = importdata('pneumonia.tex');
[fever_T,fever_F] = binary_split(pneumonia,pneumonia(1:end,1));
[paleness_T,paleness_F] = binary_split(pneumonia,pneumonia(1:end,2));
[cough_T,cough_F] = binary_split(pneumonia,pneumonia(1:end,3));
[highWBCount_T,highWBCount_F] = binary_split(pneumonia,pneumonia(1:end,4));
[pneumonia_T,pneumonia_F] = binary_split(pneumonia,pneumonia(1:end,5))
fever_ML_T = num_true_and_true(pneumonia,5,1)/size(fever_T,1)
fever_ML_F = num_true_and_false(pneumonia,5,1)/size(fever_T,1)
paleness_ML_T = num_true_and_true(pneumonia,5,2)/size(paleness_T,1)
paleness_ML_F = num_true_and_false(pneumonia,5,2)/size(paleness_T,1)
cough_ML_T = num_true_and_true(pneumonia,5,3)/size(cough_T,1)
cough_ML_F = num_true_and_false(pneumonia,5,3)/size(cough_T,1)
highWBCount_ML_T = num_true_and_true(pneumonia,5,4)/size(highWBCount_T,1)
highWBCount_ML_F = num_true_and_false(pneumonia,5,4)/size(highWBCount_T,1)
prob_pn_T = size(pneumonia_T,1)/500

pn_T_given_2b = prob_pn_T*fever_ML_T*paleness_ML_F*cough_ML_T*highWBCount_ML_F
pn_T_given_2c = prob_pn_T*fever_ML_T*cough_ML_T