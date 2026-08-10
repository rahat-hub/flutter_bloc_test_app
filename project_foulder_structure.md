# TMS Folder Structure

``` text
lib/
│
├── main.dart
│
├── app/
│   ├── app.dart
│   ├── app_routes.dart
│   ├── app_pages.dart
│   ├── bindings.dart
│   └── injector.dart
│
├── core/
│   ├── constants/
│   ├── network/
│   │   ├── dio_client.dart
│   │   ├── api_exception.dart
│   │   └── api_endpoints.dart
│   │
│   ├── theme/
│   │   ├── app_theme.dart
│   │   ├── colors.dart
│   │   └── text_theme.dart
│   │
│   ├── widgets/
│   ├── services/
│   ├── utils/
│   └── extensions/
│
├── features/
│   ├── auth/
│   ├── home/
│   ├── notification/
│   └── profile/
│
└── shared/
    ├── models/
    ├── enums/
    └── repository/
```
