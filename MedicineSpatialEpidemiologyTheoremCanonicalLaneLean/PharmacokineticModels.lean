import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineSpatialEpidemiologyTheoremCanonicalLaneLean

structure PharmacokineticModelsPackage where
  absorptionModel : Prop
  distributionVolume : Prop
  eliminationRate : Prop
  bioavailability : Prop
  compartmentConcentrations : Prop

structure PharmacokineticModelsEvidence (P : PharmacokineticModelsPackage) where
  absorptionModelClosed : P.absorptionModel
  distributionVolumeClosed : P.distributionVolume
  eliminationRateClosed : P.eliminationRate
  bioavailabilityClosed : P.bioavailability
  compartmentConcentrationsClosed : P.compartmentConcentrations

def PharmacokineticModelsClosed (P : PharmacokineticModelsPackage) : Prop :=
  P.absorptionModel ∧ P.distributionVolume ∧ P.eliminationRate ∧ P.bioavailability ∧ P.compartmentConcentrations

theorem pharmacokinetic_models_closed_from_evidence (P : PharmacokineticModelsPackage) (E : PharmacokineticModelsEvidence P) : PharmacokineticModelsClosed P := by
  exact And.intro E.absorptionModelClosed (And.intro E.distributionVolumeClosed (And.intro E.eliminationRateClosed (And.intro E.bioavailabilityClosed E.compartmentConcentrationsClosed)))

end MedicineSpatialEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse
