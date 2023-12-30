import 'package:flutter/material.dart';
import 'package:instagram_ui/widgets/AppBar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: false,
          title: Row(
            children: [
              Text("username",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(Icons.arrow_drop_down)
            ],
          ),
          actions: [
            Icon(Icons.add_box_outlined),
            Icon(Icons.menu)
          ],
          actionsIconTheme: IconThemeData(
            size: 40,
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white
                    ),
                    child: Container(
                      width: 95,
                      height: 95,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black
                      ),
                      child: Container(
                        width: 90,
                        height: 90,
                        clipBehavior: Clip.antiAlias,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                        ),
                        child: Image.asset("images/profile.png"),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("100",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold
                                )
                            ),
                            Text("posts",
                              style: TextStyle(
                                  fontSize: 20
                              ),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("100",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold
                                )
                            ),
                            Text("posts",
                              style: TextStyle(
                                  fontSize: 20
                              ),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("100",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold
                                )
                            ),
                            Text("posts",
                              style: TextStyle(
                                  fontSize: 20
                              ),
                            )
                          ],
                        ),
                      ],
                    )
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("User Name",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    ),
                  ),
                  Text("This is the bio section of the profile page, describing the person who manage this account."),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Link for your websita",
                    style: TextStyle(
                      decoration: TextDecoration.underline
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: OutlinedButton(
                onPressed: () {},
                child: Text("Edit Profile"),
                style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                    ),
                    minimumSize: Size.fromHeight(35)
                ),
              ),
            ),
            TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
                Tab(child: Icon(Icons.grid_3x3_outlined),),
                Tab(child: Icon(Icons.tag_faces_outlined),)
              ]
            ),
            Expanded(
              child: TabBarView(
                children: [
                  GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 1/1,
                      crossAxisSpacing: 3,
                      mainAxisSpacing: 3
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        color: Colors.lightBlue,
                      );
                    },
                    itemCount: 20,
                  ),
                  GridView.builder(
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 3
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        color: Colors.lightBlue,
                      );
                    },
                    itemCount: 20,
                  )
                ]
              ),
            )
          ],
        ),
      ),
    );
  }
}