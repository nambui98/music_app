import 'package:mocktail/mocktail.dart';
import 'package:singapore_mobile_networks/data/datasources/local/data_manager.dart';
import 'package:singapore_mobile_networks/data/datasources/remote/gov_api.dart';
import 'package:singapore_mobile_networks/data/models/data_store_model.dart';
import 'package:singapore_mobile_networks/presentation/features/main/home/bloc/home_bloc.dart';
import 'package:singapore_mobile_networks/presentation/features/main/home/interactor/home_interactor.dart';
import 'package:singapore_mobile_networks/presentation/features/main/home/interactor/home_repository.dart';

part 'gov_store.dart';

class DataManagerMock extends Mock implements DataManager {}

class GovApiMock extends Mock implements GovApi {}

class HomeBlocMock extends Mock implements HomeBloc {}

class HomInteractorMock extends Mock implements HomeInteractor {}

class HomeRepositoryMock extends Mock implements HomeRepository {}
