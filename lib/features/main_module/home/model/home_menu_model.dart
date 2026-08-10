
import 'package:equatable/equatable.dart';

// class HomeMenuModel extends Equatable {
//   final int id;
//
//   final String title;
//
//   final String icon;
//
//   final String route;
//
//   const HomeMenuModel({
//     required this.id,
//     required this.title,
//     required this.icon,
//     required this.route,
//   });
//
//   HomeMenuModel copyWith({
//     int? id,
//     String? title,
//     String? icon,
//     String? route,
//   }) {
//     return HomeMenuModel(
//       id: id ?? this.id,
//       title: title ?? this.title,
//       icon: icon ?? this.icon,
//       route: route ?? this.route,
//     );
//   }
//
//   @override
//   List<Object> get props => [
//     id,
//     title,
//     icon,
//     route,
//   ];
// }

class HomeMenuModel extends Equatable {
  final int id;
  final String title;
  final String icon;
  final String route;
  final bool isEnabled;
  final int sortOrder;

  const HomeMenuModel({
    required this.id,
    required this.title,
    required this.icon,
    required this.route,
    required this.isEnabled,
    required this.sortOrder,
  });

  @override
  List<Object> get props => [
    id,
    title,
    icon,
    route,
    isEnabled,
    sortOrder,
  ];
}