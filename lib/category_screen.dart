import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
             right: BorderSide(
              color: Colors.white,
              width: 5,
             ),
              top: BorderSide(
              color: Colors.white,
              width: 5,
             ),
          ),
        ),
        child: Scaffold(
          backgroundColor: const Color.fromARGB(246, 240, 240, 240),
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(246, 240, 240, 240),
            leading: CupertinoButton(
              onPressed: (){},
              padding: EdgeInsets.zero,
              child: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
            centerTitle: true,
            title: const Text(
              'Category Screen',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            elevation: 2,
            notificationPredicate: (ScrollNotification notification) {
              return notification.depth == 1;
            },
            bottom: TabBar(
              overlayColor: const MaterialStatePropertyAll(Colors.transparent),
              padding: const EdgeInsets.only(top: 10,bottom: 10),
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: const Color.fromARGB(255, 246, 227, 192),
              ),
              isScrollable: true,
              tabs: const [
                Tab(
                  child: Text(
                    'Accessoiries',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Shoes',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Baby and Toy',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Bags',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
          body: const TabBarView(
          children: [
          MyAccesso(),
          Icon(Icons.shower),
          Icon(Icons.baby_changing_station),
          Icon(Icons.man_2_outlined),
          ],),
        ),
      ),
    );
  }
}

class MyAccesso extends StatelessWidget {
  const MyAccesso({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return  Padding(
            padding: const EdgeInsets.only(left: 20,right: 15),
            child: Column(
              children: [
                 ListTile(
                  contentPadding:const EdgeInsets.only(top: 30),
                  leading: Image.asset('assets/images/headphone.png',
                  fit: BoxFit.fill,),
                  title:const Center(
                    child: Text(
                      'Headphone',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  subtitle:const Center(
                    child: Text('1 item',
                    style: TextStyle(
                      color: Color.fromRGBO(233, 143, 47, 1),
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                    ),),
                  ),
                  trailing:const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                    size: 15,
                  ),
                  onTap: (){},
                ),
                 ListTile(
                  contentPadding:const EdgeInsets.only(top: 30),
                  leading:Image.asset('assets/images/earphone.jpg',
                  fit: BoxFit.fill,),
                  title:const Center(
                    child: Text(
                      'Earphone',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  subtitle:const Center(
                    child: Text('1 item',style: TextStyle(
                      color: Color.fromRGBO(233, 143, 47, 1),
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                    ),),
                  ),
                  trailing:const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                    size: 15,
                  ),
                  onTap: (){},
                ),
                 ListTile(
                  contentPadding: const EdgeInsets.only(top: 30),
                  leading:Image.asset('assets/images/mobile.jpg',
                  fit: BoxFit.contain,),
                  title: const Center(
                    child: Text(
                      'Samsung phone',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  subtitle:const Center(
                    child: Text('1 item',style: TextStyle(
                      color: Color.fromRGBO(233, 143, 47, 1),
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                    ),),
                  ),
                  trailing:const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                    size: 15,
                  ),
                  onTap: (){},
                ),
              ],
            ),
          );
        });
  }
}

