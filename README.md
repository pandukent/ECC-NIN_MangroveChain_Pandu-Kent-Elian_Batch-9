# KELOMPOK 2:
- Farhan Fadillah (9.008.DB2025)
- Jihan Afifah M. (9.052.DB2025)
- Agus Iskandar Darmawan (09.009.DB2025)
- Maksum (9.045.DB2025)
- Achmad Hidayat (9.011.DB2025)
- Pandu Kent Elian (9.059.DB2025)
- Bavari Muhammad Waldan (9.029.DB2025)
- Septian Bagus Pambudi (9.057.DB2025)
- Ihsan Ahsanu Amala (9.044.DB2025)

# BAB I. PENDAHULUAN
## 1.1 Latar Belakang Masalah

Indonesia merupakan negara dengan ekosistem mangrove terbesar di dunia, mencakup 23% dari total luas mangrove global atau sekitar 3,7 juta hektare. Ekosistem ini memiliki fungsi ekologis dan ekonomi yang sangat vital, seperti perlindungan pantai, sekuestrasi karbon, habitat biodiversitas, dan sumber ekonomi masyarakat pesisir. Namun, sejak 1980, Indonesia telah kehilangan sekitar 40% hutan mangrovenya akibat konversi lahan, polusi, serta kurangnya kesadaran masyarakat dan dukungan teknologi konservasi.
Dalam dekade terakhir, konsep ekonomi karbon semakin berkembang, dan mangrove telah diakui sebagai salah satu ekosistem penyerap karbon (blue carbon) paling efisien. Namun, tantangan serius muncul dalam aspek transparansi, legalitas, pemantauan, serta pendanaan konservasi. Di sinilah teknologi blockchain muncul sebagai solusi potensial. Blockchain menyediakan mekanisme pencatatan yang transparan, tidak dapat diubah (immutable), serta dapat diverifikasi untuk semua transaksi lingkungan, termasuk perdagangan kredit karbon dan keterlibatan masyarakat.

Proyek MangroveChain hadir sebagai sistem analitik dan teknologi berbasis blockchain yang dirancang untuk mendukung konservasi mangrove secara menyeluruh dari Aceh hingga Papua. Platform ini mengintegrasikan 14 dimensi data penting yang mencakup pemantauan ekologi, transaksi karbon, legalitas lahan, hingga distribusi manfaat ekonomi bagi komunitas lokal. Dengan kemampuan ini, MangroveChain menjadi alat strategis dalam menjawab tantangan konservasi mangrove berbasis sains dan teknologi mutakhir.

CTO perlu memahami pola berbagi data blockchain untuk mengoptimalkan arsitektur sistem:
- Distribusi tipe data (Geografis/Personal/Transaksi) per wilayah
- Korelasi antara level akses dengan volume transaksi karbon
- Pola temporal penerbitan izin vs aktivitas blockchain
- Analisis awal menunjukkan proyek dengan data geografis terbuka memiliki volume transaksi 2.5x lebih tinggi.

Analisis yang perlu dilakukan oleh CTO ini bukan sekadar optimasi teknis, melainkan sebuah fondasi strategis untuk memastikan keberhasilan dan skalabilitas platform konservasi mangrove berbasis blockchain. Masalah intinya terletak pada ketidakselarasan antara potensi teknologi blockchain (transparansi, imutabilitas) dengan realitas implementasi di lapangan yang kompleks dan beragam.

### 1. Dilema Transparansi vs. Keamanan Data Sensitif
Temuan awal bahwa proyek dengan data geografis terbuka memiliki volume transaksi 2.5x lebih tinggi adalah pedang bermata dua dan menjadi inti dari dilema strategis CTO.
Sisi Positif (Mengapa Volume Naik): Transparansi data geografis (misalnya, poligon area konservasi, titik koordinat pemantauan) secara drastis meningkatkan kepercayaan (trust) dari para pemangku kepentingan. Pembeli kredit karbon, investor, dan lembaga donor dapat secara independen memverifikasi klaim proyek di lapangan menggunakan citra satelit atau drone. Kepercayaan inilah yang mendorong partisipasi dan meningkatkan volume transaksi. Ini mengubah kredit karbon dari aset abstrak menjadi sesuatu yang "nyata" dan dapat diverifikasi.

Sisi Negatif (Risiko yang Muncul): Di sisi lain, keterbukaan data geografis yang absolut di negara seperti Indonesia dapat menimbulkan risiko. Wilayah konservasi mangrove sering bersinggungan dengan hak ulayat masyarakat adat, rentan terhadap perambahan ilegal, atau tumpang tindih dengan konsesi lain. Mempublikasikan lokasi persis dari area restorasi yang baru dan rentan bisa saja mengundang aktivitas ilegal sebelum ekosistemnya cukup kuat untuk dilindungi.
Oleh karena itu, analisis mengenai distribusi tipe data per wilayah menjadi krusial. CTO harus merancang arsitektur yang tidak hanya "terbuka" atau "tertutup", melainkan arsitektur dengan tingkat transparansi yang dapat dikonfigurasi (configurable transparency). Mungkin beberapa data (seperti batas luar area proyek) bisa bersifat publik, sementara data lain (seperti lokasi pembibitan atau data personal petani) hanya dapat diakses oleh pihak terverifikasi.

### 2. Menghubungkan Aktivitas On-Chain dengan Realitas Off-Chain
Tantangan mendasar lainnya adalah memastikan bahwa aktivitas di dalam blockchain (transaksi, penerbitan token) benar-benar mencerminkan kemajuan konservasi di dunia nyata.
Korelasi Level Akses & Volume Transaksi: Analisis ini bukan hanya tentang melihat siapa yang bertransaksi paling banyak. Ini tentang memahami insentif. Apakah level akses "Auditor Pemerintah" hanya digunakan untuk memantau, ataukah verifikasi dari mereka memicu pencairan dana (transaksi bervolume tinggi)? Jika proyek dengan partisipasi aktif komunitas lokal (yang mungkin memiliki level akses lebih rendah) menunjukkan volume transaksi mikro yang tinggi, ini bisa menandakan sistem distribusi manfaat yang berfungsi baik. Sebaliknya, jika semua volume besar hanya terkonsentrasi pada level akses "Investor", sistem mungkin terlalu top-down dan berisiko gagal di tingkat akar rumput.

Pola Temporal Izin vs. Aktivitas Blockchain: Analisis ini sangat penting untuk efisiensi dan interoperabilitas sistem. Seringkali ada jeda waktu yang signifikan antara penerbitan izin dari pemerintah (aktivitas off-chain) dengan dimulainya proyek di lapangan dan pencatatannya di blockchain (on-chain). Jika analisis menunjukkan jeda rata-rata 6 bulan, CTO bisa merancang fitur "pra-registrasi" atau escrow pintar (smart contract escrow) yang otomatis aktif saat nomor izin resmi dimasukkan ke dalam sistem. Ini dapat mempercepat mobilisasi dana dan meningkatkan efisiensi operasional secara keseluruhan.

### Implikasi Strategis bagi CTO
Berdasarkan pembahasan di atas, latar belakang masalah ini mengarah pada beberapa keputusan arsitektural dan strategis yang fundamental:
- Arsitektur Data yang Fleksibel: Sistem tidak bisa one-size-fits-all. Perlu ada arsitektur yang memungkinkan penerapan kebijakan akses data yang berbeda-beda untuk setiap proyek atau wilayah, tergantung pada konteks sosial dan keamanan lokal.
- Desain Smart Contract yang Adaptif: Smart contract harus dirancang untuk tidak hanya mengeksekusi transaksi finansial, tetapi juga untuk mengelola alur kerja verifikasi yang melibatkan berbagai level akses (Masyarakat -> Manajer Proyek -> Auditor -> Investor).
- Fokus pada Interoperabilitas: Sistem harus memiliki API atau oracle yang kuat untuk dapat menarik data secara andal dari sistem pemerintah (seperti database perizinan) dan sumber data eksternal lainnya (seperti citra satelit) untuk memvalidasi aktivitas on-chain.
- Jadi, analisis jaringan blockchain ini adalah langkah krusial untuk beralih dari sekadar membangun "database konservasi di blockchain" menjadi menciptakan ekosistem digital yang terpercaya, efisien, dan benar-benar berdampak bagi konservasi mangrove di Indonesia.


## 1.2 Identifikasi Masalah
Berdasarkan hasil analisis dan referensi ilmiah dalam tutorial konservasi mangrove serta data lapangan, proyek ini mengidentifikasi permasalahan utama sebagai berikut:
1. Kerusakan Hutan Mangrove yang terus berlangsung akibat konversi lahan dan deforestasi tanpa legalitas yang jelas.
2. Kurangnya transparansi dan akuntabilitas dalam proses konservasi dan perdagangan kredit karbon.
3. Minimnya integrasi teknologi dalam pemantauan dan pelaporan konservasi berbasis data.
4. Ketimpangan distribusi manfaat dari proyek konservasi terhadap komunitas lokal.
5. Tantangan verifikasi dan regulasi dalam skema perdagangan karbon berbasis mangrove.
6. Kebutuhan sistem berbasis data yang komprehensif dan kredibel untuk mendukung keputusan kebijakan konservasi.

## 1.3 Rumusan Masalah
Berdasarkan latar belakang dan identifikasi di atas, rumusan masalah yang menjadi fokus kajian dan pengembangan sistem MangroveChain adalah:
1. Bagaimana membangun sistem berbasis blockchain yang dapat menjamin integritas dan transparansi dalam pengelolaan proyek konservasi mangrove?
2. Bagaimana platform ini dapat mengukur efektivitas konservasi berdasarkan indikator ekologis, legalitas, partisipasi masyarakat, dan dampak ekonomi?
3. Bagaimana sistem dapat mendukung proses validasi kredit karbon dan memastikan distribusi manfaat yang adil dan terverifikasi?
4. Bagaimana teknologi analitik data dapat digunakan untuk memberikan wawasan strategis kepada pemangku kepentingan dari 30 proyek konservasi?

# BAB II. PEMBAHASAN

## 2.1 Deskripsi Proyek MangroveChain

Proyek MangroveChain adalah sebuah inisiatif konservasi berbasis teknologi yang memanfaatkan sistem blockchain untuk mendokumentasikan, memverifikasi, dan mengoptimalkan proyek mangrove di Indonesia. Platform ini tidak hanya mencatat transaksi karbon, tetapi juga menganalisis efektivitas regulasi, distribusi manfaat sosial, struktur legalitas lahan, dan efisiensi pendanaan dari 30 proyek konservasi mangrove yang tersebar dari Aceh hingga Papua.
Sistem ini memanfaatkan integrasi 14 tabel data yang dikembangkan dari dimensi: lingkungan (biodiversity dan kualitas air), legalitas (izin dan kepemilikan), sosial (keterlibatan masyarakat), dan transaksi digital (blockchain dan smart contract). Analisis dilakukan secara real-time menggunakan SQL, Python, dan visualisasi interaktif seperti heatmap, scatter plot 3D, time-series ARIMA, dan network graph berbasis PyVis.

## 2.2 Tujuan dan Lingkup Proyek MangroveChain

Tujuan Proyek MangroveChain:
1. Menganalisis korelasi antara regulasi, struktur kepemilikan, dan biodiversitas.
2. Menilai efisiensi penggunaan dana berbasis blockchain dan dampak karbonnya.
3. Memprediksi keberhasilan konservasi berdasarkan partisipasi komunitas.
4. Mengidentifikasi proyek dengan risiko hukum tertinggi berdasarkan faktor multi-dimensi.
5. Mengoptimalkan arsitektur jaringan data blockchain dan smart contract konservasi.

Lingkup Proyek
- Wilayah Implementasi: 30 lokasi proyek konservasi mangrove dari Aceh, Kalimantan Barat, Sulawesi, Nusa Tenggara hingga Papua.
- Dimensi Analisis:
  - Lingkungan: Luas rehabilitasi, kualitas air, keanekaragaman spesies.
  - Sosial: Jumlah peserta komunitas, nilai manfaat yang diterima.
  - konomi: Volume dan nilai perdagangan kredit karbon
  - Legal: Status izin, batas lahan, dokumen hukum.
- Teknologi: Blockchain, GIS, drone, dan sistem pelaporan berbasis dashboard.
- Pemangku Kepentingan: Masyarakat lokal, KLHK, lembaga donor, investor karbon, akademisi, dan pemerintah daerah.

------------

# PEMBAHASAN TOPIC PERMASALAHAN

## Studi Kasus 1 : Analisis Efektivitas Regulasi & Dampak Biodiversitas

### Latar Belakang Masalah
Tim konservasi menemukan variasi signifikan dalam hasil monitoring biodiversitas di berbagai proyek. Di Kalimantan Timur, proyek dengan izin disetujui menunjukkan kerapatan pohon 40% lebih tinggi dibandingkan proyek dengan status pending, sementara di Jawa, kualitas air tetap buruk meskipun izin sudah disetujui. Analisis ini bertujuan mengungkap pola sistemik bagaimana kerangka regulasi dan struktur kepemilikan lahan mempengaruhi hasil konservasi.

### Pertanyaan Kunci
- Apakah status persetujuan izin berkorelasi dengan peningkatan biodiversitas yang terukur (kualitas air, kerapatan pohon)?
- Bagaimana pengaturan kepemilikan lahan yang berbeda (negara, swasta, masyarakat) mempengaruhi keanekaragaman spesies?
- Apakah proyek dengan batas lahan yang terdefinisi secara hukum mencapai hasil ekologis yang lebih baik?

## Pembahasan Analisa dengan Query SQL

### Topic 1 : Apakah status persetujuan izin berkorelasi dengan peningkatan biodiversitas yang terukur (kualitas air, kerapatan pohon)?

    SELECT
      rp.Permit_Status AS "Status Izin",
      AVG(bm.Tree_Density) AS "Rata-Rata Kerapatan Pohon",
      AVG(
        CASE
          WHEN bm.Water_Quality = 'Good' THEN 3
          WHEN bm.Water_Quality = 'Moderate' THEN 2
          WHEN bm.Water_Quality = 'Poor' THEN 1
          ELSE 0
        END
      ) AS "Skor Rata-Rata Kualitas Air",
      COUNT(*) AS "Jumlah Proyek"
    FROM
      regulatory_permits AS rp
    INNER JOIN
      biodiversity_monitoring AS bm ON rp.Conservation_ID = bm.Conservation_ID
    GROUP BY
      rp.Permit_Status
    ORDER BY
      "Rata-Rata Kerapatan Pohon" DESC;
Output data:
<img width="521" height="64" alt="image" src="https://github.com/user-attachments/assets/b2feb856-88fa-4964-966a-726b5663bdf4" />

#### Tujuan Utama
Tujuan utama dari SQL query ini adalah untuk menganalisis pengaruh status izin konservasi terhadap indikator lingkungan, yaitu:
- Kerapatan pohon
- Kualitas air
- Jumlah proyek konservasi

Query ini merangkum data biodiversitas berdasarkan status perizinan, untuk mengetahui apakah status izin tertentu cenderung berkorelasi dengan kondisi lingkungan yang lebih baik atau buruk.

Struktur Konsep dan Cara Kerja Query
#### 1. SELECT Clause
- Mengambil status izin konservasi.
- Menghitung rata-rata dari kerapatan pohon.
- Mengkonversi kualitas air ke bentuk skor numerik (3 = Baik, 2 = Sedang, 1 = Buruk), lalu diambil rata-ratanya.
- Menghitung jumlah proyek untuk masing-masing status izin.

#### 2. JOIN Clause
Menggabungkan dua tabel: regulatory_permits (izin) dan biodiversity_monitoring (lingkungan) berdasarkan Conservation_ID.

#### 3. GROUP BY
Mengelompokkan hasil berdasarkan status izin konservasi seperti Approved, Pending, atau Denied.

#### 4. ORDER BY
Mengurutkan hasil dari status izin dengan kerapatan pohon tertinggi ke terendah.

#### Manfaat Analisa
- Analisa ini sangat bermanfaat untuk:
- Mengevaluasi efektivitas kebijakan izin konservasi terhadap kondisi lingkungan.
- Menunjukkan apakah proyek dengan status izin tertentu (misalnya disetujui) cenderung menjaga biodiversitas dengan lebih baik.
- Memberikan bukti berbasis data untuk perbaikan kebijakan perizinan dan pengawasan.

#### Interpretasi:
- Proyek dengan izin "Approved" memiliki rata-rata kerapatan pohon dan kualitas air lebih tinggi dibandingkan proyek lain.
- Proyek tanpa izin yang disetujui mungkin memiliki dampak lingkungan lebih negatif.
- Skor kualitas air mendekati 3 berarti semakin baik.

#### Rekomendasi Analisa
- Prioritaskan pengawasan pada proyek yang izinnya ditolak atau belum disetujui, karena mereka menunjukkan indikasi dampak ekologis lebih buruk.
- Gunakan hasil ini untuk menetapkan kriteria izin yang lebih ketat, misalnya hanya menyetujui proyek yang memiliki rencana konservasi jangka panjang.
- Lakukan pemantauan berkala pada proyek dengan skor kualitas air rendah untuk mencegah kerusakan lebih lanjut.
- Buat laporan visual tambahan, misalnya grafik batang atau heatmap, untuk mempermudah pemahaman bagi pihak non-teknis atau pemangku kebijakan.

## Topic 2 : Bagaimana pengaturan kepemilikan lahan yang berbeda (negara, swasta, masyarakat) mempengaruhi keanekaragaman spesies?
    SELECT 
    CASE 
        WHEN ltr.land_type = 'State Land' THEN 0
        WHEN ltr.land_type = 'Private Land' THEN 1
        WHEN ltr.land_type = 'Community Land' THEN 2
    END AS land_type_numeric,
    bm.species_count
    FROM land_tenure_records ltr
    JOIN biodiversity_monitoring bm ON ltr.conservation_id = bm.conservation_id;
Output File:
<img width="230" height="65" alt="image" src="https://github.com/user-attachments/assets/a7b3b442-21ad-466c-b219-68c64f466f5a" />

## Analisis Query SQL: Konversi Jenis Lahan dan Jumlah Spesies
## Tujuan Query
Query ini bertujuan untuk:
- Mengonversi **jenis kepemilikan lahan** dari bentuk teks (`State Land`, `Private Land`, `Community Land`) menjadi bentuk **angka** (0, 1, 2).
- Mengambil data **jumlah spesies** (`species_count`) dari hasil pemantauan keanekaragaman hayati.
- Menggabungkan data antara tabel kepemilikan lahan dan tabel monitoring keanekaragaman berdasarkan `conservation_id`.

##  Konsep Cara Kerja
1. **Konversi Kategorikal ke Numerik**
   - `'State Land'` → `0`
   - `'Private Land'` → `1`
   - `'Community Land'` → `2`

2. **Pengambilan Data Keanekaragaman**
   - Mengambil `species_count` dari tabel monitoring.

3. **Proses Join**
   - Data digabungkan dengan **INNER JOIN** menggunakan kolom `conservation_id`.
   - Hanya data yang memiliki kecocokan di kedua tabel yang akan diambil.

## Hasil Analisa
Query menghasilkan dua kolom utama:
- `land_type_numeric`: Jenis lahan dalam bentuk angka.
- `species_count`: Jumlah spesies yang tercatat.

| land_type_numeric | species_count |
|-------------------|---------------|
| 0                 | 120           |
| 1                 | 85            |
| 2                 | 140           |

## Kegunaan Praktis
- **Data Science & Machine Learning**: Angka lebih mudah digunakan dalam model prediktif.
- **Analisis Statistik**: Menilai pengaruh jenis lahan terhadap jumlah spesies.
- **Visualisasi Data**: Dapat divisualisasikan dalam grafik (bar chart, scatter plot, dll).

## Topic 3 : Apakah proyek dengan batas lahan yang terdefinisi secara hukum mencapai hasil ekologis yang lebih baik?
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
  Output File:
  <img width="589" height="86" alt="image" src="https://github.com/user-attachments/assets/bea5ea58-40d3-4627-9020-f718da1b8d07" />

## Analisis Query SQL: Legalitas Batas Lahan, Keanekaragaman Hayati, dan Kualitas Air
## Tujuan Query
Query ini digunakan untuk:
- Mengidentifikasi apakah sebuah area konservasi memiliki **batas hukum yang jelas** berdasarkan dokumen legal dan status batas wilayah.
- Mengambil data ekologis dari monitoring keanekaragaman hayati, seperti:
  - **Jumlah spesies** (`Species_Count`)
  - **Kepadatan pohon** (`Tree_Density`)
  - **Kualitas air** (`Water_Quality`)
- Mengubah informasi kategori menjadi bentuk **angka/nilai skor** yang lebih mudah dianalisis secara kuantitatif.

## Konsep Cara Kerja
1. **Identifikasi Legalitas dan Kepastian Batas Lahan**
   - Jika `legal_document` diawali dengan `'HGU'` **dan** `boundary_defined = 'Yes'`, maka lahan dianggap memiliki **batas legal yang jelas** → diberi nilai `1`.
   - Jika tidak memenuhi kedua syarat tersebut → diberi nilai `0`.

2. **Pengambilan Data Ekologis**
   - Mengambil data dari tabel `biodiversity_monitoring`:
     - `Species_Count`: Jumlah spesies yang ditemukan.
     - `Tree_Density`: Kepadatan pohon di area tersebut.
     - `Water_Quality`: Kualitas air dikonversi menjadi skor numerik.

3. **Konversi Kualitas Air Menjadi Skor**
   - `'Good'` → `2`
   - `'Moderate'` → `1`
   - `'Poor'` → `0`
   - Selain ketiganya → `NULL` (tidak diketahui)

4. **JOIN Tabel**
   - Data digabungkan antara `land_tenure_records` (`ltr`) dan `biodiversity_monitoring` (`bm`) melalui kolom `conservation_id`.

## Hasil Analisa
Output query ini akan menghasilkan tabel seperti berikut:
| conservation_id | defined_legal_boundary | Species_Count | Tree_Density | Water_Quality_Score |
|------------------|--------------------------|----------------|---------------|----------------------|
| C001             | 1                        | 150            | 300           | 2                    |
| C002             | 0                        | 120            | 250           | 1                    |
| C003             | 0                        | 95             | 180           | 0                    |
| ...              | ...                      | ...            | ...           | ...                  |

Keterangan:
- `defined_legal_boundary`: Apakah batas hukum lahan sudah jelas.
- `Water_Quality_Score`: Kualitas air dalam bentuk angka untuk kemudahan analisis.

## Kegunaan Praktis
- **Kebijakan & Tata Kelola Lahan:** Dapat digunakan untuk menilai apakah legalitas dan kejelasan batas lahan berkaitan dengan kondisi lingkungan (biodiversitas & kualitas air).
- **Analisis Lingkungan:** Skor numerik memudahkan perhitungan statistik atau visualisasi.
- **Pendukung Keputusan Konservasi:** Memberikan insight tentang hubungan antara kepastian hukum lahan dan kualitas ekosistem.

## Heatmap Matriks Korelasi Faktor Regulasi vs Metrik Biodiversitas
    import pandas as pd
    import psycopg2
    from sqlalchemy import create_engine
    import matplotlib.pyplot as plt
    import seaborn as sns
    import numpy as np
    
    # Setup koneksi database
    conn_string = "postgresql://postgres:postgresql@localhost:5432/postgres"
    db = create_engine(conn_string)
    conn = db.connect()
    
    # Query data untuk visualisasi
    query = """
    SELECT rp.Permit_Status, ltr.Land_Type, ltr.Boundary_Defined,
    bm.Species_Count, bm.Tree_Density,
    CASE WHEN bm.Water_Quality = 'Good' THEN 3
    WHEN bm.Water_Quality = 'Moderate' THEN 2
    ELSE 1 END AS Water_Quality
    FROM regulatory_permits rp
    JOIN land_tenure_records ltr ON rp.Conservation_ID = ltr.Conservation_ID
    JOIN biodiversity_monitoring bm ON rp.Conservation_ID = bm.Conservation_ID
    """
    
    df = pd.read_sql(query, conn)
    conn.close()
    
    # Langkah 1: One-hot encoding kolom kategorikal
    df_encoded = pd.get_dummies(df, columns=['permit_status', 'land_type', 'boundary_defined'])
    
    # Langkah 2: Hitung korelasi antar semua kolom numerik
    corr_matrix = df_encoded.corr()
    
    # Langkah 3: Pilih hanya korelasi antara faktor regulasi dan metrik biodiversitas
    biodiversity_metrics = ['species_count', 'tree_density', 'water_quality']
    regulation_vars = [col for col in df_encoded.columns if col not in biodiversity_metrics]
    
    # Filter: ambil baris dari regulation_vars dan kolom dari biodiversity_metrics
    filtered_corr = corr_matrix.loc[regulation_vars, biodiversity_metrics]
    
    # Langkah 4: Visualisasi heatmap
    plt.figure(figsize=(10, 6))
    sns.heatmap(
        filtered_corr,
        annot=True,
        cmap='coolwarm',
        center=0,
        fmt='.2f',
        linewidths=0.5,
        linecolor='black',
        cbar_kws={'label': 'Koefisien Korelasi'}
    )
    
    plt.title('Korelasi Faktor Regulasi dengan Metrik Biodiversitas', fontsize=14, pad=20)
    plt.xticks(fontsize=10, rotation=45, ha='right')
    plt.yticks(fontsize=10, rotation=0)
    plt.tight_layout()
    plt.show()
<img width="972" height="598" alt="image" src="https://github.com/user-attachments/assets/23ed79dd-9476-4f03-8f2e-c817af675ad1" />

## Apakah status persetujuan izin berkorelasi dengan peningkatan biodiversitas yang terukur (kualitas air, kerapatan pohon)?

    # Buat kolom dummy untuk masing-masing permit status
    df['permit_pending'] = df['permit_status_numeric'].apply(lambda x: 1 if x == 0 else 0)
    df['permit_approved'] = df['permit_status_numeric'].apply(lambda x: 1 if x == 1 else 0)
    
    # Ambil kolom yang diperlukan
    x_col = ['water_quality_numeric', 'tree_density']
    y_cols = ['permit_approved', 'permit_pending']
    
    # Hitung korelasi
    correlations = {y: df[x_col].corrwith(df[y]) for y in y_cols}
    
    # Ubah ke DataFrame
    corr_df = pd.DataFrame(correlations).T
    
    # Plot heatmap
    plt.figure(figsize=(7, 5))
    sns.heatmap(corr_df, annot=True, cmap='coolwarm', fmt='.2f', cbar_kws={'label':'Koefisien Korelasi'})
    plt.title('Korelasi Status Izin terhadap Kualitas Air & Kerapatan Pohon')
    plt.xlabel('Indikator Biodiversitas')
    plt.ylabel('Status Izin')
    plt.show()
<img width="624" height="477" alt="image" src="https://github.com/user-attachments/assets/3457d509-f360-4deb-8503-3b6d7ebc0291" />

<font size="3">Analisis menunjukkan adanya potensi pertukaran (trade-off) lingkungan dalam proses perizinan. Ketika izin disetujui, kualitas air cenderung membaik namun kerapatan pohon menurun. Sebaliknya, saat izin tertunda, kerapatan pohon meningkat meskipun kualitas air menurun. Pola ini mengisyaratkan bahwa kebijakan mungkin terfokus pada perbaikan satu aspek (misalnya air) dan tanpa disadari mengabaikan aspek lain (misalnya pohon). Meskipun demikian, karena semua korelasi ini sangat lemah, status izin kemungkinan bukanlah faktor utama penyebab perubahan tersebut. Faktor-faktor lain seperti kondisi lingkungan awal, jenis proyek, atau iklim, diperkirakan memiliki pengaruh yang jauh lebih besar.</font>

## Bagaimana pengaturan kepemilikan lahan yang berbeda (negara, swasta, masyarakat) mempengaruhi keanekaragaman spesies?

    # Buat kolom dummy untuk masing-masing land type
    df['state_land'] = df['land_type_numeric'].apply(lambda x: 1 if x == 0 else 0)
    df['private_land'] = df['land_type_numeric'].apply(lambda x: 1 if x == 1 else 0)
    df['community_land'] = df['land_type_numeric'].apply(lambda x: 1 if x == 2 else 0)
    
    # Ambil kolom yang diperlukan
    x_col = 'species_count'
    y_cols = ['state_land', 'private_land', 'community_land']
    
    # Hitung korelasi secara manual untuk tiap Y terhadap X
    correlations = {y: df[x_col].corr(df[y]) for y in y_cols}
    
    # Ubah jadi DataFrame supaya bisa pakai heatmap
    corr_df = pd.DataFrame.from_dict(correlations, orient='index', columns=[x_col])
    
    # Plot heatmap
    plt.figure(figsize=(6, 4))
    sns.heatmap(corr_df, annot=True, cmap='coolwarm', fmt='.2f', cbar_kws={'label':'Koefisien Korelasi'})
    plt.title('Korelasi Jenis lahan terhadap keanekaragaman spesies')
    plt.xlabel('Jumlah Spesies')
    plt.ylabel('Jenis Lahan')
    plt.show()
<img width="551" height="401" alt="image" src="https://github.com/user-attachments/assets/7c4c7a26-fc6f-4560-94b3-51fc81c3df39" />

<font size="3">Berdasarkan analisis, lahan yang dikelola oleh masyarakat menunjukkan korelasi positif dengan keanekaragaman spesies. Hal ini mengindikasikan bahwa model pengelolaan berbasis komunitas mungkin lebih efektif dalam menjaga ekosistem. Kemungkinan besar, ini terjadi berkat pengetahuan lokal yang mendalam, praktik berkelanjutan, dan insentif langsung bagi masyarakat untuk menjaga lingkungan demi keberlangsungan hidup mereka.

Di sisi lain, lahan yang dikelola oleh negara dan swasta menunjukkan korelasi negatif, yang bisa jadi berhubungan dengan praktik pemanfaatan sumber daya yang lebih intensif (seperti monokultur) dan terfokus pada kepentingan komersial, misalnya pertambangan atau perhutanan komersial. Hal ini berpotensi mengurangi keragaman spesies.</font>

## Apakah proyek dengan batas lahan yang terdefinisi secara hukum mencapai hasil ekologis yang lebih baik?
    # Ambil kolom yang diperlukan
    x_col = 'defined_legal_boundary'
    y_cols = ['species_count', 'tree_density', 'water_quality_score']
    
    # Hitung korelasi secara manual
    correlations = {y: df[x_col].corr(df[y]) for y in y_cols}
    
    # Buat DataFrame
    corr_df = pd.DataFrame.from_dict(correlations, orient='index', columns=['defined_legal_boundary'])
    
    # Visualisasi heatmap
    plt.figure(figsize=(6, 4))
    sns.heatmap(corr_df, annot=True, cmap='coolwarm', fmt=".2f", cbar_kws={'label': 'Koefisien Korelasi'})
    plt.title('Korelasi Batas Lahan Legal dengan Indikator Ekologis')
    plt.xlabel('Batas Lahan Legal')
    plt.ylabel('Indikator Ekologis')
    plt.tight_layout()
    plt.show()

<img width="600" height="388" alt="image" src="https://github.com/user-attachments/assets/87482ab7-0623-442f-a172-c33e8c5a44dd" />

<font size="3">Hasil ini menunjukkan bahwa penetapan batas lahan secara hukum menghasilkan kondisi yang tidak seimbang. Kualitas air bisa membaik, namun di sisi lain, kerapatan pohon menurun. Ini mengisyaratkan bahwa penetapan batas lahan saja tidak cukup untuk melindungi semua aspek lingkungan.

Sama seperti membuat pagar di sekeliling kebun, pagar itu (batas legal) tidak akan membuat tanaman tumbuh subur. Butuh tindakan nyata seperti menyiram, memberi pupuk, dan merawatnya. Demikian juga, untuk melindungi pohon dan spesies, perlu ada upaya nyata di dalam batas lahan tersebut, bukan hanya mengandalkan penetapan batasnya saja.

Faktor-faktor ini menjadi sangat penting karena semua nilai korelasi dalam grafik ini sangat lemah, yang menandakan bahwa batas lahan legal bukanlah faktor utama yang menentukan hasil ekologis.</font>

# Analisis Korelasi Faktor Regulasi terhadap Metrik Biodiversitas

Script ini digunakan untuk menganalisis **hubungan antara kebijakan/regulasi konservasi** (seperti status izin dan jenis kepemilikan lahan) dengan **indikator biodiversitas** (jumlah spesies, kerapatan pohon, dan kualitas air) menggunakan data dari database PostgreSQL dan CSV. Hasil analisis divisualisasikan dalam bentuk **heatmap korelasi** agar lebih mudah dipahami.

## Konsep Cara Kerja Script

### 1. **Koneksi ke Database PostgreSQL**
Script terhubung ke database lokal PostgreSQL untuk mengambil data yang dibutuhkan. Koneksi dibuat menggunakan sqlalchemy dan psycopg2.

### 2. **Mengambil Data dari Tiga Tabel**
Data diambil menggunakan query SQL dari tiga tabel:
- regulatory_permits → informasi status perizinan konservasi.
- land_tenure_records → jenis dan batas kepemilikan lahan.
- biodiversity_monitoring → data biodiversitas seperti jumlah spesies, kepadatan pohon, dan kualitas air.
Data dari ketiga tabel ini di-*join* berdasarkan Conservation_ID.

### 3. **Transformasi Data Kategorikal**
Kolom-kolom kategorikal seperti permit_status, land_type, dan boundary_defined diubah menjadi format numerik menggunakan **One-Hot Encoding**, agar bisa dihitung korelasinya.

### 4. **Menghitung Korelasi**
Dengan menggunakan .corr(), script menghitung **matriks korelasi Pearson** antar semua kolom numerik, termasuk hasil encoding dan metrik biodiversitas.

### 5. **Filter Korelasi Tertentu**
Script hanya mengambil bagian dari matriks korelasi yang menunjukkan hubungan antara:
- Variabel regulasi (permit, tipe lahan, batas lahan)
- Indikator biodiversitas (species_count, tree_density, water_quality)

### 6. **Visualisasi dengan Heatmap**
Menggunakan seaborn.heatmap(), hubungan tersebut divisualisasikan dalam **heatmap** untuk memperlihatkan kekuatan dan arah korelasi.

## Tujuan Script Ini
- Mengetahui apakah kebijakan/regulasi konservasi berdampak pada biodiversitas.
- Membantu pengambilan keputusan dalam manajemen konservasi berbasis data.
- Menyajikan hasil analisis dalam visual yang jelas dan mudah dipahami.


## Hasil Analisa (Heatmap Korelasi)

Output dari script ini adalah sebuah **heatmap** yang memperlihatkan:
- **Kekuatan hubungan** antara faktor regulasi dan indikator biodiversitas.
- **Arah hubungan** (positif atau negatif).

### Interpretasi Nilai Korelasi:
| Nilai Korelasi | Interpretasi             |
|----------------|--------------------------|
| > 0.7 / < -0.7 | Korelasi kuat            |
| 0.3 - 0.7      | Korelasi sedang          |
| < 0.3          | Korelasi lemah/tidak ada |

Contoh:
- Korelasi 0.65 antara permit_status_Approved dan species_count → status izin yang disetujui berkorelasi positif sedang-kuat terhadap jumlah spesies.
- Korelasi -0.50 antara land_type_Private dan water_quality → lahan privat memiliki hubungan negatif terhadap kualitas air.

## Kesimpulan
Heatmap ini menunjukkan korelasi antara faktor regulasi (seperti status izin, tipe kepemilikan lahan, dan keberadaan batas wilayah) dengan metrik biodiversitas (jumlah spesies, kepadatan pohon, dan kualitas air). Nilai korelasi berkisar dari -1 hingga 1, di mana:
- Positif (+) → hubungan searah: jika satu naik, yang lain cenderung naik juga.
- Negatif (–) → hubungan berlawanan: jika satu naik, yang lain cenderung turun.
- Semakin mendekati 0 → hubungan lemah atau tidak ada hubungan.

Berikut penjelasan per faktor:
#### Status Izin (permit_status)
Approved:
- tree_density: korelasi negatif kuat (-0.20) → wilayah dengan izin disetujui cenderung memiliki kepadatan pohon lebih rendah.
- water_quality: korelasi positif (+0.14) → sedikit peningkatan kualitas air.
- species_count: korelasi lemah (-0.06) → tidak signifikan.

Pending:
- tree_density: korelasi positif (+0.20) → menunggu izin justru berkaitan dengan kepadatan pohon yang lebih tinggi.
- water_quality: negatif (-0.14) → kualitas air cenderung menurun.
- species_count: positif lemah (+0.06) → hampir netral.

#### Tipe Kepemilikan Lahan (land_type)
Community Land:
- tree_density: korelasi positif tertinggi (+0.21) → lahan komunitas mendukung kepadatan pohon.
- species_count: positif (+0.11) → cenderung lebih banyak spesies.
- water_quality: hampir netral (-0.02).

Private Land:
- water_quality: positif (+0.13) → kualitas air relatif baik.
- Korelasi lainnya lemah dan mendekati nol.

State Land:
- Korelasi negatif di ketiga metrik, terutama tree_density (-0.14), menunjukkan potensi degradasi dalam kawasan milik negara.

#### Batas Wilayah Terdefinisi (boundary_defined)
Yes:
- water_quality: korelasi positif (+0.13) → adanya batas wilayah berhubungan dengan kualitas air lebih baik.
- species_count dan tree_density: korelasi lemah positif.

No:
- water_quality: korelasi negatif (-0.13) → kualitas air menurun bila batas tidak jelas.
- Korelasi lainnya juga sedikit negatif.

#### Kesimpulan Umum
- Faktor regulasi memang berpengaruh, tapi sebagian besar korelasinya lemah.
- Lahan komunitas dan izin yang belum disetujui justru berkaitan dengan kepadatan pohon yang lebih tinggi, mungkin karena belum terjadi intervensi pembangunan.
- Kehadiran batas wilayah tampaknya mendukung kualitas air, mungkin karena pengelolaan lebih teratur.
- Lahan negara menunjukkan hasil negatif di semua metrik, yang bisa menandakan kurangnya perlindungan atau pengelolaan efektif.

------------

## Studi Kasus 2 : Optimalisasi Pendanaan Berbasis Blockchain

### Latar Belakang Masalah
Investor dampak semakin membutuhkan bukti terverifikasi tentang dampak lingkungan dan integritas data. Sebuah konsorsium investor hijau telah mengalokasikan $15 juta untuk proyek mangrove tetapi membutuhkan jaminan bahwa dana akan mendukung proyek dengan:
- Perlindungan data blockchain yang kuat (enkripsi tinggi)
- Persetujuan masyarakat yang terdokumentasi
- Efisiensi penyerapan karbon yang terbukti

### Persyaratan Analisis
- Kuantifikasi penyerapan CO2 per juta Rupiah yang diinvestasikan
- Verifikasi kepatuhan tata kelola data blockchain
- Identifikasi proyek berkinerja terbaik yang memenuhi semua kriteria

## Pembahasan Analisa dengan Query SQL

### Topic 1 : Kuantifikasi penyerapan CO2 per juta Rupiah yang diinvestasikan
    SELECT
      fs.Conservation_ID,
      fs.Source_Name AS "Sumber Dana",
      fs.Amount_IDR,
      ei.CO2_Sequestration_Tonnes,
      ei.CO2_Sequestration_Tonnes / (fs.Amount_IDR/1000000) AS "CO2_per_juta_IDR",
      ei.Impact_Type
    FROM
      funding_sources fs
    JOIN
      environmental_impact ei ON fs.Conservation_ID = ei.Conservation_ID
    WHERE
      ei.Impact_Type = 'Carbon Storage'
    ORDER BY
      "CO2_per_juta_IDR" DESC;
  Output file:
  <img width="699" height="83" alt="image" src="https://github.com/user-attachments/assets/267fd1d8-83b0-456f-b8c2-29b2c70a478a" />

### Analisis Efisiensi Pendanaan Konservasi terhadap Penyerapan Karbon
SQL ini dirancang untuk **mengevaluasi seberapa efisien dana konservasi digunakan dalam menyerap emisi karbon (CO₂)**. Fokus analisa diarahkan pada proyek-proyek konservasi yang berdampak langsung pada **penyimpanan karbon (carbon storage)**, dengan membandingkan jumlah karbon yang berhasil diserap terhadap jumlah dana yang dikeluarkan.

### Tujuan Utama
Tujuan dari analisa ini adalah untuk:
- Mengidentifikasi **proyek konservasi karbon** yang paling **efisien secara anggaran**.
- Menghitung rasio **ton CO₂ yang diserap per satu juta rupiah**.
- Memberikan dasar bagi pengambilan keputusan dalam **alokasi dana konservasi** berdasarkan kinerja aktual.
- Membantu stakeholders memahami nilai ekonomis dari setiap investasi konservasi.


### Struktur Konsep dan Cara Kerja Query

#### 1. **Tabel yang Digunakan**
- funding_sources: berisi informasi dana proyek, termasuk ID proyek (Conservation_ID), nama sumber dana, dan jumlah dana (Amount_IDR).
- environmental_impact: mencatat dampak lingkungan dari masing-masing proyek, termasuk jenis dampak (Impact_Type) dan jumlah CO₂ yang diserap (CO2_Sequestration_Tonnes).

#### 2. **JOIN antar Tabel**
Data digabung berdasarkan Conservation_ID, yaitu ID unik dari proyek konservasi, untuk menghubungkan data pendanaan dengan hasil dampak lingkungannya.

#### 3. **Filter Data**
Query hanya memilih data dengan `Impact_Type = 'Carbon Storage', sehingga hanya proyek penyimpanan karbon yang dianalisis.

#### 4. **Perhitungan Efisiensi**
Rasio efisiensi dihitung dengan rumus:
CO₂ per 1 juta IDR = Total CO₂ diserap / (Jumlah dana / 1.000.000)
Hasilnya memberikan metrik: **berapa ton CO₂ yang diserap setiap 1 juta rupiah** dana.

#### 5. **Pengurutan Hasil**
Hasil diurutkan dari proyek dengan **efisiensi tertinggi ke terendah**, sehingga proyek paling berdampak langsung terlihat di atas.

#### Manfaat Analisa
- **Mendeteksi proyek konservasi yang hemat biaya** dan berdampak tinggi.
- Memberikan alat ukur objektif untuk **perbandingan antar proyek** berbasis rasio hasil terhadap biaya.
- Menjadi dasar evaluasi dalam pelaporan efektivitas investasi konservasi kepada donor, lembaga pendanaan, dan regulator.
- Memperkuat akuntabilitas dan transparansi dalam program lingkungan berbasis dana publik atau swasta.

#### Interpretasi Hasil
Hasil query akan menampilkan daftar proyek konservasi dengan kolom:
- **Sumber Dana**: dari mana dana berasal.
- **Jumlah Dana (IDR)**: total dana yang digunakan.
- **Penyerapan CO₂**: jumlah karbon yang berhasil diserap (dalam ton).
- **Efisiensi (CO₂ per juta IDR)**: metrik utama untuk analisa.
- **Jenis Dampak**: dalam hal ini selalu `'Carbon Storage'`.

#### Contoh Interpretasi:
| Conservation_ID | Sumber Dana     | Amount_IDR | CO₂ (Ton) | CO₂ per juta IDR |
|-----------------|------------------|------------|-----------|------------------|
| 101             | Lembaga A         | 10.000.000 | 50        | 5.00             |
| 102             | Donatur B         | 20.000.000 | 60        | 3.00             |
| 103             | Pemerintah C      | 15.000.000 | 75        | 5.00             |

Interpretasi:
- Proyek 101 dan 103 memiliki efisiensi yang sama (5 ton per juta IDR), meskipun jumlah CO₂-nya berbeda.
- Proyek 102 terlihat kurang efisien meskipun menyerap karbon dalam jumlah besar, karena biayanya lebih tinggi.

#### Rekomendasi Analisa
Berdasarkan hasil analisa ini, berikut rekomendasi yang dapat diambil:
1. **Prioritaskan proyek dengan efisiensi tinggi** dalam pendanaan selanjutnya, karena mampu menyerap karbon lebih banyak per unit dana.
2. Gunakan hasil ini untuk **membuat klasifikasi proyek**: efisiensi tinggi, sedang, dan rendah.
3. Lakukan investigasi lebih lanjut pada proyek dengan **efisiensi rendah**, untuk mengetahui penyebabnya (misalnya: biaya overhead, lokasi geografis, teknologi yang digunakan).
4. Jadikan metrik ini sebagai bagian dari **framework evaluasi rutin** dalam program konservasi karbon.
5. Gunakan visualisasi tambahan (grafik batang, bubble chart, atau heatmap) untuk menyampaikan hasil ke publik atau pengambil keputusan.

#### Kesimpulan
Analisa ini memberikan **indikator kuantitatif sederhana namun kuat** untuk mengukur efektivitas dana konservasi dalam menyerap karbon. Dengan membandingkan CO₂ per juta IDR, organisasi dapat lebih bijak dalam:
- Menentukan proyek prioritas
- Menyusun anggaran
- Menyampaikan bukti kinerja lingkungan kepada para pemangku kepentingan

### Topic 2 : Persetujuan masyarakat yang terdokumentasi
    WITH compliance_stats AS (
      SELECT
        Conservation_ID,
        COUNT(*) AS total_records,
        SUM(CASE WHEN Encryption_Level = 'High' AND Consent_Obtained = 'Yes' THEN 1 ELSE 0 END) AS compliant_records
      FROM
        blockchain_data_compliance
      GROUP BY
        Conservation_ID
    )
    SELECT
      Conservation_ID,
      total_records,
      compliant_records,
      ROUND((compliant_records::numeric / total_records) * 100, 2) AS compliance_percentage
    FROM
      compliance_stats
    ORDER BY
      compliance_percentage DESC;
Output File : <img width="483" height="84" alt="image" src="https://github.com/user-attachments/assets/38ce9474-c01f-487b-95d2-c6768a34da85" />

### Analisis Kepatuhan Proyek terhadap Standar Keamanan Data Blockchain
Analisa ini berfokus pada pengukuran **tingkat kepatuhan proyek konservasi** terhadap dua indikator utama dalam standar keamanan data blockchain:
1. **Tingkat enkripsi (Encryption Level)** yang harus *tinggi*.
2. **Persetujuan data (Consent Obtained)** yang harus *ada/Yes*.

#### Tujuan Utama
Tujuan dari query ini adalah:
- Mengukur **presentase kepatuhan data** proyek konservasi terhadap standar keamanan berbasis blockchain.
- Mengidentifikasi proyek mana yang sudah memenuhi **standar tertinggi** dalam hal perlindungan data.
- Menyediakan **indikator numerik (dalam persen)** untuk mempermudah pemantauan dan pelaporan tingkat kepatuhan.

### Struktur Konsep dan Cara Kerja
#### 1. **CTE (Common Table Expression): `compliance_stats`**
- Mengelompokkan data dari tabel blockchain_data_compliance berdasarkan Conservation_ID.
- Untuk setiap proyek:
  - **`total_records`**: jumlah total entri terkait data blockchain.
  - **`compliant_records`**: jumlah entri yang memenuhi syarat:
    - Enkripsi = 'High'
    - Persetujuan = 'Yes'

#### 2. **Perhitungan Presentase Kepatuhan**
- Menghitung **presentase kepatuhan** dengan membagi jumlah data yang memenuhi syarat (compliant_records) dengan total data (total_records), dikalikan 100 dan dibulatkan ke dua desimal.

#### 3. **Pengurutan Hasil**
- Data diurutkan dari proyek dengan tingkat kepatuhan tertinggi ke yang terendah untuk memudahkan identifikasi proyek paling patuh.

#### Manfaat Analisa
- **Evaluasi akuntabilitas dan keamanan data** dalam proyek konservasi.
- Memberikan dasar untuk **audit teknologi dan kepatuhan digital** terhadap prinsip transparansi dan perlindungan data.
- Membantu organisasi atau regulator dalam **mengidentifikasi risiko pelanggaran privasi atau keamanan data**.
- Mendukung pelaporan ke publik atau donor mengenai tingkat keandalan sistem data berbasis blockchain.

#### Interpretasi Hasil
Tabel hasil akan berisi:
| Conservation_ID | Total Records | Compliant Records | Compliance (%) |
|-----------------|----------------|--------------------|----------------|
| 101             | 10             | 10                 | 100.00         |
| 102             | 8              | 5                  | 62.50          |
| 103             | 12             | 6                  | 50.00          |

#### Penjelasan:
- Proyek dengan **100% kepatuhan** menunjukkan bahwa semua data terenkripsi secara maksimal **dan** memiliki persetujuan data.
- Proyek dengan **<100%** mungkin memiliki:
  - Tingkat enkripsi yang tidak sesuai (Medium/Low).
  - Kurangnya persetujuan data.
- Proyek dengan **0%** sangat rentan terhadap masalah keamanan dan etika data.

#### Rekomendasi
Berdasarkan analisa ini, rekomendasi yang bisa diambil antara lain:
1. **Audit menyeluruh** terhadap proyek dengan kepatuhan rendah untuk memahami akar permasalahan.
2. Terapkan **kebijakan internal** agar semua entri data memiliki enkripsi tinggi dan persetujuan sah.
3. Jadikan **persentase kepatuhan** ini sebagai **Key Performance Indicator (KPI)** untuk evaluasi proyek digital.
4. Lakukan **pelatihan kepada tim teknis dan hukum** terkait pentingnya kepatuhan data digital.
5. Kembangkan sistem **pemberitahuan otomatis** saat entri data baru tidak memenuhi standar keamanan.

#### Kesimpulan
Analisis ini memberikan pandangan yang jelas tentang **sejauh mana proyek konservasi menerapkan keamanan dan etika pengelolaan data** dalam sistem blockchain. Tingkat kepatuhan yang tinggi mencerminkan:
- Kinerja data yang aman
- Proses administrasi yang transparan
- Kepatuhan terhadap prinsip digital governance
Sementara itu, proyek dengan tingkat kepatuhan rendah memerlukan perhatian khusus sebelum berlanjut ke fase pendanaan atau ekspansi.

### Topic 3 : Efisiensi penyerapan karbon yang terbukti
    SELECT
      fs.Conservation_ID,
      fs.Source_Name,
      fs.Amount_IDR,
      ei.CO2_Sequestration_Tonnes,
      ei.CO2_Sequestration_Tonnes / (fs.Amount_IDR/1000000) AS CO2_per_juta_IDR,
      bdc.Encryption_Level,
      bdc.Consent_Obtained
    FROM
      funding_sources fs
    JOIN
      environmental_impact ei ON fs.Conservation_ID = ei.Conservation_ID
    JOIN
      blockchain_data_compliance bdc ON fs.Conservation_ID = bdc.Conservation_ID
    WHERE
      ei.Impact_Type = 'Carbon Storage'
      AND bdc.Encryption_Level = 'High'
      AND bdc.Consent_Obtained = 'Yes'
      AND fs.Amount_IDR >= 50000000
    ORDER BY
      CO2_per_juta_IDR DESC,
      fs.Amount_IDR DESC;
Output File : <img width="824" height="84" alt="image" src="https://github.com/user-attachments/assets/527ff627-8d76-42dc-9e0c-39219dd24460" />

### Analisis Proyek Konservasi Karbon dengan Standar Keamanan Data Tinggi dan Efisiensi Anggaran
SQL ini dirancang untuk **mengidentifikasi proyek konservasi karbon yang memenuhi standar keamanan data blockchain tertinggi**, telah mendapat persetujuan penggunaan data, dan memiliki jumlah dana minimum yang layak. Fokus utamanya adalah **efisiensi penyerapan CO₂ terhadap dana**, hanya untuk proyek yang sudah *terverifikasi secara digital dan aman*.

#### Tujuan Utama
Tujuan dari analisis ini adalah:
- Menilai **efisiensi penyerapan karbon (CO₂)** untuk proyek dengan **enkripsi data tinggi dan persetujuan legal lengkap**.
- Menyaring hanya proyek yang memiliki **pendanaan minimum sebesar 50 juta rupiah**, agar analisis berfokus pada proyek berdampak menengah hingga besar.
- Menyediakan metrik **CO₂ per juta rupiah** sebagai tolok ukur efisiensi lingkungan berbasis keuangan.
- Membantu dalam seleksi dan pembiayaan proyek konservasi berbasis data.

### Struktur Konsep dan Cara Kerja
#### 1. **Tabel yang Digunakan**
- `funding_sources`: menyimpan informasi pendanaan, nama donor, dan ID proyek.
- `environmental_impact`: berisi data dampak lingkungan, termasuk penyerapan karbon (CO₂).
- `blockchain_data_compliance`: mencatat status enkripsi data dan persetujuan penggunaan data.

#### 2. **JOIN dan Filter**
Data digabung menggunakan `Conservation_ID`, lalu difilter dengan kriteria:
- **Jenis dampak** = `'Carbon Storage'`
- **Tingkat enkripsi** = `'High'`
- **Persetujuan data** = `'Yes'`
- **Jumlah dana** ≥ 50 juta IDR

#### 3. **Perhitungan Efisiensi**
Menghitung rasio efisiensi:
CO₂_per_juta_IDR = Total CO₂ diserap / (Jumlah Dana / 1.000.000)

Nilai ini menunjukkan seberapa banyak CO₂ (dalam ton) yang berhasil diserap untuk setiap satu juta rupiah.

#### 4. **Pengurutan Hasil**
- Proyek dengan efisiensi tertinggi ditampilkan paling atas.
- Jika efisiensi sama, proyek dengan dana lebih besar diurutkan terlebih dahulu.

#### Manfaat Analisa
- Menyediakan data terverifikasi yang mendukung **pengambilan keputusan berbasis performa dan kepatuhan data**.
- Menyaring proyek yang sudah **siap didanai dan transparan**, karena telah memenuhi semua aspek keamanan dan legalitas digital.
- Membantu donor, pemerintah, atau investor untuk memilih proyek yang **paling hemat biaya** dan **berdampak maksimal terhadap lingkungan**.
- Memudahkan audit dan pelaporan karena hanya menampilkan proyek yang **memenuhi semua syarat minimum kualitas data dan anggaran**.

#### Interpretasi Hasil
Tabel hasil akan mencantumkan:
| Conservation_ID | Source_Name | Amount_IDR | CO₂ (Ton) | CO₂/Juta IDR | Encryption | Consent |
|-----------------|-------------|------------|-----------|--------------|------------|---------|
| 200             | GreenFund   | 80.000.000 | 100       | 1.25         | High       | Yes     |
| 187             | EcoBank     | 120.000.000| 120       | 1.00         | High       | Yes     |
| 165             | ClimateOrg  | 50.000.000 | 60        | 1.20         | High       | Yes     |

#### Penjelasan:
- Proyek pertama paling efisien (1.25 ton CO₂ per juta IDR).
- Semua proyek memiliki tingkat keamanan data dan persetujuan yang sah.
- Semua proyek memenuhi syarat minimal pendanaan dan bisa dianggap prioritas dalam pemilihan program lanjutan.

#### Rekomendasi
Berdasarkan hasil dan kriteria yang digunakan, beberapa rekomendasi yang dapat diambil:
1. **Fokuskan pendanaan ke proyek dengan efisiensi tinggi**, terutama jika tingkat keamanan data dan persetujuan sudah memenuhi syarat.
2. Jadikan metrik **CO₂/juta IDR** sebagai bagian dari sistem evaluasi rutin proyek konservasi.
3. Terapkan filter keamanan data yang sama dalam proyek-proyek masa depan sebagai standar minimum.
4. Kembangkan laporan publik atau dashboard visual berdasarkan analisis ini agar mudah dipahami oleh pemangku kepentingan non-teknis.
5. Gunakan hasil ini sebagai referensi untuk **pemeringkatan proyek konservasi karbon** di tingkat nasional atau internasional.

#### Kesimpulan
Query ini memberikan metode penyaringan yang sangat terarah dan terukur untuk:
- Menentukan proyek konservasi yang **bernilai tinggi secara lingkungan**,
- Sudah **patuh pada prinsip etika dan keamanan data digital**, serta
- Layak diprioritaskan untuk **alokasi pendanaan** lebih lanjut.
Dengan menggabungkan aspek **efisiensi lingkungan**, **integritas digital**, dan **kelayakan finansial**, analisis ini menciptakan pendekatan yang seimbang antara konservasi, teknologi, dan transparansi.

# Analisis Pendanaan Konservasi terhadap Penyerapan CO₂ dan Keamanan Data
    import pandas as pd
    import psycopg2
    from sqlalchemy import create_engine
    import matplotlib.pyplot as plt
    import seaborn as sns
    import numpy as np
    import plotly.express as px
    
    # Setup koneksi database
    conn_string = "postgresql://postgres:postgresql@localhost:5432/postgres"
    db = create_engine(conn_string)
    conn = db.connect()
    
    # Query data untuk visualisasi
    query = """
    SELECT fs.conservation_id, fs.source_name, fs.amount_idr,
    ei.co2_sequestration_tonnes,
    ei.CO2_Sequestration_Tonnes / (fs.amount_idr/1000000) AS co2_per_juta_idr,
    bdc.encryption_level, bdc.Consent_Obtained
    FROM funding_sources fs
    JOIN environmental_impact ei ON fs.conservation_id = ei.conservation_id
    JOIN blockchain_data_compliance bdc ON fs.Conservation_ID = bdc.conservation_id
    WHERE ei.Impact_Type = 'Carbon Storage'
    """
    
    df = pd.read_sql(query, conn)
    conn.close()
    
    # Konversi Encription_level
    df['encryption_score'] = df['encryption_level'].map({'High': 3, 'Medium' : 2, 'Low' : 1})
    
    #vIsualisasi 3D dengan Plotly
    fig = px.scatter_3d(
        df,
        x = 'amount_idr',
        y = 'co2_sequestration_tonnes',
        z = "encryption_score",
        color = 'source_name',
        size = 'co2_per_juta_idr',
        hover_name= 'conservation_id',
        labels = {
            'amount_idr' : 'Jumlah Dana (IDR)',
            'co2_sequestration_tonnes' : 'Penyerapan CO2 (Dalam Ton)',
            'encryption_score' : 'Tingkat Enkripsi',
            'source_name' : 'Sumber Dana',
            'co2_per_juta_rupiah' : 'Rata-rata CO2/Juta Rupiah'
            },
            title = 'Visualisasi Python: Scatter 3D (Jumlah Dana vs Penyerapan CO2 vs Tingkat Enkripsi'
    )
    # UPDATE LAYOUT
    fig.update_layout(
        scene = dict(
            xaxis_title = 'Jumlah Dana (Juta IDR)',
            yaxis_title = 'Penyerapan CO2',
            zaxis_title = "Tingkat Enkripsi",
            zaxis = dict(tickvals= [1,2,3], ticktext=['Low','medium','High'])
        ),
        margin = dict(l=0, r=0 , b=0, t=30),
        height = 600,
        width = 800
    )
    fig.show()
<img width="809" height="609" alt="image" src="https://github.com/user-attachments/assets/c8879490-8830-4699-8ed0-d5fb5b9ed608" />

## Tujuan Analisis
Analisis ini bertujuan untuk:
- Menilai **seberapa efektif** dana konservasi dalam menyerap karbon (CO₂).
- Mengukur **efisiensi penyerapan karbon** berdasarkan setiap **satu juta rupiah** dana yang dikeluarkan.
- Mengetahui bagaimana **tingkat keamanan data (encryption level)** berhubungan dengan kualitas proyek.
- Menyediakan **visualisasi eksploratif** untuk mendukung pengambilan keputusan yang berbasis data.

## Konsep dan Cara Kerja
### 1. Koneksi ke Database
Data diambil dari database PostgreSQL yang berisi informasi terkait proyek konservasi, dampak lingkungan, dan kepatuhan terhadap standar keamanan data.

### 2. Pengambilan dan Penyatuan Data
Data digabung dari tiga sumber utama:
- **Sumber Dana Konservasi**: Jumlah dana, nama penyumbang, dan ID proyek.
- **Dampak Lingkungan**: Fokus pada **penyerapan CO₂** sebagai indikator manfaat lingkungan.
- **Kepatuhan Blockchain**: Menyediakan informasi tentang **tingkat enkripsi** dan **persetujuan data**.

### 3. Transformasi dan Perhitungan
Beberapa transformasi dilakukan:
- **Konversi kualitas enkripsi** (High, Medium, Low) menjadi skor numerik (3, 2, 1).
- Perhitungan **rasio efisiensi**: seberapa banyak CO₂ yang berhasil diserap untuk setiap **1 juta rupiah** yang digunakan.

### 4. Visualisasi Interaktif 3D
Data divisualisasikan dalam bentuk **grafik scatter 3D** dengan sumbu:
- **X**: Jumlah dana proyek (IDR)
- **Y**: Total penyerapan karbon (Ton CO₂)
- **Z**: Skor enkripsi (1–3)
Ukuran titik menggambarkan efisiensi penyerapan karbon per satu juta rupiah, dan warna dibedakan berdasarkan sumber pendanaan.

## Hasil Analisa
Hasil visualisasi menunjukkan berbagai pola penting:
- Beberapa proyek dengan **dana sedang** memiliki **efisiensi penyerapan karbon yang sangat tinggi**, ditunjukkan oleh ukuran titik yang besar.
- Proyek dengan **skor enkripsi tinggi** cenderung memiliki **kinerja lingkungan yang lebih baik**, menandakan integritas data dan pelaporan yang lebih dapat dipercaya.
- Ada proyek dengan **dana besar** tapi **efisiensi rendah**, yang bisa menjadi perhatian dalam evaluasi keberlanjutan.

## Interpretasi Data
Beberapa interpretasi yang dapat ditarik:
- Proyek dengan **penyerapan CO₂ tinggi dan skor enkripsi tinggi** kemungkinan merupakan proyek yang **berdampak dan aman** secara digital.
- Titik-titik besar menunjukkan proyek **efisien secara anggaran**, dan perlu dijadikan contoh dalam pendanaan berikutnya.
- Banyaknya titik di skor enkripsi rendah bisa mengindikasikan perlunya peningkatan standar keamanan data dalam proyek konservasi.

## Rekomendasi
Berdasarkan temuan dari analisis ini, beberapa rekomendasi yang dapat diberikan adalah:
1. **Dukung proyek yang efisien**, yaitu yang mampu menyerap karbon dengan rasio tinggi terhadap dana yang digunakan.
2. **Naikkan standar keamanan data** (enkripsi) untuk seluruh proyek konservasi, agar transparansi dan kepercayaan publik meningkat.
3. Gunakan hasil analisa ini untuk merancang **kebijakan pendanaan berbasis dampak**, bukan hanya berdasarkan jumlah pengeluaran.
4. Lakukan **monitoring rutin** terhadap proyek yang punya dana besar tapi dampak kecil, untuk evaluasi dan audit.

## Manfaat Analisa
- Memberikan gambaran **multidimensi** antara keuangan, lingkungan, dan keamanan data.
- Membantu stakeholder dan pemangku kebijakan dalam **memprioritaskan alokasi dana** secara strategis.
- Memperkenalkan metode visualisasi yang **interaktif dan modern**, cocok untuk pelaporan ke publik atau presentasi.

## Kesimpulan
1. Hubungan Dana vs Penyerapan CO₂
Terlihat hubungan searah (positif): semakin besar dana yang diberikan, semakin besar penyerapan CO₂.
Titik-titik merah (Kementerian LHK) menunjukkan pendanaan lebih besar dan hasil penyerapan CO₂ lebih tinggi dibandingkan titik-titik biru (Yayasan Hijau).

2. Tingkat Enkripsi dan Efektivitas
Yayasan Hijau (biru) beroperasi pada tingkat enkripsi "High", tetapi hanya mencapai penyerapan CO₂ yang relatif rendah (400–520) dengan dana di bawah 50 juta IDR.
Kementerian LHK (merah) beroperasi pada tingkat enkripsi "Medium", tetapi dengan dana lebih besar (50–70 juta IDR), berhasil mencapai penyerapan CO₂ hingga 700.

Interpretasi: meskipun Yayasan Hijau menjaga keamanan tinggi (High encryption), program mereka tampaknya kurang efektif dalam penyerapan CO₂ dibanding program dari Kementerian LHK yang menggunakan tingkat enkripsi medium tapi memberikan lebih banyak dana.

### Kesimpulan Analisa
- Dana yang lebih besar secara konsisten berasosiasi dengan peningkatan penyerapan CO₂, terlepas dari tingkat enkripsi.
- Tingkat enkripsi tidak terlihat memengaruhi efektivitas secara langsung terhadap penyerapan CO₂ dalam data ini.
- Kementerian LHK menunjukkan performa lebih baik dalam hal efisiensi pendanaan terhadap penyerapan CO₂, walau dengan standar keamanan (enkripsi) yang lebih rendah.
  
------------

## Studi Kasus 3 : Prediksi Kinerja Proyek Berbasis Keterlibatan Masyarakat

### Latar Belakang Masalah
CEO ingin mengembangkan model prediktif untuk mengalokasikan sumber daya secara optimal berdasarkan pola keterlibatan masyarakat dalam 6 bulan pertama proyek. Data historis menunjukkan proyek dengan partisipasi masyarakat di atas 30% memiliki tingkat keberlanjutan 75% lebih tinggi setelah 3 tahun.

### Faktor Analisis
- Frekuensi kegiatan masyarakat (Lokakarya/Konsultasi/Pelatihan)
- Distribusi manfaat ekonomi kepada masyarakat lokal
- Tingkat partisipasi relatif terhadap ukuran komunitas
- Korelasi temporal antara kegiatan dan peningkatan biodiversitas

## Pembahasan Analisa dengan Query SQL

### Topic 1 : Frekuensi kegiatan masyarakat (Lokakarya/Konsultasi/Pelatihan)

    SELECT
      ce.Conservation_ID,
      mc.Location,
      ce.Activity_Type,
      COUNT(*) AS Frequency,
      AVG(ce.Participants) AS Avg_Participants,
      SUM(ce.Benefit_Distributed) AS Total_Benefit
    FROM
      community_engagement ce
    JOIN
      mangrove_conservation_records mc ON ce.Conservation_ID = mc.Conservation_ID
    GROUP BY
      ce.Conservation_ID, mc.Location, ce.Activity_Type
    ORDER BY
      ce.Conservation_ID, Frequency DESC;
    
Output file:
<img width="594" height="84" alt="image" src="https://github.com/user-attachments/assets/81072856-3474-4417-8e31-bff92646499d" />

#### Tujuan Utama
Query ini digunakan untuk menganalisis keterlibatan masyarakat (community engagement) berdasarkan jenis aktivitas (Activity_Type) dalam proyek konservasi mangrove. Hasilnya memberikan insight tentang:
- Seberapa sering tiap aktivitas dilakukan per proyek.
- Rata-rata jumlah peserta per aktivitas.
- Total manfaat ekonomi (dalam bentuk distribusi) dari aktivitas tersebut.

#### Struktur dan Penjelasan Komponen
#### 1. SELECT
- ce.Conservation_ID: Mengidentifikasi proyek konservasi.
- mc.Location: Menyediakan lokasi geografis proyek (dari tabel mangrove_conservation_records).
- ce.Activity_Type: Menunjukkan jenis kegiatan masyarakat (misalnya: pelatihan, pembersihan pantai, dll).
- COUNT(*) AS Frequency: Menghitung berapa kali aktivitas tersebut dilakukan dalam satu proyek.
- AVG(ce.Participants): Menghitung rata-rata jumlah peserta dari kegiatan tersebut.
- SUM(ce.Benefit_Distributed): Menjumlahkan total manfaat yang dibagikan kepada masyarakat dari aktivitas tersebut.

#### 2. FROM & JOIN
Menggabungkan data dari dua tabel:
- community_engagement → berisi data aktivitas masyarakat.
- mangrove_conservation_records → berisi info proyek dan lokasinya.
- Penggabungan berdasarkan Conservation_ID yang sama di kedua tabel.

#### 3. GROUP BY
Pengelompokan data dilakukan per:
- Proyek konservasi (Conservation_ID)
- Lokasi
- Jenis aktivitas
Setiap kombinasi unik akan menjadi satu baris hasil (aggregasi).

#### 4. ORDER BY
Dalam setiap proyek, jenis aktivitas diurutkan berdasarkan frekuensi tertinggi → memberi informasi aktivitas mana yang paling dominan dilakukan.

#### Manfaat Analisis Ini
- Mengidentifikasi aktivitas yang paling sering dilakukan di setiap proyek.
- Menilai partisipasi masyarakat untuk tiap jenis kegiatan.
- Melihat kontribusi ekonomi langsung melalui distribusi manfaat.
- Menyediakan dasar untuk perencanaan ulang kegiatan atau alokasi dana di masa depan.

#### Analisis Hasil:
Dari hasil query terlihat bahwa:
- Frekuensi Seragam: Setiap jenis kegiatan hanya dilakukan sekali per proyek dalam dataset ini
- Partisipasi: Workshop cenderung memiliki peserta lebih banyak (rata-rata 10-15 orang) dibanding konsultasi (8-9 orang)
- Manfaat Ekonomi: Konsultasi memiliki manfaat ekonomi yang lebih besar per kegiatan dibanding jenis lainnya

#### Interpretasi:
Hasil ini menunjukkan bahwa:
- Mungkin ada bias dalam dataset karena setiap jenis kegiatan hanya direkam sekali per proyek
- Workshop lebih efektif dalam menjangkau lebih banyak peserta
- Konsultasi mungkin melibatkan transfer manfaat ekonomi yang lebih signifikan

#### Rekomendasi:
- Diversifikasi Kegiatan: Lakukan lebih banyak variasi kegiatan dalam setiap proyek
- Pelacakan Lebih Detail: Rekam frekuensi kegiatan yang lebih akurat
- Analisis Longitudinal: Lakukan studi lanjutan untuk melihat perkembangan frekuensi kegiatan dari waktu ke waktu

### Topic 2 : Distribusi manfaat ekonomi kepada masyarakat lokal

    SELECT
      ce.Conservation_ID,
      mc.Location,
      SUM(ce.Benefit_Distributed) AS Total_Benefit,
      AVG(ce.Benefit_Distributed) AS Avg_Benefit_Per_Activity,
      SUM(ce.Participants) AS Total_Participants,
      SUM(ce.Benefit_Distributed) / NULLIF(SUM(ce.Participants), 0) AS Benefit_Per_Participant
    FROM
      community_engagement ce
    JOIN
      mangrove_conservation_records mc ON ce.Conservation_ID = mc.Conservation_ID
    GROUP BY
      ce.Conservation_ID, mc.Location
    ORDER BY
      Benefit_Per_Participant DESC;

Output file:
<img width="764" height="82" alt="image" src="https://github.com/user-attachments/assets/ee8abb89-d3a2-45d2-a1c4-d0a6e8d4b6b7" />

#### Tujuan Utama
Query ini dirancang untuk mengukur efektivitas distribusi manfaat dari kegiatan komunitas dalam proyek konservasi mangrove. Fokus utamanya adalah menghitung berapa besar manfaat ekonomi yang diterima rata-rata oleh setiap peserta di setiap proyek.

#### Struktur dan Penjelasan Komponen
#### 1. SELECT
Penjelasan masing-masing kolom hasil:
- ce.Conservation_ID: ID proyek konservasi.
- mc.Location: Lokasi dari proyek konservasi (dari tabel mangrove_conservation_records).
- SUM(ce.Benefit_Distributed) → Total_Benefit: Total manfaat ekonomi (misal dalam rupiah) yang didistribusikan untuk satu proyek.
- AVG(ce.Benefit_Distributed) → Avg_Benefit_Per_Activity: Rata-rata manfaat ekonomi per aktivitas dalam proyek.
- SUM(ce.Participants) → Total_Participants: Jumlah total peserta dalam seluruh aktivitas proyek.
- SUM(ce.Benefit_Distributed) / NULLIF(SUM(ce.Participants), 0) → Benefit_Per_Participant: Rata-rata manfaat yang diterima per peserta. NULLIF() digunakan untuk mencegah pembagian dengan nol (jika tidak ada peserta sama sekali).

#### 2. FROM & JOIN
Menggabungkan dua tabel:
- community_engagement (ce): Data keterlibatan masyarakat.
- mangrove_conservation_records (mc): Informasi proyek konservasi.
- Disatukan berdasarkan Conservation_ID untuk menggabungkan informasi lokasi proyek dengan aktivitas yang dilakukan.

#### 3. GROUP BY
Hasilnya: setiap baris mewakili satu proyek konservasi di satu lokasi tertentu.

#### 4. ORDER BY
Mengurutkan hasil berdasarkan manfaat rata-rata per peserta dari tertinggi ke terendah.
Ini membantu mengidentifikasi proyek mana yang paling efisien dalam memberikan manfaat kepada masyarakat yang terlibat.

#### Manfaat Analisis Ini
- Memberi gambaran nilai ekonomi langsung yang diterima masyarakat per proyek.
- Memungkinkan evaluasi efisiensi sosial tiap proyek (apakah banyak peserta namun manfaatnya kecil, atau sedikit peserta tapi manfaatnya besar).
- Berguna untuk pengambilan keputusan berbasis data, misalnya:
- Proyek mana yang perlu efisiensi distribusi manfaat?
- Di mana distribusi terlalu tersebar/tidak merata?
- Bagaimana standar minimal benefit per peserta bisa diterapkan?

#### Analisis Hasil:
Dari hasil query terlihat bahwa:
- Variasi Manfaat: Manfaat ekonomi per peserta bervariasi dari 400,000 hingga 937,500 IDR
- Proyek Unggulan: Takalar memiliki manfaat per peserta tertinggi (937,500 IDR)
- Trade-off: Proyek dengan peserta lebih banyak cenderung memiliki manfaat per peserta lebih rendah
- Konsistensi: Beberapa proyek memiliki manfaat total yang sama (7,500,000 IDR) meski jumlah peserta berbeda

#### Interpretasi:
Hasil ini menunjukkan bahwa:
- Distribusi manfaat tidak merata antar proyek
- Ada kemungkinan perbedaan strategi distribusi manfaat
- Proyek dengan skala lebih kecil (peserta lebih sedikit) bisa memberikan manfaat lebih besar per orang

#### Rekomendasi:
- Standarisasi Manfaat: Kembangkan pedoman distribusi manfaat yang lebih adil
- Studi Komparatif: Pelajari mengapa proyek tertentu bisa memberikan manfaat lebih besar per peserta
- Monitoring: Lacak dampak manfaat ekonomi terhadap partisipasi jangka panjang

### Topic 3 : Tingkat partisipasi relatif terhadap ukuran komunitas
    WITH community_stats AS (
      SELECT
        ce.Conservation_ID,
        mc.Location,
        COUNT(DISTINCT cm.Member_ID) AS Total_Community_Members,
        SUM(ce.Participants) AS Total_Participants,
        SUM(ce.Participants)*100.0 / NULLIF(COUNT(DISTINCT cm.Member_ID), 0) AS Participation_Percentage
      FROM
        community_engagement ce
      JOIN
        mangrove_conservation_records mc ON ce.Conservation_ID = mc.Conservation_ID
      CROSS JOIN
        community_members cm
      GROUP BY
        ce.Conservation_ID, mc.Location
    )
    SELECT
      Conservation_ID,
      Location,
      Total_Community_Members,
      Total_Participants,
      Participation_Percentage,
      RANK() OVER (ORDER BY Participation_Percentage DESC) AS Participation_Rank
    FROM
      community_stats
    ORDER BY
      Participation_Percentage DESC;
Output File:
<img width="823" height="83" alt="image" src="https://github.com/user-attachments/assets/e68bf1cc-5c1e-43f6-93cc-d82ade14b164" />

#### Tujuan Utama
Query ini digunakan untuk mengukur tingkat partisipasi masyarakat dalam proyek konservasi, dengan membandingkan jumlah peserta kegiatan dengan jumlah total anggota komunitas yang tersedia di setiap proyek. Selain itu, query juga memberi peringkat proyek berdasarkan tingkat partisipasi.

#### Struktur dan Penjelasan Komponen
#### 1. CTE (WITH community_stats AS (...))
CTE atau Common Table Expression ini digunakan untuk menyusun data ringkasan partisipasi komunitas per proyek sebelum dianalisis lebih lanjut.

Penjelasan kolom:
- ce.Conservation_ID: ID proyek konservasi.
- mc.Location: Lokasi proyek.
- COUNT(DISTINCT cm.Member_ID) → Total_Community_Members: Jumlah unik anggota komunitas (menghindari duplikasi).
- SUM(ce.Participants) → Total_Participants: Jumlah total peserta dari semua aktivitas dalam satu proyek.

SUM(...) * 100 / COUNT(...) → Participation_Percentage: Persentase partisipasi, yaitu:

(Total Peserta / Jumlah Anggota Komunitas)
×
100
(Total Peserta / Jumlah Anggota Komunitas)×100
Digunakan NULLIF(..., 0) untuk menghindari pembagian dengan nol jika tidak ada anggota terdaftar.

#### 2. CROSS JOIN
CROSS JOIN menyebabkan setiap baris dari community_engagement digabungkan dengan setiap baris dari community_members. Jika tidak disaring lebih lanjut (misalnya berdasarkan Conservation_ID)

#### 3. GROUP BY
Mengelompokkan data per proyek dan lokasi.
Setiap baris hasilnya mewakili satu proyek konservasi di satu lokasi.

#### 4. Main SELECT
Mengambil semua metrik dari CTE.

RANK() OVER (...) digunakan untuk memberi peringkat proyek berdasarkan tingkat partisipasi dari yang tertinggi ke terendah.

#### 5. ORDER BY
Menampilkan proyek dengan partisipasi tertinggi terlebih dahulu, untuk membantu mengidentifikasi proyek yang paling efektif melibatkan masyarakat.

#### Manfaat Analisis Ini
- Memberikan wawasan tentang seberapa besar keterlibatan masyarakat dalam proyek konservasi.
- Memudahkan dalam mengidentifikasi proyek yang membutuhkan peningkatan partisipasi.
- Mendukung pembuatan kebijakan berbasis data seperti:
- Perluasan komunikasi ke komunitas dengan partisipasi rendah.
- Insentif untuk proyek dengan keterlibatan tinggi.

#### Analisis Hasil:
Dari hasil query terlihat bahwa:
- Partisipasi Tinggi: Semua proyek menunjukkan persentase partisipasi >100% karena jumlah peserta melebihi anggota komunitas
- Data Anggota Terbatas: Hanya 1 anggota komunitas yang tercatat per proyek, menunjukkan kemungkinan ketidaklengkapan data
- Proyek Unggulan: Lampung Barat memiliki partisipasi relatif tertinggi (1500%)

#### Interpretasi:
Hasil ini menunjukkan bahwa:
- Data anggota komunitas mungkin tidak lengkap atau tidak terhubung dengan benar ke proyek
- Partisipasi sebenarnya mungkin jauh lebih rendah dari yang terlihat
- Perlu verifikasi dan pelengkapan data anggota komunitas

#### Rekomendasi:
- Validasi Data: Verifikasi hubungan antara anggota komunitas dan proyek
- Pelengkapan Data: Tambahkan data anggota komunitas yang lebih lengkap
- Metrik Alternatif: Pertimbangkan metrik partisipasi absolut jika data relatif tidak akurat

### Topic 4 : Korelasi temporal antara kegiatan dan peningkatan biodiversitas

    WITH activity_stats AS (
      SELECT
        ce.Conservation_ID,
        mc.Location,
        mc.Carbon_Credits,
        COUNT(ce.Engage_ID) AS Activity_Count,
        AVG(ce.Participants) AS Avg_Participants,
        SUM(ce.Benefit_Distributed) AS Total_Benefit,
        AVG(mc.Date_Recorded - ce.Engagement_Date) AS Avg_Days_Between_Activity_And_Record
      FROM
        community_engagement ce
      JOIN
        mangrove_conservation_records mc ON ce.Conservation_ID = mc.Conservation_ID
      GROUP BY
        ce.Conservation_ID, mc.Location, mc.Carbon_Credits
    )
    SELECT
      Conservation_ID,
      Location,
      Carbon_Credits,
      Activity_Count,
      Avg_Participants,
      Total_Benefit,
      Avg_Days_Between_Activity_And_Record,
      CORR(Activity_Count, Carbon_Credits) OVER () AS Correlation_Activity_Carbon
    FROM
      activity_stats
    ORDER BY
      Carbon_Credits DESC;

  Output File:
  <img width="1073" height="85" alt="image" src="https://github.com/user-attachments/assets/cd494f73-b427-4b02-ac91-9b04971f0e67" />

#### Tujuan Utama
Query ini digunakan untuk:
- Menganalisis statistik kegiatan komunitas dalam proyek konservasi.
- Mengukur hubungan (korelasi) antara jumlah kegiatan dan jumlah kredit karbon yang dihasilkan.
- Memberikan gambaran menyeluruh per proyek: intensitas kegiatan, partisipasi, manfaat, efisiensi pencatatan, dan hasil akhir berupa kredit karbon.

#### Struktur dan Penjelasan Komponen
#### 1. CTE (WITH activity_stats AS (...))
Digunakan untuk menyusun data statistik per proyek terlebih dahulu sebelum dianalisis lebih lanjut.

Kolom dalam CTE:
- ce.Conservation_ID: ID proyek konservasi.
- mc.Location: Lokasi proyek.
- mc.Carbon_Credits: Total kredit karbon yang dihasilkan oleh proyek.
- COUNT(ce.Engage_ID) → Activity_Count: Jumlah kegiatan komunitas dalam proyek tersebut.
- AVG(ce.Participants) → Avg_Participants: Rata-rata peserta per kegiatan.
- SUM(ce.Benefit_Distributed) → Total_Benefit: Total manfaat ekonomi (dalam IDR atau satuan lain) yang didistribusikan ke masyarakat.
- AVG(mc.Date_Recorded - ce.Engagement_Date) → Avg_Days_Between_Activity_And_Record: - Rata-rata selisih hari antara tanggal kegiatan dan tanggal pencatatan di sistem.

#### 2. Main SELECT
Mengambil semua kolom dari activity_stats dan menambahkan analisis korelasi:
- CORR(...) OVER (): Fungsi agregat window untuk menghitung korelasi Pearson antara dua variabel:
- Activity_Count: Banyaknya kegiatan
- Carbon_Credits: Kredit karbon yang dihasilkan

Korelasi ini bersifat global (dihitung sekali untuk semua baris) dan ditampilkan di setiap baris.

#### 3. ORDER BY
Mengurutkan hasil dari proyek yang menghasilkan kredit karbon tertinggi ke yang terendah.
Mempermudah identifikasi proyek paling berdampak dari sisi lingkungan.

#### Manfaat Analisis Ini
Evaluasi Efektivitas Proyek:
- Apakah lebih banyak kegiatan komunitas berkontribusi pada lebih banyak kredit karbon?
- Monitoring Pelaksanaan Proyek:
- Cek apakah pencatatan dilakukan tepat waktu (Avg_Days_Between...).

#### Penilaian Dampak Sosial:
- Total manfaat ekonomi (Total_Benefit) bisa jadi indikator pemberdayaan masyarakat.

#### Makna Korelasi
Nilai korelasi (Correlation_Activity_Carbon) berkisar antara:
+1 → Hubungan sangat positif (semakin banyak kegiatan, semakin banyak kredit karbon).
0 → Tidak ada hubungan linier.
-1 → Hubungan sangat negatif (semakin banyak kegiatan, semakin sedikit kredit karbon).

Jika hasilnya misalnya 0.42, maka:

Ada korelasi positif sedang antara jumlah kegiatan dan kredit karbon. Artinya, kegiatan masyarakat kemungkinan berkontribusi terhadap peningkatan karbon terserap, meskipun tidak sepenuhnya linear.

#### Analisis Hasil:
Dari hasil query terlihat bahwa:
- Korelasi Positif: Ada korelasi moderat (0.42) antara jumlah kegiatan dan kredit karbon
- Waktu Respons: Rata-rata pencatatan kredit karbon dilakukan 0-7 hari setelah kegiatan
- Konsistensi: Semua proyek hanya memiliki 1 kegiatan yang tercatat
- Pola Temporal: Tidak ada pola jelas antara waktu kegiatan dan kredit karbon

#### Interpretasi:
Hasil ini menunjukkan bahwa:
- Kegiatan masyarakat mungkin berkontribusi pada peningkatan kredit karbon
- Efek kegiatan terlihat dalam waktu singkat (kurang dari seminggu)
- Data yang terbatas (hanya 1 kegiatan per proyek) membuat analisis temporal kurang akurat

#### Rekomendasi:
- Pelacakan Lebih Lama: Lakukan pencatatan kegiatan dan kredit karbon dalam periode lebih panjang
- Analisis Lanjutan: Gunakan model statistik lebih canggih dengan data lebih banyak
- Studi Lapangan: Verifikasi hubungan kausal antara kegiatan masyarakat dan biodiversitas

## Prediksi Kredit Karbon Berbasis Time Series dengan ARIMA

    import pandas as pd
    import psycopg2
    from sqlalchemy import create_engine
    import matplotlib.pyplot as plt
    import seaborn as sns
    import numpy as np
    from statsmodels.tsa.arima.model import ARIMA
    from xgboost import XGBRegressor
    from sklearn.metrics import mean_squared_error, r2_score
    from sklearn.model_selection import train_test_split

    # Setup koneksi database
    conn_string = "postgresql://postgres:postgresql@localhost:5432/postgres"
    db = create_engine(conn_string)
    conn = db.connect()
    
    # Query data untuk analisis prediktif
    query = """
    SELECT
    ce.Conservation_ID,
    mc.Location,
    COUNT(ce.Engage_ID) AS activity_count,
    AVG(ce.Participants) AS avg_participants,
    SUM(ce.Benefit_Distributed) AS total_benefit,
    AVG(mc.Date_Recorded - ce.Engagement_Date) AS avg_days_to_record,
    mc.Carbon_Credits
    FROM community_engagement ce
    JOIN mangrove_conservation_records mc ON ce.Conservation_ID = mc.Conservation_ID
    GROUP BY ce.Conservation_ID, mc.Location, mc.Carbon_Credits
    """
    
    df = pd.read_sql(query, conn)
    
    # Konversi timedelta ke hari
    df['avg_days_to_record'] = pd.to_timedelta(df['avg_days_to_record'])
    df['avg_days_to_record'] = df['avg_days_to_record'].dt.days

    arima_query = """
    SELECT
    ce.Engagement_Date,
    AVG(mc.Carbon_Credits) AS avg_carbon_credits,
    SUM(ce.Participants) AS total_participants
    FROM community_engagement ce
    JOIN mangrove_conservation_records mc ON ce.Conservation_ID = mc.Conservation_ID
    GROUP BY ce.Engagement_Date
    ORDER BY ce.Engagement_Date
    """
    
    df_1 = pd.read_sql(arima_query, conn)
    conn.close()
    df_1['engagement_date'] = pd.to_datetime(df_1['engagement_date'])
    df_1.set_index('engagement_date', inplace=True)
    
    # #save file
    # df_new.to_csv('file_analisa_arima.csv')
    
    # #load file
    # df_1 = pd.read_csv('file_analisa_arima.csv')
    
    # Visualisasi data time-series
    plt.figure(figsize=(12, 6))
    plt.plot(df_1.index, df_1['avg_carbon_credits'], label='Kredit Karbon')
    plt.plot(df_1.index, df_1['total_participants'], label='Total Peserta')
    plt.title('Trend Kredit Karbon dan Partisipasi Masyarakat')
    plt.xlabel('Tanggal Kegiatan')
    plt.ylabel('Nilai')
    plt.legend()
    plt.grid(True)
    plt.show()
    
    # Model ARIMA
    # Parameter (p,d,q) bisa dioptimalkan lebih lanjut
    model = ARIMA(df_1['avg_carbon_credits'], order=(1, 1, 1))
    model_fit = model.fit()
    
    # Prediksi
    forecast_steps = 5
    forecast = model_fit.get_forecast(steps=forecast_steps)
    forecast_index = pd.date_range(start=df_1.index[-1], periods=forecast_steps+1, freq='D')[1:]
    
    # Visualisasi hasil prediksi
    plt.figure(figsize=(12, 6))
    plt.plot(df_1.index, df_1['avg_carbon_credits'], label='Data Historis')
    plt.plot(forecast_index, forecast.predicted_mean, label='Prediksi', color='red')
    plt.fill_between(forecast_index,
    forecast.conf_int()['lower avg_carbon_credits'],
    forecast.conf_int()['upper avg_carbon_credits'],
    color='pink', alpha=0.3)
    plt.title('Prediksi Kredit Karbon dengan ARIMA')
    plt.xlabel('Tanggal')
    plt.ylabel('Kredit Karbon')
    plt.legend()
    plt.grid(True)
    plt.show()
    
    # Evaluasi model
    print(f"AIC: {model_fit.aic}")
    print(f"Parameter Model: {model_fit.params}")

<img width="1012" height="552" alt="image" src="https://github.com/user-attachments/assets/72de342e-425c-47a0-9872-e127de4b85e5" />

<img width="1011" height="553" alt="image" src="https://github.com/user-attachments/assets/a30193f1-ff4b-4421-8c94-3dad824c2854" />

AIC: 220.68799136046565
Parameter Model: ar.L1       -0.554273
ma.L1       -0.996031
sigma2    3805.257813
dtype: float64

## Prediksi Kredit Karbon Berbasis Time Series dengan ARIMA

Script ini bertujuan untuk:
- Mengambil data kegiatan konservasi dari database,
- Menganalisis tren historis,
- Melakukan prediksi nilai kredit karbon menggunakan model ARIMA.

### 1. Pengambilan dan Penggabungan Data

Langkah pertama adalah mengeksekusi query SQL untuk menggabungkan data dari dua tabel:
- Tabel kegiatan komunitas (community_engagement)
- Tabel rekaman konservasi (mangrove_conservation_records)
- Data dikelompokkan berdasarkan tanggal kegiatan (engagement date), dan diambil:
    - Rata-rata kredit karbon
    - Total peserta
Hasilnya membentuk dataset time series dengan satu baris per tanggal kegiatan.

### 2. Persiapan Data Time Series

Data yang diambil dari database perlu dikonversi:
- Kolom tanggal dikonversi ke format waktu (datetime)
- Ditetapkan sebagai indeks utama dataset
Langkah ini penting karena model prediksi time series seperti ARIMA memerlukan urutan waktu yang eksplisit.

### 3. Visualisasi Tren Historis

Setelah data siap, grafik time series dibuat:
- Menampilkan tren rata-rata kredit karbon dari waktu ke waktu
- Ditampilkan pula total peserta setiap tanggal
- Tujuannya untuk memahami pola data secara visual sebelum melakukan pemodelan, seperti:
    - Apakah terjadi tren naik/turun?
    - Apakah ada fluktuasi ekstrem?

### 4. Pemodelan Time Series dengan ARIMA

Model ARIMA digunakan untuk memprediksi tren ke depan berdasarkan data historis.

ARIMA memiliki 3 parameter:
- p (autoregressive): mempertimbangkan nilai masa lalu
- d (differencing): membuat data stasioner
- q (moving average): mempertimbangkan kesalahan masa lalu

Model dilatih menggunakan data kredit karbon yang telah disiapkan sebelumnya.

### 5. Prediksi ke Depan

Setelah model dilatih, dilakukan prediksi untuk beberapa hari ke depan (misalnya 5 hari).
Model tidak hanya memberikan nilai prediksi, tetapi juga:
- Interval kepercayaan (confidence interval)
- Batas atas dan bawah yang menunjukkan ketidakpastian prediksi

### 6. Visualisasi Hasil Prediksi

Hasil prediksi divisualisasikan:
- Data historis digambarkan sebagai garis utama
- Prediksi digambarkan dalam garis merah
- Area prediksi dibungkus dalam bayangan merah muda (confidence interval)
- Visualisasi ini membantu melihat bagaimana model memperkirakan nilai karbon mendatang.

### HASIL ANALISA

Grafik ini menunjukkan tren Kredit Karbon dan Partisipasi Masyarakat selama periode dari awal tahun 2024 hingga pertengahan 2025. Berikut adalah penjelasan hasil dari grafik tersebut:

#### Kredit Karbon (Garis Biru)
- Fluktuatif: Nilai kredit karbon mengalami fluktuasi yang cukup tajam dari bulan ke bulan.
- Puncak tertinggi terjadi sekitar Juni 2024 (nilai mendekati 400).
- Penurunan drastis tampak setelah bulan-bulan dengan nilai tinggi, misalnya dari Juni ke Juli 2024, dan dari Februari ke Maret 2025.

Tren Umum: Tidak ada tren naik atau turun yang konsisten nilai naik dan turun secara acak, menandakan bahwa produksi atau pencapaian kredit karbon sangat bergantung pada faktor tertentu yang mungkin tidak stabil.

#### Total Peserta (Garis Oranye)
- Stabil Rendah: Jumlah peserta relatif stabil di kisaran 8–15 orang setiap bulannya.
- Peningkatan kecil: Ada sedikit peningkatan partisipasi di beberapa bulan seperti April 2024 dan Februari 2025.
Namun, tidak tampak ada hubungan langsung antara banyaknya peserta dengan naik turunnya nilai kredit karbon.

#### Kesimpulan dan Interpretasi
Kredit karbon tidak selalu sejalan dengan partisipasi masyarakat. Ini bisa berarti:
- Efisiensi kegiatan bervariasi (sedikit peserta bisa menghasilkan kredit karbon tinggi).
- Ada faktor eksternal seperti jenis kegiatan, lokasi, atau teknologi yang memengaruhi output kredit karbon lebih besar dibanding jumlah peserta.

Perlu Evaluasi Program:
- Jika tujuan utama adalah meningkatkan partisipasi, maka pendekatan baru mungkin dibutuhkan.
- Jika fokusnya pada efisiensi hasil karbon, maka strategi yang sudah ada mungkin cukup baik, tetapi perlu dioptimalkan agar lebih konsisten.


### HASIL ANALISA GRAFIK DENGAN MODEL FORECASTING ARIMA

#### Komponen Grafik
- Garis Biru (Data Historis): Menunjukkan nilai aktual kredit karbon dari waktu ke waktu.
- Garis Merah (Prediksi): Prediksi nilai kredit karbon untuk beberapa periode ke depan menggunakan model ARIMA.
- Bayangan Merah Muda: Interval kepercayaan (confidence interval) prediksi memberikan rentang kemungkinan nilai kredit karbon di masa depan.

#### Analisis Hasil
Prediksi Stabil di Sekitar 250–280:
- Model memprediksi nilai kredit karbon akan berfluktuasi sedikit, tetapi berada di sekitar nilai rata-rata historis.
- Tidak ada tren meningkat atau menurun yang jelas model ARIMA memproyeksikan masa depan akan mirip dengan nilai rata-rata masa lalu.

#### Parameter Model (ditampilkan di bawah grafik):
- ar.L1 = -0.554273 → koefisien autoregresif negatif, mengindikasikan bahwa nilai sebelumnya berpengaruh, tetapi dengan arah berlawanan.
- ma.L1 = -0.996031 → komponen moving average mendekati -1, yang menunjukkan pengaruh fluktuasi acak di masa lalu terhadap nilai sekarang.
- AIC = 220.68 → ukuran kebaikan model; makin kecil nilainya, makin baik (tidak dibandingkan di sini, tapi bisa digunakan untuk tuning).
- sigma² ≈ 3805 → menunjukkan varian kesalahan prediksi cukup tinggi, artinya fluktuasi data cukup besar.

#### Kesimpulan
- Prediksi jangka pendek untuk kredit karbon cukup stabil dan konservatif, tanpa ekspektasi lonjakan besar.
- Model ARIMA ini cocok untuk prediksi jangka pendek, tetapi perlu hati-hati karena data historis yang sangat fluktuatif membatasi akurasi.
- Untuk hasil lebih akurat, bisa dipertimbangkan:
    - Menambahkan variabel eksternal (misal jumlah peserta, jenis kegiatan, cuaca).
    - Menggunakan model lanjutan seperti SARIMA, Prophet, atau bahkan machine learning (LSTM, Random Forest) bila data lebih kompleks.

## Prediksi Kredit Karbon dengan XGBoost Regressor

    df = pd.get_dummies(df, columns=['location'])
    
    # Pisahkan fitur dan target
    X = df.drop(['conservation_id', 'carbon_credits'], axis=1)
    y = df['carbon_credits']
    
    # Bagi data menjadi training dan test set
    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)
    
    # Model XGBoost
    xgb_model = XGBRegressor(objective='reg:squarederror', n_estimators=100, random_state=42)
    xgb_model.fit(X_train, y_train)
    
    # Prediksi
    y_pred = xgb_model.predict(X_test)
    
    # Evaluasi model
    mse = mean_squared_error(y_test, y_pred)
    r2 = r2_score(y_test, y_pred)
    
    print(f"Mean Squared Error: {mse:.2f}")
    print(f"R-squared: {r2:.2f}")
    
    # Visualisasi feature importance
    plt.figure(figsize=(10, 6))
    feature_importance = pd.Series(xgb_model.feature_importances_, index=X.columns)
    feature_importance.sort_values().plot(kind='barh')
    plt.title('Feature Importance - XGBoost')
    plt.xlabel('Importance Score')
    plt.tight_layout()
    plt.show()

Mean Squared Error: 342.33
R-squared: 0.85

<img width="989" height="590" alt="image" src="https://github.com/user-attachments/assets/e65f2e5a-ded8-4324-a610-67e72f705c58" />

Script ini bertujuan untuk:
- Mengolah data kategorikal
- Melatih model regresi menggunakan XGBoost
- Mengevaluasi performa model
- Menganalisis fitur yang paling berpengaruh.

#### 1. One-Hot Encoding Lokasi
Pada tahap ini, kolom location yang berisi data kategorikal (teks) dikonversi menjadi format numerik biner menggunakan pd.get_dummies().

Konversi ini penting agar algoritma ML seperti XGBoost bisa memahami dan menggunakan informasi dari kategori tersebut.

#### 2. Pisahkan Fitur (X) dan Target (y)
Data dibagi menjadi:
- X: semua kolom fitur yang akan digunakan untuk memprediksi
- y: kolom target yaitu carbon_credits
Kolom conservation_id dibuang karena itu hanya ID unik yang tidak relevan dalam prediksi.

#### 3. Split Data: Training dan Test Set
Data dibagi menjadi:
- 80% untuk melatih model (training)
- 20% untuk menguji performa model (test)
Parameter random_state=42 digunakan agar hasil split-nya reproducible (bisa diulang dan sama setiap kali dijalankan).

#### 4. Latih Model XGBoost
Model XGBoost Regressor digunakan karena:
- Efisien untuk regresi dengan data tabular
- Tangguh terhadap outlier dan data tidak terdistribusi normal
- Bisa menangani missing value secara internal
- Model dilatih menggunakan data training (X_train dan y_train).

#### 5. Prediksi Data Uji
Model yang sudah dilatih digunakan untuk memprediksi nilai kredit karbon dari data uji (X_test).

Hasilnya adalah array nilai prediksi (y_pred), satu untuk setiap baris di test set.

#### 6. Evaluasi Model
Dua metrik evaluasi utama digunakan:
- Mean Squared Error (MSE): semakin kecil, semakin baik.
- R-squared (R² Score): menunjukkan seberapa baik model menjelaskan variasi data.
- Nilai R² mendekati 1 berarti model sangat akurat
- Nilai mendekati 0 atau negatif menunjukkan model buruk

#### 7. Visualisasi Feature Importance
- Langkah ini menunjukkan fitur mana yang paling berkontribusi terhadap prediksi model.
- Fitur dengan nilai importance tertinggi berarti paling relevan dalam menentukan nilai carbon_credits.
- Visualisasi dibuat dalam bentuk horizontal bar chart agar mudah dibaca.

#### Kapan Menggunakan Pendekatan Ini?
- Saat kita punya data historis konservasi dan ingin memprediksi hasilnya (kredit karbon).
- Ingin tahu faktor mana yang paling memengaruhi output.
- Cocok untuk decision support system dalam proyek berbasis dampak lingkungan.

## Interpretasi Hasil Analisa

#### 1. Fitur total_benefit
Memiliki kontribusi terbesar dalam menentukan nilai carbon_credits.
Artinya, semakin besar manfaat (benefit) yang didistribusikan kepada masyarakat, semakin tinggi nilai kredit karbon yang diprediksi.
Bisa disebabkan karena benefit seringkali menjadi indikator keberhasilan konservasi.

#### 2. Fitur avg_participants
Memiliki pengaruh yang jauh lebih kecil dari total_benefit, tapi masih relevan.
Ini menunjukkan bahwa jumlah rata-rata peserta dalam kegiatan konservasi mungkin berkorelasi dengan dampak terhadap lingkungan (karbon yang diserap).

#### 3. Fitur Lokasi (One-hot Encoding seperti location_Pontianak, location_Blitar, dst.)
Hampir semua lokasi memiliki importance score mendekati 0.
Ini menandakan bahwa lokasi tidak terlalu menentukan nilai kredit karbon dalam dataset ini.

Bisa jadi karena:
- Perbedaan antar lokasi kurang signifikan, atau
- Informasi lokasi belum cukup mewakili karakter konservasi.

#### 4. Fitur Lain (avg_days_to_record, activity_count)
Kontribusi sangat kecil atau bahkan tidak digunakan oleh model.
Model menilai bahwa informasi ini kurang informatif dalam memprediksi nilai kredit karbon.

#### Kesimpulan Utama
- XGBoost mengandalkan total_benefit sebagai prediktor utama. Tanpanya, model kemungkinan besar akan kehilangan performa.
- Fitur-fitur lain seperti lokasi atau waktu pencatatan memiliki pengaruh yang kecil, dan mungkin bisa dipertimbangkan untuk dioptimalkan, direkayasa ulang, atau bahkan dihapus jika tidak memberikan nilai tambah.

Model bekerja cukup baik, karena memiliki:
- Mean Squared Error (MSE): 342.33 (cukup rendah tergantung konteks datanya),
- R-squared (R²): 0.85 → Artinya 85% variasi data berhasil dijelaskan oleh model, ini indikasi model yang sangat baik.

### Kesimpulan dan Rekomendasi Strategis
Berdasarkan analisis data keterlibatan masyarakat dan hasil konservasi mangrove menggunakan pendekatan time series dan machine learning, berikut temuan utama dan strategi tindak lanjut untuk meningkatkan efektivitas dan akurasi prediksi kinerja proyek:

#### Temuan Kunci:
- Tren Historis Kredit Karbon: Terlihat peningkatan fluktuatif kredit karbon dan partisipasi masyarakat dari waktu ke waktu, berdasarkan data historis yang divisualisasikan.
- Model Time Series (ARIMA): ARIMA dapat menangkap tren dan memprediksi nilai rata-rata kredit karbon dengan cukup baik, namun kurang efektif untuk prediksi jangka panjang atau data non-linear.
- Model Prediktif (XGBoost):
    - Akurasi tinggi dengan R² = 0.85 dan MSE = 342.33, menunjukkan model sangat baik dalam memprediksi kredit karbon berdasarkan data proyek.
    - Total benefit menjadi fitur paling penting yang sangat memengaruhi prediksi karbon.
    - Peran Lokasi dan Fitur Lain: Lokasi geografis dan variabel lainnya (seperti activity_count, avg_days_to_record) memiliki pengaruh yang sangat kecil terhadap prediksi kredit karbon.

#### Rencana Aksi Prioritas:
| Intervensi                   | Target                                     | Indikator Keberhasilan                      | Timeline     |
|-----------------------------|--------------------------------------------|---------------------------------------------|--------------|
| Peningkatan Kualitas Data   | Data konservasi dan partisipasi lengkap     | Semua proyek memiliki data lengkap dan valid| 3 bulan      |
| Penguatan Model Prediktif   | Implementasi model XGBoost                 | Akurasi prediksi ≥85% di dashboard real-time| 6 bulan      |
| Analisis Tren Waktu Lanjutan| Time-series untuk tren jangka panjang      | Dapat memproyeksikan 6–12 bulan ke depan    | 6 bulan      |
| Pelatihan dan Sosialisasi Tim | Tim lapangan memahami pemanfaatan data  | Tim bisa membaca dashboard & menindaklanjuti| 3–6 bulan    |


#### Langkah Monitoring:
- Bangun dashboard pemantauan performa proyek berbasis Python + PostgreSQL secara otomatis
- Jadwalkan evaluasi performa model setiap bulan
- Integrasikan sistem pelaporan manfaat dan partisipasi ke dalam pipeline data
- Libatkan masyarakat untuk validasi data di lapangan secara berkala

#### Visi Ke Depan:
Dengan implementasi strategi ini, dalam waktu 12 bulan ke depan diharapkan:
- Akurasi prediksi proyek meningkat hingga 85–90%
- Partisipasi masyarakat meningkat hingga 30%
- Kredit karbon meningkat 20% melalui pengambilan keputusan berbasis data
- Terbangun sistem pelaporan dan pemantauan proyek konservasi yang transparan, otomatis, dan real-time

------------

## Studi Kasus 4 : Prediksi Kinerja Proyek Berbasis Keterlibatan Masyarakat

### Latar Belakang Masalah
Departemen hukum perlu mengidentifikasi proyek dengan risiko tinggi berdasarkan 3 skenario:
- Izin pending + batas lahan tidak terdefinisi
- Kepemilikan lahan masyarakat adat + akses data terbatas
- Kualitas air 'Buruk' + aktivitas restorasi intensif
- Kasus di Sulawesi Selatan menunjukkan proyek dengan ketiga faktor risiko memiliki kemungkinan 60% lebih tinggi untuk mengalami konflik hukum dalam 2 tahun.

### Metodologi
- Sistem scoring dengan bobot berbeda untuk setiap kriteria risiko
- Klasifikasi proyek menjadi risiko rendah, sedang, tinggi
- Analisis geospasial pola sebaran risiko

## Pembahasan Analisa dengan Query SQL

### Topic 1 : Sistem scoring dengan bobot berbeda untuk setiap kriteria risiko
    SELECT
      c.Conservation_ID,
      c.Location,
      CASE WHEN rp.Permit_Status = 'Pending' AND lt.Boundary_Defined = 'No' THEN 30 ELSE 0 END AS risiko_izin,
      CASE WHEN lt.Land_Type = 'Community Land' AND bdc.Access_Level = 'Restricted' THEN 40 ELSE 0 END AS risiko_masyarakat,
      CASE WHEN bm.Water_Quality = 'Poor' AND ca.Activity_Type = 'Restoration' THEN 30 ELSE 0 END AS risiko_ekologis,
      (CASE WHEN rp.Permit_Status = 'Pending' AND lt.Boundary_Defined = 'No' THEN 30 ELSE 0 END +
       CASE WHEN lt.Land_Type = 'Community Land' AND bdc.Access_Level = 'Restricted' THEN 40 ELSE 0 END +
       CASE WHEN bm.Water_Quality = 'Poor' AND ca.Activity_Type = 'Restoration' THEN 30 ELSE 0 END) AS total_risiko
    FROM mangrove_conservation_records c
    JOIN regulatory_permits rp ON c.Conservation_ID = rp.Conservation_ID
    JOIN land_tenure_records lt ON c.Conservation_ID = lt.Conservation_ID
    JOIN blockchain_data_compliance bdc ON c.Conservation_ID = bdc.Conservation_ID
    JOIN biodiversity_monitoring bm ON c.Conservation_ID = bm.Conservation_ID
    LEFT JOIN conservation_activites ca ON c.Conservation_ID = ca.Conservation_ID
    ORDER BY total_risiko DESC;

Output File:
<img width="604" height="84" alt="image" src="https://github.com/user-attachments/assets/240e0c1d-c719-4d26-a6f4-3a542019a94c" />

### Analisis Komponen Risiko Proyek Konservasi Mangrove

SQL ini dirancang untuk mengukur dan mengklasifikasikan **tingkat risiko proyek konservasi mangrove** berdasarkan tiga aspek utama: **izin**, **sosial-masyarakat**, dan **ekologis**. Setiap aspek diberi bobot tertentu, dan hasilnya dihitung sebagai total risiko yang dapat digunakan untuk pengambilan keputusan berbasis data.

#### Tujuan Utama
- Mengidentifikasi dan mengkuantifikasi **tingkat risiko individu** untuk setiap proyek konservasi mangrove.
- Memberikan **penilaian numerik risiko** berdasarkan gabungan faktor hukum, sosial, dan lingkungan.
- Mendukung prioritisasi intervensi dengan dasar **risiko terukur**.
- Menyediakan data dasar untuk visualisasi, pelaporan risiko, dan strategi mitigasi.

#### Struktur Konsep dan Cara Kerja
#### 1. **Sumber Data**
Data diambil dari beberapa tabel kunci yang saling terkait melalui Conservation_ID:
- mangrove_conservation_records: informasi umum proyek dan lokasi.
- regulatory_permits: status izin proyek.
- land_tenure_records: tipe kepemilikan lahan dan status batas wilayah.
- blockchain_data_compliance: tingkat akses data proyek.
- biodiversity_monitoring: kualitas lingkungan, khususnya air.
- conservation_activites: jenis kegiatan konservasi yang sedang berjalan.

#### 2. **Komponen Risiko**
Masing-masing proyek dinilai berdasarkan tiga indikator:
| Komponen Risiko     | Kriteria                                                                 | Skor |
|---------------------|--------------------------------------------------------------------------|------|
| Risiko Izin         | Izin belum selesai & batas wilayah belum didefinisikan                   | 30   |
| Risiko Masyarakat   | Lahan milik komunitas dengan akses data terbatas (restricted)            | 40   |
| Risiko Ekologis     | Kualitas air buruk dan proyek sedang dalam tahap restorasi               | 30   |

#### 3. **Perhitungan Total Risiko**
Total risiko dihitung dengan menjumlahkan semua skor dari masing-masing indikator: total_risiko = risiko_izin + risiko_masyarakat + risiko_ekologis

#### 4. **Pengurutan**
Hasil akhir diurutkan berdasarkan total_risiko secara menurun, agar proyek paling berisiko muncul paling atas dalam tabel hasil.

### Manfaat Analisa
- **Pemantauan risiko multi-aspek** secara cepat dan objektif.
- Memberikan dasar ilmiah untuk **prioritisasi tindakan lapangan atau anggaran**.
- Membantu regulator, donor, dan organisasi LSM dalam **mengalokasikan sumber daya** secara lebih efektif.
- Memberikan sinyal awal terhadap proyek yang membutuhkan perhatian hukum, sosial, atau ekologis.

### Interpretasi Hasil
Hasil query akan terlihat seperti ini:

| Conservation_ID | Lokasi       | Risiko Izin | Risiko Masyarakat | Risiko Ekologis | Total Risiko |
|------------------|--------------|-------------|--------------------|------------------|---------------|
| 101              | Kab. X       | 30          | 40                 | 30               | 100           |
| 102              | Kab. Y       | 0           | 40                 | 30               | 70            |
| 103              | Kab. Z       | 0           | 0                  | 30               | 30            |

- **Nilai 100** menunjukkan proyek dengan ketiga masalah utama sekaligus, yaitu izin, sosial, dan lingkungan.
- **Nilai < 30** menunjukkan proyek yang relatif aman dari ketiga jenis risiko.

### Rekomendasi Analisis
1. **Tindak lanjuti proyek dengan skor risiko tinggi (≥ 60)** dengan audit lapangan dan dialog pemangku kepentingan.
2. Perbaiki dokumentasi legal dan batas wilayah untuk proyek yang memiliki risiko izin tinggi.
3. Evaluasi ulang pendekatan partisipasi masyarakat di proyek dengan risiko sosial tinggi.
4. Untuk proyek dengan risiko ekologis tinggi, perlu penguatan baseline data dan strategi adaptasi restorasi.
5. Integrasikan hasil ini ke dalam dasbor monitoring nasional konservasi mangrove sebagai indikator risiko proyek.

### Kesimpulan
Analisis ini memberikan pendekatan yang sistematis dan berbasis data dalam mengevaluasi risiko proyek konservasi mangrove. Dengan **menggabungkan indikator legal, sosial, dan ekologi**, pengambil kebijakan dapat:
- Menyusun strategi mitigasi risiko yang tepat,
- Meningkatkan keberhasilan implementasi proyek,
- Dan menjamin transparansi dan akuntabilitas dalam proses konservasi.

### Topic 2 : Klasifikasi proyek menjadi risiko rendah, sedang, tinggi
    WITH risk_scores AS (
      SELECT
        c.Conservation_ID,
        c.Location,
        (CASE WHEN rp.Permit_Status = 'Pending' AND lt.Boundary_Defined = 'No' THEN 30 ELSE 0 END +
         CASE WHEN lt.Land_Type = 'Community Land' AND bdc.Access_Level = 'Restricted' THEN 40 ELSE 0 END +
         CASE WHEN bm.Water_Quality = 'Poor' AND ca.Activity_Type = 'Restoration' THEN 30 ELSE 0 END) AS total_risiko
      FROM mangrove_conservation_records c
      JOIN regulatory_permits rp ON c.Conservation_ID = rp.Conservation_ID
      JOIN land_tenure_records lt ON c.Conservation_ID = lt.Conservation_ID
      JOIN blockchain_data_compliance bdc ON c.Conservation_ID = bdc.Conservation_ID
      JOIN biodiversity_monitoring bm ON c.Conservation_ID = bm.Conservation_ID
      LEFT JOIN conservation_activites ca ON c.Conservation_ID = ca.Conservation_ID
    )
    SELECT
      Conservation_ID,
      Location,
      total_risiko,
      CASE
        WHEN total_risiko >= 60 THEN 'Tinggi'
        WHEN total_risiko >= 30 THEN 'Sedang'
        ELSE 'Rendah'
      END AS kategori_risiko
    FROM risk_scores
    ORDER BY total_risiko DESC;

Output File :
<img width="414" height="85" alt="image" src="https://github.com/user-attachments/assets/5e7873c6-bcb4-417d-a0de-26dd252292f2" />

### Analisis Kategori Risiko Proyek Konservasi Mangrove
Query SQL ini digunakan untuk menghitung dan mengklasifikasikan **tingkat risiko proyek konservasi mangrove** berdasarkan indikator legalitas, sosial, dan ekologi. Analisis ini menghasilkan label kategori risiko (Tinggi, Sedang, Rendah) untuk setiap proyek, sehingga membantu dalam **prioritisasi dan pengambilan keputusan strategis**.

#### Tujuan Utama
Tujuan dari script ini adalah:
- Mengukur tingkat risiko proyek konservasi berdasarkan kondisi perizinan, sosial, dan lingkungan.
- Mengklasifikasikan proyek ke dalam kategori risiko untuk mempermudah **manajemen prioritas dan mitigasi**.
- Menyediakan pendekatan sistematis untuk **evaluasi awal risiko** dalam portofolio proyek konservasi mangrove.

#### Struktur Konsep dan Cara Kerja
#### 1. **Pendekatan dengan Common Table Expression (CTE)**
- Bagian WITH risk_scores AS (...) menyimpan hasil perhitungan risiko sementara dalam bentuk tabel virtual bernama risk_scores.
- Ini membuat query lebih rapi dan efisien untuk di-maintain.

#### 2. **Sumber Data**
Data ditarik dari beberapa tabel utama:
- mangrove_conservation_records → informasi proyek konservasi
- regulatory_permits → status izin
- land_tenure_records → kepemilikan & batas lahan
- blockchain_data_compliance → akses data
- biodiversity_monitoring → kualitas ekologi (air)
- conservation_activites → jenis aktivitas konservasi

#### 3. **Perhitungan Skor Risiko**
Risiko dihitung berdasarkan kondisi berikut:
- **30 poin**: Jika Permit_Status = 'Pending' dan Boundary_Defined = 'No'
- **40 poin**: Jika Land_Type = 'Community Land' dan Access_Level = 'Restricted'
- **30 poin**: Jika Water_Quality = 'Poor' dan Activity_Type = 'Restoration'

Nilai dari ketiga indikator dijumlahkan untuk menghasilkan total_risiko.

#### 4. **Klasifikasi Kategori Risiko**
Setelah skor dihitung, proyek dikategorikan:
- **Tinggi**: total_risiko ≥ 60
- **Sedang**: total_risiko ≥ 30
- **Rendah**: total_risiko < 30

#### 5. **Pengurutan Hasil**
Hasil diurutkan berdasarkan total_risiko secara menurun agar proyek dengan risiko tertinggi muncul paling atas.

### Manfaat Analisa
- Memberikan dasar data untuk **penentuan prioritas intervensi konservasi**.
- Membantu pengambil kebijakan mengenali proyek yang **paling membutuhkan perhatian**.
- Menyediakan pendekatan terstruktur untuk **pengukuran risiko lintas proyek**.
- Mendukung perencanaan anggaran dan strategi mitigasi berdasarkan kategori risiko.
- Membantu transparansi dan akuntabilitas dalam pengelolaan proyek konservasi berbasis risiko.

### Interpretasi Hasil

Contoh hasil output tabel:

| Conservation_ID | Location       | total_risiko | kategori_risiko |
|-----------------|----------------|---------------|------------------|
| 205             | Kab. Berau     | 100           | Tinggi           |
| 301             | Kab. Wakatobi  | 60            | Tinggi           |
| 412             | Kab. Indramayu | 30            | Sedang           |
| 118             | Kab. Luwu      | 0             | Rendah           |

**Makna kategori:**
- **Tinggi**: kombinasi risiko dari aspek legal, sosial, dan ekologi — perlu tindakan segera.
- **Sedang**: satu atau dua risiko terdeteksi — perlu pemantauan aktif.
- **Rendah**: proyek relatif aman — dapat dijadikan model atau direplikasi.

### Rekomendasi
1. **Lakukan intervensi langsung** untuk proyek dengan kategori Tinggi, misalnya: percepatan izin, klarifikasi batas lahan, atau penguatan partisipasi masyarakat.
2. Gunakan proyek Rendah sebagai **model praktik terbaik** dalam konservasi mangrove.
3. Jadikan skor dan kategori ini sebagai **indikator kinerja (KPI)** dalam pelaporan keberhasilan konservasi.
4. Integrasikan hasil ini ke dalam dasbor visual untuk **monitoring lintas waktu dan wilayah**.
5. Rekomendasikan penggunaan metode serupa untuk **ekosistem lain** seperti hutan gambut atau terumbu karang.

### Topic 3 : Klasifikasi proyek menjadi risiko rendah, sedang, tinggi
    WITH risk_categories AS (
      SELECT
        CASE
          WHEN total_risiko >= 60 THEN 'Tinggi'
          WHEN total_risiko >= 30 THEN 'Sedang'
          ELSE 'Rendah'
        END AS kategori_risiko
      FROM (
        -- Subquery perhitungan skor risiko
        SELECT (CASE WHEN rp.Permit_Status = 'Pending' AND lt.Boundary_Defined = 'No' THEN 30 ELSE 0 END +
         CASE WHEN lt.Land_Type = 'Community Land' AND bdc.Access_Level = 'Restricted' THEN 40 ELSE 0 END +
         CASE WHEN bm.Water_Quality = 'Poor' AND ca.Activity_Type = 'Restoration' THEN 30 ELSE 0 END) AS total_risiko
        FROM mangrove_conservation_records c
        JOIN regulatory_permits rp ON c.Conservation_ID = rp.Conservation_ID
        JOIN land_tenure_records lt ON c.Conservation_ID = lt.Conservation_ID
        JOIN blockchain_data_compliance bdc ON c.Conservation_ID = bdc.Conservation_ID
        JOIN biodiversity_monitoring bm ON c.Conservation_ID = bm.Conservation_ID
        LEFT JOIN conservation_activites ca ON c.Conservation_ID = ca.Conservation_ID
      ) t
    )
    SELECT
      kategori_risiko,
      COUNT(*) AS jumlah_proyek,
      ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 1) AS persentase
    FROM risk_categories
    GROUP BY kategori_risiko
    ORDER BY CASE kategori_risiko
        WHEN 'Tinggi' THEN 1
        WHEN 'Sedang' THEN 2
        ELSE 3
      END;

Output File : 
<img width="280" height="83" alt="image" src="https://github.com/user-attachments/assets/37e957a2-d17a-4084-be0b-529afa4332c9" />

### Analisis Distribusi Kategori Risiko Proyek Konservasi Mangrove
SQL script ini dirancang untuk menghitung **jumlah dan persentase proyek konservasi** berdasarkan **kategori tingkat risiko** — Tinggi, Sedang, dan Rendah. Analisis ini merupakan bagian dari evaluasi strategis untuk **pengelompokan risiko proyek secara agregat**.

### Tujuan Utama
- Menyediakan **ringkasan statistik** proyek konservasi mangrove berdasarkan tingkat risikonya.
- Mengidentifikasi **proporsi proyek** yang berada dalam tiap kategori risiko.
- Mendukung pengambilan keputusan strategis terkait **alokasi sumber daya, pemantauan, dan prioritisasi proyek**.

### Struktur Konsep dan Cara Kerja
#### 1. **Common Table Expression (CTE) risk_categories**
- Bagian ini menghasilkan kategori risiko untuk setiap proyek konservasi berdasarkan total skor risiko.
- Tiga kategori ditentukan dengan aturan sebagai berikut:
  - Tinggi: total_risiko ≥ 60
  - Sedang: total_risiko ≥ 30 dan < 60
  - Rendah: total_risiko < 30

#### 2. **Subquery Skor Risiko**
- Risiko dihitung berdasarkan kombinasi kondisi:
  - **30 poin**: Izin masih Pending dan batas wilayah Belum Ditentukan.
  - **40 poin**: Lahan milik komunitas dan akses data terbatas.
  - **30 poin**: Kualitas air Poor dan proyek bersifat Restoration.

#### 3. **Query Utama**
- Mengelompokkan proyek berdasarkan kategori_risiko.
- Menghitung:
  - Jumlah proyek dalam tiap kategori (jumlah_proyek)
  - Persentase relatif dari total proyek (persentase)
- Hasil diurutkan berdasarkan prioritas kategori: Tinggi, Sedang, Rendah.

### Manfaat Analisa
- Memberikan **gambaran makro** tentang distribusi risiko di seluruh portofolio proyek.
- Membantu dalam **penyusunan kebijakan** alokasi dana, pendampingan teknis, dan mitigasi risiko.
- Menjadi dasar untuk membuat dasbor visual seperti pie chart atau bar chart distribusi risiko.
- Menunjukkan **proporsi proyek bermasalah** yang memerlukan perhatian khusus.

### Interpretasi Hasil
Contoh hasil output:

| kategori_risiko | jumlah_proyek | persentase |
|------------------|----------------|-------------|
| Tinggi           | 15             | 30.0%       |
| Sedang           | 25             | 50.0%       |
| Rendah           | 10             | 20.0%       |

### Penjelasan:
- **30% proyek** berada dalam kategori risiko Tinggi — ini adalah proyek dengan potensi kegagalan atau hambatan tertinggi.
- **50% proyek** berada di kategori Sedang, membutuhkan monitoring aktif.
- Hanya **20% proyek** yang tergolong Rendah, artinya memiliki kesiapan operasional yang baik.

### Rekomendasi Analisis
1. **Fokuskan intervensi teknis dan pendanaan** ke proyek dalam kategori Tinggi.
2. Lakukan **review lapangan dan manajemen risiko** secara berkala pada proyek kategori Sedang.
3. Pertahankan keberhasilan proyek Rendah sebagai **model proyek konservasi yang efisien**.
4. Gunakan hasil ini untuk menyusun **laporan performa institusi** atau stakeholder program.
5. Integrasikan ke sistem pelaporan nasional sebagai **indikator risiko sektoral** dalam konservasi ekosistem.

### Kesimpulan
Analisis ini menyederhanakan kompleksitas proyek konservasi menjadi tiga kategori risiko yang mudah dimengerti. Hasilnya sangat bermanfaat untuk:
- Pengambilan keputusan yang cepat dan strategis,
- Perencanaan jangka pendek dan menengah,
- Serta pengawasan program konservasi berbasis data.

## Analisis Risiko Geospasial Proyek Konservasi Mangrove
    import pandas as pd
    import psycopg2
    from sqlalchemy import create_engine
    import folium
    from geopy.geocoders import Nominatim
    import warnings
    
    # Setup koneksi database
    conn_string = "postgresql://postgres:postgresql@localhost:5432/postgres"
    db = create_engine(conn_string)
    conn = db.connect()
    
    # Query data untuk visualisasi geospasial
    query = """
    SELECT c.Conservation_ID, c.Location, c.Area_Ha,
    CASE WHEN (rp.Permit_Status = 'Pending' AND lt.Boundary_Defined = 'No') THEN 30 ELSE 0 END +
    CASE WHEN (lt.Land_Type = 'Community Land' AND bdc.Access_Level = 'Restricted') THEN 40 ELSE 0 END +
    CASE WHEN (bm.Water_Quality = 'Poor' AND ca.Activity_Type = 'Restoration') THEN 30 ELSE 0 END AS total_risiko,
    CASE
    WHEN (CASE WHEN (rp.Permit_Status = 'Pending' AND lt.Boundary_Defined = 'No') THEN 30 ELSE 0 END +
    CASE WHEN (lt.Land_Type = 'Community Land' AND bdc.Access_Level = 'Restricted') THEN 40 ELSE 0 END +
    CASE WHEN (bm.Water_Quality = 'Poor' AND ca.Activity_Type = 'Restoration') THEN 30 ELSE 0 END) >= 60 THEN 'Tinggi'
    WHEN (CASE WHEN (rp.Permit_Status = 'Pending' AND lt.Boundary_Defined = 'No') THEN 30 ELSE 0 END +
    CASE WHEN (lt.Land_Type = 'Community Land' AND bdc.Access_Level = 'Restricted') THEN 40 ELSE 0 END +
    CASE WHEN (bm.Water_Quality = 'Poor' AND ca.Activity_Type = 'Restoration') THEN 30 ELSE 0 END) >= 30 THEN 'Sedang'
    ELSE 'Rendah'
    END AS kategori_risiko
    FROM mangrove_conservation_records c
    JOIN regulatory_permits rp ON c.Conservation_ID = rp.Conservation_ID
    JOIN land_tenure_records lt ON c.Conservation_ID = lt.Conservation_ID
    JOIN blockchain_data_compliance bdc ON c.Conservation_ID = bdc.Conservation_ID
    JOIN biodiversity_monitoring bm ON c.Conservation_ID = bm.Conservation_ID
    LEFT JOIN conservation_activites ca ON c.Conservation_ID = ca.Conservation_ID
    """
    
    df = pd.read_sql(query, conn)
    conn.close()
    
    # Simpan ke file CSV backup
    df.to_csv('risk_data.csv', index=False)
    
    # Tampilkan 5 baris pertama
    df.head()
    
    # Fungsi untuk geocoding lokasi
    def get_coordinates(location):
      geolocator = Nominatim(user_agent="mangrove_risk_analysis")
      try:
        location_data = geolocator.geocode(location + ", Indonesia")
        if location_data:
          return location_data.latitude, location_data.longitude
        else:
          return None, None
      except Exception as e:
        print(f"Error geocoding {location}: {e}")
        return None, None
    
    # Tambahkan kolom latitude dan longitude
    warnings.filterwarnings('ignore') 
    df[['latitude', 'longitude']] = df['location'].apply(
      lambda x: pd.Series(get_coordinates(x))
    )
    
    # Simpan data dengan koordinat
    df.to_csv('risk_data_with_coords.csv', index=False)
    
    # Tampilkan data yang sudah memiliki koordinat
    df.dropna(subset=['latitude', 'longitude']).head()
    
    map = folium.Map(
      location=[-2.5489, 118.0149], 
      zoom_start=5,
      tiles='OpenStreetMap',
      control_scale=True
    )
    
    # Warna marker berdasarkan kategori risiko
    color_mapping = {
      'Tinggi': 'red',
      'Sedang': 'orange',
      'Rendah': 'green'
    }
    
    # Tambahkan marker untuk setiap proyek
    for idx, row in df.dropna(subset=['latitude', 'longitude']).iterrows():
      folium.CircleMarker(
        location=[row['latitude'], row['longitude']],
        radius=row['area_ha']/10, 
        color=color_mapping[row['kategori_risiko']],
        fill=True,
        fill_color=color_mapping[row['kategori_risiko']],
        fill_opacity=0.7,
        popup=folium.Popup(
          f"<b>Lokasi:</b> {row['location']}<br>"
          f"<b>Area:</b> {row['area_ha']} Ha<br>"
          f"<b>Total Risiko:</b> {row['total_risiko']}<br>"
          f"<b>Kategori:</b> {row['kategori_risiko']}",
          max_width=300
        )
      ).add_to(map)
    
    # Tambahkan legenda
    legend_html = '''
    <div style="position: fixed;
    bottom: 50px; left: 50px; width: 150px; height: 100px;
    border:2px solid grey; z-index:9999; font-size:14px;
    background-color:white;
    ">
    <b>Kategori Risiko</b> <br>
    <i class="fa fa-circle fa-1x" style="color:red"></i> Tinggi <br>
    <i class="fa fa-circle fa-1x" style="color:orange"></i> Sedang <br>
    <i class="fa fa-circle fa-1x" style="color:green"></i> Rendah
    </div>
    '''
    map.get_root().html.add_child(folium.Element(legend_html))
    
    # Simpan peta ke file HTML
    map.save('peta_risiko_mangrove.html')
    
    # Tampilkan peta
    map

Output File Map:

<img width="1475" height="700" alt="image" src="https://github.com/user-attachments/assets/b94a6529-cd58-4817-8216-b81cb4db78ff" />

# Analisis Risiko Geospasial Proyek Konservasi Mangrove
Analisis ini menggunakan data dari berbagai aspek proyek konservasi mangrove untuk menghitung, mengklasifikasikan, dan **memvisualisasikan tingkat risiko konservasi** dalam peta interaktif. Script ini menggabungkan data spasial dan non-spasial untuk memberi gambaran menyeluruh terhadap kondisi proyek konservasi.

## Tujuan Utama
- Mengidentifikasi **tingkat risiko** dari setiap proyek konservasi mangrove berdasarkan gabungan indikator legalitas, sosial, dan ekologis.
- Membuat **visualisasi peta interaktif** berbasis lokasi untuk mendukung pengambilan keputusan berbasis wilayah.
- Menghasilkan data risiko yang dapat digunakan untuk **prioritisasi intervensi** dan **alokasi anggaran konservasi**.

## Konsep & Cara Kerja
### 1. **Pengambilan Data Terintegrasi**
Data diambil dari beberapa tabel PostgreSQL:
- mangrove_conservation_records → informasi umum proyek (lokasi & luas)
- regulatory_permits → status izin
- land_tenure_records → tipe lahan & batas wilayah
- blockchain_data_compliance → tingkat akses data
- biodiversity_monitoring → kualitas air
- conservation_activities → jenis aktivitas konservasi

### 2. **Perhitungan Total Risiko**
Total risiko dihitung berdasarkan kombinasi logika kondisi:
- Izin belum selesai & batas wilayah belum jelas → +30 poin
- Lahan komunitas dengan akses data terbatas → +40 poin
- Kualitas air buruk & aktivitas konservasi berupa restorasi → +30 poin

### 3. **Klasifikasi Risiko**
- Tinggi: total risiko ≥ 60
- Sedang: total risiko ≥ 30
- Rendah: total risiko < 30

### 4. **Geocoding Lokasi**
- Nama lokasi dikonversi menjadi koordinat geografis (latitude & longitude) menggunakan geopy dan layanan Nominatim (OpenStreetMap).
- Data lokasi tanpa koordinat otomatis disaring dari visualisasi.

### 5. **Visualisasi dengan Folium**
- Dibuat peta interaktif menggunakan folium.
- Setiap proyek ditampilkan sebagai **lingkaran berwarna**:
  - Merah: Risiko Tinggi
  - Oranye: Risiko Sedang
  - Hijau: Risiko Rendah
- Ukuran lingkaran proporsional terhadap luas area (hektar).
- Informasi detail ditampilkan dalam pop-up interaktif.

### Manfaat Analisis
- **Pengambilan keputusan berbasis wilayah:** Memudahkan dalam menentukan lokasi mana yang harus segera ditangani.
- **Transparansi spasial:** Memberikan akses visual dan informatif kepada publik, investor, atau pemangku kepentingan.
- **Evaluasi multiaspek:** Kombinasi faktor legal, sosial, dan ekologis menghasilkan evaluasi risiko yang lebih komprehensif.
- **Pendukung monitoring risiko jangka panjang** dengan basis data yang dapat diperbarui secara berkala.

### Interpretasi Hasil
Peta menampilkan lokasi proyek mangrove dengan indikator:
- **Warna merah**: proyek dengan risiko konservasi sangat tinggi, memerlukan perhatian segera.
- **Warna oranye**: risiko menengah, perlu pemantauan dan perbaikan sistematis.
- **Warna hijau**: proyek dengan risiko rendah, bisa dijadikan contoh replikasi praktik baik.
Ukuran lingkaran menunjukkan **luas wilayah** yang terkena risiko tersebut.

### Rekomendasi
1. **Fokuskan intervensi dan pendanaan** pada wilayah dengan kategori risiko tinggi.
2. **Integrasikan hasil peta ini ke dalam platform dashboard kelembagaan** untuk monitoring dan evaluasi nasional.
3. **Perbaiki dokumentasi batas wilayah dan legalitas** untuk proyek dengan izin pending dan batas belum jelas.
4. Gunakan peta ini sebagai **dasar diskusi lintas sektor** (pemerintah, LSM, komunitas lokal) terkait risiko pengelolaan ekosistem mangrove.
5. Terapkan pendekatan serupa pada ekosistem lainnya (misal: hutan rawa, terumbu karang).

------------

## Studi Kasus 5 : Analisis Jaringan Blockchain dalam Konservasi

## Latar Belakang Masalah
CTO perlu memahami pola berbagi data blockchain untuk mengoptimalkan arsitektur sistem:
- Distribusi tipe data (Geografis/Personal/Transaksi) per wilayah
- Korelasi antara level akses dengan volume transaksi karbon
- Pola temporal penerbitan izin vs aktivitas blockchain
- Analisis awal menunjukkan proyek dengan data geografis terbuka memiliki volume transaksi 2.5x lebih tinggi.

## Aspek Teknis
- Analisis jaringan hubungan antara node data
- Pola aliran informasi antar stakeholder
- Optimasi desain smart contract

## Pembahasan Analisa dengan Query SQL

### Topic 1 : Distribusi tipe data (Geografis/Personal/Transaksi) per wilayah
    SELECT
      c.Location,
      bdc.Data_Type,
      COUNT(*) AS jumlah_data,
      ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (PARTITION BY c.Location), 1) AS persentase
    FROM
      mangrove_conservation_records c
    JOIN
      blockchain_data_compliance bdc ON c.Conservation_ID = bdc.Conservation_ID
    GROUP BY
      c.Location, bdc.Data_Type
    ORDER BY
      c.Location, jumlah_data DESC;
Output File :
<img width="369" height="83" alt="image" src="https://github.com/user-attachments/assets/bcf00c02-0efe-4756-a461-f2ab65cb9128" />

### Tujuan Utama
Query ini bertujuan untuk:
- Menganalisis **jumlah dan persentase jenis data kepatuhan** (Data_Type) berbasis blockchain untuk setiap **lokasi konservasi mangrove**.
- Menyediakan ringkasan proporsional dari data compliance pada setiap lokasi untuk mendukung **evaluasi kualitas data dan pengambilan keputusan**.

### Struktur Konsep & Cara Kerja
- **Sumber Data**:
  - mangrove_conservation_records: Menyediakan informasi lokasi konservasi dan ID konservasi.
  - blockchain_data_compliance: Menyediakan jenis kepatuhan data yang terhubung ke ID konservasi.

- **Penggabungan Data**:
  - Data dari kedua tabel dihubungkan berdasarkan Conservation_ID.

- **Pengelompokan & Agregasi**:
  - Data dikelompokkan berdasarkan lokasi dan jenis data compliance.
  - Dihitung total (jumlah_data) untuk setiap kombinasi tersebut.

- **Perhitungan Persentase**:
  - Persentase dihitung berdasarkan proporsi data jenis tertentu terhadap total data di lokasi yang sama.

- **Pengurutan**:
  - Data diurutkan berdasarkan lokasi dan jumlah data tertinggi ke terendah.

### Manfaat Analisis
1. **Mengungkap Dominasi Jenis Kepatuhan**  
   Menunjukkan jenis compliance mana yang paling sering muncul di setiap lokasi.

2. **Evaluasi Keseimbangan Data**  
   Mempermudah identifikasi lokasi dengan distribusi data yang tidak seimbang.

3. **Meningkatkan Kualitas Basis Data**  
   Menjadi dasar untuk melengkapi atau mengaudit data yang belum representatif.

4. **Dasar Pengambilan Kebijakan**  
   Membantu dalam perumusan strategi konservasi dan pelaporan berbasis bukti.


### Interpretasi Hasil
Contoh hasil yang mungkin ditampilkan:

| Lokasi   | Jenis Data       | Jumlah Data | Persentase |
|----------|------------------|-------------|------------|
| Papua    | Legal            | 80          | 66.7%      |
| Papua    | Environmental    | 40          | 33.3%      |
| Bali     | Legal            | 50          | 50.0%      |
| Bali     | Financial        | 30          | 30.0%      |
| Bali     | Environmental    | 20          | 20.0%      |

**Interpretasi**:
- Di Papua, data legal mendominasi (66.7%), sedangkan data lingkungan lebih sedikit.
- Bali memiliki distribusi yang lebih seimbang antara jenis data.
- Lokasi dengan dominasi satu jenis data berpotensi belum memiliki dokumentasi compliance yang lengkap.

### Rekomendasi Analisis
1. **Analisis Waktu**  
   Tambahkan dimensi waktu untuk melihat tren per tahun atau per bulan.

2. **Bandingkan dengan Target Kepatuhan**  
   Evaluasi apakah semua lokasi sudah memenuhi semua kategori compliance.

3. **Identifikasi Outlier**  
   Cari lokasi dengan proporsi data yang ekstrem untuk audit lebih lanjut.

4. **Perluas dengan Data Dampak**  
   Integrasikan dengan data hasil konservasi untuk menghubungkan compliance dan keberhasilan program.

### Kesimpulan
Query ini menyajikan analisis penting mengenai:
- **Distribusi dan representasi** data kepatuhan konservasi berbasis blockchain.
- **Keseimbangan** jenis compliance pada setiap lokasi.
- Menjadi dasar untuk **pengambilan keputusan berbasis data**, meningkatkan **transparansi**, dan menunjang **efektivitas pengelolaan konservasi**.

### Topic 2 : Korelasi Level Akses dengan Volume Transaksi
    SELECT
      bdc.Access_Level,
      bdc.Data_Type,
      COUNT(bt.Transaction_ID) AS jumlah_transaksi,
      SUM(bt.Carbon_Credits_Transferred) AS total_karbon,
      AVG(bt.Carbon_Credits_Transferred) AS rata_karbon
    FROM
      blockchain_data_compliance bdc
    LEFT JOIN
      blockchain_transactions bt ON bdc.Conservation_ID = bt.Conservation_ID
    GROUP BY
      bdc.Access_Level, bdc.Data_Type
    ORDER BY
      total_karbon DESC;
Output File :
<img width="449" height="82" alt="image" src="https://github.com/user-attachments/assets/7f5c7553-803f-41fd-a928-69d1c236458d" />

### Tujuan Utama
Query ini bertujuan untuk:
- Menganalisis hubungan antara **level akses** (Access_Level) dan **jenis data kepatuhan** (Data_Type) dengan **aktivitas transaksi karbon** pada sistem blockchain.
- Mengukur volume dan karakteristik transaksi berdasarkan dimensi kepatuhan dan aksesibilitas data.


### Struktur Konsep & Cara Kerja
- **Sumber Data**:
  - blockchain_data_compliance: Menyediakan metadata tentang jenis data dan tingkat akses terkait konservasi karbon.
  - blockchain_transactions: Menyediakan data transaksi karbon yang terjadi pada masing-masing proyek konservasi.

- **Join Tabel**:
  - Tabel blockchain_data_compliance di-*left join* dengan blockchain_transactions berdasarkan Conservation_ID.
  - *LEFT JOIN* digunakan untuk memastikan semua data compliance tetap ditampilkan meskipun tidak memiliki transaksi karbon.

- **Agregasi Data**:
  - Jumlah transaksi dihitung dengan COUNT.
  - Total karbon yang ditransfer dijumlahkan dengan SUM.
  - Rata-rata karbon per transaksi dihitung dengan AVG.

- **Pengelompokan Data**:
  - Data dikelompokkan berdasarkan kombinasi Access_Level dan Data_Type.

- **Pengurutan Data**:
  - Hasil diurutkan berdasarkan total karbon tertinggi ke terendah (ORDER BY total_karbon DESC).


### Manfaat Analisis
1. **Menilai Dampak Transaksi Berdasarkan Akses Data**  
   Apakah level akses tertentu (misalnya publik vs terbatas) berkaitan dengan volume karbon yang ditransaksikan?

2. **Mengidentifikasi Efektivitas Jenis Data**  
   Mengetahui jenis data compliance mana yang mendukung aktivitas transaksi karbon paling signifikan.

3. **Membantu Audit dan Transparansi**  
   Memberikan gambaran data mana yang perlu diawasi atau dioptimalkan dari segi keamanan dan efektivitas.

4. **Strategi Pengelolaan Data**  
   Mendukung pengambilan keputusan terkait pembukaan akses atau pemodelan data yang efektif.


### Interpretasi Hasil
Contoh interpretasi dari hasil query:

| Access_Level | Data_Type     | jumlah_transaksi | total_karbon | rata_karbon |
|--------------|---------------|------------------|--------------|-------------|
| Publik       | Legal         | 100              | 50,000       | 500         |
| Terbatas     | Financial     | 50               | 30,000       | 600         |
| Internal     | Environmental | 20               | 5,000        | 250         |

**Penjelasan**:
- Data **publik** dengan jenis **Legal** memiliki jumlah dan total karbon tertinggi, menunjukkan efisiensi atau kepercayaan tinggi.
- Data **terbatas** memiliki rata-rata karbon per transaksi tertinggi, meskipun jumlahnya lebih sedikit.
- Data **internal** berkontribusi rendah terhadap transaksi karbon, mungkin karena keterbatasan akses atau nilai data yang rendah di pasar.

### Rekomendasi Analisis
1. **Evaluasi Level Akses**  
   Tinjau apakah membuka akses publik terhadap jenis data tertentu berdampak pada peningkatan transaksi karbon.

2. **Optimalkan Jenis Data**  
   Fokus pada penguatan jenis data yang berkorelasi tinggi dengan aktivitas karbon, seperti data legal dan finansial.

3. **Kaji Keamanan dan Privasi**  
   Data dengan akses publik yang berdampak tinggi harus dipastikan aman dan tetap mematuhi regulasi.

4. **Lanjutkan dengan Tren Waktu**  
   Tambahkan dimensi waktu untuk melihat apakah pola ini konsisten dalam jangka panjang.

### Kesimpulan
Query ini memberikan wawasan penting mengenai:
- Hubungan antara **aksesibilitas data** dan **efektivitas transaksi karbon**.
- Identifikasi jenis data yang paling berkontribusi terhadap aktivitas di blockchain konservasi karbon.
- Memberikan dasar kuat untuk **pengambilan keputusan strategis**, baik dalam hal **keterbukaan data**, **prioritas pengumpulan data**, maupun **optimalisasi dampak lingkungan melalui teknologi blockchain**.


### Topic 3 : Pola Temporal Penerbitan Izin vs Aktivitas
    WITH bulan_izin AS (
      SELECT
        DATE_TRUNC('month', rp.Approval_Date) AS bulan,
        COUNT(*) AS jumlah_izin
      FROM
        regulatory_permits rp
      WHERE
        rp.Permit_Status = 'Approved'
      GROUP BY
        DATE_TRUNC('month', rp.Approval_Date)
    ),
    bulan_transaksi AS (
      SELECT
        DATE_TRUNC('month', bt.Transaction_Date) AS bulan,
        COUNT(*) AS jumlah_transaksi,
        SUM(bt.Carbon_Credits_Transferred) AS total_karbon
      FROM
        blockchain_transactions bt
      GROUP BY
        DATE_TRUNC('month', bt.Transaction_Date)
    )
    SELECT
      i.bulan,
      i.jumlah_izin,
      t.jumlah_transaksi,
      t.total_karbon
    FROM
      bulan_izin i
    LEFT JOIN
      bulan_transaksi t ON i.bulan = t.bulan
    ORDER BY
      i.bulan;
Output File:
<img width="435" height="86" alt="image" src="https://github.com/user-attachments/assets/71b9a362-c140-4245-be22-7aa87c04cb33" />

### Tujuan Utama
Query ini bertujuan untuk:
- Menganalisis **jumlah izin regulasi yang disetujui per bulan** dan menghubungkannya dengan **aktivitas transaksi karbon** pada bulan yang sama.
- Memberikan gambaran bulanan tentang hubungan antara persetujuan izin dan transaksi karbon dalam sistem berbasis blockchain.

### Struktur Konsep & Cara Kerja
### 1. **CTE (Common Table Expressions)**
- **bulan_izin**:
  - Mengambil data dari tabel regulatory_permits;
  - Mengelompokkan berdasarkan bulan (DATE_TRUNC) dari tanggal persetujuan (Approval_Date).
  - Menghitung jumlah izin yang disetujui per bulan.

- **bulan_transaksi**:
  - Mengambil data dari tabel blockchain_transactions.
  - Mengelompokkan berdasarkan bulan (DATE_TRUNC) dari tanggal transaksi (Transaction_Date).
  - Menghitung jumlah transaksi karbon dan total karbon yang ditransfer per bulan.

### 2. **JOIN Data Bulanan**
- Data dari bulan_izin digabungkan (LEFT JOIN) dengan bulan_transaksi berdasarkan kolom bulan.
- Menggunakan LEFT JOIN agar semua bulan dengan izin tetap ditampilkan meskipun tidak ada transaksi karbon.

### 3. **Output & Urutan**
- Menampilkan kolom:
  - bulan
  - jumlah_izin
  - jumlah_transaksi
  - total_karbon
- Hasil diurutkan berdasarkan bulan secara kronologis.


### Manfaat Analisis
1. **Mengukur Dampak Regulasi terhadap Aktivitas Transaksi**  
   Menunjukkan apakah peningkatan izin regulasi memicu peningkatan transaksi karbon.

2. **Monitoring Kinerja Bulanan**  
   Memudahkan pemantauan aktivitas blockchain karbon dan implementasi izin lingkungan dari waktu ke waktu.

3. **Identifikasi Tren Musiman atau Waktu Tertentu**  
   Apakah ada bulan tertentu yang konsisten menunjukkan aktivitas tinggi atau rendah?

4. **Dasar Evaluasi Kebijakan**  
   Memberikan data historis yang dapat digunakan untuk mengevaluasi efektivitas kebijakan regulasi terhadap pasar karbon.

### Interpretasi Hasil
- **Korelasi Positif**: Pada bulan-bulan seperti Maret dan April, peningkatan jumlah izin disertai dengan peningkatan transaksi dan total karbon.
- **Gap Aktivitas**: Pada bulan tertentu, seperti Mei, jumlah izin ada tetapi tidak ada transaksi karbon, menunjukkan potensi keterlambatan implementasi.
- **Volatilitas**: Fluktuasi jumlah izin dan transaksi bisa menunjukkan respons terhadap kebijakan baru, musim, atau faktor eksternal lainnya.


### Rekomendasi Analisis
1. **Tambahkan Dimensi Wilayah atau Jenis Izin**  
   Agar bisa melihat apakah izin di daerah tertentu lebih berdampak pada transaksi karbon.

2. **Analisis Time Lag**  
   Tinjau apakah ada keterlambatan antara izin diterbitkan dan transaksi karbon dilakukan.

3. **Tingkatkan Konektivitas Data**  
   Sinkronkan data izin dan transaksi untuk melacak alur dari izin → proyek → transaksi.

4. **Integrasi dengan Target Nasional/Internasional**  
   Bandingkan output dengan target emisi atau kredit karbon untuk menilai pencapaian.

### Kesimpulan
Query ini menyajikan analisis penting tentang:
- **Hubungan antara izin regulasi dan transaksi karbon per bulan**.
- Memberikan indikasi apakah **aktivitas pasar karbon mengikuti tren persetujuan izin**.
- Menjadi dasar untuk **pengambilan keputusan kebijakan lingkungan**, alokasi sumber daya, dan pemantauan efektivitas sistem perdagangan karbon berbasis blockchain.
Analisis semacam ini sangat berguna untuk **lembaga pemerintah, lembaga lingkungan, dan pelaku pasar karbon** yang ingin memahami keterkaitan antara kebijakan dan implementasi di lapangan.

# Analisis Visualisasi Jaringan Blockchain Konservasi Mangrove
    import pandas as pd
    from sqlalchemy import create_engine
    from pyvis.network import Network
    import networkx as nx
    from IPython.display import display, IFrame
    from datetime import datetime
    
    # Koneksi database
    conn_string = "postgresql://postgres:postgresql@localhost:5432/postgres"
    db = create_engine(conn_string)
    
    # Query data node
    query_nodes = """
    SELECT c.Conservation_ID, c.Location, bdc.Data_Type, bdc.Access_Level,
    COUNT(bt.Transaction_ID) AS transaction_count
    FROM mangrove_conservation_records c
    JOIN blockchain_data_compliance bdc ON c.Conservation_ID = bdc.Conservation_ID
    LEFT JOIN blockchain_transactions bt ON c.Conservation_ID = bt.Conservation_ID
    GROUP BY c.Conservation_ID, c.Location, bdc.Data_Type, bdc.Access_Level
    """
    nodes_df = pd.read_sql(query_nodes, db)
    
    # Query data edge
    query_edges = """
    WITH transactions AS (
    SELECT Conservation_ID, Block_Hash, COUNT(*) AS weight
    FROM blockchain_transactions
    GROUP BY Conservation_ID, Block_Hash
    )
    SELECT t1.Conservation_ID AS source, t2.Conservation_ID AS target, t1.weight
    FROM transactions t1
    JOIN transactions t2 ON t1.Block_Hash = t2.Block_Hash
    WHERE t1.Conservation_ID != t2.Conservation_ID
    """
    edges_df = pd.read_sql(query_edges, db)
    
    # Simpan ke file CSV
    nodes_df.to_csv('network_nodes.csv', index=False)
    edges_df.to_csv('network_edges.csv', index=False)
    
    # Inisialisasi jaringan
    net = Network(height="750px", width="100%", bgcolor="#222222", font_color="white", notebook=True)
    
    # Konfigurasi global physics
    net.barnes_hut(gravity=-80000, central_gravity=0.3, spring_length=250, spring_strength=0.001, damping=0.09, overlap=0)
    
    # Tambahkan node
    for idx, row in nodes_df.iterrows():
        node_size = 10 + int(row['transaction_count']) * 2
        node_title = f"ID: {row['conservation_id']}<br>Lokasi: {row['location']}<br>Tipe: {row['data_type']}<br>Akses: {row['access_level']}<br>Transaksi: {row['transaction_count']}"
    
        # Warna berdasarkan tipe data
        if row['data_type'] == 'Geographic':
            color = '#4CAF50'  # Hijau
        elif row['data_type'] == 'Personal':
            color = '#2196F3'  # Biru
        else:
            color = '#FF5722'  # Orange
    
        # Bentuk berdasarkan level akses
        if row['access_level'] == 'Public':
            shape = 'dot'
        elif row['access_level'] == 'Restricted':
            shape = 'diamond'
        else:
            shape = 'star'
    
        net.add_node(
            n_id=row['conservation_id'],
            label=row['conservation_id'],
            title=node_title,
            size=node_size,
            color=color,
            shape=shape,
            borderWidth=2
        )
    
    # Tambahkan edge asli (kosong di sini tapi tetap disiapkan)
    for idx, row in edges_df.iterrows():
        net.add_edge(
            row['source'],
            row['target'],
            value=row['weight'],
            title=f"{row['weight']} transaksi",
            color='#757575'
        )
    
    # Tambahkan edge korelasi berdasarkan tipe data
    for i in range(len(nodes_df)):
        for j in range(i + 1, len(nodes_df)):
            node_i = nodes_df.iloc[i]
            node_j = nodes_df.iloc[j]
    
            if node_i['data_type'] == node_j['data_type']:
                net.add_edge(
                    node_i['conservation_id'],
                    node_j['conservation_id'],
                    value=1,
                    title=f"Korelasi Tipe: {node_i['data_type']}",
                    color='#AAAAAA',
                    dashes=True,
                    physics=False
                )
    
    # Opsi visualisasi
    net.set_options("""
    {
      "nodes": {
        "font": {
          "size": 12,
          "face": "arial"
        }
      },
      "edges": {
        "smooth": {
          "type": "continuous"
        }
      },
      "physics": {
        "forceAtlas2Based": {
          "gravitationalConstant": -50,
          "centralGravity": 0.01,
          "springLength": 100,
          "springConstant": 0.08
        },
        "minVelocity": 0.75,
        "solver": "forceAtlas2Based"
      }
    }
    """)
    
    # Simpan dan tampilkan
    net.show("blockchain_network.html")

Output Analisa:
<img width="1501" height="689" alt="image" src="https://github.com/user-attachments/assets/78b4f19c-c18f-45db-9550-cd4db58d1df7" />

## Tujuan Analisis
Analisis ini bertujuan untuk:
- Memetakan keterhubungan proyek konservasi mangrove berbasis blockchain.
- Menilai hubungan transaksi antar proyek berdasarkan blok blockchain (Block_Hash).
- Mengidentifikasi korelasi antar proyek berdasarkan jenis data dan tingkat akses.
- Menemukan pola klasterisasi data dan hubungan antar tipe node (data pribadi, geografis, transaksi).

## Konsep dan Cara Kerja
### 1. Pengambilan Data
- **Node (Proyek Konservasi):** Diambil dari dua tabel:
  - mangrove_conservation_records
  - blockchain_data_compliance
- **Atribut Node:**
  - conservation_id
  - location
  - data_type: Geographic, Personal, Transaction
  - access_level: Public, Restricted, Auditor
  - transaction_count

- **Edge (Transaksi):**
  - Dihubungkan jika dua proyek memiliki transaksi dengan block_hash yang sama.
  - Dihitung jumlah keterhubungan (bobot transaksi).

### 2. Visualisasi dengan Pyvis
- **Warna Node:**
  - Hijau → Geographic
  - Biru → Personal
  - Oranye → Transaction
- **Bentuk Node:**
  - Titik → Public
  - Diamond → Restricted
  - Bintang → Auditor
- **Ukuran Node:** Berdasarkan jumlah transaksi.
- **Edge:**
  - Abu tua → Transaksi riil
  - Abu terang putus-putus → Korelasi berdasarkan data_type

### 3. Layout Physics
- Menggunakan forceAtlas2Based untuk menciptakan layout natural yang memudahkan analisa klaster.


### Hasil Analisis
- Jaringan membentuk **dua klaster besar**:
  1. Proyek-proyek dengan data personal (biru)
  2. Proyek dengan data geografis dan transaksi (hijau dan oranye)

- Node **Auditor (bintang)** menjadi penghubung antara berbagai klaster.

- Beberapa node besar menunjukkan proyek dengan tingkat aktivitas blockchain yang tinggi.


### Interpretasi Data
- Node-node yang saling berbagi blok menunjukkan kemungkinan **kolaborasi data atau transaksi lintas proyek**.
- Proyek dengan data tipe serupa cenderung berada dalam klaster yang sama.
- Node auditor memiliki potensi sebagai penghubung utama dalam tata kelola data.


### Rekomendasi
1. **Audit pada proyek dengan keterhubungan tinggi** → evaluasi untuk potensi overload atau integrasi ganda.
2. **Tingkatkan jumlah node auditor** untuk memperkuat governance dan integritas data.
3. **Standardisasi data antar proyek** yang saat ini belum saling terhubung secara langsung.
4. **Gunakan visualisasi ini sebagai alat bantu regulasi dan audit blockchain**.


### Manfaat Analisa
- Menyediakan gambaran makro atas jaringan proyek konservasi berbasis blockchain.
- Membantu tim teknis dan regulator dalam:
  - Menemukan anomali atau duplikasi
  - Menyusun strategi interoperabilitas
  - Menyempurnakan struktur governance dan distribusi data

### Kesimpulan
- Visualisasi ini menunjukkan bahwa keterhubungan proyek konservasi tidak hanya didasarkan pada transaksi, tapi juga korelasi tipe data dan peran auditor.
- Node auditor merupakan simpul strategis yang menjembatani berbagai jenis proyek.
- Klaster yang terbentuk memberikan gambaran tentang pola komunikasi dan integrasi sistem blockchain.

### Kesimpulan Analisa
Pendekatan visualisasi jaringan ini efektif dalam mengungkap pola distribusi dan hubungan fungsional antar proyek konservasi mangrove berbasis blockchain. Pemahaman atas konektivitas ini penting untuk meningkatkan transparansi, efisiensi, dan keberlanjutan pengelolaan ekosistem mangrove digital.


# BAB III. PENUTUP
## 3.1 Kesimpulan Proyek
Proyek MangroveChain telah berhasil mengembangkan suatu sistem berbasis teknologi blockchain yang tidak hanya mendokumentasikan kegiatan konservasi mangrove di Indonesia, tetapi juga memberikan kerangka analitik yang kuat untuk menilai efektivitas, transparansi, dan dampak dari berbagai inisiatif konservasi. Dengan mengintegrasikan 14 dimensi data mulai dari biodiversitas hingga kepatuhan enkripsi data platform ini memberikan pendekatan holistik dalam menilai keberhasilan proyek konservasi berbasis sains dan teknologi digital.

Melalui analisis korelasi regulasi terhadap metrik biodiversitas, pemodelan efisiensi penyerapan karbon, serta evaluasi partisipasi masyarakat dalam proyek konservasi, MangroveChain mampu menghasilkan insight berbasis data yang mendalam. Kombinasi SQL analitik, visualisasi Python interaktif, dan pendekatan jaringan PyVis memungkinkan proyek ini menyeimbangkan antara kecanggihan teknologi dan kebutuhan praktis para pemangku kepentingan.

##3.2 Implikasi Proyek

### a. Strategis
Sistem ini menjadi landasan strategis untuk membuat keputusan berbasis data dalam alokasi dana konservasi, validasi kredit karbon, dan pengawasan proyek lapangan.
Dengan adanya dashboard berbasis blockchain yang transparan dan verifikasi real-time, kepercayaan dari investor, pemerintah, dan masyarakat dapat ditingkatkan secara signifikan.

### b. Teknis
Penggunaan arsitektur data yang modular memungkinkan interoperabilitas tinggi antara sistem blockchain, satelit, dan database pemerintah.
Penggunaan smart contract dapat disesuaikan untuk berbagai skenario konservasi dengan fleksibilitas tinggi.

### c. Sosial
Proyek ini menyoroti pentingnya peran komunitas lokal sebagai aktor kunci dalam keberhasilan jangka panjang proyek konservasi. Data menunjukkan bahwa partisipasi masyarakat tinggi berkorelasi positif terhadap keberhasilan ekologis dan sosial proyek.

## 3.3 Keterbatasan Proyek
Meskipun proyek ini telah menunjukkan capaian yang signifikan, terdapat beberapa keterbatasan yang perlu dicermati:
- Keterbatasan Data Lapangan: Beberapa proyek konservasi belum memiliki data biodiversitas dan kegiatan masyarakat yang lengkap, sehingga mempengaruhi keakuratan model prediksi.
- Ketergantungan pada Infrastruktur Teknologi Lokal: Implementasi di wilayah-wilayah terpencil menghadapi tantangan akses internet dan kemampuan teknis operator lapangan.
- Kebutuhan Validasi Manual: Beberapa variabel seperti status lahan dan persetujuan komunitas masih memerlukan verifikasi fisik, yang menyulitkan otomatisasi penuh.
- Perbedaan Standar dan Format Data: Integrasi data dari berbagai institusi seringkali terkendala oleh ketidaksesuaian standar dan struktur database.

## 3.4 Saran dan Rekomendasi Strategis
### a. Standarisasi & Regulasi
Pemerintah perlu menetapkan standar interoperabilitas data konservasi nasional, termasuk format legalitas lahan, enkripsi blockchain, dan mekanisme audit publik.
Disarankan adanya pengembangan regulasi perlindungan data ekologi untuk melindungi data sensitif tanpa mengorbankan transparansi.

### b. Penguatan Partisipasi Komunitas
Diperlukan model pelibatan masyarakat berbasis insentif, seperti sistem tokenisasi kontribusi, yang mengukur dampak dan menghubungkannya langsung dengan benefit ekonomi.
Pendampingan sosial harus dilaksanakan bersamaan dengan onboarding teknologi agar tidak terjadi kesenjangan pemahaman.

### c. Pengembangan Teknologi
Rancang sistem dashboard berbasis AI untuk memantau secara otomatis anomali dalam proyek (misalnya penurunan drastis penyerapan CO₂ atau partisipasi komunitas).
Tambahkan fitur smart escrow yang hanya mencairkan dana saat indikator keberhasilan ekologis dan sosial terpenuhi.

### d. Peningkatan Kualitas Data
Lakukan audit data secara berkala untuk menjaga kualitas dan integritas platform.
Gunakan metode crowdsourcing berbasis verifikasi komunitas untuk memperkaya data lapangan secara real-time.

## 3.5 Kesimpulan Analisa
Proyek MangroveChain membuktikan bahwa penerapan teknologi blockchain yang dipadukan dengan analitik multidimensi mampu mendorong konservasi mangrove ke arah yang lebih transparan, efisien, dan inklusif. Hasil analisis menunjukkan bahwa keberhasilan proyek tidak hanya ditentukan oleh besar kecilnya pendanaan, tetapi juga oleh keterlibatan masyarakat, kepatuhan data, dan arsitektur sistem yang adaptif terhadap dinamika sosial-ekologis.

Dengan pendekatan yang berimbang antara data, teknologi, dan konteks lokal, proyek ini memiliki potensi besar untuk direplikasi dan dikembangkan lebih lanjut sebagai model ekosistem digital konservasi yang skalabel dan berkelanjutan—tidak hanya untuk hutan mangrove, tetapi juga untuk ekosistem lainnya di masa depan.


