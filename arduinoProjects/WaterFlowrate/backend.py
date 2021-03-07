from flask import Flask, render_template,url_for,request,redirect

app=Flask("Jarvis")
import socket
s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
try:
    # doesn't even have to be reachable
    s.connect(('10.255.255.255', 1))
    IP = s.getsockname()[0]
except Exception:
    IP = '127.0.0.1 Please connect to wifi'
finally:
    s.close()
ip=IP
@app.route('/')
def index():
    fd=open("config.txt",'r')
    lines=fd.readlines()
    ip,api,mobileurl,mobilenumber="","","",""
    ll=list()
    for line in lines:
        ll.append(line.strip())
    ip,api,mobileurl,mobilenumber=str(ll[0]),str(ll[1]),str(ll[2]),str(ll[3])
    print(ll)  
    return """<!DOCTYPE html>
<html>
<head>
	<title>Configuration</title>
</head>
<body>
<h1> Configuration Manager</h1>
<hr>
<br>
<h3>IP-Address of Laptop: """+ip+"""</h3><br>
<h3>Thingspeak API key: """+api+"""</h3><br>
<h3>Mobile Server URL: """+mobileurl+"""</h3><br>
<h3>Mobile Number: """+mobilenumber+"""</h3><br>
<hr>

<a href="http://"""+ip+""":5000/setconfig" style="color:green;font-size:24px;">Set Config</a>
</body>
</html>"""

@app.route('/setconfig')
def setconfig():
    return render_template("inputs.html",ip=ip)


@app.route('/bsetconfig',methods=['POST'])
def bsetconfig():
    if request.method=='POST':
        print("am inside the post request")
        import socket
        s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        try:
            # doesn't even have to be reachable
            s.connect(('10.255.255.255', 1))
            IP = s.getsockname()[0]
        except Exception:
            IP = '127.0.0.1 Please connect to wifi'
        finally:
            s.close()
        ip=IP
        api=request.form['api']
        url=request.form['mobileurl']
        mblnum=request.form['mobilenumber']
        print("url entered is "+url+" :: api "+api+":: mblnum "+mblnum+" :: IP "+ip+"\n")
        fw=open('config.txt','w')
        fw.write(ip+"\n"+api+"\n"+url+"\n"+mblnum+"\n")
        fw.close()   
    return redirect(url_for('index'))
    
water1,water2,water3="10","10","10"

@app.route('/data',methods=['POST','GET'])
def data():
    global water1,water2,water3
    if(request.method=='POST'):
        print(request.get_json(force=True))
        data=request.get_json(force=True)
        fd=open("config.txt",'r')
        lines=fd.readlines()
        ip,api,mobileurl,mobilenumber="","","",""
        ll=list()
        for line in lines:
            ll.append(line.strip())
        ip,api,mobileurl,mobilenumber=str(ll[0]),str(ll[1]),str(ll[2]),str(ll[3])
        water1=water2
        water2=water3
        water3=data['water']
        import requests
        #https://api.thingspeak.com/update?api_key=X480KSQCMDZY8G6N&field1=30
        phone=mobilenumber
        ff=open("d.txt","a")
        ff.write(data['water'])
        ff.close()
        api="X480KSQCMDZY8G6N"
        x1=requests.get("https://api.thingspeak.com/update?api_key="+api+"&field1="+data['water'])
        print("Thingspeak api request ",x1.status_code)
        if(float(water1)<5.00 and float(water2)<5.00 and float(water3)<5.00):
            x=requests.get(mobileurl+"/?phone="+phone+"&message=Alert!!!__Water_leakage_detected___")
            print("mobile request ",x.status_code)
        return " "
    return "lol"


if __name__=='__main__':
    try:
        import socket
        s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        try:
            # doesn't even have to be reachable
            s.connect(('10.255.255.255', 1))
            IP = s.getsockname()[0]
        except Exception:
            IP = '127.0.0.1 Please connect to wifi'
        finally:
            s.close()
        ip=IP
    except:
        print("none")
    print("IP address: "+ip)
    app.run(host=ip,debug=True)
    

    
