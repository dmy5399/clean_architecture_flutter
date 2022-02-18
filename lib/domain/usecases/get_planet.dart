import 'package:clean_architecture/core/errors/failure.dart';
import 'package:clean_architecture/core/usecases/usecase.dart';
import 'package:clean_architecture/domain/entities/planet_entity.dart';
import 'package:clean_architecture/domain/repositories/planet_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class GetPlanet extends UseCase<PlanetEntity, GetPlanetParams> {
  final PlanetRepository repository;

  GetPlanet(this.repository);

  @override
  Future<Either<Failure, PlanetEntity>> call(GetPlanetParams params) async {
    return await repository.get(params.id);
  }
}

class GetPlanetParams extends Equatable {
  int id;

  GetPlanetParams({
    required this.id
  });

  @override
  List<Object?> get props => [id];
}