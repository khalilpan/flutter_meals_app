# meals_app

Passing data between different screens using constructors and using series of widgets and some fFlutter concepts(just for learn) in this app:

SwitchListTile()
Divider()
ClipRRect()
InkWell ()
GridView()
LayoutBuilder()
Container()
GestureDetector()
showDatePicker()
CircleAvatar()
ListTile()
Expanded()
FractionallySizedBox()
FittedBox()
Flexible()
Stack()
SizedBox()
SingleChildScrollView()
FlatButton()
TextField()
Text()
center()


Navigator.of(context).popAndPushNamed()
Navigator.of(context).pop()
Navigator.of(context).pushReplacementNamed('/')


Drawer()
BottomNavigationBar()
BottomNavigationBarItem()
onUnknownRoute()
onGenerateRoute()
routes()

App lifeCycless :
initState()
didChangeDependencies()
didChangeAppLifecycleState()
dispose()

Widget lifeCycles :
didUpdateWidget()
dispose()
initState()


Platform.isIOS
MediaQuery.of(context).viewInsets
MediaQuery.of(context).viewInsets.bottom
MediaQuery.of(context).orientation
appBar.preferredSize.height
MediaQuery.of(context).size.height

ListView()
ListView.builder()

Enabling portrait mode:
WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  
  

**Categories Screen** :
![Categories](https://user-images.githubusercontent.com/40691961/121061931-deb18900-c79a-11eb-96df-6e5e12e407ab.png)

**Category Meal Screen**:
![CategoryMealScreen](https://user-images.githubusercontent.com/40691961/121062011-f5f07680-c79a-11eb-8774-6871b33f53b9.png)

**Drawer Menu**:
![Drawer Menu](https://user-images.githubusercontent.com/40691961/121062099-13bddb80-c79b-11eb-9f82-75801d8fd0a6.png)

**Favorites**:
![Favorites](https://user-images.githubusercontent.com/40691961/121062127-1a4c5300-c79b-11eb-8105-5bec54aa6d9e.png)

**Filters**:
![Filters](https://user-images.githubusercontent.com/40691961/121062160-220bf780-c79b-11eb-937c-c797fd36ad81.png)

**Meal Screen**:
![MealScreen](https://user-images.githubusercontent.com/40691961/121062194-2a643280-c79b-11eb-9fcf-b821d8e4d1fe.png)


## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
