# flutter_getx_master

GetX를 완벽히 다루기 위한 연습용 프로젝트입니다.

## 학습 목표

- [ ] 단순형 상태 관리(`GetBuilder`)
- [ ] 반응형 상태 관리(`Rx`)
- [ ] 의존성 관리(`bindings`, 전역 의존성, 지역 의존성)
- [ ] 라우팅 관리(`Get.*named` 관련)
- [ ] 애니메이션(`GetX`는 아니지만)
- [ ] 각종 부가 기능
  - [ ] 다국어 지원
  - [ ] 테마 지원

## 학습 프로젝트

- [ ] 회원 가입, 로그인(`firebase`) => 상용 앱 스타일로 애니메이션, 폼 자연스럽게 입력 등
- [ ] 자동 로그인(`firebase`, `shared preferences`)
- [ ] MVVM 패턴(`1 controller` - `1 view`)
- [ ] 서버로부터 많은 데이터 불러와서 무한 스크롤
- [ ] 기본 상태관리(TODO)


## 프로젝트 구조

```bash
lib
├── bindings
│   └── initial_bindings.dart
├── controllers
│   ├── auth
│   │   ├── auth_controller.dart
│   │   ├── signin
│   │   │   └── signin_controller.dart
│   │   └── signup
│   │       └── signup_controller.dart
│   ├── home
│   │   ├── index_controller.dart
│   │   └── todo
│   │       └── todo_controller.dart
│   └── intro
│       └── splash_controller.dart
├── main.dart
├── models
│   └── member.dart
├── services
│   ├── auth_service.dart
│   └── home_service.dart
└── views
    ├── auth
    │   ├── signin
    │   │   └── signin_page.dart
    │   └── signup
    │       └── signup_page.dart
    ├── home
    │   ├── index_page.dart
    │   └── todo
    │       └── todo_page.dart
    └── intro
        └── splash_page.dart
```

- 기본적으로 위와 같은 디렉토리 구조를 가지며, 주요 디렉토리는 다음과 같음.
- `bindings` : 서비스 및 컨트롤러 일괄 등록을 위한 `initial_bindings`, `Get.put`과 `Get.lazyPut` 사용
- `controllers` : 로직 및 데이터, 상태 관리를 위한 컨트롤러로, views와 동일한 파일 및 폴더 구조를 가짐(1대1)
- `views` : 화면 UI를 구현하는 뷰로, controllers와 동일한 파일 및 폴더 구조를 가짐(1대1)
- `services` : 외부와 통신 등의 기능을 위한 서비스로, 도메인마다 1개씩 묶어서 작성(파일 많아질 필요 없음)
- `models` : 모델
- 앱 전체는 도메인으로 나눠서 구성(`auth`, `home`, `intro`)
- `controllers`와 `views`는 각 도메인 내 하위 도메인으로 나눠서 구성(`signin`, `signup`, `todo`)