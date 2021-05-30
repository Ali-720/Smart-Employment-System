import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyp/Screens/DrawerScreens/JobUpdate.dart';

class JobCardUpdate extends StatelessWidget {
  DocumentSnapshot doc;
  String uuid;
  JobCardUpdate(this.doc, this.uuid);
   

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
          margin: EdgeInsets.all(16.0),
          width: MediaQuery.of(context).size.width / 1.1,
          height: 300,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.black, blurRadius: 10.0),
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  ListTile(
                      title: Text(doc["Title"]),
                      leading: Image.asset(
                        "assets/award.png",
                        height: 36,
                      ),
                      subtitle: Text('Title'),
                      trailing: CircleAvatar(
                        backgroundColor: Colors.red[100],
                        radius: 20,
                                              child: IconButton(
                            icon: Icon(Icons.delete_sweep_rounded,
                             color: Colors.red,),
                            onPressed: () {

                              showCupertinoDialog(context: context, builder: (context){
                                return CupertinoAlertDialog(

                                  content: Text("Are you sure to delete the job post?"),
                                  title: Text("Delete"),

                                  actions: [
                                    CupertinoDialogAction(

                                      isDefaultAction: true,
                                      onPressed: (){
                                      Navigator.pop(context);
                                    }, child: Text("Cancel")),
                                    CupertinoDialogAction(onPressed: (){
                                      print("yaha aaya");
                                      deletePost();
                                      Navigator.pop(context);
                                                                          }, child: Text("Delete", style: TextStyle(color:Colors.red),), ),
                                                                          
                                                                        ],
                                                                      );
                                                                    });
                                      
                                                                  }),
                                                            )),
                                                        ListTile(
                                                          title: Text('Description'),
                                                          leading: Image.asset(
                                                            "assets/product-description.png",
                                                            height: 36,
                                                          ),
                                                          subtitle: Container(
                                                            height: 70,
                                                            child: Text(
                                                              doc['Desc'],
                                                            ),
                                                          ),
                                                          isThreeLine: true,
                                                        ),
                                                        ListTile(
                                                          title: Text(doc['Vacc']),
                                                          leading: Icon(
                                                            Icons.people_alt_sharp,
                                                            size: 36,
                                                          ),
                                                          subtitle: Text("Vaccancies"),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(height: 20),
                                                    Expanded(
                                                      child: InkWell(
                                                        onTap: () {
                                                          Navigator.push(context, MaterialPageRoute( builder: (context) => JobUpdate(doc)));
                                                        },
                                                        child: Container(
                                                          height: 30,
                                                          decoration: BoxDecoration(
                                                            color: Colors.amber,
                                                            borderRadius: BorderRadius.only(
                                                              bottomLeft: Radius.circular(15.0),
                                                              bottomRight: Radius.circular(15.0),
                                                            ),
                                                          ),
                                                          width: MediaQuery.of(context).size.width,
                                                          child: Center(
                                                            child: Icon(Icons.edit),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                          );
                                        }
                                      
                                        void deletePost() async{
                                          print("${doc["category"]}---${doc["ref"]}---${uuid}");
try{
                             await FirebaseFirestore.instance.collection(doc['category'].toString().trim()).doc(doc["ref"]).delete().onError((error, stackTrace) {
                                            print(error.message);
                                          });
                                          await FirebaseFirestore.instance.collection("recruters").doc(uuid).collection("Applications").doc(doc["ref"]).delete().onError((error, stackTrace) {
                                            print(error.message);
                                          });
               
}
catch(error){
  print(error);
}
                                      
                                        }
}