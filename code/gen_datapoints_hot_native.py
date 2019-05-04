
#! Python 3
# - Copy and Paste Ranges using OpenPyXl library

import os
import csv
import pandas as pd

#for root, dirs, files in os.walk("."):  
#    for filename in files:
#        print(filename)

overhead = 32

cwd = os.getcwd()
#print(cwd)

warmdir = f"{cwd}\\warm\\measurments"
print(warmdir)
y = []

for x in os.listdir(warmdir):
    if os.path.isfile(x): print ('f-', x)
    elif os.path.isdir(x): print ('d-', x)
    elif os.path.islink(x): print ('l-', x)
    else: print ('---', x)
    y.append(x)
       
#print (y)
#print (y[9]) #last in list

colddir = f"{cwd}\\cold\\measurments"
print(colddir)
z = []

for x in os.listdir(colddir):
    if os.path.isfile(x): print ('f-', x)
    elif os.path.isdir(x): print ('d-', x)
    elif os.path.islink(x): print ('l-', x)
    else: print ('---', x)
    z.append(x)
       
#print (z)
#print (z[9]) #last in list
    

##############################################################################################################

hotE = f"{warmdir}\\{y[0]}\\HotEcall_latencies_in_cycles.csv"
df = pd.read_csv(hotE,header=None)

for i in range (0, 10):
    hotE = f"{warmdir}\\{y[i]}\\HotEcall_latencies_in_cycles.csv"
    df[i] = pd.read_csv(hotE,header=None)
    i+=1
    #print(hotE)

df = pd.concat([df[0], df[1], df[2], df[3], df[4], df[5], df[6], df[7], df[8], df[9]], ignore_index=True)
df_warm = df.to_frame()

hotE = f"{colddir}\\{z[0]}\\HotEcall_latencies_in_cycles.csv"
df = pd.read_csv(hotE,header=None)

for i in range (0, 10):
    hotE = f"{colddir}\\{z[i]}\\HotEcall_latencies_in_cycles.csv"
    df[i] = pd.read_csv(hotE,header=None)
    i+=1
    #print(hotE)

df = pd.concat([df[0], df[1], df[2], df[3], df[4], df[5], df[6], df[7], df[8], df[9]], ignore_index=True)
df_cold = df.to_frame()

df_warm_cold = df_warm.join(df_cold,lsuffix='warm', rsuffix='cold')

df_warm_cold["0warm"] = df_warm_cold["0warm"].apply(lambda x: x - overhead)
df_warm_cold["0cold"] = df_warm_cold["0cold"].apply(lambda x: x - overhead)

df_warm_cold.to_csv('1_HotEcall_latencies_in_cycles.csv', index=False)
print("1_HotEcall_latencies_in_cycles ... Done")

##############################################################################################################

hotO = f"{warmdir}\\{y[0]}\\HotOcall_latencies_in_cycles.csv"
df = pd.read_csv(hotO,header=None)

for i in range (0, 10):
    hotO = f"{warmdir}\\{y[i]}\\HotOcall_latencies_in_cycles.csv"
    df[i] = pd.read_csv(hotO,header=None)
    i+=1
    #print(hotO)

df = pd.concat([df[0], df[1], df[2], df[3], df[4], df[5], df[6], df[7], df[8], df[9]], ignore_index=True)
df_warm = df.to_frame()

hotO = f"{colddir}\\{z[0]}\\HotOcall_latencies_in_cycles.csv"
df = pd.read_csv(hotO,header=None)

for i in range (0, 10):
    hotO = f"{colddir}\\{z[i]}\\HotOcall_latencies_in_cycles.csv"
    df[i] = pd.read_csv(hotO,header=None)
    i+=1
    #print(hotO)

df = pd.concat([df[0], df[1], df[2], df[3], df[4], df[5], df[6], df[7], df[8], df[9]], ignore_index=True)
df_cold = df.to_frame()

df_warm_cold = df_warm.join(df_cold,lsuffix='warm', rsuffix='cold')

df_warm_cold["0warm"] = df_warm_cold["0warm"].apply(lambda x: x - overhead)
df_warm_cold["0cold"] = df_warm_cold["0cold"].apply(lambda x: x - overhead)

df_warm_cold.to_csv('2_HotOcall_latencies_in_cycles.csv', index=False)
print("2_HotOcall_latencies_in_cycles ... Done")

##############################################################################################################

sdkE = f"{warmdir}\\{y[0]}\\SDKEcall_latencies_in_cycles.csv"
df = pd.read_csv(sdkE,header=None)

for i in range (0, 10):
    sdkE = f"{warmdir}\\{y[i]}\\SDKEcall_latencies_in_cycles.csv"
    df[i] = pd.read_csv(sdkE,header=None)
    i+=1
    #print(sdkE)

df = pd.concat([df[0], df[1], df[2], df[3], df[4], df[5], df[6], df[7], df[8], df[9]], ignore_index=True)
df_warm = df.to_frame()

sdkE = f"{colddir}\\{z[0]}\\SDKEcall_latencies_in_cycles.csv"
df = pd.read_csv(sdkE,header=None)

for i in range (0, 10):
    sdkE = f"{colddir}\\{z[i]}\\SDKEcall_latencies_in_cycles.csv"
    df[i] = pd.read_csv(sdkE,header=None)
    i+=1
    #print(sdkE)

df = pd.concat([df[0], df[1], df[2], df[3], df[4], df[5], df[6], df[7], df[8], df[9]], ignore_index=True)
df_cold = df.to_frame()

df_warm_cold = df_warm.join(df_cold,lsuffix='warm', rsuffix='cold')

df_warm_cold["0warm"] = df_warm_cold["0warm"].apply(lambda x: x - overhead)
df_warm_cold["0cold"] = df_warm_cold["0cold"].apply(lambda x: x - overhead)

df_warm_cold.to_csv('3_SDKEcall_latencies_in_cycles.csv', index=False)
print("3_SDKEcall_latencies_in_cycles ... Done")

################################################################################################################

sdkO = f"{warmdir}\\{y[0]}\\SDKOcall_latencies_in_cycles.csv"
df = pd.read_csv(sdkO,header=None)

for i in range (0, 10):
    sdkO = f"{warmdir}\\{y[i]}\\SDKOcall_latencies_in_cycles.csv"
    df[i] = pd.read_csv(sdkO,header=None)
    i+=1
    #print(sdkE)

df = pd.concat([df[0], df[1], df[2], df[3], df[4], df[5], df[6], df[7], df[8], df[9]], ignore_index=True)
df_warm = df.to_frame()

sdkO = f"{colddir}\\{z[0]}\\SDKOcall_latencies_in_cycles.csv"
df = pd.read_csv(sdkO,header=None)

for i in range (0, 10):
    sdkO = f"{colddir}\\{z[i]}\\SDKOcall_latencies_in_cycles.csv"
    df[i] = pd.read_csv(sdkO,header=None)
    i+=1
    #print(sdkE)

df = pd.concat([df[0], df[1], df[2], df[3], df[4], df[5], df[6], df[7], df[8], df[9]], ignore_index=True)
df_cold = df.to_frame()

df_warm_cold = df_warm.join(df_cold,lsuffix='warm', rsuffix='cold')

df_warm_cold["0warm"] = df_warm_cold["0warm"].apply(lambda x: x - overhead)
df_warm_cold["0cold"] = df_warm_cold["0cold"].apply(lambda x: x - overhead)

df_warm_cold.to_csv('4_SDKOcall_latencies_in_cycles.csv', index=False)
print("4_SDKOcall_latencies_in_cycles ... Done")

##############################################################################################################

print("Done")
