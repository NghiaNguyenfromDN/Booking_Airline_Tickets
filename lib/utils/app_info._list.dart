import 'dart:math';

import 'package:flutter/cupertino.dart';

List<Map<String, dynamic>> hotelList = [
  {
    'image': 'hotel1.jpg',
    'place': 'Hotel Tourane',
    'destination': 'Vũng Tàu',
    'price': 25
  },
  {
    'image': 'hotel3.jpg',
    'place': 'Resort Amanda ',
    'destination': 'Phan Thiết',
    'price': 40
  },
  {
    'image': 'hotel4.jpg',
    'place': 'Villa Sen ',
    'destination': 'Cần Thơ',
    'price': 68
  },
];

List<Map<String, dynamic>> ticketList = [
  {
    'from': {'code': "VT", 'name': "Vũng Tàu"},
    'to': {'code': "PT", 'name': "Phan Thiết"},
    'flying_time': "8H 30M",
    'date': "1 MAY",
    'departure_time': "08:00AM",
    'number': "23"
  },
  {
    'from': {'code': "HY", 'name': "Hưng Yên"},
    'to': {'code': "CT", 'name': "Cần Thơ"},
    'flying_time': "4H 20M",
    'date': "1 MAY",
    'departure_time': "09:00 AM",
    'number': "45"
  },
  {
    'from': {'code': "ĐN", 'name': "Đà Nẵng"},
    'to': {'code': "QN", 'name': "Qui Nhơn"},
    'flying_time': "9H",
    'date': "1 JAN",
    'departure_time': "04:00AM",
    'number': "30"
  },
  
];

final List<Movie> initialData = List.generate(
    20,
    (index) => Movie(
        title: "From $index", duration: "${Random().nextInt(100) + .000} VND"));

class MovieProvider with ChangeNotifier {
  final List<Movie> _movies = initialData;
  List<Movie> get movies => _movies;

  final List<Movie> _myList = [];
  List<Movie> get myList => _myList;

  void addToList(Movie movie) {
    _myList.add(movie);
    notifyListeners();
  }

  void removeFromList(Movie movie) {
    _myList.remove(movie);
    notifyListeners();
  }
}

class Movie {
  final String title;
  final String? duration;

  Movie({required this.title, this.duration});
}
