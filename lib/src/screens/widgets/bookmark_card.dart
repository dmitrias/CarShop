import 'package:car_shop/src/Database/database.dart';
import 'package:car_shop/src/blocs/main_bloc/main_cubit.dart';
import 'package:car_shop/src/models/bookmark_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookmarkCard extends StatelessWidget {
  BookmarkModel bookmark;

  BookmarkCard(this.bookmark);

  List<Widget> photos(BookmarkModel bookmark) {
    List<Widget> listPhotos = List();

    listPhotos.add(ClipRRect(borderRadius: BorderRadius.circular(5),
      child: Image.network(bookmark.imageUrl),));
    return listPhotos;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Card(
        shadowColor: Colors.greenAccent,
        elevation: 3,
        child: InkWell(
          onTap: () {
            BlocProvider.of<MainCubit>(context).toCarModelPage(
                bookmark.id,
                1);
          },
          child: Row(
            children: [
              Container(
                height: 80,
                width: 80,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: photos(bookmark),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width-160,
                child: Text(bookmark.name, style: TextStyle(fontSize: 20),),
              ),
              InkWell(
                onTap: () {
                     DBProvider.db.deleteClient(bookmark.id);

                  },
                child: Text ('X',style: TextStyle(fontSize: 20, color: Colors.red))
                ),
            ],
          ),
        ),
      ),
    );
  }
}
