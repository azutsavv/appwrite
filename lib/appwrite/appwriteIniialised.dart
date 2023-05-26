import 'package:appwrite/appwrite.dart';

class appwriteprovider {
  
  Client client = Client();

  appwriteprovider(){
    client
    .setEndpoint("http://localhost/v1")
    .setProject("6470be24adea6e936ff5")
    .setSelfSigned(status: true); 
  }
}
