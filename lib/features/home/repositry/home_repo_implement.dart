

import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/repositry/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import '../../../core/utility/api_service.dart';

class HomeRepoImp extends HomeRepo {
  final ApiService apiService;

  HomeRepoImp({required this.apiService});

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      // Fetch data from API
      var data = await apiService.get(
          endPoint: 'volumes?q=programming&filter=free-ebooks&orderBy=newest');
      // Initialize list of books
      List<BookModel> books = [];
      // Parse books from the response
      for (var item in data?['items']) {
        books.add(BookModel.fromJson(item));
      }
      return Right(books);
    } catch (e) {
      // Catch and handle server error
      if (e is DioException) {
        return Left(ServerFailure.DioException(e));
      } else {
        return Left(ServerFailure(errorMsg: 'Unknown error occurred'));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      List<BookModel> books = [];
      var data = await apiService.get(endPoint:'volumes?q=programming&filter=free-ebooks');

      if (data != null && data['items'] != null) { // Using null-aware operator to check if 'items' exists
        for (var item in data['items']) {
          books.add(BookModel.fromJson(item ?? {}));
        }
      }

      return Right(books);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.DioException(e));
      } else {
        return Left(ServerFailure(errorMsg: e.toString()));
      }
    }
  }


}
