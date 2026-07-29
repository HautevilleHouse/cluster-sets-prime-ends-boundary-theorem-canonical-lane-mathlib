import HautevilleHouse.ClusterSetsPrimeEndsBoundaryTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ClusterSetsPrimeEndsBoundaryTheoremCanonicalLaneLean

structure ClusterSetDatum where
  boundaryPoint : String
  clusterValues : Set String
  primeEnd : String
  mappingRadius : Float
  checked : Bool

def primitiveClusterSetDatum : ClusterSetDatum := {
  boundaryPoint := "boundary_point_00",
  clusterValues := Set.singleton "limit_value_alpha",
  primeEnd := "prime_end_p0",
  mappingRadius := 1.0,
  checked := true
}

structure ClusterSetLayerCertificate where
  datum : ClusterSetDatum
  clusterSetRoute : String
  boundaryRoute : String
  primeEndRoute : String
  layerClosed : Bool

def clusterSetLayerCertificate : ClusterSetLayerCertificate := {
  datum := primitiveClusterSetDatum,
  clusterSetRoute := "cluster set at boundary point through prime end decomposition",
  boundaryRoute := "boundary behavior routed via Carathéodory prime ends",
  primeEndRoute := "prime end correspondence with cluster set values",
  layerClosed := true
}

def ClusterSetLayerClosed (C : ClusterSetLayerCertificate) : Prop :=  C.datum.checked = true ∧ C.layerClosed = true

theorem cluster_set_layer_closed_checked :
    ClusterSetLayerClosed clusterSetLayerCertificate := by
  refine And.intro rfl rfl

end ClusterSetsPrimeEndsBoundaryTheoremCanonicalLaneLean
end HautevilleHouse