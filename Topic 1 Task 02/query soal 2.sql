SELECT 
    CASE 
        WHEN ltr.land_type = 'State Land' THEN 0
        WHEN ltr.land_type = 'Private Land' THEN 1
        WHEN ltr.land_type = 'Community Land' THEN 2
    END AS land_type_numeric,
    bm.species_count
FROM land_tenure_records ltr
JOIN biodiversity_monitoring bm ON ltr.conservation_id = bm.conservation_id;