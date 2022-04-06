

class Note {
  
}



// class ForecastWeatherController
//     extends StateNotifier<AsyncValue<ForecastData>> {
//   ForecastWeatherController(
//     this._weatherRepository, {
//     required this.city,
//   }) : super(const AsyncValue.loading()) {
//     getWeatherForecast(city: city);
//   }

//   final HttpWeatherRepository _weatherRepository;
//   final String city;

//   Future<void> getWeatherForecast({required String city}) async {
//     try {
//       state = const AsyncValue.loading();
//       final weatherForecast = await _weatherRepository.getForecast(city);
//       state = AsyncValue.data(ForecastData.from(weatherForecast));
//     } catch (e) {
//       print(e);
//     }
//   }
// }

// final forecastWeatherControllerProvider = StateNotifierProvider.autoDispose<
//     ForecastWeatherController, AsyncValue<ForecastData>>(((ref) {
//   final city = ref.watch(cityProvider);
//   final weatherRepository = ref.watch(weatherRepositoryProvider);
//   return ForecastWeatherController(weatherRepository, city: city);
// }));
