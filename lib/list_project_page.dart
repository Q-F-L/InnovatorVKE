import 'package:diplomka/ProjectsConvertJSON.dart';
import 'package:flutter/material.dart';

class ListProjectPage extends StatefulWidget {
  _ListProjectPage createState() => _ListProjectPage();
}

class _ListProjectPage extends State<ListProjectPage> {
  late Future<ProjectsList>? projectList;

  void initState() {
    super.initState();
    projectList = getProjectList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/menu_page');
                        },
                        child: Image.asset('assets/arrow_back.png')),
                  ),
                  Expanded(
                    flex: 4,
                    child: Text(
                      'Проекты',
                      style: TextStyle(
                          fontSize: 36,
                          color: Color.fromRGBO(32, 86, 146, 1),
                          fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                      flex: 1, child: Image.asset('assets/logo_image.png')),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                  width: MediaQuery.of(context).size.width * 0.95,
                  child: FutureBuilder<ProjectsList>(
                    future: projectList,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return ListView.builder(
                            itemCount: snapshot.data?.projects.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  Project project = Project(
                                      id: snapshot.data!.projects[index].id,
                                      topic:
                                          snapshot.data!.projects[index].topic,
                                      title:
                                          snapshot.data!.projects[index].title,
                                      now_description: snapshot.data!
                                          .projects[index].now_description,
                                      now_video: snapshot
                                          .data!.projects[index].now_video,
                                      now_photo: snapshot
                                          .data!.projects[index].now_photo,
                                      need_description: snapshot.data!
                                          .projects[index].need_description,
                                      need_video: snapshot
                                          .data!.projects[index].need_video,
                                      need_photo: snapshot
                                          .data!.projects[index].need_photo,
                                      will_description: snapshot.data!
                                          .projects[index].will_description,
                                      rating:
                                          snapshot.data!.projects[index].rating,
                                      status:
                                          snapshot.data!.projects[index].status,
                                      discussion_id: snapshot
                                          .data!.projects[index].discussion_id,
                                      user_id: snapshot
                                          .data!.projects[index].user_id,
                                      created_at: snapshot
                                          .data!.projects[index].created_at,
                                      updated_at: snapshot
                                          .data!.projects[index].updated_at);
                                  Navigator.pushNamed(
                                      context, '/detail_project_page',
                                      arguments: project);
                                },
                                child: Table(
                                  border: TableBorder.all(),
                                  columnWidths: const <int, TableColumnWidth>{
                                    0: FixedColumnWidth(100),
                                    1: FlexColumnWidth(),
                                    2: FlexColumnWidth(2),
                                  },
                                  defaultVerticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  children: <TableRow>[
                                    TableRow(
                                      decoration: const BoxDecoration(),
                                      children: <Widget>[
                                        Image.asset('assets/image_p.png'),
                                        Container(
                                          height: 32,
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              '${snapshot.data?.projects[index].title}',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Color.fromRGBO(
                                                      32, 86, 146, 1),
                                                  fontWeight: FontWeight.w400),
                                              textAlign: TextAlign.end,
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Text(
                                              '${snapshot.data?.projects[index].user_id}',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromRGBO(
                                                      114, 114, 114, 1.0),
                                                  fontWeight: FontWeight.w400),
                                              textAlign: TextAlign.end,
                                            ),
                                            Text(
                                              '${snapshot.data?.projects[index].topic}',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromRGBO(
                                                      32, 86, 146, 1),
                                                  fontWeight: FontWeight.w400),
                                              textAlign: TextAlign.end,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            });
                      } else if (snapshot.hasError) {
                        return Text('Error');
                      }
                      return Text('Empty');
                    },
                  )),
            )
          ],
        ),
      ),
    );
  }
}
