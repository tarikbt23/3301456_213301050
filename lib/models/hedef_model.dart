class HedefModel {
  final String? id;
  final String? title;
  final String? descripton;

  HedefModel(
      {this.id, this.title, this.descripton});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'descripton': descripton,
    };
  }

  HedefModel.fromFirestore(Map<String, dynamic> firestore)
      : id = firestore['id'],
        title = firestore['title'],
        descripton = firestore['descripton'];
}