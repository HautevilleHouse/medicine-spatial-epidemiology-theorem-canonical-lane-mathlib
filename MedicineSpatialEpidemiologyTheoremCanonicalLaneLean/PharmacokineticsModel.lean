import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineSpatialEpidemiologyTheoremCanonicalLaneLean

structure PharmacokineticsModelPackage where
  drugConcentration : Type u
  absorptionRate : Prop
  distributionVolume : Prop
  eliminationRate : Prop
  compartmentCount : Nat
  dosingRegimen : Prop
  clearanceRate : Prop

def PharmacokineticsModelEvidence (P : PharmacokineticsModelPackage) where
  absorptionRateClosed : P.absorptionRate
  distributionVolumeClosed : P.distributionVolume
  eliminationRateClosed : P.eliminationRate
  dosingRegimenClosed : P.dosingRegimen
  clearanceRateClosed : P.clearanceRate

def PharmacokineticsModelClosed (P : PharmacokineticsModelPackage) : Prop :=
  P.absorptionRate ∧ P.distributionVolume ∧ P.eliminationRate ∧
  P.dosingRegimen ∧ P.clearanceRate

theorem pharmacokinetics_model_closed_from_evidence
    (P : PharmacokineticsModelPackage) (E : PharmacokineticsModelEvidence P) :
    PharmacokineticsModelClosed P :=
  And.intro E.absorptionRateClosed
    (And.intro E.distributionVolumeClosed
      (And.intro E.eliminationRateClosed
        (And.intro E.dosingRegimenClosed E.clearanceRateClosed)))

end MedicineSpatialEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse