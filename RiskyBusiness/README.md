# Risky Business 
![](https://thumbs.dreamstime.com/z/risky-trap-euro-money-6743268.jpg)

## Preprocessing
I put this section together as the process is qutie similar through each notebook.

* There were severel methods I tried to implement yet came to the conclusion that only 2 preprocessing models were necessary. 
* First model is Standard Scaler which applies the sigmoid function across all columns to get a standard metric
* And the second is Pandas ``` .get_dummies ``` which renders binary columns for categorical values

## Resampling

* Here we use 3 models for sampling, RandomOverSampler which does just that, SMOTE another oversampler, ClusterCentroids for undersampling and then a combination of both with SMOTEENN
* A LinearRegression model is fitted with the newlfy formed data
* Certain metrics such as accuracy and recall are rendered and compared

## Ensemble

* Here we utilize 2 model for our ensemble calssification; BalancedRandomForestClassifier and EasyEnsembleClassifier
* Each model is fitted with preprocessed data and predictions are made
* Metrics such as geometrics mean score and precision are rendered and compared

# Conclusions

* I would say the ensemble models needed a lot more tweaking and maybe a better way for me to fine tune them
* The oversampling models deffinitely came out on tope as the best one overall but at the same time we are dealing with different data sets here
* I feel as though the BalancedRandomForestClassifier would outperform the EasyEnsembleClassifier normally but like i said I believe the parameters need to be fine tuned in a special way that I have yet to discover