import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineSpatialEpidemiologyTheoremCanonicalLaneLean

structure ReproductionNumberPackage where
  transmissionRate : ℝ
  durationInfectiousness : ℝ
  populationDensity : ℝ
  contactRate : ℝ
  basicReproNumber : ℝ
  formula : Prop

structure ReproductionNumberEvidence (R : ReproductionNumberPackage) where
  formulaClosed : R.formula

def ReproductionNumberClosed (R : ReproductionNumberPackage) : Prop :=
  R.formula

theorem reproduction_number_closed_from_evidence (R : ReproductionNumberPackage)
    (E : ReproductionNumberEvidence R) : ReproductionNumberClosed R :=
  E.formulaClosed

end MedicineSpatialEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse