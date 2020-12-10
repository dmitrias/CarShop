import 'package:car_shop/src/models/advertisement_model.dart';
import 'package:car_shop/src/models/car_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:async';
import 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(InitialState());

  String baseUrl = "https://ab.onliner.by/sdapi/ab.api";

  Future<void> toShopScreen(int page) async {
    emit(WelcomeScreenState());
    Advertisement advertisement = await getAdvertisements(page);
    emit(ShopScreenState(advertisement));
  }

  Future<void> toChangePage(int page) async {
    Advertisement advertisement = await getAdvertisements(page);
    emit(ShopScreenState(advertisement));
  }

  Future<void> toCarModelPage(int id, int page) async {
    Car car = await getCar(id);
    emit(CarModelScreenState(car, page));
  }

  Future<void> toBookmarksPage() async {
    emit(BookmarksScreenState());
  }

  Future<Car> getCar(int id) async{
    Response response;
    Car car;
    Dio dio = new Dio();
    dio.options.headers["Accept"] = "application/json";
    dio.options.headers["content-type"] = "application/json";
    response = await dio.get('$baseUrl/vehicles/$id');
    if(response.statusCode == 200) {
      car = Car.fromJson(response.data);
    } else {
      print("Invalid data");
    }
    return car ?? new Car();
  }

  Future<Advertisement> getAdvertisements(int page) async {
    Response response;
    Advertisement advertisement;
    Dio dio = new Dio();
    dio.options.headers["Accept"] = "application/json";
    dio.options.headers["content-type"] = "application/json";
    response = await dio.get('$baseUrl/search/vehicles', queryParameters: {"page": page, "extended": true, "limit": 10});
    if(response.statusCode == 200) {
      advertisement = Advertisement.fromJson(response.data);
    } else {
      print("Invalid data");
    }
    return advertisement ?? new Advertisement();
  }
}
