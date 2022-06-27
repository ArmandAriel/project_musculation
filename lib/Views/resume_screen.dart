// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:project_musculation/Controller/navigator_controller.dart';
import 'package:project_musculation/Models/exercise.dart';
import 'package:project_musculation/Views/exercices_screen.dart';
import 'package:flutter/material.dart';

class ResumeScreen extends StatefulWidget {
  final _description;
  final _title;
  final _image;
  final _listExercise;

  const ResumeScreen(this._title, this._description, this._image, this._listExercise, {Key? key}) : super(key: key);

  @override
  State<ResumeScreen> createState() => _ResumeScreenState();
}

class _ResumeScreenState extends State<ResumeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._title),
      ),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: size.height * 0.26,
              // width: size.width * 0.49,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/${widget._image}'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget._description,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
            child: Text(
              ((widget._listExercise as List<Exercise>).isEmpty ? "" : "Exercises"),
              style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
            ),
          ),
          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              padding: const EdgeInsets.only(left: 16, right: 16),
              itemCount: (widget._listExercise as List<Exercise>).length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => NavigatorController().navigatorToReturn(context,
                      ExerciceScreen(widget._listExercise[index].title, widget._listExercise[index].descriptionFull, widget._listExercise[index].image, widget._listExercise[index].linkVideo)),
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(0, 7, 0, 6),
                    width: size.width * 0.8,
                    height: size.height * 0.12,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        // ignore: prefer_const_literals_to_create_immutables
                        boxShadow: [
                          const BoxShadow(
                            color: Colors.grey,
                            offset: Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 6.0,
                          ), //BoxShadow
                          const BoxShadow(
                            color: Colors.white,
                            offset: Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ), //BoxShadow
                        ],
                        color: Colors.black12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Container(
                                width: size.width * 0.2,
                                height: size.height * 0.10,
                                decoration: BoxDecoration(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  boxShadow: [
                                    const BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(
                                        1.0,
                                        1.0,
                                      ),
                                      blurRadius: 6.0,
                                    ), //BoxShadow
                                    const BoxShadow(
                                      color: Colors.white,
                                      offset: Offset(0.0, 0.0),
                                      blurRadius: 0.0,
                                      spreadRadius: 0.0,
                                    ), //BoxShadow
                                  ],
                                  shape: BoxShape.circle,
                                  image: DecorationImage(image: AssetImage("assets/images/${widget._listExercise[index].image}"), fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(widget._listExercise[index].title, style: const TextStyle(fontWeight: FontWeight.w800)),
                                SizedBox(
                                    width: size.width * 0.6,
                                    height: size.height * 0.08,
                                    child: Text((widget._listExercise[index].description.length >= 130
                                        ? "${widget._listExercise[index].description.substring(0, 129)}..."
                                        : widget._listExercise[index].description))),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              })
        ]),
      ),
    );
  }
}
