CREATE OR REPLACE PROCEDURE AgregarRemesa(
    comerciante_id INT,
    remitente_id INT,
    beneficiario_id INT,
    monto DECIMAL(10, 2),
    moneda VARCHAR(10),
    cuenta_bancaria VARCHAR(50),
    estado_id INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO Remesa (comerciante_id, remitente_id, beneficiario_id, monto, moneda, cuenta_bancaria, estado_id)
    VALUES (comerciante_id, remitente_id, beneficiario_id, monto, moneda, cuenta_bancaria, estado_id);
END;
$$;
