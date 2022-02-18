import 'package:clean_architecture/core/errors/failure.dart';
import 'package:clean_architecture/core/usecases/usecase.dart';
import 'package:clean_architecture/domain/entities/planet_entity.dart';
import 'package:clean_architecture/domain/repositories/planet_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class GetAllPlanets extends UseCase<List<PlanetEntity>, GetAllPlanetsParams> {
  final PlanetRepository repository;

  GetAllPlanets(this.repository);

  @override
  Future<Either<Failure, List<PlanetEntity>>> call(GetAllPlanetsParams params) async {
    return await repository.getAll(params.page);
  }
}

class GetAllPlanetsParams extends Equatable {
  final int page;

  const GetAllPlanetsParams({
   required this.page
  });

  @override
  List<Object?> get props => [page];
}