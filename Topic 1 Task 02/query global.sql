SELECT
	CASE rp.permit_status
		WHEN 'Approved' THEN 1
		WHEN 'Pending' THEN 0
	END AS permit_status_numeric,
	CASE 
		WHEN ltr.land_type = 'State Land' THEN 0
		WHEN ltr.land_type = 'Private Land' THEN 1
		WHEN ltr.land_type = 'Community Land' THEN 2
	END AS land_type_numeric,
	CASE 
		WHEN ltr.legal_document LIKE 'HGU%' AND ltr.boundary_defined = 'Yes' THEN 1
		ELSE 0
	END AS defined_legal_boundary,
	bm.species_count,
	bm.tree_density,
	CASE
		WHEN bm.water_quality = 'Good' THEN 2
		WHEN bm.water_quality = 'Moderate' THEN 1
		WHEN bm.water_quality = 'Poor' THEN 0
	END AS water_quality_numeric
FROM regulatory_permits rp
JOIN land_tenure_records ltr ON rp.conservation_id = ltr.conservation_id
JOIN biodiversity_monitoring bm ON rp.conservation_id = bm.conservation_id