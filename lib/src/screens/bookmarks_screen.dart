import 'package:car_shop/src/Database/database.dart';
import 'package:car_shop/src/blocs/main_bloc/main_cubit.dart';
import 'package:car_shop/src/models/bookmark_model.dart';
import 'package:car_shop/src/screens/widgets/bookmark_card.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookmarksScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BookmarksScreen();
}

class _BookmarksScreen extends State<BookmarksScreen> {

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<BookmarkModel>>(
        future: DBProvider.db.getAllBookmarks(),
        builder: (context, AsyncSnapshot<List<BookmarkModel>> snapshot) {
          if (snapshot.hasData) {
            return Container(
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 80,
                      color: Colors.greenAccent,
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Bookmarks",
                        style: TextStyle(color: Colors.white, fontSize: 36),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height - 160,
                      child: ListView.builder(
                        itemCount: snapshot.data.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              BlocProvider.of<MainCubit>(context).toBookmarksPage();
                            },
                            child: BookmarkCard(snapshot.data[index]),
                          );
                        },
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        BlocProvider.of<MainCubit>(context).toChangePage(1);
                      },
                      child: Container(
                        height: 70,
                        width: double.infinity,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Text(
                          "Open shop",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25
                          ),
                        ),
                      ),
                    ),
                  ],
                ));
          } else {
            return CircularProgressIndicator();
          }
        }
    );
  }
}
