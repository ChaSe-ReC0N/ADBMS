import pymongo

c = pymongo.MongoClient("mongodb://localhost:27017")
db = c["College"]
coll=db["stud_list"]

#r = coll.find({"gender":"female"},{"name.fname":1,"name.lname":1,"_id":0,"mark":1,"phone":1,"grade"})
#for x in r:
	#0 print(x)
#m=coll.find({"mark":{"$gt":80,"$lt":90}},{"_id":0})

#for x in m:
 # print(x)

#x = coll.find({"name.fname":{"$regex":"^V"}})
#for i in x:
  #print(i["name"]["fname"]+""+i["name"]["lname"])
#x = coll.find({"address.city":{"$nin":["Kollam","Thiruvananthapuram"]}},{"_id":0})
#for i in x:
 #  print(i,"\n")
#y = coll.find({"address.city":{"$in":["Kollam"]}},{"_id":0})
#for z in y:
 #  print("Name:",z["name"]["fname"]+" "+z["name"]["lname"],"Location:",z["address"]["city"])
#y = coll.find({"address.city":{"$in":["Kollam","Thiruvananthapuram"]}},{"_id":0})
#for z in y:
 #  print("Name:",z["name"]["fname"]+" "+z["name"]["lname"],"Location:",z["address"]["city"])
u = coll.find({"$or":[{"address.city":"Thiruvanathapuram"},{"address.city":"Kollam"}]},{"_id":0})
for z in u:
    print("Name:",z["name"]["fname"]+" "+z["name"]["lname"],"Location:",z["address"]["city"],"Course:",z["course"])
