SELECT 
    ltr.conservation_id,
    CASE 
        WHEN ltr.legal_document LIKE 'HGU%' AND ltr.boundary_defined = 'Yes' THEN 1
        ELSE 0
    END AS defined_legal_boundary,
    bm.Species_Count,
    bm.Tree_Density,
    CASE 
        WHEN bm.Water_Quality = 'Good' THEN 2
        WHEN bm.Water_Quality = 'Moderate' THEN 1
        WHEN bm.Water_Quality = 'Poor' THEN 0
        ELSE NULL
    END AS Water_Quality_Score
FROM land_tenure_records ltr
JOIN biodiversity_monitoring bm
ON ltr.conservation_id = bm.conservation_id;