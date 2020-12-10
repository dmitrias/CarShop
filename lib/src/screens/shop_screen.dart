import 'package:car_shop/src/blocs/main_bloc/main_cubit.dart';
import 'package:car_shop/src/models/advertisement_model.dart';
import 'package:car_shop/src/screens/widgets/car_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShopScreen extends StatefulWidget {
  Advertisement advertisement;

  ShopScreen(this.advertisement);

  @override
  _ShopScreenState createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  Advertisement get advertisement => widget.advertisement;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 2,
              height: 80,
              color: Colors.greenAccent,
              padding: EdgeInsets.all(10),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Cars",
                style: TextStyle(color: Colors.white, fontSize: 36),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 2,
              height: 80,
              color: Colors.greenAccent,
              padding: EdgeInsets.all(10),
              alignment: Alignment.bottomRight,
              child: InkWell(
                onTap: () {
                  BlocProvider.of<MainCubit>(context).toBookmarksPage();
                },
                child: Text(
                  "BM",
                  style: TextStyle(color: Colors.white, fontSize: 36),
                ),
              ),
            )
          ],
        ),
        Container(
          height: MediaQuery.of(context).size.height - 160,
          child: ListView.builder(
            itemCount: advertisement.adverts.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  BlocProvider.of<MainCubit>(context).toCarModelPage(
                      advertisement.adverts[index].id,
                      advertisement.page.current);
                },
                child: CarCard(advertisement.adverts[index]),
              );
            },
          ),
        ),
        Container(
          height: 80,
          child: Row(
            children: [
              Expanded(
                child: InkWell(
                    onTap: () {
                      if (advertisement.page.current - 1 > 0) {
                        BlocProvider.of<MainCubit>(context)
                            .toChangePage(advertisement.page.current - 1);
                      }
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.greenAccent),
                      child: Text(
                        "Previous Page",
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                    )),
              ),
              Container(
                width: 80,
                alignment: Alignment.center,
                child: Text(
                  "${advertisement.page.current}",
                  style: TextStyle(fontSize: 24),
                ),
              ),
              Expanded(
                child: InkWell(
                    onTap: () {
                      BlocProvider.of<MainCubit>(context)
                          .toChangePage(advertisement.page.current + 1);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.greenAccent),
                      child: Text(
                        "Next Page",
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                    )),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
