part of 'report_cubit.dart';

@freezed
class ReportState with _$ReportState {
  const factory ReportState.failed({required AlertModel alert}) = _ReportStateFailed;

  const factory ReportState.loading() = _ReportLoadingState;

  const factory ReportState.success({
    required ReportResponse response,
  }) = _ReportStateSuccess;

  const factory ReportState.refresh() = _ReportStateRefresh;

}
