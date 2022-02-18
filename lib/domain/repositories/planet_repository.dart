import 'package:clean_architecture/core/errors/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:clean_architecture/domain/entities/planet_entity.dart';

abstract class PlanetRepository {
  Future<Either<Failure, List<PlanetEntity>>> getAll(int page);

  Future<Either<Failure, PlanetEntity>> get(int id);

}