class Person {
  Person({required this.name, required this.age, required this.job});
  String name;
  int age;
  String job;
}

List<Person> data = [
  Person(name: "ก้อง", age: 30, job: "หมอ"),
  Person(name: "โจโจ้", age: 25, job: "ครู"),
  Person(name: "เจน", age: 28, job: "พยาบาล"),
  Person(name: "ชาลี", age: 30, job: "ตำรวจ"),
];
