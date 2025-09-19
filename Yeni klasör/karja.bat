<!doctype html>
<html>
<head><meta charset="utf-8"><title>Test</title></head>
<body>
  <h1>Tarayıcı yerel test başarılı ✅</h1>
  <p>Bu sayfa açıldıysa HTML dosyaları düzgün çalışıyor.</p>
  <script>
    console.log("Test sayfası yüklendi.");
    document.body.insertAdjacentHTML('beforeend', '<p>Şu an: ' + new Date().toLocaleString() + '</p>');
  </script>
</body>
</html>
