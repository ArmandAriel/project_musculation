import 'package:project_musculation/Common/database_helper.dart';
import 'package:project_musculation/Common/standard_data.dart';
import 'package:project_musculation/Controller/navigator_controller.dart';
import 'package:project_musculation/Models/musculation.dart';
import 'package:project_musculation/Views/resume_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    startBD();
  }

  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: FutureBuilder<List<Musculation>?>(
        future: DatabaseHelper().getMusculationTable(),
        builder: (BuildContext context, AsyncSnapshot<List<Musculation>?> snapshot) {
          List<Widget> children;
          if (snapshot.hasData) {
            return Scaffold(
              appBar: AppBar(
                actions: [
                  IconButton(
                      onPressed: () async {
                        await DatabaseHelper().deleteDataBase();
                        await StandardData().structure();
                        setState(() {});
                      },
                      icon: const Icon(Icons.refresh_outlined))
                ],
              ),
              body: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: ((size.width * 0.4) / (size.height * 0.25)),
                children: List.generate(snapshot.data!.length, (index) {
                  return GestureDetector(
                    onTap: () {
                      NavigatorController()
                          .navigatorToReturn(context, ResumeScreen(snapshot.data![index].title, snapshot.data![index].description, snapshot.data![index].image, snapshot.data![index].Exercice));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        width: 10,
                        height: 10,
                        // ignore: prefer_const_constructors
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(
                                2.0,
                                2.0,
                              ),
                              blurRadius: 6.0,
                            ), //BoxShadow
                            BoxShadow(
                              color: Colors.white,
                              offset: Offset(0.0, 0.0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0,
                            ), //BoxShadow
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: size.height * 0.26,
                              width: size.width * 0.49,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/${snapshot.data![index].image}'),
                                  fit: BoxFit.cover,
                                ),
                                // shape: BoxShape.,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Text((snapshot.data![index].title.length >= 24 ? "${snapshot.data![index].title.substring(0, 23)}..." : snapshot.data![index].title),
                                  style: const TextStyle(fontWeight: FontWeight.w700)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
              ),
            );
          } else if (snapshot.hasError) {
            return Scaffold(
                backgroundColor: Colors.red[300],
                body: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 200.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Icon(
                              Icons.error_outline,
                              color: Colors.white,
                              size: 200,
                            ),
                            const Text(
                              "Conecte a internet",
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 100,
                        ),
                      ],
                    ),
                  ),
                ));
          } else {
            children = <Widget>[
              const SizedBox(
                width: 60,
                height: 60,
                child: CircularProgressIndicator(color: Colors.black),
              ),
            ];
          }
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: children,
            ),
          );
        },
      ),
    );
  }

  startBD() async {
    await DatabaseHelper().deleteDataBase();
    await StandardData().structure();
    setState(() {});
  }
}
