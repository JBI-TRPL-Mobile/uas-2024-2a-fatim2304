// message_model.dart
class Message {
  final String from;
  final String to;
  final String content;
  final DateTime timestamp;
  
  Message({required this.from, required this.to, required this.content, required this.timestamp});
  
 
  Map<String, dynamic> toJson() {
    return {
      'from': from,
      'to': to,
      'content': content,
      'timestamp': timestamp.toIso8601String(),
    };
  }
  

  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      from: json['from'],
      to: json['to'],
      content: json['content'],
      timestamp: DateTime.parse(json['timestamp']),
    );
  }
}
