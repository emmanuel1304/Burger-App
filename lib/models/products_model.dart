/* 
// Example Usage
Map<String, dynamic> map = jsonDecode(<myJSONString>);
var myRootNode = Root.fromJson(map);
*/ 
class Products {
    int? id;
    String? title;
    String? description;
    String? image1;
    String? image2;
    String? image3;
    String? image4;

    Products({this.id, this.title, this.description, this.image1, this.image2, this.image3, this.image4}); 

    Products.fromJson(Map<String, dynamic> json) {
        id = json['id'];
        title = json['title'];
        description = json['description'];
        image1 = json['image1'];
        image2 = json['image2'];
        image3 = json['image3'];
        image4 = json['image4'];
    }

}

