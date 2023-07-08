enum Days { Sunday, Monday, Tuesday }

void main() {
  var oddNumbers = [1, 3, 5, 7];
  var evenNumbers = [2, 4, 6, 8, 10];

  // List.from(LIST) = copy constructor
  // Final can edit (array) but not reassign
  final numbers = List.from(oddNumbers);

  numbers.add(11);
  print(numbers);
  print(oddNumbers);

  // String Interpolation
  var name = "Ali";
  var score = 85.00;
  print("His name is $name");
  print("Result is ${testResult(score)}");

  // Enum
  print(Days.values);
  var today = Days.Monday;
  print("Index for ${today.name} : ${today.index}");

  // Loop Test
  // for (int i = 0; i < 5; i++) {
  //   if (i >= 4) break;
  //   print(i);
  // }

  // for (int i = 0; i < 5; i++) {
  //   if ((i % 2) == 1) continue;
  //   print(i);
  // }

  // List
  var list = [10, 20, 30, 40];
  list.insert(2, 99);
  list.add(101);
  list.removeAt(1);
  print(list);

  // Set
  var set1 = {'car', 'plane'};
  var set2 = {'car', 'bus'};
  var set3 = set1.intersection(set2);
  var set4 = set1.union(set2);
  print(set3);
  print(set4);

  // foreach, reduce
  var numbers2 = [999, 3, 6, 7, 9, 11];
  // numbers2.forEach(callback);
  var total2 = numbers2.reduce((sum, item) => sum + item);
  print(total2);

  // Generics
  var additionTest = Addition(19.2, 0.1);
  print(additionTest.add);

  // Arguments Test
  print(posArea(5.0, 4.0));
  print(namedArea(width: 5.0, height: 2.0));

  // Class Test
  var circle = Circle(2, "Blue");
  print(circle.area);

  var rect = Rectangle(width: 20, height: 50, color: "blue");
  print(rect.area);

  var sq = Rectangle.square(12.0)..color = "blue";
  print(sq.color);
}

class Addition<T> {
  T? first;
  T? second;

  Addition(T f, T s) {
    this.first = f;
    this.second = s;
  }

  T get add => (first as dynamic) + (second as dynamic);
}

String testResult(score) {
  return score >= 80 ? "Pass" : "Failed";
}

void callback(int i) {
  print(i);
}

double posArea([double width = 1, double height = 1]) => width * height;
double namedArea({required double width, double height = 1}) => width * height;

abstract class Shape {
  String color;
  Shape([this.color = "Red"]);
  void draw() => print('Painted in $color');
  double get area; // Not defined
}

class Circle extends Shape {
  double _radius;
  Circle(this._radius, String color) : super(color);
  double get radius => _radius;
  set radius(double value) => _radius = value;

  @override
  double get area => 3.142 * _radius * _radius;
}

class Rectangle extends Shape {
  double height;
  double width;

  Rectangle({this.width = 1, this.height = 1, String color = "Red"})
      : super(color);
  Rectangle.square(double size)
      : this(width: size, height: size, color: 'White');

  @override
  double get area => height * width;
}
