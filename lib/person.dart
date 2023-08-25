class Person {
  String? name;
  double weight;
  double height;

  Person({this.name, this.height = 0, this.weight = 0});
  
  // GET
  getName(){
    return name;
  }

  getWeight(){
    return weight;
  }

  getHeight(){
    return height;
  }

  // SET
  void setName(String name){
    name = name;
  }

  void setWeight(double weight){
    weight = weight;
  }

  void setHeight(double height){
    height = height;
  }

  // OTHER METHOD
  toMap(){
    return {
      'name':name,
      'weight':weight,
      'height':height
    };
  }
}