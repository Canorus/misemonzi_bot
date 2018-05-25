# http://www.webairwatch.com/kaq/modelimg_case4/PM10.09KM.Animation.gif

import requests
import os

def getimg(rg):
    imgdata = requests.get('http://www.webairwatch.com/kaq/modelimg_case4/PM'+rg+'KM.Animation.gif').content
    with open(rg+'.gif', 'wb') as handler:
        handler.write(imgdata)
    os.system('convert '+rg+'.gif -fuzz 10% -transparent white '+rg+'.gif')

getimg('10.09')
getimg('2_5.09')
getimg('10.03')
getimg('2_5.03')

os.system('./conv.sh')
