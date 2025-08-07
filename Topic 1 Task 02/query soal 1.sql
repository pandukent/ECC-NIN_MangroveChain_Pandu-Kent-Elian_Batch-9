-- cek outlier terlebih dahulu pada data tree density dan species count
WITH stats AS (
    SELECT
        percentile_cont(0.25) WITHIN GROUP (ORDER BY species_count) AS q1_species,
        percentile_cont(0.75) WITHIN GROUP (ORDER BY species_count) AS q3_species,
        percentile_cont(0.25) WITHIN GROUP (ORDER BY tree_density) AS q1_tree,
        percentile_cont(0.75) WITHIN GROUP (ORDER BY tree_density) AS q3_tree
    FROM biodiversity_monitoring
),
outliers AS (
    SELECT
        *,
        (SELECT q1_species FROM stats) AS q1_species,
        (SELECT q3_species FROM stats) AS q3_species,
        ((SELECT q3_species FROM stats) - (SELECT q1_species FROM stats)) AS iqr_species,
        (SELECT q1_tree FROM stats) AS q1_tree,
        (SELECT q3_tree FROM stats) AS q3_tree,
        ((SELECT q3_tree FROM stats) - (SELECT q1_tree FROM stats)) AS iqr_tree
    FROM biodiversity_monitoring
)
SELECT
    species_count,
    CASE 
        WHEN species_count < q1_species - 1.5 * iqr_species THEN 'Outlier Bawah'
        WHEN species_count > q3_species + 1.5 * iqr_species THEN 'Outlier Atas'
        ELSE 'Normal'
    END AS status_outlier_species,
    tree_density,
    CASE
        WHEN tree_density < q1_tree - 1.5 * iqr_tree THEN 'Outlier Bawah'
        WHEN tree_density > q3_tree + 1.5 * iqr_tree THEN 'Outlier Atas'
        ELSE 'Normal'
    END AS status_outlier_tree
FROM outliers;

-- query soal 1 studi kasus 1
SELECT
    CASE rp.permit_status
        WHEN 'Approved' THEN 1
        WHEN 'Pending' THEN 0
    END AS permit_status_numeric,

    CASE bm.water_quality
        WHEN 'Good' THEN 2
        WHEN 'Moderate' THEN 1
        WHEN 'Poor' THEN 0
    END AS water_quality_numeric,
    bm.Tree_Density
FROM regulatory_permits rp
JOIN biodiversity_monitoring bm ON rp.conservation_id = bm.conservation_id;