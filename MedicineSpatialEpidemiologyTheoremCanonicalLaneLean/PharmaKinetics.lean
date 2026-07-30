import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineSpatialEpidemiologyTheoremCanonicalLaneLean

structure PharmaKineticsPackage where
  absorptionRate : Prop
  distributionVolume : Prop
  eliminationRate : Prop
  compartmentTransfer : Prop
  doseResponse : Prop

structure PharmaKineticsEvidence (P : PharmaKineticsPackage) where
  absorptionRateClosed : P.absorptionRate
  distributionVolumeClosed : P.distributionVolume
  eliminationRateClosed : P.eliminationRate
  compartmentTransferClosed : P.compartmentTransfer
  doseResponseClosed : P.doseResponse

def PharmaKineticsClosed (P : PharmaKineticsPackage) : Prop :=
  P.absorptionRate ∧ P.distributionVolume ∧ P.eliminationRate ∧ P.compartmentTransfer ∧ P.doseResponse

theorem pharma_kinetics_closed_from_evidence (P : PharmaKineticsPackage) (E : PharmaKineticsEvidence P) : PharmaKineticsClosed P := by
  exact And.intro E.absorptionRateClosed (And.intro E.distributionVolumeClosed (And.intro E.eliminationRateClosed (And.intro E.compartmentTransferClosed E.doseResponseClosed)))

end MedicineSpatialEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse
