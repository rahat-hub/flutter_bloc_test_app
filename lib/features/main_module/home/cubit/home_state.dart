

import 'package:equatable/equatable.dart';

import '../model/home_menu_model.dart';

class HomeState extends Equatable {
  final bool isLoading;

  final String searchText;

  final int selectedBottomIndex;

  final int notificationCount;

  final List<HomeMenuModel> menus;

  final String? errorMessage;

  const HomeState({
    this.isLoading = false,
    this.searchText = '',
    this.selectedBottomIndex = 0,
    this.notificationCount = 0,
    this.menus = const [],
    this.errorMessage,
  });

  HomeState copyWith({
    bool? isLoading,
    String? searchText,
    int? selectedBottomIndex,
    int? notificationCount,
    List<HomeMenuModel>? menus,
    String? errorMessage,
  }) {
    return HomeState(
      isLoading: isLoading ?? this.isLoading,
      searchText: searchText ?? this.searchText,
      selectedBottomIndex:
      selectedBottomIndex ?? this.selectedBottomIndex,
      notificationCount:
      notificationCount ?? this.notificationCount,
      menus: menus ?? this.menus,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [
    isLoading,
    searchText,
    selectedBottomIndex,
    notificationCount,
    menus,
    errorMessage,
  ];
}