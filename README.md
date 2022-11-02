# CESAR-NN-HumanExpressions

Treinamento do modelo YOLOv5 para detecção de expressões humanas, disponivel no HuggingFace Spaces.

Repositório do projeto final da disciplina de Modelos Preditivos Conexionistas 2022.01 da CESAR School.
#### Aluno: João França

## Dataset e Modelo

|**Tipo de Projeto**|**Qtde de imagens por classe**|**Qtde de classes**|**Modelo Selecionado**|**Linguagem**|
|--|--|--|--|--|
|Deteção de Objetos|happy:66, sad:52, scared:126, angry:66|4|YOLOv5|PyTorch|

## Performance

O modelo treinado possui performance de:

                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.582       0.76      0.771      0.457
                 angry         66         14      0.523      0.929      0.783      0.439
                 happy         66         20      0.534       0.85      0.844      0.552
                   sad         66         17      0.814       0.26      0.634      0.311
                scared         66         18      0.458          1      0.824      0.528

### Output do bloco de treinamento

<details>
  <summary>Click to expand!</summary>
  
  ```text
    hyperparameters: lr0=0.01, lrf=0.01, momentum=0.937, weight_decay=0.0005, warmup_epochs=3.0, warmup_momentum=0.8, warmup_bias_lr=0.1, box=0.05, cls=0.5, cls_pw=1.0, obj=1.0, obj_pw=1.0, iou_t=0.2, anchor_t=4.0, fl_gamma=0.0, hsv_h=0.015, hsv_s=0.7, hsv_v=0.4, degrees=0.0, translate=0.1, scale=0.5, shear=0.0, perspective=0.0, flipud=0.0, fliplr=0.5, mosaic=1.0, mixup=0.0, copy_paste=0.0
ClearML: run 'pip install clearml' to automatically track, visualize and remotely train YOLOv5 🚀 in ClearML
Comet: run 'pip install comet_ml' to automatically track and visualize YOLOv5 🚀 runs in Comet
TensorBoard: Start with 'tensorboard --logdir runs/train', view at http://localhost:6006/
Overriding model.yaml nc=80 with nc=4

                 from  n    params  module                                  arguments                     
  0                -1  1      3520  models.common.Conv                      [3, 32, 6, 2, 2]              
  1                -1  1     18560  models.common.Conv                      [32, 64, 3, 2]                
  2                -1  1     18816  models.common.C3                        [64, 64, 1]                   
  3                -1  1     73984  models.common.Conv                      [64, 128, 3, 2]               
  4                -1  2    115712  models.common.C3                        [128, 128, 2]                 
  5                -1  1    295424  models.common.Conv                      [128, 256, 3, 2]              
  6                -1  3    625152  models.common.C3                        [256, 256, 3]                 
  7                -1  1   1180672  models.common.Conv                      [256, 512, 3, 2]              
  8                -1  1   1182720  models.common.C3                        [512, 512, 1]                 
  9                -1  1    656896  models.common.SPPF                      [512, 512, 5]                 
 10                -1  1    131584  models.common.Conv                      [512, 256, 1, 1]              
 11                -1  1         0  torch.nn.modules.upsampling.Upsample    [None, 2, 'nearest']          
 12           [-1, 6]  1         0  models.common.Concat                    [1]                           
 13                -1  1    361984  models.common.C3                        [512, 256, 1, False]          
 14                -1  1     33024  models.common.Conv                      [256, 128, 1, 1]              
 15                -1  1         0  torch.nn.modules.upsampling.Upsample    [None, 2, 'nearest']          
 16           [-1, 4]  1         0  models.common.Concat                    [1]                           
 17                -1  1     90880  models.common.C3                        [256, 128, 1, False]          
 18                -1  1    147712  models.common.Conv                      [128, 128, 3, 2]              
 19          [-1, 14]  1         0  models.common.Concat                    [1]                           
 20                -1  1    296448  models.common.C3                        [256, 256, 1, False]          
 21                -1  1    590336  models.common.Conv                      [256, 256, 3, 2]              
 22          [-1, 10]  1         0  models.common.Concat                    [1]                           
 23                -1  1   1182720  models.common.C3                        [512, 512, 1, False]          
 24      [17, 20, 23]  1     24273  models.yolo.Detect                      [4, [[10, 13, 16, 30, 33, 23], [30, 61, 62, 45, 59, 119], [116, 90, 156, 198, 373, 326]], [128, 256, 512]]
Model summary: 214 layers, 7030417 parameters, 7030417 gradients, 16.0 GFLOPs

Transferred 343/349 items from yolov5s.pt
AMP: checks passed ✅
optimizer: SGD(lr=0.01) with parameter groups 57 weight(decay=0.0), 60 weight(decay=0.00046875), 60 bias
train: Scanning '/home/studio-lab-user/CESAR-NN/CESAR-NN-HumanExpressions/src/yo
train: Caching images (0.7GB ram): 100%|██████████| 595/595 [00:01<00:00, 462.28
val: Scanning '/home/studio-lab-user/CESAR-NN/CESAR-NN-HumanExpressions/src/yolo
val: Caching images (0.1GB ram): 100%|██████████| 66/66 [00:00<00:00, 156.86it/s

AutoAnchor: 3.65 anchors/target, 1.000 Best Possible Recall (BPR). Current anchors are a good fit to dataset ✅
Plotting labels to runs/train/exp7/labels.jpg... 
Image sizes 640 train, 640 val
Using 4 dataloader workers
Logging results to runs/train/exp7
Starting training for 1000 epochs...

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
      0/999      2.26G     0.0874    0.02745    0.04297         10        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69    0.00294      0.755     0.0191    0.00401

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
      1/999      2.77G    0.05841    0.02508    0.03671         11        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69     0.0681      0.408     0.0719     0.0197

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
      2/999      2.77G     0.0565    0.02128    0.03196         10        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69     0.0672      0.143      0.186     0.0703

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
      3/999      2.77G    0.05164    0.01954    0.03172          6        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.123      0.276      0.173     0.0503

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
      4/999      2.77G    0.05056    0.01715    0.03164         14        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.178      0.493      0.218     0.0739

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
      5/999      2.77G    0.04595    0.01583    0.03201          7        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.218      0.662      0.322      0.152

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
      6/999      2.77G    0.04488    0.01513    0.03182         11        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.256      0.734      0.418      0.213

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
      7/999      2.77G    0.04141    0.01501    0.02947         10        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.276      0.705      0.402      0.192

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
      8/999      2.77G    0.03954    0.01429    0.02687         12        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.291      0.616      0.384       0.21

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
      9/999      2.77G    0.04153    0.01438    0.02715         13        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.283      0.591      0.386      0.176

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     10/999      2.77G    0.03971    0.01346    0.02621         11        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.238      0.563      0.365       0.18

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     11/999      2.77G    0.03835    0.01492    0.02616          9        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.349      0.591      0.412      0.177

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     12/999      2.77G    0.03684    0.01309    0.02514         10        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.358      0.715      0.428      0.236

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     13/999      2.77G    0.03684    0.01322    0.02296          6        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.398      0.626      0.471      0.268

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     14/999      2.77G    0.03745    0.01325    0.02523         12        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.331      0.713       0.45      0.246

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     15/999      2.77G    0.03491    0.01316    0.02424         13        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.357      0.709      0.466      0.259

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     16/999      2.77G    0.03654    0.01266    0.02374          7        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.324      0.684      0.473      0.298

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     17/999      2.77G    0.03394    0.01272    0.02419         12        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.344      0.727       0.51      0.306

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     18/999      2.77G    0.03559     0.0134    0.02462         13        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.356      0.771      0.467      0.213

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     19/999      2.77G    0.03683    0.01273    0.02352         12        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.347      0.772      0.475      0.264

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     20/999      2.77G    0.03424    0.01301    0.02262         17        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.367      0.789      0.466      0.243

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     21/999      2.77G    0.03346     0.0125    0.02154         14        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.384      0.827      0.498      0.291

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     22/999      2.77G    0.03261    0.01189    0.02222         11        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.385        0.7      0.537      0.276

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     23/999      2.77G    0.03329    0.01236    0.02344         12        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.404      0.679      0.507      0.262

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     24/999      2.77G    0.03219    0.01298    0.01983         15        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.398      0.609      0.513      0.285

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     25/999      2.77G    0.03218    0.01278    0.01919         11        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.379      0.609      0.502      0.305

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     26/999      2.77G    0.03364    0.01218    0.02225          6        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.334      0.572      0.432      0.264

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     27/999      2.77G    0.03349    0.01232    0.02203         10        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.386      0.669       0.49      0.275

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     28/999      2.77G    0.03508    0.01284    0.02136          8        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.434      0.567      0.495      0.284

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     29/999      2.77G    0.03223    0.01216    0.02134         12        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.515      0.637      0.555      0.297

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     30/999      2.77G     0.0318    0.01207    0.01997         12        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.394      0.528      0.544      0.287

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     31/999      2.77G    0.03154    0.01206    0.01692         10        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.492      0.621      0.611      0.341

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     32/999      2.77G    0.03007    0.01191    0.01684         12        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.512      0.651      0.648      0.389

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     33/999      2.77G    0.03081    0.01254    0.01812          7        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.464       0.61       0.51      0.277

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     34/999      2.77G    0.03073    0.01184     0.0158          9        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.466      0.621      0.558      0.299

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     35/999      2.77G    0.03338    0.01248     0.0172          8        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69       0.56      0.582      0.588      0.311

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     36/999      2.77G    0.03168    0.01211    0.01609          8        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.427      0.683      0.543      0.319

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     37/999      2.77G     0.0332    0.01192    0.01827         11        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.433      0.689      0.567       0.32

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     38/999      2.77G    0.03103    0.01223     0.0166          7        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.543      0.716      0.665      0.419

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     39/999      2.77G    0.03151    0.01194     0.0151         11        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.592      0.583      0.628      0.361

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     40/999      2.77G    0.03137    0.01203    0.01365         19        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69       0.66      0.625      0.674      0.348

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     41/999      2.77G    0.03137    0.01169    0.01404          9        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.599      0.615      0.611      0.294

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     42/999      2.77G    0.03021    0.01152    0.01605         12        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.528      0.717      0.642      0.386

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     43/999      2.77G    0.02868    0.01158    0.01316         12        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.556      0.721      0.671      0.378

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     44/999      2.77G    0.02969    0.01137    0.01507          6        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.531      0.668       0.67      0.357

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     45/999      2.77G    0.03036    0.01139    0.01378         10        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69       0.58      0.699      0.663      0.359

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     46/999      2.77G    0.02919     0.0113    0.01565          7        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.525      0.586      0.646      0.336

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     47/999      2.77G     0.0291    0.01195    0.01352         11        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.637      0.644      0.593       0.29

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     48/999      2.77G     0.0291      0.011    0.01376          6        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.574      0.658      0.658      0.354

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     49/999      2.77G    0.02973    0.01135    0.01197         16        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.646      0.626      0.674      0.368

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     50/999      2.77G    0.02889     0.0114    0.01389         12        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.503      0.654      0.598      0.382

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     51/999      2.77G    0.03102    0.01133    0.01455         10        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.537      0.666      0.662      0.395

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     52/999      2.77G    0.02962    0.01147    0.01235         10        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.571      0.666      0.676      0.391

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     53/999      2.77G    0.02889    0.01154    0.01197         13        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.554       0.67      0.628      0.293

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     54/999      2.77G    0.02877    0.01179    0.01268         12        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.577       0.65      0.663      0.356

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     55/999      2.77G    0.03033     0.0118    0.01564         12        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69       0.49      0.663      0.613      0.325

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     56/999      2.77G     0.0301    0.01139    0.01168         12        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.499      0.694      0.619      0.312

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     57/999      2.77G     0.0309    0.01162    0.01394         13        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.507      0.631      0.599      0.298

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     58/999      2.77G    0.02936      0.011    0.01253         15        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.609      0.663      0.667      0.348

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     59/999      2.77G    0.02907    0.01145    0.01272         10        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69       0.73      0.636      0.677        0.4

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     60/999      2.77G    0.02931    0.01092    0.01144          9        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.615      0.605      0.637      0.358

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     61/999      2.77G    0.02862    0.01183    0.01421         10        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.587      0.598      0.648      0.388

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     62/999      2.77G    0.02734    0.01133    0.01136         14        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.663      0.666      0.702       0.39

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     63/999      2.77G    0.02757    0.01086    0.01281          8        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.634      0.688      0.693      0.364

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     64/999      2.77G    0.02819    0.01154    0.01086         11        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.672      0.641        0.7      0.372

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     65/999      2.77G    0.02886    0.01026    0.01124         13        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.659      0.698      0.744       0.38

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     66/999      2.77G    0.03019    0.01073    0.01191          6        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.559      0.719      0.679      0.382

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     67/999      2.77G    0.02728    0.01107    0.01058         14        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.701      0.684      0.702      0.358

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     68/999      2.77G    0.02787    0.01133    0.01033         10        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69       0.68      0.603      0.687      0.403

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     69/999      2.77G    0.02676    0.01059    0.01183          7        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.712      0.625      0.683      0.374

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     70/999      2.77G    0.02752     0.0108    0.01038         13        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.542      0.733      0.679      0.375

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     71/999      2.77G    0.02733    0.01088    0.01081          9        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.545        0.7      0.681      0.377

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     72/999      2.77G    0.02683    0.01032    0.01048          9        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.673      0.653      0.695      0.368

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     73/999      2.77G    0.02853     0.0106    0.01011         11        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.745      0.563      0.677      0.359

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     74/999      2.77G    0.02639     0.0107   0.008863          6        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.598      0.702      0.675      0.373

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     75/999      2.77G    0.02777    0.01036   0.009265         10        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.564      0.704      0.669      0.378

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     76/999      2.77G    0.02916    0.01044    0.00972          7        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.515      0.723      0.658      0.361

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     77/999      2.77G    0.02867    0.01045    0.01022         10        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69       0.71      0.692      0.705      0.417

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     78/999      2.77G    0.02977    0.01122    0.01163          7        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.818       0.61       0.73      0.413

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     79/999      2.77G    0.02697    0.01059    0.01094         11        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.477      0.494       0.45      0.242

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     80/999      2.77G    0.02678     0.0107    0.01013         11        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.677      0.711      0.737      0.383

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     81/999      2.77G    0.02628    0.01043    0.01072         17        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.653       0.65      0.696      0.376

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     82/999      2.77G    0.02669    0.01041    0.01066          9        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.735      0.634      0.687      0.367

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     83/999      2.77G    0.02443   0.009785   0.008459         16        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.774        0.7      0.745      0.413

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     84/999      2.77G    0.02701    0.01062   0.008869         13        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.563      0.739      0.697      0.364

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     85/999      2.77G    0.02617    0.01011   0.008349         11        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.553      0.717      0.693       0.38

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     86/999      2.77G    0.02861    0.01056   0.008915          6        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.622      0.749      0.701      0.406

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     87/999      2.77G    0.02625    0.01046   0.008297         12        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.554      0.714      0.685      0.408

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     88/999      2.77G    0.02621   0.009988   0.009582         13        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.678      0.691      0.762      0.374

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     89/999      2.77G    0.02703    0.01032    0.01077         14        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.648      0.707      0.726      0.368

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     90/999      2.77G     0.0279    0.01123    0.01059         10        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69       0.61      0.741      0.725      0.412

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     91/999      2.77G    0.02548    0.01011   0.008891         17        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.761       0.64      0.718      0.387

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     92/999      2.77G    0.02779    0.01104    0.00858         20        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.615      0.701      0.696      0.401

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     93/999      2.77G    0.02598    0.01057   0.008512         14        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.762       0.65      0.727      0.404

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     94/999      2.77G    0.02637    0.01034    0.01009         15        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.582       0.76      0.771      0.457

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     95/999      2.77G     0.0272    0.01064   0.009691          8        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.632      0.636      0.691      0.386

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     96/999      2.77G    0.02827    0.01041   0.009657         11        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.651      0.639       0.68      0.346

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     97/999      2.77G    0.02662    0.01002    0.01114          9        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.642       0.77      0.758      0.432

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     98/999      2.77G    0.02666   0.009771   0.008598         17        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.637      0.713      0.715      0.414

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
     99/999      2.77G    0.02582    0.01018   0.008591         13        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69       0.54      0.659       0.63      0.364

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    100/999      2.77G    0.02682    0.01024   0.007546          9        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69       0.65        0.6      0.671      0.367

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    101/999      2.77G    0.02462   0.009871   0.007955         12        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.634      0.627      0.693      0.394

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    102/999      2.77G    0.02481    0.01006   0.007518         11        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69       0.61      0.698      0.737       0.41

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    103/999      2.77G    0.02447   0.009847   0.006255         10        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.625      0.668      0.685      0.372

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    104/999      2.77G    0.02615   0.009918   0.007855         11        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69       0.63      0.635      0.663      0.339

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    105/999      2.77G    0.02587     0.0106   0.007056         10        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.658      0.538      0.624      0.344

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    106/999      2.77G     0.0253   0.009788   0.007659         15        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.586      0.609      0.653      0.355

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    107/999      2.77G    0.02533   0.009354   0.006053         15        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69       0.69      0.667      0.722      0.401

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    108/999      2.77G    0.02493    0.00975   0.008048         11        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.689      0.704      0.727      0.383

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    109/999      2.77G     0.0243   0.009551   0.007163         15        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.708      0.713      0.729      0.386

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    110/999      2.77G    0.02541   0.009901   0.008362         11        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.726       0.68       0.74      0.419

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    111/999      2.77G    0.02443    0.01011    0.00773         15        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69       0.77        0.7      0.728      0.418

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    112/999      2.77G    0.02454     0.0101   0.006321         12        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.668      0.732      0.759      0.405

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    113/999      2.77G    0.02426    0.01012   0.007182         12        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.666      0.657        0.7      0.363

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    114/999      2.77G    0.02575    0.01062    0.00835          8        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.658      0.674      0.653      0.354

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    115/999      2.77G    0.02466   0.009713   0.007959         11        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.536      0.679       0.67      0.379

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    116/999      2.77G    0.02348   0.009591   0.008109          9        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.635      0.676      0.696      0.373

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    117/999      2.77G    0.02505    0.01034   0.006822         17        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.615       0.61      0.618       0.32

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    118/999      2.77G    0.02368   0.009565   0.007538         16        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.626      0.682      0.704      0.396

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    119/999      2.77G    0.02525   0.009672   0.007222         10        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.573      0.637      0.651      0.349

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    120/999      2.77G    0.02426    0.01008   0.006545         10        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.696      0.706      0.711      0.397

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    121/999      2.77G    0.02483   0.009579   0.006335         15        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.571       0.75      0.724      0.387

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    122/999      2.77G     0.0245   0.009525   0.006718         10        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.559      0.627       0.68      0.374

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    123/999      2.77G    0.02514   0.009512   0.008453         13        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.568      0.689       0.66      0.368

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    124/999      2.77G    0.02615   0.009742   0.008219         11        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.578      0.669      0.672      0.359

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    125/999      2.77G    0.02398   0.009806    0.00766          8        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.672      0.689       0.71      0.371

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    126/999      2.77G    0.02472   0.009445   0.007598         10        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.632      0.713      0.715      0.368

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    127/999      2.77G    0.02474    0.01022   0.008139         10        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.606      0.648      0.676      0.404

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    128/999      2.77G    0.02467   0.009809   0.008583          6        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.595      0.601      0.666      0.386

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    129/999      2.77G    0.02386   0.009707    0.00754          9        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.635       0.69      0.723      0.394

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    130/999      2.77G    0.02434   0.009979   0.008865          9        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.498      0.506      0.485      0.216

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    131/999      2.77G    0.02418    0.01003   0.008252          6        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.762       0.67      0.701      0.403

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    132/999      2.77G    0.02449    0.00964   0.008506          9        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.683      0.626      0.664      0.359

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    133/999      2.77G    0.02482   0.009453   0.007372          7        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.577       0.66      0.621      0.363

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    134/999      2.77G    0.02391   0.009604   0.006276          9        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.605      0.643      0.678      0.367

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    135/999      2.77G    0.02296   0.009333   0.008221          9        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.648      0.629      0.683      0.389

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    136/999      2.77G    0.02294   0.009872   0.007935         11        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.788      0.656      0.699      0.381

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    137/999      2.77G    0.02378    0.01014   0.007228         13        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.726      0.752      0.761      0.408

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    138/999      2.77G    0.02329   0.009855   0.006185         13        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.707      0.695      0.754      0.423

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    139/999      2.77G     0.0237    0.00931   0.006329          8        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.642        0.7      0.724      0.399

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    140/999      2.77G    0.02403   0.009708   0.005674          9        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.701      0.757      0.745       0.43

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    141/999      2.77G    0.02266   0.009407   0.004825         12        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.611      0.779      0.735      0.425

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    142/999      2.77G    0.02273   0.009485   0.007529         10        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.752      0.712      0.722      0.389

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    143/999      2.77G    0.02275   0.009114   0.006129         10        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.768      0.723      0.714       0.43

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    144/999      2.77G    0.02442   0.009407   0.007572         14        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.615      0.725       0.71       0.39

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    145/999      2.77G     0.0234   0.009583   0.007029          8        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.753      0.726      0.751      0.413

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    146/999      2.77G    0.02401   0.009338   0.007363         10        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.777      0.702      0.709      0.384

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    147/999      2.77G    0.02215   0.009454   0.006207         12        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69       0.69      0.736      0.749      0.429

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    148/999      2.77G    0.02438   0.009357    0.00918          5        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.761      0.653      0.741      0.432

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    149/999      2.77G    0.02273   0.008961   0.005995          6        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.709      0.707      0.747      0.411

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    150/999      2.77G     0.0235    0.00944   0.006065          6        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.599      0.744      0.726       0.42

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    151/999      2.77G    0.02276   0.009657   0.006355         15        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.721      0.612      0.734      0.413

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    152/999      2.77G    0.02414   0.009646   0.005933         13        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.628      0.705      0.724       0.41

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    153/999      2.77G    0.02271    0.00911   0.005769         14        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.629      0.606      0.657      0.356

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    154/999      2.77G    0.02355   0.008898   0.006537          5        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.711      0.642       0.72      0.385

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    155/999      2.77G    0.02418    0.00989    0.00701         13        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.672      0.696      0.701      0.376

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    156/999      2.77G    0.02321   0.009334   0.005616          7        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.692      0.643      0.674      0.371

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    157/999      2.77G    0.02385    0.00981   0.006446          9        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69       0.69      0.616      0.696      0.359

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    158/999      2.77G    0.02465   0.009138   0.004515         13        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.655      0.606      0.694      0.378

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    159/999      2.77G    0.02354   0.008859   0.007865         14        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.588      0.682      0.696      0.366

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    160/999      2.77G    0.02376   0.009209   0.008529         13        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.675      0.684      0.738      0.399

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    161/999      2.77G     0.0223   0.009418   0.009192         14        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69       0.71      0.689      0.734      0.443

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    162/999      2.77G    0.02312   0.009668   0.007885          9        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.617       0.63      0.625      0.331

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    163/999      2.77G    0.02371   0.009701   0.006883         13        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.687      0.658      0.715      0.412

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    164/999      2.77G    0.02263   0.009041   0.006452         11        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.662      0.681       0.71      0.381

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    165/999      2.77G    0.02288   0.008761   0.006284          9        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.779      0.686      0.735      0.428

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    166/999      2.77G    0.02183   0.009019   0.006141         12        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.607      0.676      0.704      0.395

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    167/999      2.77G    0.02279   0.009306   0.005303         15        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.586      0.634      0.648      0.391

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    168/999      2.77G    0.02312   0.008888   0.005441         11        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.611      0.619       0.65       0.39

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    169/999      2.77G    0.02364   0.009015   0.006322         10        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.577      0.667       0.67      0.375

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    170/999      2.77G    0.02331   0.009253   0.004701          8        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.719      0.613      0.697      0.408

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    171/999      2.77G    0.02363   0.008825   0.007233          7        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.655      0.685      0.712       0.42

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    172/999      2.77G    0.02172   0.009216   0.005614         22        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.644      0.681      0.731      0.408

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    173/999      2.77G    0.02303   0.009118    0.00497         13        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.593      0.655      0.696      0.402

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    174/999      2.77G    0.02195   0.008835   0.004224          9        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.692      0.598      0.706      0.384

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    175/999      2.77G    0.02239   0.009244   0.007175         14        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.667      0.635      0.716        0.4

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    176/999      2.77G     0.0214   0.009316      0.005         11        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.637      0.686      0.697      0.385

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    177/999      2.77G    0.02204    0.00889   0.005917         13        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.596      0.701      0.689      0.368

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    178/999      2.77G    0.02142    0.00893   0.006086          5        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.685      0.596      0.702       0.39

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    179/999      2.77G    0.02373   0.009186    0.00479         11        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.754      0.659      0.761      0.407

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    180/999      2.77G    0.02181   0.008906   0.004866          6        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.744      0.653      0.704       0.41

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    181/999      2.77G    0.02317   0.009101   0.004953         13        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.561      0.661      0.673      0.378

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    182/999      2.77G     0.0231   0.009198   0.005572         15        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.732      0.606       0.68      0.382

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    183/999      2.77G    0.02161   0.008537   0.005246          6        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.556      0.706      0.707       0.39

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    184/999      2.77G    0.02207   0.008944   0.005403         12        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.557      0.617       0.66      0.359

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    185/999      2.77G    0.02279   0.009113   0.005539         12        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.563      0.668      0.638      0.345

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    186/999      2.77G    0.02137   0.008717   0.004762          9        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.697      0.628      0.708      0.419

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    187/999      2.77G    0.02269   0.008878    0.00719          8        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.683      0.698      0.731      0.416

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    188/999      2.77G    0.02227   0.008809   0.005408          9        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.609      0.616      0.696      0.407

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    189/999      2.77G    0.02216   0.009191   0.003953          7        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.607       0.63      0.697      0.417

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    190/999      2.77G    0.02301   0.008814   0.005706          7        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.613        0.7      0.719      0.409

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    191/999      2.77G     0.0215   0.008396   0.005045         13        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.662      0.633      0.704      0.396

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    192/999      2.77G    0.02276   0.008698   0.006139         13        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69       0.54      0.649      0.664       0.36

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    193/999      2.77G    0.02279   0.008647   0.006244         11        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.683      0.583      0.718      0.409

      Epoch    GPU_mem   box_loss   obj_loss   cls_loss  Instances       Size
    194/999      2.77G     0.0235   0.008786   0.006327          6        640: 1
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69       0.61       0.59      0.644      0.338
Stopping training early as no improvement observed in last 100 epochs. Best results observed at epoch 94, best model saved as best.pt.
To update EarlyStopping(patience=100) pass a new patience value, i.e. `python train.py --patience 300` or use `--patience 0` to disable EarlyStopping.

195 epochs completed in 0.435 hours.
Optimizer stripped from runs/train/exp7/weights/last.pt, 14.4MB
Optimizer stripped from runs/train/exp7/weights/best.pt, 14.4MB

Validating runs/train/exp7/weights/best.pt...
Fusing layers... 
Model summary: 157 layers, 7020913 parameters, 0 gradients, 15.8 GFLOPs
                 Class     Images  Instances          P          R      mAP50   
                   all         66         69      0.582       0.76      0.771      0.457
                 angry         66         14      0.523      0.929      0.783      0.439
                 happy         66         20      0.534       0.85      0.844      0.552
                   sad         66         17      0.814       0.26      0.634      0.311
                scared         66         18      0.458          1      0.824      0.528
Results saved to runs/train/exp7
    
    
  ```
</details>

## Evidências do treinamento

![Results](https://github.com/joaofranca13/CESAR-NN-HumanExpressions/blob/main/models/runs/train/exp7/results.png)

![Confusion Matrix](https://github.com/joaofranca13/CESAR-NN-HumanExpressions/blob/main/models/runs/train/exp7/confusion_matrix.png)

![Labels](https://github.com/joaofranca13/CESAR-NN-HumanExpressions/blob/main/models/runs/train/exp7/labels.jpg)





## Roboflow

[Roboflow Annotated Dataset](https://app.roboflow.com/cesarnnhumanexpressions/nnhumanexpressions/3)

## HuggingFace

[Human Expressions Detection - HuggingFace](https://huggingface.co/spaces/joaofranca13/CESAR-NN-Human-Expression-HF)

![demo](https://user-images.githubusercontent.com/45131112/199138681-04740f9c-7ee3-4b31-9322-555f9cbbc5fb.png)
