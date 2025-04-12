CREATE TABLE Estados (
    id_estado INT PRIMARY KEY,
    estado VARCHAR(100)
);
INSERT INTO Estados (id_estado, estado) VALUES
(11, 'Rondônia'),
(12, 'Acre'),
(13, 'Amazonas'),
(14, 'Roraima'),
(15, 'Pará'),
(16, 'Amapá'),
(17, 'Tocantins'),
(21, 'Maranhão'),
(22, 'Piauí'),
(23, 'Ceará'),
(24, 'Rio Grande do Norte'),
(25, 'Paraíba'),
(26, 'Pernambuco'),
(27, 'Alagoas'),
(28, 'Sergipe'),
(29, 'Bahia'),
(31, 'Minas Gerais'),
(32, 'Espírito Santo'),
(33, 'Rio de Janeiro'),
(35, 'São Paulo'),
(41, 'Paraná'),
(42, 'Santa Catarina'),
(43, 'Rio Grande do Sul'),
(50, 'Mato Grosso do Sul'),
(51, 'Mato Grosso'),
(52, 'Goiás'),
(53, 'Distrito Federal');
select *from Estados

CREATE TABLE Bioma (
    id INTEGER PRIMARY KEY,
    bioma VARCHAR(100)
);
INSERT INTO Bioma (id, bioma) VALUES
(1, 'Amazônia'),
(2, 'Caatinga'),
(3, 'Cerrado'),
(4, 'Mata Atlântica'),
(5, 'Pampa'),
(6, 'Pantanal');
CREATE TABLE Foco_calor(
    id SERIAL PRIMARY KEY,
    data TIMESTAMP,
    geometria GEOMETRY(POINT, 4326),
    estado_id INTEGER,
    bioma_id INTEGER,
    risco_fogo DECIMAL(3, 2),
    dia_sem_chuva INTEGER,
    precipitacao DECIMAL(5, 2),
    frp DECIMAL(5, 1),
    FOREIGN KEY (estado_id) REFERENCES Estados(id_estado),
    FOREIGN KEY (bioma_id) REFERENCES Bioma(id)
);

INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-27 18:38:00', 11, 1, 0.2, 7, 0.0, 1719.2, ST_SetSRID(ST_MakePoint(-60.72897, 2.53022), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-27 18:38:00', 11, 1, 0.45, 8, 0.1, 403.5, ST_SetSRID(ST_MakePoint(-60.58513, 2.29151), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-27 18:38:00', 11, 1, 0.43, 8, 0.1, 401.9, ST_SetSRID(ST_MakePoint(-60.58642, 2.30033), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-27 18:38:00', 11, 1, 0.19, 7, 0.0, 323.6, ST_SetSRID(ST_MakePoint(-60.72768, 2.5214), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-27 18:38:00', 11, 1, 0.05, 6, 0.85, 249.6, ST_SetSRID(ST_MakePoint(-61.60957, 2.29996), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-27 18:38:00', 11, 1, 0.2, 7, 0.0, 205.6, ST_SetSRID(ST_MakePoint(-60.72016, 2.5315), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-24 18:19:00', 11, 1, 0.05, 4, 0.0, 187.0, ST_SetSRID(ST_MakePoint(-59.47889, 1.11434), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-22 18:38:00', 11, 1, 0.07, 2, 0.0, 181.0, ST_SetSRID(ST_MakePoint(-60.00476, 1.28022), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-29 18:19:00', 11, 1, 0.15, 11, 0.0, 177.4, ST_SetSRID(ST_MakePoint(-60.67663, 2.0854), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-29 18:17:00', 11, 1, 0.12, 8, 0.2, 177.4, ST_SetSRID(ST_MakePoint(-60.75414, 1.40547), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-24 18:19:00', 11, 1, 0.07, 4, 0.0, 149.3, ST_SetSRID(ST_MakePoint(-61.56177, 4.1012), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-27 18:38:00', 11, 1, 0.19, 7, 0.0, 145.1, ST_SetSRID(ST_MakePoint(-60.73777, 2.52894), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-23 19:19:00', 11, 1, 0.06, 3, 0.0, 127.9, ST_SetSRID(ST_MakePoint(-61.58919, 4.05199), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-29 18:19:00', 11, 1, 0.14, 10, 0.08, 122.5, ST_SetSRID(ST_MakePoint(-60.69081, 2.08327), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-22 18:38:00', 11, 1, 0.24, 2, 0.0, 121.4, ST_SetSRID(ST_MakePoint(-60.09711, 2.13473), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-29 18:17:00', 11, 1, 0.07, 2, 1.2, 120.1, ST_SetSRID(ST_MakePoint(-59.34462, 1.12624), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-24 18:19:00', 11, 1, 0.13, 3, 0.0, 102.2, ST_SetSRID(ST_MakePoint(-59.86242, 0.61904), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-29 18:17:00', 11, 1, 0.07, 2, 1.2, 93.7, ST_SetSRID(ST_MakePoint(-59.35091, 1.12494), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-27 18:38:00', 11, 1, 0.85, 8, 0.1, 90.1, ST_SetSRID(ST_MakePoint(-60.59525, 2.29905), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-24 18:19:00', 11, 1, 0.1, 4, 0.0, 89.8, ST_SetSRID(ST_MakePoint(-60.24087, 2.31438), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-27 18:38:00', 11, 1, 0.13, 7, 0.0, 80.5, ST_SetSRID(ST_MakePoint(-61.5493, 4.07308), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-24 18:19:00', 11, 1, 0.07, 4, 0.0, 74.6, ST_SetSRID(ST_MakePoint(-61.57278, 4.07676), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-24 18:19:00', 11, 1, 0.06, 4, 0.05, 71.8, ST_SetSRID(ST_MakePoint(-59.79436, 0.92426), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-27 18:38:00', 11, 1, 0.48, 10, 0.0, 70.7, ST_SetSRID(ST_MakePoint(-61.58393, 3.20731), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-27 18:38:00', 11, 1, 0.6, 8, 0.1, 68.0, ST_SetSRID(ST_MakePoint(-60.59395, 2.29022), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-27 18:38:00', 11, 1, 0.19, 7, 0.0, 67.2, ST_SetSRID(ST_MakePoint(-60.71887, 2.52268), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-27 18:38:00', 11, 1, 0.06, 7, 0.0, 65.2, ST_SetSRID(ST_MakePoint(-61.81946, 2.17735), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-29 18:17:00', 11, 1, 0.07, 2, 1.2, 63.4, ST_SetSRID(ST_MakePoint(-59.35644, 1.12453), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-24 18:19:00', 11, 1, 0.05, 4, 0.0, 62.9, ST_SetSRID(ST_MakePoint(-59.46746, 1.11601), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-24 18:19:00', 11, 1, 0.07, 4, 0.0, 59.0, ST_SetSRID(ST_MakePoint(-61.54732, 4.10341), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-25 17:17:00', 17, 3, 0.0, 2, 5.29, 80.5, ST_SetSRID(ST_MakePoint(-46.90737, -10.53438), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-04-02 17:34:00', 17, 3, 0.01, 1, 1.66, 68.0, ST_SetSRID(ST_MakePoint(-46.90987, -11.0012), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-25 17:17:00', 17, 3, 0.0, 2, 7.22, 61.8, ST_SetSRID(ST_MakePoint(-46.84087, -10.62953), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-20 17:20:00', 21, 3, 0.01, 2, 0.35, 85.2, ST_SetSRID(ST_MakePoint(-43.40495, -5.59555), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-26 17:54:00', 22, 2, 0.92, 4, 0.71, 151.0, ST_SetSRID(ST_MakePoint(-43.14164, -8.12428), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-22 16:56:00', 22, 2, 0.29, 0, 0.5, 88.0, ST_SetSRID(ST_MakePoint(-43.15004, -8.13325), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-26 16:20:00', 24, 4, 0.13, -999, 0.2, 219.6, ST_SetSRID(ST_MakePoint(-35.02938, -6.4659), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-26 16:20:00', 24, 4, 0.2, -999, 0.2, 161.8, ST_SetSRID(ST_MakePoint(-35.03734, -6.46303), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-26 16:20:00', 24, 4, 0.63, -999, 0.3, 64.3, ST_SetSRID(ST_MakePoint(-34.99821, -6.45786), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-20 17:17:00', 27, 2, 1.0, 13, 0.0, 84.3, ST_SetSRID(ST_MakePoint(-36.93745, -10.04392), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-24 16:37:00', 28, 2, 1.0, 2, 0.0, 96.3, ST_SetSRID(ST_MakePoint(-37.87618, -11.04847), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-29 16:37:00', 28, 2, 1.0, 41, 0.0, 92.2, ST_SetSRID(ST_MakePoint(-37.66966, -10.04072), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-24 16:37:00', 28, 2, 1.0, 2, 0.0, 86.1, ST_SetSRID(ST_MakePoint(-37.88328, -11.05287), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-29 16:37:00', 28, 2, 1.0, 41, 0.0, 76.1, ST_SetSRID(ST_MakePoint(-37.63894, -10.03681), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-25 17:17:00', 28, 4, 1.0, 3, 0.0, 60.2, ST_SetSRID(ST_MakePoint(-36.8535, -10.25908), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-25 17:13:00', 29, 4, 0.49, 4, 0.0, 833.8, ST_SetSRID(ST_MakePoint(-39.85889, -17.8604), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-25 17:13:00', 29, 4, 0.47, 4, 0.0, 708.2, ST_SetSRID(ST_MakePoint(-39.85755, -17.86998), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-25 17:13:00', 29, 4, 0.48, 4, 0.0, 442.2, ST_SetSRID(ST_MakePoint(-39.86281, -17.87415), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-27 16:54:00', 29, 2, 1.0, 24, 0.0, 362.4, ST_SetSRID(ST_MakePoint(-41.44053, -12.47592), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-25 17:13:00', 29, 4, 0.47, 4, 0.0, 308.1, ST_SetSRID(ST_MakePoint(-39.86985, -17.86187), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-27 16:54:00', 29, 2, 1.0, 24, 0.0, 271.5, ST_SetSRID(ST_MakePoint(-41.43569, -12.47714), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-25 17:13:00', 29, 4, 0.48, 4, 0.0, 267.6, ST_SetSRID(ST_MakePoint(-39.85188, -17.87272), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-25 17:13:00', 29, 4, 0.48, 4, 0.0, 260.1, ST_SetSRID(ST_MakePoint(-39.86849, -17.87147), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-04-02 17:34:00', 29, 3, 0.47, 4, 0.0, 172.5, ST_SetSRID(ST_MakePoint(-45.10042, -13.03359), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-20 17:17:00', 29, 3, 0.94, 24, 0.83, 169.2, ST_SetSRID(ST_MakePoint(-45.05261, -12.91847), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-04-02 17:34:00', 29, 3, 0.47, 5, 0.0, 144.6, ST_SetSRID(ST_MakePoint(-45.22963, -13.17709), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-26 17:54:00', 29, 3, 0.34, 0, 2.18, 142.5, ST_SetSRID(ST_MakePoint(-45.41969, -12.76279), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-04-02 17:34:00', 29, 3, 0.69, 3, 0.0, 120.4, ST_SetSRID(ST_MakePoint(-44.96906, -12.78323), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-20 17:17:00', 29, 3, 0.95, 24, 1.09, 114.7, ST_SetSRID(ST_MakePoint(-45.04555, -12.91894), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-30 17:13:00', 29, 2, 0.86, 24, 0.0, 113.7, ST_SetSRID(ST_MakePoint(-41.31011, -12.83423), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-23 17:34:00', 29, 3, 1.0, 2, 0.0, 96.2, ST_SetSRID(ST_MakePoint(-44.35582, -11.78864), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-23 17:34:00', 29, 2, 0.95, 18, 0.0, 93.2, ST_SetSRID(ST_MakePoint(-41.32851, -12.50206), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-20 17:17:00', 29, 2, 1.0, 11, 0.0, 86.2, ST_SetSRID(ST_MakePoint(-38.60224, -11.07725), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-22 16:56:00', 29, 2, 1.0, 22, 0.0, 85.7, ST_SetSRID(ST_MakePoint(-41.08719, -12.37387), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-04-02 17:34:00', 29, 3, 0.98, 2, 0.0, 85.4, ST_SetSRID(ST_MakePoint(-44.37965, -12.90463), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-22 16:56:00', 29, 2, 1.0, 22, 0.0, 81.2, ST_SetSRID(ST_MakePoint(-42.75394, -14.20136), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-22 16:56:00', 29, 2, 1.0, 22, 0.0, 80.4, ST_SetSRID(ST_MakePoint(-41.09278, -12.36786), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-20 17:17:00', 29, 2, 1.0, 11, 0.0, 78.7, ST_SetSRID(ST_MakePoint(-38.21904, -9.90321), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-25 17:15:00', 29, 4, 0.4, -999, 0.0, 76.7, ST_SetSRID(ST_MakePoint(-38.98403, -13.27171), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-22 16:56:00', 29, 2, 1.0, 23, 0.0, 76.2, ST_SetSRID(ST_MakePoint(-42.75079, -14.1931), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-20 17:17:00', 29, 2, 1.0, 11, 0.0, 73.9, ST_SetSRID(ST_MakePoint(-38.20994, -9.90185), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-04-02 17:34:00', 29, 3, 0.51, 5, 0.0, 73.0, ST_SetSRID(ST_MakePoint(-45.23102, -13.16753), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-26 17:54:00', 29, 3, 0.36, 1, 1.94, 72.7, ST_SetSRID(ST_MakePoint(-45.40895, -12.76109), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-28 17:34:00', 29, 2, 1.0, 27, 0.0, 69.8, ST_SetSRID(ST_MakePoint(-41.43783, -12.44625), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-31 17:54:00', 29, 3, 0.99, 3, 0.0, 64.9, ST_SetSRID(ST_MakePoint(-45.25487, -13.585), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-25 17:17:00', 29, 2, 1.0, 20, 0.0, 61.2, ST_SetSRID(ST_MakePoint(-38.54148, -9.83782), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-25 17:15:00', 29, 2, 1.0, 1, 0.0, 58.9, ST_SetSRID(ST_MakePoint(-39.85045, -12.96971), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-04-02 17:34:00', 29, 3, 0.84, 4, 0.0, 57.8, ST_SetSRID(ST_MakePoint(-43.8364, -12.84637), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-04-01 16:54:00', 31, 4, 0.47, 5, 0.0, 263.3, ST_SetSRID(ST_MakePoint(-41.93121, -15.50443), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-04-01 16:54:00', 31, 4, 0.44, 5, 0.0, 223.0, ST_SetSRID(ST_MakePoint(-41.93456, -15.51357), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-20 17:15:00', 31, 4, 0.9, 19, 0.82, 85.1, ST_SetSRID(ST_MakePoint(-42.20878, -16.90784), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-04-02 17:32:00', 31, 3, 0.98, 6, 0.0, 71.0, ST_SetSRID(ST_MakePoint(-44.50324, -18.06392), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-24 18:11:00', 41, 4, 0.13, 0, 0.26, 83.4, ST_SetSRID(ST_MakePoint(-50.59589, -25.109), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-22 18:30:00', 41, 4, 0.04, 3, 0.0, 59.4, ST_SetSRID(ST_MakePoint(-51.19169, -26.22156), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-21 17:52:00', 42, 4, 0.12, 4, 0.0, 116.9, ST_SetSRID(ST_MakePoint(-52.9228, -26.52773), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-21 17:52:00', 42, 4, 0.13, 5, 0.0, 80.8, ST_SetSRID(ST_MakePoint(-52.92976, -26.53258), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-21 17:52:00', 42, 4, 0.03, 4, 0.0, 70.5, ST_SetSRID(ST_MakePoint(-52.90402, -26.53005), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-24 18:09:00', 42, 4, 0.16, 4, 2.78, 60.7, ST_SetSRID(ST_MakePoint(-50.95993, -27.417), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-24 18:09:00', 43, 4, 0.01, 8, 18.84, 174.1, ST_SetSRID(ST_MakePoint(-50.27584, -29.07055), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-20 18:49:00', 43, 5, 0.76, 8, 0.0, 154.0, ST_SetSRID(ST_MakePoint(-55.49454, -28.19617), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-20 18:49:00', 43, 5, 1.0, 11, 0.0, 139.2, ST_SetSRID(ST_MakePoint(-54.19075, -30.72665), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-21 17:49:00', 43, 5, 0.91, 12, 0.0, 68.5, ST_SetSRID(ST_MakePoint(-54.20226, -30.73272), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-21 17:54:00', 51, 3, 0.01, 0, 0.0, 62.8, ST_SetSRID(ST_MakePoint(-58.10709, -12.41037), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-04-02 17:34:00', 51, 1, 0.0, 0, 10.58, 60.4, ST_SetSRID(ST_MakePoint(-52.8027, -13.07154), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-03-21 17:54:00', 51, 1, 0.2, 2, 0.0, 58.7, ST_SetSRID(ST_MakePoint(-57.86929, -14.95551), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-04-02 17:32:00', 52, 3, 0.48, 6, 0.0, 312.5, ST_SetSRID(ST_MakePoint(-47.55893, -16.3524), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-04-02 17:32:00', 52, 3, 0.33, 6, 0.0, 140.6, ST_SetSRID(ST_MakePoint(-47.57668, -16.35456), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-04-02 17:34:00', 52, 3, 0.06, 0, 0.0, 97.6, ST_SetSRID(ST_MakePoint(-47.66957, -14.12348), 4326)
    );
INSERT INTO Foco_calor (
        data, estado_id, bioma_id, risco_fogo, dia_sem_chuva, precipitacao, frp, geometria
    ) VALUES (
        '2025-04-02 17:34:00', 52, 3, 0.07, 0, 0.0, 82.2, ST_SetSRID(ST_MakePoint(-47.67595, -14.12625), 4326)
    );
	
	Select *from foco_calor
