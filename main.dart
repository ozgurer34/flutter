import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sosyal_app/gonderikarti.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Projem',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0.0, // App bar gölge efekti sıfırlama
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.black,
              size: 32.0,
            ),
            onPressed: () {}),
        title: Text(
          "SOSYAL WORD",
          style: TextStyle(fontSize: 20.0, color: Colors.black),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.purple,
                size: 32.0,
              ),
              onPressed: () {}),
        ],
      ),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[100],
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 3.0),
                  blurRadius: (5.0),
                )
              ],
            ),
            height: 100.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                profilKartiOlustur("Oya YAZGAN","https://pbs.twimg.com/profile_images/1260294180187836418/G28AKzWG_400x400.jpg"),
                profilKartiOlustur("Özgür ER","https://pbs.twimg.com/profile_images/1260294180187836418/G28AKzWG_400x400.jpg"),
                profilKartiOlustur("Ali Er","https://pbs.twimg.com/profile_images/1260294180187836418/G28AKzWG_400x400.jpg"),
                profilKartiOlustur("Hakan KALYONCU","https://pbs.twimg.com/profile_images/1260294180187836418/G28AKzWG_400x400.jpg"),
                profilKartiOlustur("Eren KOÇ","https://pbs.twimg.com/profile_images/1260294180187836418/G28AKzWG_400x400.jpg"),
                profilKartiOlustur("Özcan ER","https://pbs.twimg.com/profile_images/1260294180187836418/G28AKzWG_400x400.jpg"),
                profilKartiOlustur("Erdinç YILDIZ","https://pbs.twimg.com/profile_images/1260294180187836418/G28AKzWG_400x400.jpg"),
                profilKartiOlustur("Berrak ATAÇ","https://pbs.twimg.com/profile_images/1260294180187836418/G28AKzWG_400x400.jpg"),
                profilKartiOlustur("Zeki UZUNKOL","https://pbs.twimg.com/profile_images/1260294180187836418/G28AKzWG_400x400.jpg"),
                profilKartiOlustur("Nuri ALÇO","https://pbs.twimg.com/profile_images/1260294180187836418/G28AKzWG_400x400.jpg"),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          GonderiKarti(),
          GonderiKarti(),
          GonderiKarti(),
          GonderiKarti(),
          GonderiKarti(),

        ],
      ),
    );
  }

  Widget profilKartiOlustur(String kullaniciAdi, String resimLinki) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0, left: 8.0),
      child: Column(
        children: <Widget>[
          Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                width: 70.0,
                height: 70.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey, width: 2.0),
                  borderRadius: BorderRadius.circular(50.0),
                  image: DecorationImage(
                    image: NetworkImage(resimLinki),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                width: 20.0,
                height: 20.0,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(25.0),
                  border: Border.all(color: Colors.white, width: 2.0),
                ),
              )
            ],
          ),
          Text(
            kullaniciAdi,
            style: TextStyle(
              color: Colors.black,
              fontSize: 15.0,
            ),
          )
        ],
      ),
    );
  }
}


