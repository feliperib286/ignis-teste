import { MapContainer, TileLayer, Marker, Popup, GeoJSON } from "react-leaflet";
import "leaflet/dist/leaflet.css";
import L from "leaflet";
import { FeatureCollection } from "geojson";
import geojsonData from "../biomas.json"; // Importando o JSON dos biomas

// Ícone do marcador
import markerIcon from "leaflet/dist/images/marker-icon.png";
import markerShadow from "leaflet/dist/images/marker-shadow.png";

// Converte os dados do JSON para o tipo correto
const geojsonTyped: FeatureCollection = geojsonData as FeatureCollection;

// Configuração do ícone do marcador
const customIcon = new L.Icon({
  iconUrl: markerIcon,
  shadowUrl: markerShadow,
  iconSize: [25, 41],
  iconAnchor: [12, 41],
  popupAnchor: [1, -34],
});

// Tipagem das props
interface MapProps {
  latitude: number;
  longitude: number;
  bioma: string;
}

// Limites do Brasil
const brasilBounds: L.LatLngBoundsExpression = [
  [-34.0, -74.0],
  [5.3, -32.4],
];

const MapComponent: React.FC<MapProps> = ({ latitude, longitude, bioma }) => {
  // Função para estilizar os polígonos dos biomas
  const style = (feature: any) => {
    return {
      fillColor: feature.properties.nome === bioma ? "#4CAF50" : "#D3D3D3",
      weight: 2,
      opacity: 1,
      color: "#000",
      fillOpacity: 0.5,
    };
  };

  return (
    <MapContainer
      center={[latitude, longitude]}
      zoom={5}
      minZoom={4}
      maxZoom={10}
      style={{ height: "500px", width: "100%" }}
      maxBounds={brasilBounds}
      maxBoundsViscosity={1.0}
    >
      <TileLayer url="https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png" />

      {/* Polígonos dos biomas */}
      <GeoJSON data={geojsonTyped} style={style} />

      {/* Marcador para o bioma */}
      <Marker position={[latitude, longitude]} icon={customIcon}>
        <Popup>Você está no bioma {bioma}! 🌿</Popup>
      </Marker>
    </MapContainer>
  );
};

export default MapComponent;
