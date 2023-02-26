import 'package:app_land/models/promotion.dart';
import 'package:app_land/repositories/promotion_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'promotions_event.dart';
part 'promotions_state.dart';

class PromotionsBloc extends Bloc<PromotionsEvent, PromotionsState> {
  final PromotionRepository _promotionRepository;

  PromotionsBloc({required PromotionRepository promotionRepository})
      : _promotionRepository = promotionRepository,
        super(PromotionsLoading()) {
    on<LoadPromotions>(_mapLoadPromotionsToState);
    on<LoadPromotion>(_mapLoadPromotionById);
  }

  void _mapLoadPromotionsToState(
      LoadPromotions event, Emitter<PromotionsState> emit) async {
    emit(PromotionsLoading());

    try {
      final promotions = await _promotionRepository.getPromotions();
      emit(PromotionsLoaded(promotions: promotions));
    } catch (e) {
      emit(PromotionsError(message: 'Error loading promotions'));
    }
  }

  void _mapLoadPromotionById(
      LoadPromotion event, Emitter<PromotionsState> emit) async {
    emit(PromotionsLoading());
    try {
      final promotion =
          await _promotionRepository.getPromotionById(event.id.toString());
      emit(PromotionLoaded(promotion: promotion));
    } catch (e) {
      emit(PromotionsError(message: 'Error loading promotion'));
    }
  }
}