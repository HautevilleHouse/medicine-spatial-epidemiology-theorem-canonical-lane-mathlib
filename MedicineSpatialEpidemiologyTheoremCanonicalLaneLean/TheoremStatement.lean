import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineSpatialEpidemiologyTheoremCanonicalLaneLean

structure MedicineSpatialEpidemiologySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure MedicineSpatialEpidemiologyAdmittedObject where
  space : MedicineSpatialEpidemiologySpace
  spatialEpidemiologyModel : Prop
  compartmentStructure : Prop
  transmissionDynamics : Prop
  inferenceProcedure : Prop
  conclusion : inferenceProcedure

def MedicineSpatialEpidemiologyWitnessClosed (O : MedicineSpatialEpidemiologyAdmittedObject) : Prop :=
  O.inferenceProcedure

end MedicineSpatialEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse
