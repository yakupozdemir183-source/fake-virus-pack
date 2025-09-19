<!-- sakinciz-saka.html -->
<!doctype html>
<html lang="tr">
<head>
  <meta charset="utf-8" />
  <title>Sahte Tarama - ŞAKA</title>
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <style>
    body {font-family: system-ui, -apple-system, "Segoe UI", Roboto, "Helvetica Neue", Arial; display:flex;
          align-items:center; justify-content:center; height:100vh; margin:0; background:#0b0f1a; color:#e6f0ff;}
    .card {width:90%; max-width:720px; padding:28px; border-radius:12px; box-shadow:0 8px 30px rgba(0,0,0,.6);
          background:linear-gradient(180deg, rgba(255,255,255,0.03), rgba(255,255,255,0.01)); text-align:center;}
    h1{margin:0 0 14px;font-size:24px}
    .progress {height:18px; width:100%; background:rgba(255,255,255,0.06); border-radius:9px; overflow:hidden; margin:16px 0;}
    .bar {height:100%; width:0%; border-radius:9px; background:linear-gradient(90deg, rgba(0,200,255,0.8), rgba(0,150,255,0.9)); transition:width .2s;}
    .log {height:150px; overflow:auto; text-align:left; background:rgba(0,0,0,0.25); padding:10px; border-radius:8px; font-size:13px; line-height:1.4;}
    .badge {display:inline-block; margin-top:14px; padding:8px 12px; border-radius:999px; background:rgba(255,255,255,0.06);}
    .final {font-size:28px; margin-top:12px; display:none;}
    footer{margin-top:12px;font-size:12px; color:rgba(230,240,255,0.6)}
  </style>
</head>
<body>
  <div class="card" role="main" aria-live="polite">
    <h1>Sistem Tarayıcısı — Başlatılıyor</h1>
    <div class="progress" aria-hidden="true"><div class="bar" id="bar"></div></div>
    <div class="log" id="log"></div>
    <div class="badge" id="badge">Durum: Beklemede</div>
    <div class="final" id="final">🎉 ŞAKA! Bu gerçek bir tehdit değil — sadece eğlence :)</div>
    <footer>Bu sayfa tamamen yerel, zararsız ve paylaşıma uygun değildir. Kendine sakla, başkasının cihazına izinsiz açma.</footer>
  </div>

  <script>
    // Zararsız: Sadece tarayıcıda görsel gösterir.
    const log = document.getElementById('log');
    const bar = document.getElementById('bar');
    const badge = document.getElementById('badge');
    const final = document.getElementById('final');

    const fakeSteps = [
      "Bağlantı kontrol ediliyor...",
      "Sistem bütünlüğü taranıyor...",
      "Kayıt defteri benzeri öğeler inceleniyor...",
      "Gülme faktörü analizi yapılıyor...",
      "Rastgele kedi GIF'leri seçiliyor...",
      "Gülümseme seviyeleri senkronize ediliyor..."
    ];

    let pct = 0;
    let step = 0;

    function appendLog(text){
      const p = document.createElement('div');
      p.textContent = new Date().toLocaleTimeString() + " — " + text;
      log.appendChild(p);
      log.scrollTop = log.scrollHeight;
    }

    function tick(){
      if (pct >= 100) {
        badge.textContent = "Durum: Tamamlandı";
        final.style.display = "block";
        appendLog("Tüm işlemler tamamlandı. ŞAKA uygulandı.");
        // Küçük bir animasyon
        bar.style.width = "100%";
        return;
      }
      // artış ve adım gösterimi
      pct += Math.floor(Math.random()*8) + 4;
      if (pct > 100) pct = 100;
      bar.style.width = pct + "%";

      if (Math.random() < 0.5 && step < fakeSteps.length) {
        appendLog(fakeSteps[step++]);
      } else {
        appendLog("İşlem: " + Math.floor(pct) + "%");
      }
      badge.textContent = "Durum: Tarama devam ediyor (" + Math.floor(pct) + "%)";

      // hız değiştir
      const delay = 400 + Math.random()*800;
      setTimeout(tick, delay);
    }

    // Başlat
    appendLog("Tarayıcı yerel modda başlatıldı.");
    setTimeout(tick, 700);
  </script>
</body>
</html>
