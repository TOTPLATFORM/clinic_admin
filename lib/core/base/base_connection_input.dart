import 'package:equatable/equatable.dart';

class BaseConnectionInput extends Equatable {
  final String? filter;
  final String? sort;
  final int? after;
  final int? first;

  const BaseConnectionInput({
    this.filter,
    this.sort,
    this.after,
    this.first,
  });

  @override
  List<Object?> get props => [filter, sort, after, first];

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'filter': filter,
      'sort': sort,
      'after': after.toString(),
      'first': first,
    };
  }
}
