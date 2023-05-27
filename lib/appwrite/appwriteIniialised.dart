import 'package:appwrite/appwrite.dart';

class appwriteprovider {
  
  Client client = Client();

  appwriteprovider(){
    client
    .setEndpoint("http://localhost/v1")
    .setProject("6470be24adea6e936ff5")
    .setSelfSigned(status: true);

    final databases = Databases(client);

    try {
        final document = databases.createDocument(
            databaseId: '123456789',
            collectionId: '6470c2f06dcf5bbbc73e',
            documentId: ID.unique(),
            data: {}
        );
    } on AppwriteException catch(e) {
        print(e);
    }
    
     
  }
}
