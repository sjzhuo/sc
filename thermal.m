%THERMAL  Black-purple-red-yellow-white colormap
%
% Examples:
%   map = thermal;
%   map = thermal(len);
%   B = thermal(A);
%   B = thermal(A, lims);
%
% A colormap designed to replicate the tones of thermal images, as well as
% achieve perceptual uniformity.
%
% The function can additionally be used to convert a real-valued array into
% a truecolor array using the colormap.
%
% IN:
%   len - Scalar length of the output colormap. If len == Inf the concise
%         table is returned. Default: len = size(get(gcf, 'Colormap'), 1);
%   A - Non-scalar numeric array of real values to be converted into
%       truecolor.
%   lims - 1x2 array of saturation limits to be used on A. Default:
%          [min(A(:)) max(A(:))].
%
% OUT:
%   map - (len)x3 colormap table.
%   B - size(A)x3 truecolor array.

% Copyright: Oliver Woodford, 2009, 2015

function map = thermal(varargin)
map = [     0         0         0
       0.0100    0.0032    0.0160
       0.0203    0.0064    0.0318
       0.0303    0.0096    0.0473
       0.0405    0.0130    0.0604
       0.0498    0.0162    0.0717
       0.0579    0.0194    0.0817
       0.0654    0.0226    0.0907
       0.0723    0.0258    0.0991
       0.0784    0.0291    0.1072
       0.0837    0.0324    0.1155
       0.0884    0.0360    0.1238
       0.0924    0.0395    0.1323
       0.0958    0.0428    0.1409
       0.0989    0.0461    0.1496
       0.1021    0.0491    0.1584
       0.1054    0.0515    0.1672
       0.1089    0.0536    0.1761
       0.1124    0.0555    0.1852
       0.1160    0.0570    0.1944
       0.1197    0.0582    0.2036
       0.1234    0.0592    0.2129
       0.1271    0.0602    0.2222
       0.1308    0.0610    0.2317
       0.1343    0.0619    0.2412
       0.1378    0.0629    0.2508
       0.1413    0.0637    0.2605
       0.1446    0.0646    0.2702
       0.1479    0.0655    0.2800
       0.1511    0.0663    0.2899
       0.1543    0.0672    0.2999
       0.1573    0.0680    0.3099
       0.1603    0.0689    0.3200
       0.1630    0.0699    0.3303
       0.1655    0.0709    0.3406
       0.1679    0.0719    0.3510
       0.1703    0.0729    0.3615
       0.1725    0.0739    0.3721
       0.1746    0.0749    0.3827
       0.1766    0.0760    0.3934
       0.1785    0.0770    0.4042
       0.1801    0.0782    0.4150
       0.1831    0.0786    0.4255
       0.1862    0.0791    0.4361
       0.1892    0.0795    0.4466
       0.1922    0.0798    0.4572
       0.1956    0.0799    0.4677
       0.1994    0.0797    0.4781
       0.2038    0.0792    0.4884
       0.2086    0.0784    0.4985
       0.2176    0.0755    0.5070
       0.2288    0.0712    0.5143
       0.2405    0.0658    0.5212
       0.2531    0.0594    0.5275
       0.2682    0.0503    0.5316
       0.2818    0.0403    0.5367
       0.2958    0.0282    0.5412
       0.3101    0.0155    0.5450
       0.3258    0.0017    0.5464
       0.3419         0    0.5447
       0.3575         0    0.5427
       0.3724         0    0.5402
       0.3867         0    0.5373
       0.4005         0    0.5342
       0.4137         0    0.5308
       0.4263         0    0.5272
       0.4385         0    0.5234
       0.4493         0    0.5190
       0.4599         0    0.5146
       0.4702         0    0.5102
       0.4803         0    0.5058
       0.4899         0    0.5014
       0.4995         0    0.4969
       0.5088         0    0.4925
       0.5180         0    0.4880
       0.5268         0    0.4835
       0.5355         0    0.4790
       0.5441         0    0.4745
       0.5525         0    0.4700
       0.5608         0    0.4655
       0.5690         0    0.4610
       0.5771         0    0.4564
       0.5851         0    0.4519
       0.5930         0    0.4473
       0.6008         0    0.4426
       0.6086         0    0.4380
       0.6162         0    0.4334
       0.6238         0    0.4288
       0.6313         0    0.4242
       0.6387         0    0.4195
       0.6460         0    0.4149
       0.6533         0    0.4102
       0.6606         0    0.4055
       0.6678         0    0.4008
       0.6749         0    0.3961
       0.6820         0    0.3914
       0.6891         0    0.3867
       0.6961         0    0.3819
       0.7031         0    0.3772
       0.7100         0    0.3724
       0.7169         0    0.3676
       0.7238         0    0.3628
       0.7306    0.0021    0.3580
       0.7374    0.0092    0.3532
       0.7442    0.0166    0.3483
       0.7510    0.0241    0.3435
       0.7578    0.0316    0.3386
       0.7645    0.0395    0.3337
       0.7710    0.0487    0.3287
       0.7775    0.0569    0.3238
       0.7839    0.0644    0.3188
       0.7904    0.0715    0.3138
       0.7968    0.0781    0.3087
       0.8033    0.0845    0.3036
       0.8097    0.0906    0.2985
       0.8161    0.0965    0.2934
       0.8224    0.1026    0.2882
       0.8286    0.1085    0.2829
       0.8349    0.1144    0.2776
       0.8411    0.1201    0.2723
       0.8472    0.1258    0.2669
       0.8534    0.1315    0.2614
       0.8594    0.1371    0.2559
       0.8655    0.1427    0.2503
       0.8714    0.1484    0.2446
       0.8772    0.1542    0.2389
       0.8830    0.1600    0.2330
       0.8887    0.1659    0.2271
       0.8943    0.1719    0.2211
       0.8999    0.1778    0.2149
       0.9053    0.1838    0.2086
       0.9107    0.1899    0.2022
       0.9160    0.1961    0.1956
       0.9210    0.2026    0.1889
       0.9260    0.2091    0.1820
       0.9309    0.2157    0.1749
       0.9356    0.2224    0.1676
       0.9403    0.2291    0.1600
       0.9448    0.2360    0.1522
       0.9491    0.2429    0.1441
       0.9533    0.2500    0.1355
       0.9569    0.2579    0.1267
       0.9604    0.2659    0.1175
       0.9637    0.2739    0.1076
       0.9668    0.2819    0.0970
       0.9698    0.2900    0.0854
       0.9727    0.2981    0.0726
       0.9753    0.3064    0.0579
       0.9780    0.3144    0.0401
       0.9783    0.3251    0.0256
       0.9785    0.3356    0.0116
       0.9786    0.3460         0
       0.9785    0.3563         0
       0.9783    0.3665         0
       0.9779    0.3766         0
       0.9774    0.3865         0
       0.9769    0.3964         0
       0.9759    0.4063         0
       0.9748    0.4163         0
       0.9736    0.4260         0
       0.9723    0.4357         0
       0.9708    0.4452         0
       0.9694    0.4547         0
       0.9678    0.4640         0
       0.9661    0.4733         0
       0.9643    0.4825         0
       0.9623    0.4917         0
       0.9602    0.5007         0
       0.9581    0.5097         0
       0.9559    0.5186         0
       0.9537    0.5274         0
       0.9513    0.5361         0
       0.9489    0.5447         0
       0.9465    0.5532         0
       0.9439    0.5618         0
       0.9413    0.5702         0
       0.9386    0.5785         0
       0.9359    0.5868         0
       0.9331    0.5950         0
       0.9303    0.6032         0
       0.9273    0.6113         0
       0.9244    0.6193         0
       0.9214    0.6273         0
       0.9183    0.6352         0
       0.9152    0.6430         0
       0.9121    0.6508         0
       0.9088    0.6585         0
       0.9056    0.6662         0
       0.9022    0.6739         0
       0.8988    0.6815    0.0167
       0.8956    0.6889    0.0443
       0.8924    0.6962    0.0688
       0.8892    0.7035    0.0889
       0.8860    0.7107    0.1068
       0.8827    0.7179    0.1231
       0.8794    0.7250    0.1387
       0.8761    0.7321    0.1536
       0.8728    0.7391    0.1681
       0.8695    0.7460    0.1824
       0.8662    0.7529    0.1965
       0.8630    0.7597    0.2105
       0.8598    0.7664    0.2243
       0.8567    0.7731    0.2382
       0.8536    0.7797    0.2521
       0.8506    0.7862    0.2661
       0.8476    0.7926    0.2800
       0.8450    0.7989    0.2942
       0.8428    0.8050    0.3090
       0.8406    0.8110    0.3237
       0.8386    0.8170    0.3383
       0.8366    0.8229    0.3530
       0.8347    0.8288    0.3677
       0.8330    0.8345    0.3824
       0.8312    0.8403    0.3970
       0.8297    0.8459    0.4118
       0.8301    0.8509    0.4273
       0.8305    0.8559    0.4426
       0.8310    0.8609    0.4579
       0.8315    0.8658    0.4732
       0.8322    0.8707    0.4884
       0.8330    0.8755    0.5035
       0.8338    0.8803    0.5186
       0.8345    0.8851    0.5336
       0.8376    0.8892    0.5486
       0.8408    0.8933    0.5635
       0.8441    0.8974    0.5783
       0.8475    0.9014    0.5931
       0.8510    0.9054    0.6078
       0.8546    0.9094    0.6224
       0.8582    0.9133    0.6370
       0.8618    0.9173    0.6516
       0.8665    0.9209    0.6659
       0.8716    0.9244    0.6800
       0.8768    0.9279    0.6941
       0.8821    0.9314    0.7082
       0.8874    0.9348    0.7222
       0.8922    0.9384    0.7364
       0.8971    0.9419    0.7505
       0.9020    0.9455    0.7647
       0.9072    0.9489    0.7787
       0.9127    0.9523    0.7927
       0.9182    0.9556    0.8066
       0.9238    0.9589    0.8205
       0.9294    0.9622    0.8344
       0.9351    0.9654    0.8482
       0.9408    0.9687    0.8621
       0.9465    0.9719    0.8759
       0.9523    0.9751    0.8897
       0.9583    0.9783    0.9035
       0.9642    0.9814    0.9173
       0.9702    0.9845    0.9310
       0.9762    0.9876    0.9448
       0.9822    0.9907    0.9586
       0.9881    0.9938    0.9724
       0.9941    0.9969    0.9862
       1.0000    1.0000    1.0000];
map = colormap_helper(map, varargin{:});
