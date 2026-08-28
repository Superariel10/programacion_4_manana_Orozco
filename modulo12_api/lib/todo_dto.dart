class TodoDto {
  final int id;
  final String nombre;
  final String title;
  final String email;
  final bool completed;

  const TodoDto({
    required this.id,
    required this.nombre,
    required this.email,
    required this.title,
    required this.completed,
  });

  factory TodoDto.fromJson(Map<String, dynamic> json) => TodoDto(
    id:        json['id']        as int,
    nombre:    json['nombre']    as String,
    email:     json['email']    as String,
    title:     json['title']     as String,
    completed: json['completed'] as bool,
  );
}