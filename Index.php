<!DOCTYPE html>
<html>
<head>
    <title>Menampilkan Data Tabel MySQL</title>
    <style>
        body {font-family: "Arial Black", arial;}
        table {border-collapse: collapse;}
        th, td {font-size: 13px; border: 1px solid #DEDEDE; padding: 3px 5px; color: #303030;}
        th {background: #CCCCCC; font-size: 12px; border-color: #B0B0B0;}
    </style>
</head>
<body>
    <center><h1>Apotekek Kesehatan Sejahtera</h1></center>
    <h3>Tabel Apoteker</h3>
    <table>
        <thead>
            <tr>
                <th>ID Apoteker</th>
                <th>Nama</th>
                <th>Spesialisasi</th>
                <th>Nomor Telepon</th>
            </tr>
        </thead>
        <tbody>
            <?php
            include 'koneksi.php';
            $sql = 'SELECT * FROM Apoteker';
            $query = mysqli_query($koneksi, $sql);
            while ($row = mysqli_fetch_array($query)) {
                ?>
                <tr>
                    <td><?php echo $row['ID_Apoteker'] ?></td>
                    <td><?php echo $row['Nama'] ?></td>
                    <td><?php echo $row['Spesialisasi'] ?></td>
                    <td><?php echo $row['Nomor_Telepon'] ?></td>
                </tr>
                <?php
            }
            ?>
        </tbody>
    </table>

    <h3>Tabel Detail Transaksi</h3>
    <table>
        <thead>
            <tr>
                <th>ID Transaksi</th>
                <th>ID Obat</th>
                <th>Jumlah</th>
            </tr>
        </thead>
        <tbody>
            <?php
            $sql = 'SELECT * FROM Detail_Transaksi';
            $query = mysqli_query($koneksi, $sql);
            while ($row = mysqli_fetch_array($query)) {
                ?>
                <tr>
                    <td><?php echo $row['ID_Transaksi'] ?></td>
                    <td><?php echo $row['ID_Obat'] ?></td>
                    <td><?php echo $row['Jumlah'] ?></td>
                </tr>
                <?php
            }
            ?>
        </tbody>
    </table>

    <h3>Tabel Pelanggan</h3>
    <table>
        <thead>
            <tr>
                <th>ID Pelanggan</th>
                <th>Nama</th>
                <th>Alamat</th>
                <th>Tanggal Lahir</th>
                <th>Nomor Telepon</th>
                <th>Nama Asuransi</th>
                <th>Nomor Polisi</th>
            </tr>
        </thead>
        <tbody>
            <?php
            $sql = 'SELECT * FROM Pelanggan';
            $query = mysqli_query($koneksi, $sql);
            while ($row = mysqli_fetch_array($query)) {
                ?>
                <tr>
                    <td><?php echo $row['ID_Pelanggan'] ?></td>
                    <td><?php echo $row['Nama'] ?></td>
                    <td><?php echo $row['Alamat'] ?></td>
                    <td><?php echo $row['Tanggal_Lahir'] ?></td>
                    <td><?php echo $row['Nomor_Telepon'] ?></td>
                    <td><?php echo $row['Nama_Asuransi'] ?></td>
                    <td><?php echo $row['Nomor_Polisi'] ?></td>
                </tr>
                <?php
            }
            ?>
        </tbody>
    </table>

    <h3>Tabel Obat</h3>
    <table>
        <thead>
            <tr>
                <th>ID Obat</th>
                <th>Nama Obat</th>
                <th>Harga</th>
            </tr>
        </thead>
        <tbody>
            <?php
            $sql = 'SELECT * FROM Obat';
            $query = mysqli_query($koneksi, $sql);
            while ($row = mysqli_fetch_array($query)) {
                ?>
                <tr>
                    <td><?php echo $row['ID_Obat'] ?></td>
                    <td><?php echo $row['Nama_Obat'] ?></td>
                    <td><?php echo $row['Harga'] ?></td>
                </tr>
                <?php
            }
            ?>
        </tbody>
    </table>

    <h3>Tabel Transaksi</h3>
    <table>
        <thead>
            <tr>
                <th>ID Transaksi</th>
                <th>ID Pelanggan</th>
                <th>ID Apoteker</th>
                <th>Tanggal Transaksi</th>
                <th>Total Biaya</th>
            </tr>
        </thead>
        <tbody>
            <?php
            $sql = 'SELECT * FROM Transaksi';
            $query = mysqli_query($koneksi, $sql);
            while ($row = mysqli_fetch_array($query)) {
                ?>
                <tr>
                    <td><?php echo $row['ID_Transaksi'] ?></td>
                    <td><?php echo $row['ID_Pelanggan'] ?></td>
                    <td><?php echo $row['ID_Apoteker'] ?></td>
                    <td><?php echo $row['Tanggal_Transaksi'] ?></td>
                    <td><?php echo $row['Total_Biaya'] ?></td>
                </tr>
                <?php
            }
            ?>
        </tbody>
    </table>
</body>
</html>
