import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineSpatialEpidemiologyTheoremCanonicalLaneLean

structure SurvivalAnalysisPackage where
  hazardFunction : Type u
  survivalFunction : Type v
  censoringIndicator : Prop
  proportionalHazards : Prop
  coxModelFitted : Prop
  kaplanMeierEstimator : Prop
  logRankTest : Prop

def SurvivalAnalysisEvidence (S : SurvivalAnalysisPackage) where
  censoringIndicatorClosed : S.censoringIndicator
  proportionalHazardsClosed : S.proportionalHazards
  coxModelFittedClosed : S.coxModelFitted
  kaplanMeierEstimatorClosed : S.kaplanMeierEstimator
  logRankTestClosed : S.logRankTest

def SurvivalAnalysisClosed (S : SurvivalAnalysisPackage) : Prop :=
  S.censoringIndicator ∧ S.proportionalHazards ∧ S.coxModelFitted ∧
  S.kaplanMeierEstimator ∧ S.logRankTest

theorem survival_analysis_closed_from_evidence
    (S : SurvivalAnalysisPackage) (E : SurvivalAnalysisEvidence S) :
    SurvivalAnalysisClosed S :=
  And.intro E.censoringIndicatorClosed
    (And.intro E.proportionalHazardsClosed
      (And.intro E.coxModelFittedClosed
        (And.intro E.kaplanMeierEstimatorClosed E.logRankTestClosed)))

end MedicineSpatialEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse