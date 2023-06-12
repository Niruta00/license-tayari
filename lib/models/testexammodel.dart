class AutoModels {
  Categories? categories;
  List<Questions>? questions;
  String? message;

  AutoModels({this.categories, this.questions, this.message});

  AutoModels.fromJson(Map<String, dynamic> json) {
    categories = json['categories'] != null
        ? new Categories.fromJson(json['categories'])
        : null;
    if (json['questions'] != null) {
      questions = <Questions>[];
      json['questions'].forEach((v) {
        questions!.add(new Questions.fromJson(v));
      });
    }
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.categories != null) {
      data['categories'] = this.categories!.toJson();
    }
    if (this.questions != null) {
      data['questions'] = this.questions!.map((v) => v.toJson()).toList();
    }
    data['message'] = this.message;
    return data;
  }
}

class Categories {
  int? id;
  String? title;
  Null? description;
  String? icon;
  int? status;
  String? createdAt;
  String? updatedAt;

  Categories(
      {this.id,
      this.title,
      this.description,
      this.icon,
      this.status,
      this.createdAt,
      this.updatedAt});

  Categories.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    icon = json['icon'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['description'] = this.description;
    data['icon'] = this.icon;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class Questions {
  int? id;
  int? categoryId;
  String? title;
  Null? description;
  Null? imagePath;
  List<String>? options;
  int? correctOption;

  Questions(
      {this.id,
      this.categoryId,
      this.title,
      this.description,
      this.imagePath,
      this.options,
      this.correctOption});

  Questions.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    categoryId = json['category_id'];
    title = json['title'];
    description = json['description'];
    imagePath = json['image_path'];
    options = json['options'].cast<String>();
    correctOption = json['correct_option'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['category_id'] = this.categoryId;
    data['title'] = this.title;
    data['description'] = this.description;
    data['image_path'] = this.imagePath;
    data['options'] = this.options;
    data['correct_option'] = this.correctOption;
    return data;
  }
}