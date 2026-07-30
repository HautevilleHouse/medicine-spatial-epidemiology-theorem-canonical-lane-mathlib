import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineSpatialEpidemiologyTheoremCanonicalLaneLean

structure DiagnosticInferencePackage where
  testSensitivity : Prop
  testSpecificity : Prop
  diseasePrevalence : Prop
  positivePredictiveValue : Prop
  negativePredictiveValue : Prop
  likelihoodRatio : Prop
  bayesianUpdateRule : Prop

def DiagnosticInferenceEvidence (D : DiagnosticInferencePackage) where
  testSensitivityClosed : D.testSensitivity
  testSpecificityClosed : D.testSpecificity
  diseasePrevalenceClosed : D.diseasePrevalence
  positivePredictiveValueClosed : D.positivePredictiveValue
  negativePredictiveValueClosed : D.negativePredictiveValue
  likelihoodRatioClosed : D.likelihoodRatio
  bayesianUpdateRuleClosed : D.bayesianUpdateRule

def DiagnosticInferenceClosed (D : DiagnosticInferencePackage) : Prop :=
  D.testSensitivity ∧ D.testSpecificity ∧ D.diseasePrevalence ∧
  D.positivePredictiveValue ∧ D.negativePredictiveValue ∧
  D.likelihoodRatio ∧ D.bayesianUpdateRule

theorem diagnostic_inference_closed_from_evidence
    (D : DiagnosticInferencePackage) (E : DiagnosticInferenceEvidence D) :
    DiagnosticInferenceClosed D :=
  And.intro E.testSensitivityClosed
    (And.intro E.testSpecificityClosed
      (And.intro E.diseasePrevalenceClosed
        (And.intro E.positivePredictiveValueClosed
          (And.intro E.negativePredictiveValueClosed
            (And.intro E.likelihoodRatioClosed E.bayesianUpdateRuleClosed)))))

end MedicineSpatialEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse