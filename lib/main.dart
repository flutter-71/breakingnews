import 'package:breakingnews/NewsModel.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(myapp());
}
class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white24,Colors.black]
            ),
          ),
        ),
        title: Text("Breaking News"),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.radio)),
          IconButton(onPressed: (){}, icon: Icon(Icons.settings))
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: ListTile(
              title: Text("${list[3].title}"),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 10,),),
          SliverToBoxAdapter(
            child: Divider(),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("New YORK TIME",style:
                        TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      Text("2 Hours Ago")
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(delegate: SliverChildBuilderDelegate(
            childCount: list.length,
              (BuildContext context,index){
                return Column(
                  children: [
                ListTile(
                title: Text("${list[index].title}"),
                ),
                    Divider()
                  ],
                );
              }
          ))
        ],
      ),
    );
  }
}
