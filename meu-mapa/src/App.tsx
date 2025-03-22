import React, { useState } from "react";
import MapComponent from "./components/MapComponent";
import "./App.css"; // Importando estilos para organizar o layout

const biomas = {
  "Amazônia": { latitude: -3.4653, longitude: -62.2159 },
  "Cerrado": { latitude: -15.8267, longitude: -47.9218 },
  "Caatinga": { latitude: -8.8137, longitude: -37.6321 },
  "Pantanal": { latitude: -16.5654, longitude: -57.0285 },
  "Mata Atlântica": { latitude: -22.9035, longitude: -43.2096 },
  "Pampa": { latitude: -30.0346, longitude: -51.2177 }
};

const App: React.FC = () => {
  const [biomaSelecionado, setBiomaSelecionado] = useState<keyof typeof biomas>("Amazônia");

  return (
    <div className="container">
      {/* Sidebar de Filtros */}
      <div className="sidebar">
        <h2>Filtros</h2>
        <label>Escolha um bioma:</label>
        <select value={biomaSelecionado} onChange={(e) => setBiomaSelecionado(e.target.value as keyof typeof biomas)}>
          {Object.keys(biomas).map((bioma) => (
            <option key={bioma} value={bioma}>{bioma}</option>
          ))}
        </select>
      </div>

      {/* Mapa na direita */}
      <div className="map-container">
        <MapComponent
          latitude={biomas[biomaSelecionado].latitude}
          longitude={biomas[biomaSelecionado].longitude}
          bioma={biomaSelecionado}
        />
      </div>
    </div>
  );
};

export default App;
