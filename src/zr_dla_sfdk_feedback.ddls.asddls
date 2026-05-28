@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Composite - Feedback'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZR_DLA_SFDK_FEEDBACK
  as select from ZI_TBZDLA_SFDK_001
  association [1..1] to ZI_TBZDLA_SFDK_USERS as _Users on $projection.CreatedBy = _Users.BusinessName
{
  key FeedbackId,
      FeedbackText,
      Sentiment,
      Score,
      CreatedAt,
      CreatedBy,
      LastChangedAt,
      
      _Users
}
