@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Basic Interface View forProject'
define view entity YI_ProjectM
  as select from YZA_T_PROJECT as Project
{
  key PROJID as ProjID,
  PROJNAME as Projname,
  ISPARENTPROJECT as Isparentproject,
  ISACTIVEPROJECT as Isactiveproject,
  @Semantics.user.createdBy: true
  LOCAL_CREATED_BY as LocalCreatedBy,
  @Semantics.systemDateTime.createdAt: true
  LOCAL_CREATED_AT as LocalCreatedAt,
  @Semantics.user.lastChangedBy: true
  LOCAL_LAST_CHANGED_BY as LocalLastChangedBy,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  LOCAL_LAST_CHANGED_AT as LocalLastChangedAt,
  @Semantics.systemDateTime.lastChangedAt: true
  LAST_CHANGED_AT as LastChangedAt
  
}
