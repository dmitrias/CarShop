import 'package:car_shop/src/models/advertisement_model.dart';
import 'package:flutter/material.dart';

class CarCard extends StatelessWidget {
  Advert advert;

  CarCard(this.advert);

  List<Widget> photos(Advert advert) {
    List<Widget> listPhotos = List();
    if(advert.images.length>3) {
      listPhotos.add(ClipRRect(borderRadius: BorderRadius.circular(5),
        child: Image.network(advert.images[0].the380X240),));
      listPhotos.add(ClipRRect(borderRadius: BorderRadius.circular(5),
        child: Image.network(advert.images[1].the380X240),));
      listPhotos.add(ClipRRect(borderRadius: BorderRadius.circular(5),
        child: Image.network(advert.images[2].the380X240),));
      listPhotos.add(ClipRRect(borderRadius: BorderRadius.circular(5),
        child: Image.network(advert.images[3].the380X240),));
    }else if(advert.images.length>0){
      advert.images.forEach((element) {
        listPhotos.add(ClipRRect(borderRadius: BorderRadius.circular(5),
          child: Image.network(element.the380X240),));
      });
    }
    return listPhotos;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Card(
        shadowColor: Colors.greenAccent,
        elevation: 3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 240,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: photos(advert),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(advert.title, style: TextStyle(fontSize: 20),),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text("${advert.specs.year}", style: TextStyle(fontSize: 16),),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text("${advert.specs.odometer.value} ${advert.specs.odometer.unit}"),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(advert.location.city.name, style: TextStyle(fontSize: 18),),
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
                  child: Text("${advert.price.converted.byn.amount} BYN", style: TextStyle(color: Colors.white, fontSize: 18),),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
