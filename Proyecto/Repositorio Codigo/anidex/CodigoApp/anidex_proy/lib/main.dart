import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Anidex',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Inicio'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: MenuLateral(),
      body: ListView(
        children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  height: 150.0,
                  width: 150.0,
                  padding: EdgeInsets.all(20.0),
                  child: 
                    Image.network("https://www.excelsior.com.mx/media//inside-the-note/pictures/2019/07/30/tierno_patito_que_se_queda_dormido_durante_una_clase_te_hara_el_dia_2_0.png"),
                ),
                Container( 
                  height: 150.0,
                  width: 150.0,
                  padding: EdgeInsets.all(20.0),
                  child: Image.network("https://i.pinimg.com/originals/7a/e8/58/7ae858f9e9d4e99851dccdbc372b8ba6.jpg"),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  height: 150.0,
                  width: 150.0,
                  padding: EdgeInsets.all(20.0),
                  child: Image.network("https://i.pinimg.com/originals/bd/4d/84/bd4d843a6081db611a8302c86a8ff5f8.jpg"),
                ),
                Container( 
                  height: 150.0,
                  width: 150.0,
                  padding: EdgeInsets.all(20.0),
                  child: Image.network("https://www.ahnegao.com.br/wp-content/uploads/2018/09/moth.jpg")
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  height: 150.0,
                  width: 150.0,
                  padding: EdgeInsets.all(20.0),
                  child: Image.network("https://wl-genial.cf.tsp.li/resize/728x/jpg/0b2/3d2/992c7758288e1c52fe12e662e1.jpg"),
                ),
                Container( 
                  height: 150.0,
                  width: 150.0,
                  padding: EdgeInsets.all(20.0),
                  child: Image.network("https://i.blogs.es/251658/doge/450_1000.jpg")
                )
              ],
            )
          ],
        ),
    );
  }

}

class MenuLateral extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
              accountName: Text("Anidex"),
              accountEmail: Text("Enciclopedia de Animales e insectos"),
              decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage("https://www.ngenespanol.com/wp-content/uploads/2018/09/Fotos-Divertidas-del-mundo-animal-P.png"),
                fit: BoxFit.cover
              )
            ),
          ),
          Ink(
            color: Colors.red[800],
            child: new ListTile(
              leading: Icon(Icons.home),
              title: Text("Inicio", style: TextStyle(color: Colors.white),),              
            ),
          ),
          new ListTile(
            leading:Icon(Icons.camera),
            title: Text("Nueva Foto"),
            onTap: (){},
          ),
          new ListTile(
            leading:Icon(Icons.explore),
            title: Text("Mis hallazgos"),
          ),
        ],
      ) ,
    );
  }
}
