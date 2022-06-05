from itertools import combinations
import scipy.io
import numpy as np
from sklearn.preprocessing import StandardScaler
# from sklearn.preprocessing import MinMaxScaler

def getDataFrame(path,numMov,numSubj,numSer,IMUS = range(15),scaler=False):
    mat = scipy.io.loadmat(path) #open file
    if numMov == 1:
        angle = 0 #roll
    if numMov == 2:
        angle = 1
    if numMov == 3:
        angle = 2
    if numSer == 1:
        MOV = list(mat.keys())[3]
        label = list(mat.keys())[4] 
    else:
        MOV = list(mat.keys())[5]
        label = list(mat.keys())[6]
    X = mat[MOV][:,angle,IMUS]
    # X = X / X.max()
    if scaler:
        sc = StandardScaler()
        X = sc.fit_transform(X)
    return np.concatenate([X,mat[label].T],axis=1)

def getDataFrameJoin(path,numMov,numSubj, IMUS = range(15),scaler=False):
    df = getDataFrame(path,numMov,numSubj,1,IMUS,scaler)
    try:
        other= getDataFrame(path,numMov,numSubj,2,IMUS,scaler)
    except:
        return df
    return np.concatenate([df,other])

def LOSO(data,scaler=False):
    
    N = len(data) # number of subjects or folds

    for subject in range(N):
        sub = data[::] 
        
        #validation subject
        X_val = sub[subject][:,:-1] 
        y_val = sub[subject][:,-1] 
        
        #pop that subject
        sub.pop(subject)
        
        #Use the remaining subjects as train subjects
        data_train=np.concatenate(sub)
        X_train = data_train[:,:-1]
        y_train = data_train[:,-1]
        
        #Scaler
        if scaler:
            sc = StandardScaler()
            X_train = sc.fit_transform(X_train)
            X_val = sc.fit_transform(X_val)
            
        yield X_train, y_train, X_val, y_val

# def LOSO_validation(m,data,scaler=False):
#     N = len(data) # number of subjects or folds
#     score = np.zeros([2,N]) #store train score and validation score

#     for subject, (X_train, y_train, X_val, y_val) in enumerate(LOSO(data,scaler)):
        
#         #Train model
#         m.fit(X_train,y_train)
        
#         #Predict and compute score in train data
#         score[0,subject] = m.score(X_train,y_train)
        
#         #Predict and compute score in validation data
#         score[1,subject] = m.score(X_val,y_val)
        
#     return score.mean(axis=1), score.std(axis=1)

def combination(IMUS,regTor,regLum):
    for j in range(1,len(regLum)):
        for i in range(1,len(regTor)):
            for k,l in zip(combinations(regTor,i),combinations(regLum,j)):
                yield(IMUS+list(k)+list(l))
                
def confusion_matrix(y,yhat):
    VP = np.logical_and(y , yhat)
    FP = np.logical_and(np.logical_not(y) , yhat)
    FN = np.logical_and(y , np.logical_not(yhat))
    VN = np.logical_and(np.logical_not(y) , np.logical_not(yhat))
    return VP.sum(), FP.sum(), FN.sum(), VN.sum()

def metrics(y,yhat):
    VP, FP, FN, VN = confusion_matrix(y,yhat)
    precision = VP/ (VP+FP)
    exhaustividad = VP/ (FN+VP)
    tasaFP = FP/ (VN+FP)
    return precision, exhaustividad, tasaFP

def LOSO_metrics(m,data,scaler=False):
    N = len(data) # number of subjects or folds
    score = np.zeros([2,N])
    met_t = np.zeros([3,N]) #store train score and validation score
    met_v = np.zeros([3,N]) #store train score and validation score

    for subject, (X_train, y_train, X_val, y_val) in enumerate(LOSO(data,scaler)):
        
        #Train model 
        m.fit(X_train,y_train)
        
        #Predict and compute score in train data
        yhat_train=m.predict(X_train)
        met_t[0,subject],met_t[1,subject],met_t[2,subject] =metrics(y_train,yhat_train)
        
        #Predict and compute score in validation data
        yhat_val=m.predict(X_val)
        met_v[0,subject],met_v[1,subject],met_v[2,subject]=metrics(y_val,yhat_val)
        
        #Predict and compute score in train data
        score[0,subject] = m.score(X_train,y_train)
        
        #Predict and compute score in validation data
        score[1,subject] = m.score(X_val,y_val)
        
    return met_t, met_v, score