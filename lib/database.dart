
import 'package:cloud_firestore/cloud_firestore.dart';

class Database{
  late FirebaseFirestore firestore;
  initiliase(){
    firestore=FirebaseFirestore.instance;
  }

  Future<List> read() async {
    QuerySnapshot querySnapshot;
    List docs=[];
    try{
      querySnapshot=await firestore.collection('name').get();
      if(querySnapshot.docs.isNotEmpty){
        for(var doc in querySnapshot.docs.toList()){
          Map a={"id":doc.id,"name":doc['name'], "year":doc['bday_year'], "mon":doc['bday_mon'], "day":doc['bday_day']};
          docs.add(a);
        }
        return docs;
      }
    }
    catch(e){
      print(e);
    }
  }
}