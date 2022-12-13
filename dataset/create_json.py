# import csv file which output by create_csv.Rmd 
# and extract json file for using interactive visualization

import json 
import pandas as pd

def create_json_forHeat(df):
    df = pd.read_csv(df)
    df = df.astype('str')
    output = {}

    for i in range(len(df)):
        num_crime = {"MURDER" : df.loc[i, "MURDER"], 
                    "ASSAULT" : df.loc[i, "ASSAULT"],
                    "ROBBERY" : df.loc[i, "ROBBERY"],
                    "SEXUALCRIME" : df.loc[i, "SEXUALCRIME"],
                    "FRAUD" : df.loc[i, "FRAUD"],
                    "HARASSMENT" : df.loc[i, "HARASSMENT"],
                    "OTHERS" : df.loc[i, "OTHERS"],
                    "All": df.loc[i, "All"]}

        output[df.loc[i, "addr_pct_cd"]] = num_crime

    return output

def create_json_forBar(df):
    df = pd.read_csv(df)
#    df = df.astype('str')
    output = []
    crime_type = ["MURDER", "ASSAULT", "ROBBERY", "SEXUALCRIME", "FRAUD", "HARASSMENT","OTHERS"]

    for type in crime_type:
        nest = {}
        nest['crime_type'] = type
        nest['freq'] = df[type].sum()
        nest['freq'] = nest['freq'].astype('str')
        output.append(nest)

    return output


if __name__ == '__main__':

    # create json file for heat map
    file = 'num_crime.csv'
    js_file1 = create_json_forHeat(file)

    with open('num_crime.json', 'w') as f:
        json.dump(js_file1, f, ensure_ascii=False)

    # create json file for bar chart by crime type
    js_file2 = create_json_forBar(file)

    with open('num_crime_byType.json', 'w') as f:
        json.dump(js_file2, f, ensure_ascii=False)
    
