import 'package:car_shop/src/Database/database.dart';
import 'package:car_shop/src/blocs/main_bloc/main_cubit.dart';
import 'package:car_shop/src/models/bookmark_model.dart';
import 'package:car_shop/src/models/car_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarModelScreen extends StatefulWidget {

  Car car;

  int page;

  CarModelScreen(this.car, this.page);
  @override
  _CarModelScreenState createState() => _CarModelScreenState();
}

class _CarModelScreenState extends State<CarModelScreen> {

  Car get car => widget.car;
  int get page => widget.page;

  List<Widget> photos(Car car) {
    List<Widget> listPhotos = List();
    car.images.forEach((element) {
      listPhotos.add(ClipRRect(borderRadius: BorderRadius.circular(5), child: Image.network(element.the380X240),));
    });
    return listPhotos;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 40, left: 10, right: 10),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                car.title,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 240,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: photos(car),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(car.description ?? '', style: TextStyle(fontSize: 20),),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text("year: ${car.specs.year}", style: TextStyle(fontSize: 16),),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text("${car.specs.odometer.value} ${car.specs.odometer.unit}"),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(car.location.city.name, style: TextStyle(fontSize: 18),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  margin: EdgeInsets.all(15),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(7)
                  ),
                  child: Text("${car.price.converted.byn.amount} BYN", style: TextStyle(color: Colors.white, fontSize: 18),),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30,),
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  alignment: Alignment.center,
                  child: Text("${car.price.converted.usd.amount} USD", style: TextStyle(color: Colors.black.withOpacity(0.5), fontSize: 18),),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30,),
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  alignment: Alignment.center,
                  child: Text("${car.price.converted.eur.amount} EUR", style: TextStyle(color: Colors.black.withOpacity(0.5), fontSize: 18),),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),

            Container(
              alignment: Alignment.center,
              child: Text(car.seller.phones.first, style: TextStyle(color: Colors.black.withOpacity(1), fontSize: 24),),
            ),

            InkWell(
              onTap: () {
                BookmarkModel bookmark = BookmarkModel(
                    id: car.id,
                    imageUrl: car.images.first.the80X80,
                    name: car.title);
                DBProvider.db.newBookmark(bookmark);
              },
              child: Container(
                height: 40,
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.indigoAccent,
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  "Add to bookmarks",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                BlocProvider.of<MainCubit>(context).toChangePage(page);
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
                  "Back to shop",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
