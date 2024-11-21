class Task {
  String id;
  String title;
  bool isCompleted;
  String userId;

  Task({
    required this.id,
    required this.title,
    this.isCompleted = false,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'isCompleted': isCompleted,
      'userId': userId,
    };
  }

  factory Task.fromMap(Map<String, dynamic> map, String documentId) {
    return Task(
      id: documentId,
      title: map['title'],
      isCompleted: map['isCompleted'],
      userId: map['userId'],
    );
  }
}
