% Uzzīmēsim 2. kārtas polinomu
% polinoma koeficienti:
C = [2 3 10]

C =

     2     3    10

C = [2 3 10];
C = [2 3 10]; % ar semikolu neuzrāda ievadīto vērtību
x = -6:2:6

x =

    -6    -4    -2     0     2     4     6

% x = sākuma elements:solis_beigu_elements
y = C(1)*x.^2+C(2)*x+C(3)

y =

    64    30    12    10    24    54   100

plot(x,y)
x2 = -6:0.01:6;
y = C(1)*x2.^2+C(2)*x2+C(3)

y =

  Columns 1 through 12

   64.0000   63.7902   63.5808   63.3718   63.1632   62.9550   62.7472   62.5398   62.3328   62.1262   61.9200   61.7142

  Columns 13 through 24

   61.5088   61.3038   61.0992   60.8950   60.6912   60.4878   60.2848   60.0822   59.8800   59.6782   59.4768   59.2758

  Columns 25 through 36

   59.0752   58.8750   58.6752   58.4758   58.2768   58.0782   57.8800   57.6822   57.4848   57.2878   57.0912   56.8950

  Columns 37 through 48

   56.6992   56.5038   56.3088   56.1142   55.9200   55.7262   55.5328   55.3398   55.1472   54.9550   54.7632   54.5718

  Columns 49 through 60

   54.3808   54.1902   54.0000   53.8102   53.6208   53.4318   53.2432   53.0550   52.8672   52.6798   52.4928   52.3062

  Columns 61 through 72

   52.1200   51.9342   51.7488   51.5638   51.3792   51.1950   51.0112   50.8278   50.6448   50.4622   50.2800   50.0982

  Columns 73 through 84

   49.9168   49.7358   49.5552   49.3750   49.1952   49.0158   48.8368   48.6582   48.4800   48.3022   48.1248   47.9478

  Columns 85 through 96

   47.7712   47.5950   47.4192   47.2438   47.0688   46.8942   46.7200   46.5462   46.3728   46.1998   46.0272   45.8550

  Columns 97 through 108

   45.6832   45.5118   45.3408   45.1702   45.0000   44.8302   44.6608   44.4918   44.3232   44.1550   43.9872   43.8198

  Columns 109 through 120

   43.6528   43.4862   43.3200   43.1542   42.9888   42.8238   42.6592   42.4950   42.3312   42.1678   42.0048   41.8422

  Columns 121 through 132

   41.6800   41.5182   41.3568   41.1958   41.0352   40.8750   40.7152   40.5558   40.3968   40.2382   40.0800   39.9222

  Columns 133 through 144

   39.7648   39.6078   39.4512   39.2950   39.1392   38.9838   38.8288   38.6742   38.5200   38.3662   38.2128   38.0598

  Columns 145 through 156

   37.9072   37.7550   37.6032   37.4518   37.3008   37.1502   37.0000   36.8502   36.7008   36.5518   36.4032   36.2550

  Columns 157 through 168

   36.1072   35.9598   35.8128   35.6662   35.5200   35.3742   35.2288   35.0838   34.9392   34.7950   34.6512   34.5078

  Columns 169 through 180

   34.3648   34.2222   34.0800   33.9382   33.7968   33.6558   33.5152   33.3750   33.2352   33.0958   32.9568   32.8182

  Columns 181 through 192

   32.6800   32.5422   32.4048   32.2678   32.1312   31.9950   31.8592   31.7238   31.5888   31.4542   31.3200   31.1862

  Columns 193 through 204

   31.0528   30.9198   30.7872   30.6550   30.5232   30.3918   30.2608   30.1302   30.0000   29.8702   29.7408   29.6118

  Columns 205 through 216

   29.4832   29.3550   29.2272   29.0998   28.9728   28.8462   28.7200   28.5942   28.4688   28.3438   28.2192   28.0950

  Columns 217 through 228

   27.9712   27.8478   27.7248   27.6022   27.4800   27.3582   27.2368   27.1158   26.9952   26.8750   26.7552   26.6358

  Columns 229 through 240

   26.5168   26.3982   26.2800   26.1622   26.0448   25.9278   25.8112   25.6950   25.5792   25.4638   25.3488   25.2342

  Columns 241 through 252

   25.1200   25.0062   24.8928   24.7798   24.6672   24.5550   24.4432   24.3318   24.2208   24.1102   24.0000   23.8902

  Columns 253 through 264

   23.7808   23.6718   23.5632   23.4550   23.3472   23.2398   23.1328   23.0262   22.9200   22.8142   22.7088   22.6038

  Columns 265 through 276

   22.4992   22.3950   22.2912   22.1878   22.0848   21.9822   21.8800   21.7782   21.6768   21.5758   21.4752   21.3750

  Columns 277 through 288

   21.2752   21.1758   21.0768   20.9782   20.8800   20.7822   20.6848   20.5878   20.4912   20.3950   20.2992   20.2038

  Columns 289 through 300

   20.1088   20.0142   19.9200   19.8262   19.7328   19.6398   19.5472   19.4550   19.3632   19.2718   19.1808   19.0902

  Columns 301 through 312

   19.0000   18.9102   18.8208   18.7318   18.6432   18.5550   18.4672   18.3798   18.2928   18.2062   18.1200   18.0342

  Columns 313 through 324

   17.9488   17.8638   17.7792   17.6950   17.6112   17.5278   17.4448   17.3622   17.2800   17.1982   17.1168   17.0358

  Columns 325 through 336

   16.9552   16.8750   16.7952   16.7158   16.6368   16.5582   16.4800   16.4022   16.3248   16.2478   16.1712   16.0950

  Columns 337 through 348

   16.0192   15.9438   15.8688   15.7942   15.7200   15.6462   15.5728   15.4998   15.4272   15.3550   15.2832   15.2118

  Columns 349 through 360

   15.1408   15.0702   15.0000   14.9302   14.8608   14.7918   14.7232   14.6550   14.5872   14.5198   14.4528   14.3862

  Columns 361 through 372

   14.3200   14.2542   14.1888   14.1238   14.0592   13.9950   13.9312   13.8678   13.8048   13.7422   13.6800   13.6182

  Columns 373 through 384

   13.5568   13.4958   13.4352   13.3750   13.3152   13.2558   13.1968   13.1382   13.0800   13.0222   12.9648   12.9078

  Columns 385 through 396

   12.8512   12.7950   12.7392   12.6838   12.6288   12.5742   12.5200   12.4662   12.4128   12.3598   12.3072   12.2550

  Columns 397 through 408

   12.2032   12.1518   12.1008   12.0502   12.0000   11.9502   11.9008   11.8518   11.8032   11.7550   11.7072   11.6598

  Columns 409 through 420

   11.6128   11.5662   11.5200   11.4742   11.4288   11.3838   11.3392   11.2950   11.2512   11.2078   11.1648   11.1222

  Columns 421 through 432

   11.0800   11.0382   10.9968   10.9558   10.9152   10.8750   10.8352   10.7958   10.7568   10.7182   10.6800   10.6422

  Columns 433 through 444

   10.6048   10.5678   10.5312   10.4950   10.4592   10.4238   10.3888   10.3542   10.3200   10.2862   10.2528   10.2198

  Columns 445 through 456

   10.1872   10.1550   10.1232   10.0918   10.0608   10.0302   10.0000    9.9702    9.9408    9.9118    9.8832    9.8550

  Columns 457 through 468

    9.8272    9.7998    9.7728    9.7462    9.7200    9.6942    9.6688    9.6438    9.6192    9.5950    9.5712    9.5478

  Columns 469 through 480

    9.5248    9.5022    9.4800    9.4582    9.4368    9.4158    9.3952    9.3750    9.3552    9.3358    9.3168    9.2982

  Columns 481 through 492

    9.2800    9.2622    9.2448    9.2278    9.2112    9.1950    9.1792    9.1638    9.1488    9.1342    9.1200    9.1062

  Columns 493 through 504

    9.0928    9.0798    9.0672    9.0550    9.0432    9.0318    9.0208    9.0102    9.0000    8.9902    8.9808    8.9718

  Columns 505 through 516

    8.9632    8.9550    8.9472    8.9398    8.9328    8.9262    8.9200    8.9142    8.9088    8.9038    8.8992    8.8950

  Columns 517 through 528

    8.8912    8.8878    8.8848    8.8822    8.8800    8.8782    8.8768    8.8758    8.8752    8.8750    8.8752    8.8758

  Columns 529 through 540

    8.8768    8.8782    8.8800    8.8822    8.8848    8.8878    8.8912    8.8950    8.8992    8.9038    8.9088    8.9142

  Columns 541 through 552

    8.9200    8.9262    8.9328    8.9398    8.9472    8.9550    8.9632    8.9718    8.9808    8.9902    9.0000    9.0102

  Columns 553 through 564

    9.0208    9.0318    9.0432    9.0550    9.0672    9.0798    9.0928    9.1062    9.1200    9.1342    9.1488    9.1638

  Columns 565 through 576

    9.1792    9.1950    9.2112    9.2278    9.2448    9.2622    9.2800    9.2982    9.3168    9.3358    9.3552    9.3750

  Columns 577 through 588

    9.3952    9.4158    9.4368    9.4582    9.4800    9.5022    9.5248    9.5478    9.5712    9.5950    9.6192    9.6438

  Columns 589 through 600

    9.6688    9.6942    9.7200    9.7462    9.7728    9.7998    9.8272    9.8550    9.8832    9.9118    9.9408    9.9702

  Columns 601 through 612

   10.0000   10.0302   10.0608   10.0918   10.1232   10.1550   10.1872   10.2198   10.2528   10.2862   10.3200   10.3542

  Columns 613 through 624

   10.3888   10.4238   10.4592   10.4950   10.5312   10.5678   10.6048   10.6422   10.6800   10.7182   10.7568   10.7958

  Columns 625 through 636

   10.8352   10.8750   10.9152   10.9558   10.9968   11.0382   11.0800   11.1222   11.1648   11.2078   11.2512   11.2950

  Columns 637 through 648

   11.3392   11.3838   11.4288   11.4742   11.5200   11.5662   11.6128   11.6598   11.7072   11.7550   11.8032   11.8518

  Columns 649 through 660

   11.9008   11.9502   12.0000   12.0502   12.1008   12.1518   12.2032   12.2550   12.3072   12.3598   12.4128   12.4662

  Columns 661 through 672

   12.5200   12.5742   12.6288   12.6838   12.7392   12.7950   12.8512   12.9078   12.9648   13.0222   13.0800   13.1382

  Columns 673 through 684

   13.1968   13.2558   13.3152   13.3750   13.4352   13.4958   13.5568   13.6182   13.6800   13.7422   13.8048   13.8678

  Columns 685 through 696

   13.9312   13.9950   14.0592   14.1238   14.1888   14.2542   14.3200   14.3862   14.4528   14.5198   14.5872   14.6550

  Columns 697 through 708

   14.7232   14.7918   14.8608   14.9302   15.0000   15.0702   15.1408   15.2118   15.2832   15.3550   15.4272   15.4998

  Columns 709 through 720

   15.5728   15.6462   15.7200   15.7942   15.8688   15.9438   16.0192   16.0950   16.1712   16.2478   16.3248   16.4022

  Columns 721 through 732

   16.4800   16.5582   16.6368   16.7158   16.7952   16.8750   16.9552   17.0358   17.1168   17.1982   17.2800   17.3622

  Columns 733 through 744

   17.4448   17.5278   17.6112   17.6950   17.7792   17.8638   17.9488   18.0342   18.1200   18.2062   18.2928   18.3798

  Columns 745 through 756

   18.4672   18.5550   18.6432   18.7318   18.8208   18.9102   19.0000   19.0902   19.1808   19.2718   19.3632   19.4550

  Columns 757 through 768

   19.5472   19.6398   19.7328   19.8262   19.9200   20.0142   20.1088   20.2038   20.2992   20.3950   20.4912   20.5878

  Columns 769 through 780

   20.6848   20.7822   20.8800   20.9782   21.0768   21.1758   21.2752   21.3750   21.4752   21.5758   21.6768   21.7782

  Columns 781 through 792

   21.8800   21.9822   22.0848   22.1878   22.2912   22.3950   22.4992   22.6038   22.7088   22.8142   22.9200   23.0262

  Columns 793 through 804

   23.1328   23.2398   23.3472   23.4550   23.5632   23.6718   23.7808   23.8902   24.0000   24.1102   24.2208   24.3318

  Columns 805 through 816

   24.4432   24.5550   24.6672   24.7798   24.8928   25.0062   25.1200   25.2342   25.3488   25.4638   25.5792   25.6950

  Columns 817 through 828

   25.8112   25.9278   26.0448   26.1622   26.2800   26.3982   26.5168   26.6358   26.7552   26.8750   26.9952   27.1158

  Columns 829 through 840

   27.2368   27.3582   27.4800   27.6022   27.7248   27.8478   27.9712   28.0950   28.2192   28.3438   28.4688   28.5942

  Columns 841 through 852

   28.7200   28.8462   28.9728   29.0998   29.2272   29.3550   29.4832   29.6118   29.7408   29.8702   30.0000   30.1302

  Columns 853 through 864

   30.2608   30.3918   30.5232   30.6550   30.7872   30.9198   31.0528   31.1862   31.3200   31.4542   31.5888   31.7238

  Columns 865 through 876

   31.8592   31.9950   32.1312   32.2678   32.4048   32.5422   32.6800   32.8182   32.9568   33.0958   33.2352   33.3750

  Columns 877 through 888

   33.5152   33.6558   33.7968   33.9382   34.0800   34.2222   34.3648   34.5078   34.6512   34.7950   34.9392   35.0838

  Columns 889 through 900

   35.2288   35.3742   35.5200   35.6662   35.8128   35.9598   36.1072   36.2550   36.4032   36.5518   36.7008   36.8502

  Columns 901 through 912

   37.0000   37.1502   37.3008   37.4518   37.6032   37.7550   37.9072   38.0598   38.2128   38.3662   38.5200   38.6742

  Columns 913 through 924

   38.8288   38.9838   39.1392   39.2950   39.4512   39.6078   39.7648   39.9222   40.0800   40.2382   40.3968   40.5558

  Columns 925 through 936

   40.7152   40.8750   41.0352   41.1958   41.3568   41.5182   41.6800   41.8422   42.0048   42.1678   42.3312   42.4950

  Columns 937 through 948

   42.6592   42.8238   42.9888   43.1542   43.3200   43.4862   43.6528   43.8198   43.9872   44.1550   44.3232   44.4918

  Columns 949 through 960

   44.6608   44.8302   45.0000   45.1702   45.3408   45.5118   45.6832   45.8550   46.0272   46.1998   46.3728   46.5462

  Columns 961 through 972

   46.7200   46.8942   47.0688   47.2438   47.4192   47.5950   47.7712   47.9478   48.1248   48.3022   48.4800   48.6582

  Columns 973 through 984

   48.8368   49.0158   49.1952   49.3750   49.5552   49.7358   49.9168   50.0982   50.2800   50.4622   50.6448   50.8278

  Columns 985 through 996

   51.0112   51.1950   51.3792   51.5638   51.7488   51.9342   52.1200   52.3062   52.4928   52.6798   52.8672   53.0550

  Columns 997 through 1008

   53.2432   53.4318   53.6208   53.8102   54.0000   54.1902   54.3808   54.5718   54.7632   54.9550   55.1472   55.3398

  Columns 1009 through 1020

   55.5328   55.7262   55.9200   56.1142   56.3088   56.5038   56.6992   56.8950   57.0912   57.2878   57.4848   57.6822

  Columns 1021 through 1032

   57.8800   58.0782   58.2768   58.4758   58.6752   58.8750   59.0752   59.2758   59.4768   59.6782   59.8800   60.0822

  Columns 1033 through 1044

   60.2848   60.4878   60.6912   60.8950   61.0992   61.3038   61.5088   61.7142   61.9200   62.1262   62.3328   62.5398

  Columns 1045 through 1056

   62.7472   62.9550   63.1632   63.3718   63.5808   63.7902   64.0000   64.2102   64.4208   64.6318   64.8432   65.0550

  Columns 1057 through 1068

   65.2672   65.4798   65.6928   65.9062   66.1200   66.3342   66.5488   66.7638   66.9792   67.1950   67.4112   67.6278

  Columns 1069 through 1080

   67.8448   68.0622   68.2800   68.4982   68.7168   68.9358   69.1552   69.3750   69.5952   69.8158   70.0368   70.2582

  Columns 1081 through 1092

   70.4800   70.7022   70.9248   71.1478   71.3712   71.5950   71.8192   72.0438   72.2688   72.4942   72.7200   72.9462

  Columns 1093 through 1104

   73.1728   73.3998   73.6272   73.8550   74.0832   74.3118   74.5408   74.7702   75.0000   75.2302   75.4608   75.6918

  Columns 1105 through 1116

   75.9232   76.1550   76.3872   76.6198   76.8528   77.0862   77.3200   77.5542   77.7888   78.0238   78.2592   78.4950

  Columns 1117 through 1128

   78.7312   78.9678   79.2048   79.4422   79.6800   79.9182   80.1568   80.3958   80.6352   80.8750   81.1152   81.3558

  Columns 1129 through 1140

   81.5968   81.8382   82.0800   82.3222   82.5648   82.8078   83.0512   83.2950   83.5392   83.7838   84.0288   84.2742

  Columns 1141 through 1152

   84.5200   84.7662   85.0128   85.2598   85.5072   85.7550   86.0032   86.2518   86.5008   86.7502   87.0000   87.2502

  Columns 1153 through 1164

   87.5008   87.7518   88.0032   88.2550   88.5072   88.7598   89.0128   89.2662   89.5200   89.7742   90.0288   90.2838

  Columns 1165 through 1176

   90.5392   90.7950   91.0512   91.3078   91.5648   91.8222   92.0800   92.3382   92.5968   92.8558   93.1152   93.3750

  Columns 1177 through 1188

   93.6352   93.8958   94.1568   94.4182   94.6800   94.9422   95.2048   95.4678   95.7312   95.9950   96.2592   96.5238

  Columns 1189 through 1200

   96.7888   97.0542   97.3200   97.5862   97.8528   98.1198   98.3872   98.6550   98.9232   99.1918   99.4608   99.7302

  Column 1201

  100.0000

y2 = C(1)*x2.^2+C(2)*x2+C(3)

y2 =

  Columns 1 through 12

   64.0000   63.7902   63.5808   63.3718   63.1632   62.9550   62.7472   62.5398   62.3328   62.1262   61.9200   61.7142

  Columns 13 through 24

   61.5088   61.3038   61.0992   60.8950   60.6912   60.4878   60.2848   60.0822   59.8800   59.6782   59.4768   59.2758

  Columns 25 through 36

   59.0752   58.8750   58.6752   58.4758   58.2768   58.0782   57.8800   57.6822   57.4848   57.2878   57.0912   56.8950

  Columns 37 through 48

   56.6992   56.5038   56.3088   56.1142   55.9200   55.7262   55.5328   55.3398   55.1472   54.9550   54.7632   54.5718

  Columns 49 through 60

   54.3808   54.1902   54.0000   53.8102   53.6208   53.4318   53.2432   53.0550   52.8672   52.6798   52.4928   52.3062

  Columns 61 through 72

   52.1200   51.9342   51.7488   51.5638   51.3792   51.1950   51.0112   50.8278   50.6448   50.4622   50.2800   50.0982

  Columns 73 through 84

   49.9168   49.7358   49.5552   49.3750   49.1952   49.0158   48.8368   48.6582   48.4800   48.3022   48.1248   47.9478

  Columns 85 through 96

   47.7712   47.5950   47.4192   47.2438   47.0688   46.8942   46.7200   46.5462   46.3728   46.1998   46.0272   45.8550

  Columns 97 through 108

   45.6832   45.5118   45.3408   45.1702   45.0000   44.8302   44.6608   44.4918   44.3232   44.1550   43.9872   43.8198

  Columns 109 through 120

   43.6528   43.4862   43.3200   43.1542   42.9888   42.8238   42.6592   42.4950   42.3312   42.1678   42.0048   41.8422

  Columns 121 through 132

   41.6800   41.5182   41.3568   41.1958   41.0352   40.8750   40.7152   40.5558   40.3968   40.2382   40.0800   39.9222

  Columns 133 through 144

   39.7648   39.6078   39.4512   39.2950   39.1392   38.9838   38.8288   38.6742   38.5200   38.3662   38.2128   38.0598

  Columns 145 through 156

   37.9072   37.7550   37.6032   37.4518   37.3008   37.1502   37.0000   36.8502   36.7008   36.5518   36.4032   36.2550

  Columns 157 through 168

   36.1072   35.9598   35.8128   35.6662   35.5200   35.3742   35.2288   35.0838   34.9392   34.7950   34.6512   34.5078

  Columns 169 through 180

   34.3648   34.2222   34.0800   33.9382   33.7968   33.6558   33.5152   33.3750   33.2352   33.0958   32.9568   32.8182

  Columns 181 through 192

   32.6800   32.5422   32.4048   32.2678   32.1312   31.9950   31.8592   31.7238   31.5888   31.4542   31.3200   31.1862

  Columns 193 through 204

   31.0528   30.9198   30.7872   30.6550   30.5232   30.3918   30.2608   30.1302   30.0000   29.8702   29.7408   29.6118

  Columns 205 through 216

   29.4832   29.3550   29.2272   29.0998   28.9728   28.8462   28.7200   28.5942   28.4688   28.3438   28.2192   28.0950

  Columns 217 through 228

   27.9712   27.8478   27.7248   27.6022   27.4800   27.3582   27.2368   27.1158   26.9952   26.8750   26.7552   26.6358

  Columns 229 through 240

   26.5168   26.3982   26.2800   26.1622   26.0448   25.9278   25.8112   25.6950   25.5792   25.4638   25.3488   25.2342

  Columns 241 through 252

   25.1200   25.0062   24.8928   24.7798   24.6672   24.5550   24.4432   24.3318   24.2208   24.1102   24.0000   23.8902

  Columns 253 through 264

   23.7808   23.6718   23.5632   23.4550   23.3472   23.2398   23.1328   23.0262   22.9200   22.8142   22.7088   22.6038

  Columns 265 through 276

   22.4992   22.3950   22.2912   22.1878   22.0848   21.9822   21.8800   21.7782   21.6768   21.5758   21.4752   21.3750

  Columns 277 through 288

   21.2752   21.1758   21.0768   20.9782   20.8800   20.7822   20.6848   20.5878   20.4912   20.3950   20.2992   20.2038

  Columns 289 through 300

   20.1088   20.0142   19.9200   19.8262   19.7328   19.6398   19.5472   19.4550   19.3632   19.2718   19.1808   19.0902

  Columns 301 through 312

   19.0000   18.9102   18.8208   18.7318   18.6432   18.5550   18.4672   18.3798   18.2928   18.2062   18.1200   18.0342

  Columns 313 through 324

   17.9488   17.8638   17.7792   17.6950   17.6112   17.5278   17.4448   17.3622   17.2800   17.1982   17.1168   17.0358

  Columns 325 through 336

   16.9552   16.8750   16.7952   16.7158   16.6368   16.5582   16.4800   16.4022   16.3248   16.2478   16.1712   16.0950

  Columns 337 through 348

   16.0192   15.9438   15.8688   15.7942   15.7200   15.6462   15.5728   15.4998   15.4272   15.3550   15.2832   15.2118

  Columns 349 through 360

   15.1408   15.0702   15.0000   14.9302   14.8608   14.7918   14.7232   14.6550   14.5872   14.5198   14.4528   14.3862

  Columns 361 through 372

   14.3200   14.2542   14.1888   14.1238   14.0592   13.9950   13.9312   13.8678   13.8048   13.7422   13.6800   13.6182

  Columns 373 through 384

   13.5568   13.4958   13.4352   13.3750   13.3152   13.2558   13.1968   13.1382   13.0800   13.0222   12.9648   12.9078

  Columns 385 through 396

   12.8512   12.7950   12.7392   12.6838   12.6288   12.5742   12.5200   12.4662   12.4128   12.3598   12.3072   12.2550

  Columns 397 through 408

   12.2032   12.1518   12.1008   12.0502   12.0000   11.9502   11.9008   11.8518   11.8032   11.7550   11.7072   11.6598

  Columns 409 through 420

   11.6128   11.5662   11.5200   11.4742   11.4288   11.3838   11.3392   11.2950   11.2512   11.2078   11.1648   11.1222

  Columns 421 through 432

   11.0800   11.0382   10.9968   10.9558   10.9152   10.8750   10.8352   10.7958   10.7568   10.7182   10.6800   10.6422

  Columns 433 through 444

   10.6048   10.5678   10.5312   10.4950   10.4592   10.4238   10.3888   10.3542   10.3200   10.2862   10.2528   10.2198

  Columns 445 through 456

   10.1872   10.1550   10.1232   10.0918   10.0608   10.0302   10.0000    9.9702    9.9408    9.9118    9.8832    9.8550

  Columns 457 through 468

    9.8272    9.7998    9.7728    9.7462    9.7200    9.6942    9.6688    9.6438    9.6192    9.5950    9.5712    9.5478

  Columns 469 through 480

    9.5248    9.5022    9.4800    9.4582    9.4368    9.4158    9.3952    9.3750    9.3552    9.3358    9.3168    9.2982

  Columns 481 through 492

    9.2800    9.2622    9.2448    9.2278    9.2112    9.1950    9.1792    9.1638    9.1488    9.1342    9.1200    9.1062

  Columns 493 through 504

    9.0928    9.0798    9.0672    9.0550    9.0432    9.0318    9.0208    9.0102    9.0000    8.9902    8.9808    8.9718

  Columns 505 through 516

    8.9632    8.9550    8.9472    8.9398    8.9328    8.9262    8.9200    8.9142    8.9088    8.9038    8.8992    8.8950

  Columns 517 through 528

    8.8912    8.8878    8.8848    8.8822    8.8800    8.8782    8.8768    8.8758    8.8752    8.8750    8.8752    8.8758

  Columns 529 through 540

    8.8768    8.8782    8.8800    8.8822    8.8848    8.8878    8.8912    8.8950    8.8992    8.9038    8.9088    8.9142

  Columns 541 through 552

    8.9200    8.9262    8.9328    8.9398    8.9472    8.9550    8.9632    8.9718    8.9808    8.9902    9.0000    9.0102

  Columns 553 through 564

    9.0208    9.0318    9.0432    9.0550    9.0672    9.0798    9.0928    9.1062    9.1200    9.1342    9.1488    9.1638

  Columns 565 through 576

    9.1792    9.1950    9.2112    9.2278    9.2448    9.2622    9.2800    9.2982    9.3168    9.3358    9.3552    9.3750

  Columns 577 through 588

    9.3952    9.4158    9.4368    9.4582    9.4800    9.5022    9.5248    9.5478    9.5712    9.5950    9.6192    9.6438

  Columns 589 through 600

    9.6688    9.6942    9.7200    9.7462    9.7728    9.7998    9.8272    9.8550    9.8832    9.9118    9.9408    9.9702

  Columns 601 through 612

   10.0000   10.0302   10.0608   10.0918   10.1232   10.1550   10.1872   10.2198   10.2528   10.2862   10.3200   10.3542

  Columns 613 through 624

   10.3888   10.4238   10.4592   10.4950   10.5312   10.5678   10.6048   10.6422   10.6800   10.7182   10.7568   10.7958

  Columns 625 through 636

   10.8352   10.8750   10.9152   10.9558   10.9968   11.0382   11.0800   11.1222   11.1648   11.2078   11.2512   11.2950

  Columns 637 through 648

   11.3392   11.3838   11.4288   11.4742   11.5200   11.5662   11.6128   11.6598   11.7072   11.7550   11.8032   11.8518

  Columns 649 through 660

   11.9008   11.9502   12.0000   12.0502   12.1008   12.1518   12.2032   12.2550   12.3072   12.3598   12.4128   12.4662

  Columns 661 through 672

   12.5200   12.5742   12.6288   12.6838   12.7392   12.7950   12.8512   12.9078   12.9648   13.0222   13.0800   13.1382

  Columns 673 through 684

   13.1968   13.2558   13.3152   13.3750   13.4352   13.4958   13.5568   13.6182   13.6800   13.7422   13.8048   13.8678

  Columns 685 through 696

   13.9312   13.9950   14.0592   14.1238   14.1888   14.2542   14.3200   14.3862   14.4528   14.5198   14.5872   14.6550

  Columns 697 through 708

   14.7232   14.7918   14.8608   14.9302   15.0000   15.0702   15.1408   15.2118   15.2832   15.3550   15.4272   15.4998

  Columns 709 through 720

   15.5728   15.6462   15.7200   15.7942   15.8688   15.9438   16.0192   16.0950   16.1712   16.2478   16.3248   16.4022

  Columns 721 through 732

   16.4800   16.5582   16.6368   16.7158   16.7952   16.8750   16.9552   17.0358   17.1168   17.1982   17.2800   17.3622

  Columns 733 through 744

   17.4448   17.5278   17.6112   17.6950   17.7792   17.8638   17.9488   18.0342   18.1200   18.2062   18.2928   18.3798

  Columns 745 through 756

   18.4672   18.5550   18.6432   18.7318   18.8208   18.9102   19.0000   19.0902   19.1808   19.2718   19.3632   19.4550

  Columns 757 through 768

   19.5472   19.6398   19.7328   19.8262   19.9200   20.0142   20.1088   20.2038   20.2992   20.3950   20.4912   20.5878

  Columns 769 through 780

   20.6848   20.7822   20.8800   20.9782   21.0768   21.1758   21.2752   21.3750   21.4752   21.5758   21.6768   21.7782

  Columns 781 through 792

   21.8800   21.9822   22.0848   22.1878   22.2912   22.3950   22.4992   22.6038   22.7088   22.8142   22.9200   23.0262

  Columns 793 through 804

   23.1328   23.2398   23.3472   23.4550   23.5632   23.6718   23.7808   23.8902   24.0000   24.1102   24.2208   24.3318

  Columns 805 through 816

   24.4432   24.5550   24.6672   24.7798   24.8928   25.0062   25.1200   25.2342   25.3488   25.4638   25.5792   25.6950

  Columns 817 through 828

   25.8112   25.9278   26.0448   26.1622   26.2800   26.3982   26.5168   26.6358   26.7552   26.8750   26.9952   27.1158

  Columns 829 through 840

   27.2368   27.3582   27.4800   27.6022   27.7248   27.8478   27.9712   28.0950   28.2192   28.3438   28.4688   28.5942

  Columns 841 through 852

   28.7200   28.8462   28.9728   29.0998   29.2272   29.3550   29.4832   29.6118   29.7408   29.8702   30.0000   30.1302

  Columns 853 through 864

   30.2608   30.3918   30.5232   30.6550   30.7872   30.9198   31.0528   31.1862   31.3200   31.4542   31.5888   31.7238

  Columns 865 through 876

   31.8592   31.9950   32.1312   32.2678   32.4048   32.5422   32.6800   32.8182   32.9568   33.0958   33.2352   33.3750

  Columns 877 through 888

   33.5152   33.6558   33.7968   33.9382   34.0800   34.2222   34.3648   34.5078   34.6512   34.7950   34.9392   35.0838

  Columns 889 through 900

   35.2288   35.3742   35.5200   35.6662   35.8128   35.9598   36.1072   36.2550   36.4032   36.5518   36.7008   36.8502

  Columns 901 through 912

   37.0000   37.1502   37.3008   37.4518   37.6032   37.7550   37.9072   38.0598   38.2128   38.3662   38.5200   38.6742

  Columns 913 through 924

   38.8288   38.9838   39.1392   39.2950   39.4512   39.6078   39.7648   39.9222   40.0800   40.2382   40.3968   40.5558

  Columns 925 through 936

   40.7152   40.8750   41.0352   41.1958   41.3568   41.5182   41.6800   41.8422   42.0048   42.1678   42.3312   42.4950

  Columns 937 through 948

   42.6592   42.8238   42.9888   43.1542   43.3200   43.4862   43.6528   43.8198   43.9872   44.1550   44.3232   44.4918

  Columns 949 through 960

   44.6608   44.8302   45.0000   45.1702   45.3408   45.5118   45.6832   45.8550   46.0272   46.1998   46.3728   46.5462

  Columns 961 through 972

   46.7200   46.8942   47.0688   47.2438   47.4192   47.5950   47.7712   47.9478   48.1248   48.3022   48.4800   48.6582

  Columns 973 through 984

   48.8368   49.0158   49.1952   49.3750   49.5552   49.7358   49.9168   50.0982   50.2800   50.4622   50.6448   50.8278

  Columns 985 through 996

   51.0112   51.1950   51.3792   51.5638   51.7488   51.9342   52.1200   52.3062   52.4928   52.6798   52.8672   53.0550

  Columns 997 through 1008

   53.2432   53.4318   53.6208   53.8102   54.0000   54.1902   54.3808   54.5718   54.7632   54.9550   55.1472   55.3398

  Columns 1009 through 1020

   55.5328   55.7262   55.9200   56.1142   56.3088   56.5038   56.6992   56.8950   57.0912   57.2878   57.4848   57.6822

  Columns 1021 through 1032

   57.8800   58.0782   58.2768   58.4758   58.6752   58.8750   59.0752   59.2758   59.4768   59.6782   59.8800   60.0822

  Columns 1033 through 1044

   60.2848   60.4878   60.6912   60.8950   61.0992   61.3038   61.5088   61.7142   61.9200   62.1262   62.3328   62.5398

  Columns 1045 through 1056

   62.7472   62.9550   63.1632   63.3718   63.5808   63.7902   64.0000   64.2102   64.4208   64.6318   64.8432   65.0550

  Columns 1057 through 1068

   65.2672   65.4798   65.6928   65.9062   66.1200   66.3342   66.5488   66.7638   66.9792   67.1950   67.4112   67.6278

  Columns 1069 through 1080

   67.8448   68.0622   68.2800   68.4982   68.7168   68.9358   69.1552   69.3750   69.5952   69.8158   70.0368   70.2582

  Columns 1081 through 1092

   70.4800   70.7022   70.9248   71.1478   71.3712   71.5950   71.8192   72.0438   72.2688   72.4942   72.7200   72.9462

  Columns 1093 through 1104

   73.1728   73.3998   73.6272   73.8550   74.0832   74.3118   74.5408   74.7702   75.0000   75.2302   75.4608   75.6918

  Columns 1105 through 1116

   75.9232   76.1550   76.3872   76.6198   76.8528   77.0862   77.3200   77.5542   77.7888   78.0238   78.2592   78.4950

  Columns 1117 through 1128

   78.7312   78.9678   79.2048   79.4422   79.6800   79.9182   80.1568   80.3958   80.6352   80.8750   81.1152   81.3558

  Columns 1129 through 1140

   81.5968   81.8382   82.0800   82.3222   82.5648   82.8078   83.0512   83.2950   83.5392   83.7838   84.0288   84.2742

  Columns 1141 through 1152

   84.5200   84.7662   85.0128   85.2598   85.5072   85.7550   86.0032   86.2518   86.5008   86.7502   87.0000   87.2502

  Columns 1153 through 1164

   87.5008   87.7518   88.0032   88.2550   88.5072   88.7598   89.0128   89.2662   89.5200   89.7742   90.0288   90.2838

  Columns 1165 through 1176

   90.5392   90.7950   91.0512   91.3078   91.5648   91.8222   92.0800   92.3382   92.5968   92.8558   93.1152   93.3750

  Columns 1177 through 1188

   93.6352   93.8958   94.1568   94.4182   94.6800   94.9422   95.2048   95.4678   95.7312   95.9950   96.2592   96.5238

  Columns 1189 through 1200

   96.7888   97.0542   97.3200   97.5862   97.8528   98.1198   98.3872   98.6550   98.9232   99.1918   99.4608   99.7302

  Column 1201

  100.0000

plot(y2,x2)
plot(x2,y2)
plot(x2,y2)
y = C(1)*x.^2+C(2)*x+C(3)

y =

    64    30    12    10    24    54   100

%% Līnijas izskata maiņa
plot(x,y)
% krāsa
plot(x,y,'g')
% marķieris
plot(x,y,'o')
% līnijas izskats
plot(x,y,'--')
% visi trīs kopā
plot(x,y,'--og')
help plot
 <strong>plot</strong>   Linear plot. 
    <strong>plot</strong>(X,Y) plots vector Y versus vector X. If X or Y is a matrix,
    then the vector is plotted versus the rows or columns of the matrix,
    whichever line up.  If X is a scalar and Y is a vector, disconnected
    line objects are created and plotted as discrete points vertically at
    X.
 
    <strong>plot</strong>(Y) plots the columns of Y versus their index.
    If Y is complex, <strong>plot</strong>(Y) is equivalent to <strong>plot</strong>(real(Y),imag(Y)).
    In all other uses of <strong>plot</strong>, the imaginary part is ignored.
 
    Various line types, plot symbols and colors may be obtained with
    <strong>plot</strong>(X,Y,S) where S is a character string made from one element
    from any or all the following 3 columns:
 
           b     blue          .     point              -     solid
           g     green         o     circle             :     dotted
           r     red           x     x-mark             -.    dashdot 
           c     cyan          +     plus               --    dashed   
           m     magenta       *     star             (none)  no line
           y     yellow        s     square
           k     black         d     diamond
           w     white         v     triangle (down)
                               ^     triangle (up)
                               <     triangle (left)
                               >     triangle (right)
                               p     pentagram
                               h     hexagram
                          
    For example, <strong>plot</strong>(X,Y,'c+:') plots a cyan dotted line with a plus 
    at each data point; <strong>plot</strong>(X,Y,'bd') plots blue diamond at each data 
    point but does not draw any line.
 
    <strong>plot</strong>(X1,Y1,S1,X2,Y2,S2,X3,Y3,S3,...) combines the plots defined by
    the (X,Y,S) triples, where the X's and Y's are vectors or matrices 
    and the S's are strings.  
 
    For example, <strong>plot</strong>(X,Y,'y-',X,Y,'go') plots the data twice, with a
    solid yellow line interpolating green circles at the data points.
 
    The <strong>plot</strong> command, if no color is specified, makes automatic use of
    the colors specified by the axes ColorOrder property.  By default,
    <strong>plot</strong> cycles through the colors in the ColorOrder property.  For
    monochrome systems, <strong>plot</strong> cycles over the axes LineStyleOrder property.
 
    Note that RGB colors in the ColorOrder property may differ from
    similarly-named colors in the (X,Y,S) triples.  For example, the 
    second axes ColorOrder property is medium green with RGB [0 .5 0],
    while <strong>plot</strong>(X,Y,'g') plots a green line with RGB [0 1 0].
 
    If you do not specify a marker type, <strong>plot</strong> uses no marker. 
    If you do not specify a line style, <strong>plot</strong> uses a solid line.
 
    <strong>plot</strong>(AX,...) plots into the axes with handle AX.
 
    <strong>plot</strong> returns a column vector of handles to lineseries objects, one
    handle per plotted line. 
 
    The X,Y pairs, or X,Y,S triples, can be followed by 
    parameter/value pairs to specify additional properties 
    of the lines. For example, <strong>plot</strong>(X,Y,'LineWidth',2,'Color',[.6 0 0]) 
    will create a plot with a dark red line width of 2 points.
 
    Example
       x = -pi:pi/10:pi;
       y = tan(sin(x)) - sin(tan(x));
       plot(x,y,'--rs','LineWidth',2,...
                       'MarkerEdgeColor','k',...
                       'MarkerFaceColor','g',...
                       'MarkerSize',10)
 
    See also <a href="matlab:help plottools">plottools</a>, <a href="matlab:help semilogx">semilogx</a>, <a href="matlab:help semilogy">semilogy</a>, <a href="matlab:help loglog">loglog</a>, <a href="matlab:help plotyy">plotyy</a>, <a href="matlab:help plot3">plot3</a>, <a href="matlab:help grid">grid</a>,
    <a href="matlab:help title">title</a>, <a href="matlab:help xlabel">xlabel</a>, <a href="matlab:help ylabel">ylabel</a>, <a href="matlab:help axis">axis</a>, <a href="matlab:help axes">axes</a>, <a href="matlab:help hold">hold</a>, <a href="matlab:help legend">legend</a>, <a href="matlab:help subplot">subplot</a>, <a href="matlab:help scatter">scatter</a>.

    <a href="matlab:doc plot">Reference page for plot</a>
    <a href="matlab:matlab.internal.language.introspective.overloads.displayOverloads('plot')">Other functions named plot</a>

plot(x,y,'--<w')
plot(x,y,':<w')
plot(x,y,'-gd')
plot(x,y,'-gv')
plot(x,y,'-gs')
plot(x,y,'-bs')
plot(x,y,'-ks')
plot(x,y,':ks')
plot(x,y,'-.ks')
plot(x,y,'(none)ks')
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('plot')" style="font-weight:bold">plot</a>
Error in color/linetype argument.
} 
plot(x,y,'ks')
plot(x,y,'ws')
plot(x,y,'w.')
plot(x,y,'-w.')
plot(x,y,'-c.')
plot(x,y,'-r.')
plot(x,y,'-r*')
plot(x,y,'-r^')
close all
my_plot(x2,y2)
close all
% Kā zīmēt vairākas līknes
plot(x,y,x2,y2)
% ja x ir vienāds
plot(x,[y' -y'])
plot(x,y,'o',x2,y2)
% citas grafiskās funkcijas
stem(x,y)
stairs(x,y)
bar(x,y)
%% Kā zīmēt vairākas līknes - 2 veids
plot(x2,y2)
hold on
stairs(x,y)
stem(x,y)
hold off
%% Lisažu figuras zīmēšana
% parametriskie grafiki
edit
help lisazu
  skripts zīmē Lisažu figūras
  mainīsim f1, f2 - iegūsim dažādas figūras

lisazu
{Undefined function or variable 'f'.

Error in <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu', '/home/user/MATLAB/lab0/lisazu.m', 5)" style="font-weight:bold">lisazu</a> (<a href="matlab: opentoline('/home/user/MATLAB/lab0/lisazu.m',5,0)">line 5</a>)
x = cos(2*pi*f*t);
} 
lisazu
lisazu
lisazu
lisazu
lisazu
lisazu
lisazu
lisazu
lisazu
lisazu
lisazu
lisazu
lisazu
lisazu
lisazu
lisazu_fun(32,32)
lisazu_fun(25,32)
lisazu_fun(25,42)
lisazu_fun(15,42)
lisazu_fun(25,42)
lisazu_fun(2.,42)
lisazu_fun(20,42)
lisazu_fun(30,42)
lisazu_fun(25,25)
lisazu_fun(25,35)
lisazu_fun(25,42)
lisazu_fun_anim(25,42)
lisazu_fun_anim(25,42)
lisazu_fun_anim(25,42)
lisazu_fun_anim(12,21)
lisazu_fun_anim(1,21)
lisazu_fun_anim(35,21)
lisazu_fun_anim(35,15)
lisazu_fun_anim(25,15)
lisazu_fun_anim(15,15)
lisazu_fun_anim(15,1)
lisazu_fun_anim(150,1)
lisazu_fun_anim(10,1)
lisazu_fun_anim(10,10)
lisazu_fun_anim(20,20)
lisazu_fun_anim(22,20)
lisazu_fun_anim(22,20)
{Operation terminated by user during <a href="matlab:matlab.internal.language.introspective.errorDocCallback('clo', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m', 53)" style="font-weight:bold">clo</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m',53,0)">line 53</a>)


In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('cla', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m', 45)" style="font-weight:bold">cla</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m',45,0)">line 45</a>)
    clo(ax, extra{:});

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot>ObserveAxesNextPlot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 148)" style="font-weight:bold">newplot>ObserveAxesNextPlot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',148,0)">line 148</a>)
            cla(ax, 'reset', hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 89)" style="font-weight:bold">newplot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',89,0)">line 89</a>)
    ax = ObserveAxesNextPlot(ax, hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu_fun_anim', '/home/user/MATLAB/lab0/lisazu_fun_anim.m', 11)" style="font-weight:bold">lisazu_fun_anim</a> (<a href="matlab: opentoline('/home/user/MATLAB/lab0/lisazu_fun_anim.m',11,0)">line 11</a>)
    plot(x,y)
} 
lisazu_fun_anim(22,32)
{Operation terminated by user during <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu_fun_anim', '/home/user/MATLAB/lab0/lisazu_fun_anim.m', 12)" style="font-weight:bold">lisazu_fun_anim</a> (<a href="matlab: opentoline('/home/user/MATLAB/lab0/lisazu_fun_anim.m',12,0)">line 12</a>)
} 
lisazu_fun_anim(9,32)
{Operation terminated by user during <a href="matlab:matlab.internal.language.introspective.errorDocCallback('clo', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m', 53)" style="font-weight:bold">clo</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m',53,0)">line 53</a>)


In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('cla', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m', 45)" style="font-weight:bold">cla</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m',45,0)">line 45</a>)
    clo(ax, extra{:});

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot>ObserveAxesNextPlot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 148)" style="font-weight:bold">newplot>ObserveAxesNextPlot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',148,0)">line 148</a>)
            cla(ax, 'reset', hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 89)" style="font-weight:bold">newplot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',89,0)">line 89</a>)
    ax = ObserveAxesNextPlot(ax, hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu_fun_anim', '/home/user/MATLAB/lab0/lisazu_fun_anim.m', 11)" style="font-weight:bold">lisazu_fun_anim</a> (<a href="matlab: opentoline('/home/user/MATLAB/lab0/lisazu_fun_anim.m',11,0)">line 11</a>)
    plot(x,y)
} 
lisazu_fun_anim(7,32)
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('pause')" style="font-weight:bold">pause</a>
Operation terminated by user

Error in <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu_fun_anim', '/home/user/MATLAB/lab0/lisazu_fun_anim.m', 12)" style="font-weight:bold">lisazu_fun_anim</a> (<a href="matlab: opentoline('/home/user/MATLAB/lab0/lisazu_fun_anim.m',12,0)">line 12</a>)
    pause(0.01)
} 
lisazu_fun_anim(12,32)
{Operation terminated by user during <a href="matlab:matlab.internal.language.introspective.errorDocCallback('clo', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m', 53)" style="font-weight:bold">clo</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m',53,0)">line 53</a>)


In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('cla', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m', 45)" style="font-weight:bold">cla</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m',45,0)">line 45</a>)
    clo(ax, extra{:});

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot>ObserveAxesNextPlot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 148)" style="font-weight:bold">newplot>ObserveAxesNextPlot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',148,0)">line 148</a>)
            cla(ax, 'reset', hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 89)" style="font-weight:bold">newplot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',89,0)">line 89</a>)
    ax = ObserveAxesNextPlot(ax, hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu_fun_anim', '/home/user/MATLAB/lab0/lisazu_fun_anim.m', 11)" style="font-weight:bold">lisazu_fun_anim</a> (<a href="matlab: opentoline('/home/user/MATLAB/lab0/lisazu_fun_anim.m',11,0)">line 11</a>)
    plot(x,y)
} 
lisazu_fun_anim(7,32)
{Operation terminated by user during <a href="matlab:matlab.internal.language.introspective.errorDocCallback('clo', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m', 53)" style="font-weight:bold">clo</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m',53,0)">line 53</a>)


In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('cla', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m', 45)" style="font-weight:bold">cla</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m',45,0)">line 45</a>)
    clo(ax, extra{:});

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot>ObserveAxesNextPlot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 148)" style="font-weight:bold">newplot>ObserveAxesNextPlot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',148,0)">line 148</a>)
            cla(ax, 'reset', hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 89)" style="font-weight:bold">newplot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',89,0)">line 89</a>)
    ax = ObserveAxesNextPlot(ax, hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu_fun_anim', '/home/user/MATLAB/lab0/lisazu_fun_anim.m', 11)" style="font-weight:bold">lisazu_fun_anim</a> (<a href="matlab: opentoline('/home/user/MATLAB/lab0/lisazu_fun_anim.m',11,0)">line 11</a>)
    plot(x,y)
} 
lisazu_fun_anim(7,12)
{Operation terminated by user during <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu_fun_anim', '/home/user/MATLAB/lab0/lisazu_fun_anim.m', 12)" style="font-weight:bold">lisazu_fun_anim</a> (<a href="matlab: opentoline('/home/user/MATLAB/lab0/lisazu_fun_anim.m',12,0)">line 12</a>)
} 
lisazu_fun_anim(45,12)
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('pause')" style="font-weight:bold">pause</a>
Operation terminated by user

Error in <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu_fun_anim', '/home/user/MATLAB/lab0/lisazu_fun_anim.m', 12)" style="font-weight:bold">lisazu_fun_anim</a> (<a href="matlab: opentoline('/home/user/MATLAB/lab0/lisazu_fun_anim.m',12,0)">line 12</a>)
    pause(0.01)
} 
lisazu_fun_anim(45,10)
{Operation terminated by user during <a href="matlab:matlab.internal.language.introspective.errorDocCallback('clo', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m', 53)" style="font-weight:bold">clo</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m',53,0)">line 53</a>)


In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('cla', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m', 45)" style="font-weight:bold">cla</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m',45,0)">line 45</a>)
    clo(ax, extra{:});

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot>ObserveAxesNextPlot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 148)" style="font-weight:bold">newplot>ObserveAxesNextPlot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',148,0)">line 148</a>)
            cla(ax, 'reset', hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 89)" style="font-weight:bold">newplot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',89,0)">line 89</a>)
    ax = ObserveAxesNextPlot(ax, hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu_fun_anim', '/home/user/MATLAB/lab0/lisazu_fun_anim.m', 11)" style="font-weight:bold">lisazu_fun_anim</a> (<a href="matlab: opentoline('/home/user/MATLAB/lab0/lisazu_fun_anim.m',11,0)">line 11</a>)
    plot(x,y)
} 
lisazu_fun_anim(45,11)
{Operation terminated by user during <a href="matlab:matlab.internal.language.introspective.errorDocCallback('clo', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m', 53)" style="font-weight:bold">clo</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m',53,0)">line 53</a>)


In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('cla', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m', 45)" style="font-weight:bold">cla</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m',45,0)">line 45</a>)
    clo(ax, extra{:});

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot>ObserveAxesNextPlot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 148)" style="font-weight:bold">newplot>ObserveAxesNextPlot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',148,0)">line 148</a>)
            cla(ax, 'reset', hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 89)" style="font-weight:bold">newplot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',89,0)">line 89</a>)
    ax = ObserveAxesNextPlot(ax, hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu_fun_anim', '/home/user/MATLAB/lab0/lisazu_fun_anim.m', 11)" style="font-weight:bold">lisazu_fun_anim</a> (<a href="matlab: opentoline('/home/user/MATLAB/lab0/lisazu_fun_anim.m',11,0)">line 11</a>)
    plot(x,y)
} 
lisazu_fun_anim(45,15)
{Operation terminated by user during <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu_fun_anim', '/home/user/MATLAB/lab0/lisazu_fun_anim.m', 12)" style="font-weight:bold">lisazu_fun_anim</a> (<a href="matlab: opentoline('/home/user/MATLAB/lab0/lisazu_fun_anim.m',12,0)">line 12</a>)
} 
lisazu_fun_anim(45,16)
{Operation terminated by user during <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu_fun_anim', '/home/user/MATLAB/lab0/lisazu_fun_anim.m', 12)" style="font-weight:bold">lisazu_fun_anim</a> (<a href="matlab: opentoline('/home/user/MATLAB/lab0/lisazu_fun_anim.m',12,0)">line 12</a>)
} 
lisazu_fun_anim(45,18)
{Operation terminated by user during <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu_fun_anim', '/home/user/MATLAB/lab0/lisazu_fun_anim.m', 12)" style="font-weight:bold">lisazu_fun_anim</a> (<a href="matlab: opentoline('/home/user/MATLAB/lab0/lisazu_fun_anim.m',12,0)">line 12</a>)
} 
lisazu_fun_anim(45,19)
{Operation terminated by user during <a href="matlab:matlab.internal.language.introspective.errorDocCallback('clo', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m', 53)" style="font-weight:bold">clo</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m',53,0)">line 53</a>)


In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('cla', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m', 45)" style="font-weight:bold">cla</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m',45,0)">line 45</a>)
    clo(ax, extra{:});

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot>ObserveAxesNextPlot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 148)" style="font-weight:bold">newplot>ObserveAxesNextPlot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',148,0)">line 148</a>)
            cla(ax, 'reset', hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 89)" style="font-weight:bold">newplot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',89,0)">line 89</a>)
    ax = ObserveAxesNextPlot(ax, hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu_fun_anim', '/home/user/MATLAB/lab0/lisazu_fun_anim.m', 11)" style="font-weight:bold">lisazu_fun_anim</a> (<a href="matlab: opentoline('/home/user/MATLAB/lab0/lisazu_fun_anim.m',11,0)">line 11</a>)
    plot(x,y)
} 
lisazu_fun_anim(45,20)
{Operation terminated by user during <a href="matlab:matlab.internal.language.introspective.errorDocCallback('clo', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m', 53)" style="font-weight:bold">clo</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m',53,0)">line 53</a>)


In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('cla', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m', 45)" style="font-weight:bold">cla</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m',45,0)">line 45</a>)
    clo(ax, extra{:});

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot>ObserveAxesNextPlot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 148)" style="font-weight:bold">newplot>ObserveAxesNextPlot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',148,0)">line 148</a>)
            cla(ax, 'reset', hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 89)" style="font-weight:bold">newplot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',89,0)">line 89</a>)
    ax = ObserveAxesNextPlot(ax, hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu_fun_anim', '/home/user/MATLAB/lab0/lisazu_fun_anim.m', 11)" style="font-weight:bold">lisazu_fun_anim</a> (<a href="matlab: opentoline('/home/user/MATLAB/lab0/lisazu_fun_anim.m',11,0)">line 11</a>)
    plot(x,y)
} 
lisazu_fun_anim(42,18)
{Operation terminated by user during <a href="matlab:matlab.internal.language.introspective.errorDocCallback('clo', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m', 53)" style="font-weight:bold">clo</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m',53,0)">line 53</a>)


In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('cla', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m', 45)" style="font-weight:bold">cla</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m',45,0)">line 45</a>)
    clo(ax, extra{:});

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot>ObserveAxesNextPlot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 148)" style="font-weight:bold">newplot>ObserveAxesNextPlot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',148,0)">line 148</a>)
            cla(ax, 'reset', hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 89)" style="font-weight:bold">newplot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',89,0)">line 89</a>)
    ax = ObserveAxesNextPlot(ax, hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu_fun_anim', '/home/user/MATLAB/lab0/lisazu_fun_anim.m', 11)" style="font-weight:bold">lisazu_fun_anim</a> (<a href="matlab: opentoline('/home/user/MATLAB/lab0/lisazu_fun_anim.m',11,0)">line 11</a>)
    plot(x,y)
} 
lisazu_fun_anim(43,18)
{Operation terminated by user during <a href="matlab:matlab.internal.language.introspective.errorDocCallback('clo', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m', 53)" style="font-weight:bold">clo</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m',53,0)">line 53</a>)


In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('cla', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m', 45)" style="font-weight:bold">cla</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m',45,0)">line 45</a>)
    clo(ax, extra{:});

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot>ObserveAxesNextPlot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 148)" style="font-weight:bold">newplot>ObserveAxesNextPlot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',148,0)">line 148</a>)
            cla(ax, 'reset', hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 89)" style="font-weight:bold">newplot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',89,0)">line 89</a>)
    ax = ObserveAxesNextPlot(ax, hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu_fun_anim', '/home/user/MATLAB/lab0/lisazu_fun_anim.m', 11)" style="font-weight:bold">lisazu_fun_anim</a> (<a href="matlab: opentoline('/home/user/MATLAB/lab0/lisazu_fun_anim.m',11,0)">line 11</a>)
    plot(x,y)
} 
lisazu_fun_anim(33,18)
{Operation terminated by user during <a href="matlab:matlab.internal.language.introspective.errorDocCallback('clo', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m', 53)" style="font-weight:bold">clo</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m',53,0)">line 53</a>)


In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('cla', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m', 45)" style="font-weight:bold">cla</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m',45,0)">line 45</a>)
    clo(ax, extra{:});

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot>ObserveAxesNextPlot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 148)" style="font-weight:bold">newplot>ObserveAxesNextPlot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',148,0)">line 148</a>)
            cla(ax, 'reset', hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 89)" style="font-weight:bold">newplot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',89,0)">line 89</a>)
    ax = ObserveAxesNextPlot(ax, hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu_fun_anim', '/home/user/MATLAB/lab0/lisazu_fun_anim.m', 11)" style="font-weight:bold">lisazu_fun_anim</a> (<a href="matlab: opentoline('/home/user/MATLAB/lab0/lisazu_fun_anim.m',11,0)">line 11</a>)
    plot(x,y)
} 
lisazu_fun_anim(35,18)
{Operation terminated by user during <a href="matlab:matlab.internal.language.introspective.errorDocCallback('clo', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m', 53)" style="font-weight:bold">clo</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m',53,0)">line 53</a>)


In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('cla', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m', 45)" style="font-weight:bold">cla</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m',45,0)">line 45</a>)
    clo(ax, extra{:});

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot>ObserveAxesNextPlot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 148)" style="font-weight:bold">newplot>ObserveAxesNextPlot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',148,0)">line 148</a>)
            cla(ax, 'reset', hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 89)" style="font-weight:bold">newplot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',89,0)">line 89</a>)
    ax = ObserveAxesNextPlot(ax, hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu_fun_anim', '/home/user/MATLAB/lab0/lisazu_fun_anim.m', 11)" style="font-weight:bold">lisazu_fun_anim</a> (<a href="matlab: opentoline('/home/user/MATLAB/lab0/lisazu_fun_anim.m',11,0)">line 11</a>)
    plot(x,y)
} 
lisazu_fun_anim(35,42)
{Operation terminated by user during <a href="matlab:matlab.internal.language.introspective.errorDocCallback('clo', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m', 53)" style="font-weight:bold">clo</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m',53,0)">line 53</a>)


In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('cla', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m', 45)" style="font-weight:bold">cla</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m',45,0)">line 45</a>)
    clo(ax, extra{:});

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot>ObserveAxesNextPlot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 148)" style="font-weight:bold">newplot>ObserveAxesNextPlot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',148,0)">line 148</a>)
            cla(ax, 'reset', hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 89)" style="font-weight:bold">newplot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',89,0)">line 89</a>)
    ax = ObserveAxesNextPlot(ax, hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu_fun_anim', '/home/user/MATLAB/lab0/lisazu_fun_anim.m', 11)" style="font-weight:bold">lisazu_fun_anim</a> (<a href="matlab: opentoline('/home/user/MATLAB/lab0/lisazu_fun_anim.m',11,0)">line 11</a>)
    plot(x,y)
} 
lisazu_fun_anim(38,42)
{Operation terminated by user during <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu_fun_anim', '/home/user/MATLAB/lab0/lisazu_fun_anim.m', 11)" style="font-weight:bold">lisazu_fun_anim</a> (<a href="matlab: opentoline('/home/user/MATLAB/lab0/lisazu_fun_anim.m',11,0)">line 11</a>)
} 
lisazu_fun_anim(31,42)
{Operation terminated by user during <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu_fun_anim', '/home/user/MATLAB/lab0/lisazu_fun_anim.m', 11)" style="font-weight:bold">lisazu_fun_anim</a> (<a href="matlab: opentoline('/home/user/MATLAB/lab0/lisazu_fun_anim.m',11,0)">line 11</a>)
} 
lisazu_fun_anim(30,42)
{Operation terminated by user during <a href="matlab:matlab.internal.language.introspective.errorDocCallback('clo', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m', 53)" style="font-weight:bold">clo</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m',53,0)">line 53</a>)


In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('cla', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m', 45)" style="font-weight:bold">cla</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m',45,0)">line 45</a>)
    clo(ax, extra{:});

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot>ObserveAxesNextPlot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 148)" style="font-weight:bold">newplot>ObserveAxesNextPlot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',148,0)">line 148</a>)
            cla(ax, 'reset', hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 89)" style="font-weight:bold">newplot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',89,0)">line 89</a>)
    ax = ObserveAxesNextPlot(ax, hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu_fun_anim', '/home/user/MATLAB/lab0/lisazu_fun_anim.m', 11)" style="font-weight:bold">lisazu_fun_anim</a> (<a href="matlab: opentoline('/home/user/MATLAB/lab0/lisazu_fun_anim.m',11,0)">line 11</a>)
    plot(x,y)
} 
lisazu_fun_anim(85,42)
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('pause')" style="font-weight:bold">pause</a>
Operation terminated by user

Error in <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu_fun_anim', '/home/user/MATLAB/lab0/lisazu_fun_anim.m', 12)" style="font-weight:bold">lisazu_fun_anim</a> (<a href="matlab: opentoline('/home/user/MATLAB/lab0/lisazu_fun_anim.m',12,0)">line 12</a>)
    pause(0.01)
} 
lisazu_fun_anim(85,85)
{Operation terminated by user during <a href="matlab:matlab.internal.language.introspective.errorDocCallback('clo', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m', 53)" style="font-weight:bold">clo</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m',53,0)">line 53</a>)


In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('cla', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m', 45)" style="font-weight:bold">cla</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m',45,0)">line 45</a>)
    clo(ax, extra{:});

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot>ObserveAxesNextPlot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 148)" style="font-weight:bold">newplot>ObserveAxesNextPlot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',148,0)">line 148</a>)
            cla(ax, 'reset', hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 89)" style="font-weight:bold">newplot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',89,0)">line 89</a>)
    ax = ObserveAxesNextPlot(ax, hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu_fun_anim', '/home/user/MATLAB/lab0/lisazu_fun_anim.m', 11)" style="font-weight:bold">lisazu_fun_anim</a> (<a href="matlab: opentoline('/home/user/MATLAB/lab0/lisazu_fun_anim.m',11,0)">line 11</a>)
    plot(x,y)
} 
lisazu_fun_anim(99,1)
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('pause')" style="font-weight:bold">pause</a>
Operation terminated by user

Error in <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu_fun_anim', '/home/user/MATLAB/lab0/lisazu_fun_anim.m', 12)" style="font-weight:bold">lisazu_fun_anim</a> (<a href="matlab: opentoline('/home/user/MATLAB/lab0/lisazu_fun_anim.m',12,0)">line 12</a>)
    pause(0.01)
} 
lisazu_fun_anim(99,2)
{Operation terminated by user during <a href="matlab:matlab.internal.language.introspective.errorDocCallback('clo', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m', 53)" style="font-weight:bold">clo</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m',53,0)">line 53</a>)


In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('cla', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m', 45)" style="font-weight:bold">cla</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m',45,0)">line 45</a>)
    clo(ax, extra{:});

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot>ObserveAxesNextPlot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 148)" style="font-weight:bold">newplot>ObserveAxesNextPlot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',148,0)">line 148</a>)
            cla(ax, 'reset', hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 89)" style="font-weight:bold">newplot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',89,0)">line 89</a>)
    ax = ObserveAxesNextPlot(ax, hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu_fun_anim', '/home/user/MATLAB/lab0/lisazu_fun_anim.m', 11)" style="font-weight:bold">lisazu_fun_anim</a> (<a href="matlab: opentoline('/home/user/MATLAB/lab0/lisazu_fun_anim.m',11,0)">line 11</a>)
    plot(x,y)
} 
lisazu_fun_anim(99,3)
{Operation terminated by user during <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu_fun_anim', '/home/user/MATLAB/lab0/lisazu_fun_anim.m', 12)" style="font-weight:bold">lisazu_fun_anim</a> (<a href="matlab: opentoline('/home/user/MATLAB/lab0/lisazu_fun_anim.m',12,0)">line 12</a>)
} 
lisazu_fun_anim(99,5)
{Operation terminated by user during <a href="matlab:matlab.internal.language.introspective.errorDocCallback('clo', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m', 53)" style="font-weight:bold">clo</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m',53,0)">line 53</a>)


In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('cla', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m', 45)" style="font-weight:bold">cla</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m',45,0)">line 45</a>)
    clo(ax, extra{:});

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot>ObserveAxesNextPlot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 148)" style="font-weight:bold">newplot>ObserveAxesNextPlot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',148,0)">line 148</a>)
            cla(ax, 'reset', hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 89)" style="font-weight:bold">newplot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',89,0)">line 89</a>)
    ax = ObserveAxesNextPlot(ax, hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu_fun_anim', '/home/user/MATLAB/lab0/lisazu_fun_anim.m', 11)" style="font-weight:bold">lisazu_fun_anim</a> (<a href="matlab: opentoline('/home/user/MATLAB/lab0/lisazu_fun_anim.m',11,0)">line 11</a>)
    plot(x,y)
} 
lisazu_fun_anim(99,7)
{Operation terminated by user during <a href="matlab:matlab.internal.language.introspective.errorDocCallback('clo', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m', 53)" style="font-weight:bold">clo</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m',53,0)">line 53</a>)


In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('cla', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m', 45)" style="font-weight:bold">cla</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m',45,0)">line 45</a>)
    clo(ax, extra{:});

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot>ObserveAxesNextPlot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 148)" style="font-weight:bold">newplot>ObserveAxesNextPlot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',148,0)">line 148</a>)
            cla(ax, 'reset', hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 89)" style="font-weight:bold">newplot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',89,0)">line 89</a>)
    ax = ObserveAxesNextPlot(ax, hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu_fun_anim', '/home/user/MATLAB/lab0/lisazu_fun_anim.m', 11)" style="font-weight:bold">lisazu_fun_anim</a> (<a href="matlab: opentoline('/home/user/MATLAB/lab0/lisazu_fun_anim.m',11,0)">line 11</a>)
    plot(x,y)
} 
lisazu_fun_anim(99,10)
{Operation terminated by user during <a href="matlab:matlab.internal.language.introspective.errorDocCallback('clo', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m', 53)" style="font-weight:bold">clo</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m',53,0)">line 53</a>)


In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('cla', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m', 45)" style="font-weight:bold">cla</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m',45,0)">line 45</a>)
    clo(ax, extra{:});

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot>ObserveAxesNextPlot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 148)" style="font-weight:bold">newplot>ObserveAxesNextPlot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',148,0)">line 148</a>)
            cla(ax, 'reset', hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 89)" style="font-weight:bold">newplot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',89,0)">line 89</a>)
    ax = ObserveAxesNextPlot(ax, hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu_fun_anim', '/home/user/MATLAB/lab0/lisazu_fun_anim.m', 11)" style="font-weight:bold">lisazu_fun_anim</a> (<a href="matlab: opentoline('/home/user/MATLAB/lab0/lisazu_fun_anim.m',11,0)">line 11</a>)
    plot(x,y)
} 
lisazu_fun_anim(5,99)
{Operation terminated by user during <a href="matlab:matlab.internal.language.introspective.errorDocCallback('clo', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m', 53)" style="font-weight:bold">clo</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m',53,0)">line 53</a>)


In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('cla', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m', 45)" style="font-weight:bold">cla</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m',45,0)">line 45</a>)
    clo(ax, extra{:});

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot>ObserveAxesNextPlot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 148)" style="font-weight:bold">newplot>ObserveAxesNextPlot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',148,0)">line 148</a>)
            cla(ax, 'reset', hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 89)" style="font-weight:bold">newplot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',89,0)">line 89</a>)
    ax = ObserveAxesNextPlot(ax, hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu_fun_anim', '/home/user/MATLAB/lab0/lisazu_fun_anim.m', 11)" style="font-weight:bold">lisazu_fun_anim</a> (<a href="matlab: opentoline('/home/user/MATLAB/lab0/lisazu_fun_anim.m',11,0)">line 11</a>)
    plot(x,y)
} 
lisazu_fun_anim(1,99)
{Operation terminated by user during claNotify


In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('cla', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m', 42)" style="font-weight:bold">cla</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m',42,0)">line 42</a>)
    claNotify(ax,extra{:});

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot>ObserveAxesNextPlot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 148)" style="font-weight:bold">newplot>ObserveAxesNextPlot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',148,0)">line 148</a>)
            cla(ax, 'reset', hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 89)" style="font-weight:bold">newplot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',89,0)">line 89</a>)
    ax = ObserveAxesNextPlot(ax, hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu_fun_anim', '/home/user/MATLAB/lab0/lisazu_fun_anim.m', 11)" style="font-weight:bold">lisazu_fun_anim</a> (<a href="matlab: opentoline('/home/user/MATLAB/lab0/lisazu_fun_anim.m',11,0)">line 11</a>)
    plot(x,y)
} 
lisazu_fun_anim(9,99)
{Operation terminated by user during <a href="matlab:matlab.internal.language.introspective.errorDocCallback('clo', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m', 53)" style="font-weight:bold">clo</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m',53,0)">line 53</a>)


In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('cla', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m', 45)" style="font-weight:bold">cla</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m',45,0)">line 45</a>)
    clo(ax, extra{:});

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot>ObserveAxesNextPlot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 148)" style="font-weight:bold">newplot>ObserveAxesNextPlot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',148,0)">line 148</a>)
            cla(ax, 'reset', hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 89)" style="font-weight:bold">newplot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',89,0)">line 89</a>)
    ax = ObserveAxesNextPlot(ax, hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu_fun_anim', '/home/user/MATLAB/lab0/lisazu_fun_anim.m', 11)" style="font-weight:bold">lisazu_fun_anim</a> (<a href="matlab: opentoline('/home/user/MATLAB/lab0/lisazu_fun_anim.m',11,0)">line 11</a>)
    plot(x,y)
} 
lisazu_fun_anim(9,90)
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('pause')" style="font-weight:bold">pause</a>
Operation terminated by user

Error in <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu_fun_anim', '/home/user/MATLAB/lab0/lisazu_fun_anim.m', 12)" style="font-weight:bold">lisazu_fun_anim</a> (<a href="matlab: opentoline('/home/user/MATLAB/lab0/lisazu_fun_anim.m',12,0)">line 12</a>)
    pause(0.01)
} 
lisazu_fun_anim(15,85)
{Operation terminated by user during <a href="matlab:matlab.internal.language.introspective.errorDocCallback('clo', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m', 52)" style="font-weight:bold">clo</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m',52,0)">line 52</a>)


In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('cla', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m', 45)" style="font-weight:bold">cla</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m',45,0)">line 45</a>)
    clo(ax, extra{:});

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot>ObserveAxesNextPlot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 148)" style="font-weight:bold">newplot>ObserveAxesNextPlot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',148,0)">line 148</a>)
            cla(ax, 'reset', hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 89)" style="font-weight:bold">newplot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',89,0)">line 89</a>)
    ax = ObserveAxesNextPlot(ax, hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu_fun_anim', '/home/user/MATLAB/lab0/lisazu_fun_anim.m', 11)" style="font-weight:bold">lisazu_fun_anim</a> (<a href="matlab: opentoline('/home/user/MATLAB/lab0/lisazu_fun_anim.m',11,0)">line 11</a>)
    plot(x,y)
} 
lisazu_fun_anim(15,84)
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('pause')" style="font-weight:bold">pause</a>
Operation terminated by user

Error in <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu_fun_anim', '/home/user/MATLAB/lab0/lisazu_fun_anim.m', 12)" style="font-weight:bold">lisazu_fun_anim</a> (<a href="matlab: opentoline('/home/user/MATLAB/lab0/lisazu_fun_anim.m',12,0)">line 12</a>)
    pause(0.01)
} 
lisazu_fun_anim(15,84)
lisazu_fun_anim(15,74)
lisazu_fun_anim(15,64)
lisazu_fun_anim(25,64)
lisazu_fun_anim(25,64)
{Operation terminated by user during <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu_fun_anim', '/home/user/MATLAB/lab0/lisazu_fun_anim.m', 12)" style="font-weight:bold">lisazu_fun_anim</a> (<a href="matlab: opentoline('/home/user/MATLAB/lab0/lisazu_fun_anim.m',12,0)">line 12</a>)
} 
lisazu_fun_anim(25,60)
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('pause')" style="font-weight:bold">pause</a>
Operation terminated by user

Error in <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu_fun_anim', '/home/user/MATLAB/lab0/lisazu_fun_anim.m', 12)" style="font-weight:bold">lisazu_fun_anim</a> (<a href="matlab: opentoline('/home/user/MATLAB/lab0/lisazu_fun_anim.m',12,0)">line 12</a>)
    pause(0.01)
} 
lisazu_fun_anim(25,65)
{Operation terminated by user during <a href="matlab:matlab.internal.language.introspective.errorDocCallback('clo', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m', 53)" style="font-weight:bold">clo</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m',53,0)">line 53</a>)


In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('cla', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m', 45)" style="font-weight:bold">cla</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m',45,0)">line 45</a>)
    clo(ax, extra{:});

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot>ObserveAxesNextPlot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 148)" style="font-weight:bold">newplot>ObserveAxesNextPlot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',148,0)">line 148</a>)
            cla(ax, 'reset', hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 89)" style="font-weight:bold">newplot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',89,0)">line 89</a>)
    ax = ObserveAxesNextPlot(ax, hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu_fun_anim', '/home/user/MATLAB/lab0/lisazu_fun_anim.m', 11)" style="font-weight:bold">lisazu_fun_anim</a> (<a href="matlab: opentoline('/home/user/MATLAB/lab0/lisazu_fun_anim.m',11,0)">line 11</a>)
    plot(x,y)
} 
lisazu_fun_anim(25,66)
{Operation terminated by user during <a href="matlab:matlab.internal.language.introspective.errorDocCallback('clo', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m', 53)" style="font-weight:bold">clo</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m',53,0)">line 53</a>)


In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('cla', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m', 45)" style="font-weight:bold">cla</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m',45,0)">line 45</a>)
    clo(ax, extra{:});

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot>ObserveAxesNextPlot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 148)" style="font-weight:bold">newplot>ObserveAxesNextPlot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',148,0)">line 148</a>)
            cla(ax, 'reset', hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 89)" style="font-weight:bold">newplot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',89,0)">line 89</a>)
    ax = ObserveAxesNextPlot(ax, hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu_fun_anim', '/home/user/MATLAB/lab0/lisazu_fun_anim.m', 11)" style="font-weight:bold">lisazu_fun_anim</a> (<a href="matlab: opentoline('/home/user/MATLAB/lab0/lisazu_fun_anim.m',11,0)">line 11</a>)
    plot(x,y)
} 
lisazu_fun_anim(15,66)
{Operation terminated by user during <a href="matlab:matlab.internal.language.introspective.errorDocCallback('clo', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m', 53)" style="font-weight:bold">clo</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m',53,0)">line 53</a>)


In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('cla', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m', 45)" style="font-weight:bold">cla</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m',45,0)">line 45</a>)
    clo(ax, extra{:});

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot>ObserveAxesNextPlot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 148)" style="font-weight:bold">newplot>ObserveAxesNextPlot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',148,0)">line 148</a>)
            cla(ax, 'reset', hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 89)" style="font-weight:bold">newplot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',89,0)">line 89</a>)
    ax = ObserveAxesNextPlot(ax, hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu_fun_anim', '/home/user/MATLAB/lab0/lisazu_fun_anim.m', 11)" style="font-weight:bold">lisazu_fun_anim</a> (<a href="matlab: opentoline('/home/user/MATLAB/lab0/lisazu_fun_anim.m',11,0)">line 11</a>)
    plot(x,y)
} 
lisazu_fun_anim(22,66)
{Operation terminated by user during <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu_fun_anim', '/home/user/MATLAB/lab0/lisazu_fun_anim.m', 11)" style="font-weight:bold">lisazu_fun_anim</a> (<a href="matlab: opentoline('/home/user/MATLAB/lab0/lisazu_fun_anim.m',11,0)">line 11</a>)
} 
lisazu_fun_anim(24,66)
{Operation terminated by user during <a href="matlab:matlab.internal.language.introspective.errorDocCallback('clo', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m', 53)" style="font-weight:bold">clo</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m',53,0)">line 53</a>)


In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('cla', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m', 45)" style="font-weight:bold">cla</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m',45,0)">line 45</a>)
    clo(ax, extra{:});

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot>ObserveAxesNextPlot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 148)" style="font-weight:bold">newplot>ObserveAxesNextPlot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',148,0)">line 148</a>)
            cla(ax, 'reset', hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 89)" style="font-weight:bold">newplot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',89,0)">line 89</a>)
    ax = ObserveAxesNextPlot(ax, hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu_fun_anim', '/home/user/MATLAB/lab0/lisazu_fun_anim.m', 11)" style="font-weight:bold">lisazu_fun_anim</a> (<a href="matlab: opentoline('/home/user/MATLAB/lab0/lisazu_fun_anim.m',11,0)">line 11</a>)
    plot(x,y)
} 
lisazu_fun_anim(25,66)
{Operation terminated by user during <a href="matlab:matlab.internal.language.introspective.errorDocCallback('clo', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m', 53)" style="font-weight:bold">clo</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/private/clo.m',53,0)">line 53</a>)


In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('cla', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m', 45)" style="font-weight:bold">cla</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/cla.m',45,0)">line 45</a>)
    clo(ax, extra{:});

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot>ObserveAxesNextPlot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 148)" style="font-weight:bold">newplot>ObserveAxesNextPlot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',148,0)">line 148</a>)
            cla(ax, 'reset', hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('newplot', '/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m', 89)" style="font-weight:bold">newplot</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/graphics/newplot.m',89,0)">line 89</a>)
    ax = ObserveAxesNextPlot(ax, hsave);

In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu_fun_anim', '/home/user/MATLAB/lab0/lisazu_fun_anim.m', 11)" style="font-weight:bold">lisazu_fun_anim</a> (<a href="matlab: opentoline('/home/user/MATLAB/lab0/lisazu_fun_anim.m',11,0)">line 11</a>)
    plot(x,y)
} 
diary off
