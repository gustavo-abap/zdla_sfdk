@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Basic - Feedback'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_TBZDLA_SFDK_001
  as select from ztb_zdla_sfdk_01
{
  key feedback_id     as FeedbackId,
      feedback_text   as FeedbackText,
      sentiment       as Sentiment,
      score           as Score,
      created_at      as CreatedAt,
      created_by      as CreatedBy,
      last_changed_at as LastChangedAt
}
