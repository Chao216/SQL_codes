survey_list = ['Niumei','Niu Ke Le','GURR','LOLO']
result_dict = {'Niumei':'Nowcoder','GURR':'HUAWEI'}

for i in survey_list:
    if i in result_dict.keys():
        print('Hi, {name}! Thank you for participating in our graduation survey!'.format(name=i))
    else:
        print('Hi, {name}! Could you take part in our graduation survey?'.format(name=i))