# Video Downloader 10.0.5 — izvorna koda

To je izvorna koda programa **Video Downloader 10.0.5** za Windows, napisanega v jeziku C# z uporabniškim vmesnikom Windows Forms.

## Vsebina

- `src/VideoDownloader.cs` — celotna izvorna koda programa
- `VideoDownloader.csproj` — projekt za Visual Studio in .NET Framework 4.8
- `VideoDownloader.sln` — rešitev za Visual Studio 2022
- `VideoDownloader.ico` — ikona programa
- `Resources/SubtitlePreview.jpg` — vgrajena slika za predogled podnapisov
- `Build_Exact.bat` — neposredno prevajanje z Windowsovim `csc.exe`, enako kot v namestitveni datoteki 10.0.5

## Prevajanje z Visual Studiem

1. Namesti **Visual Studio 2022 Community** z delovno obremenitvijo **.NET desktop development**.
2. Odpri `VideoDownloader.sln`.
3. Izberi konfiguracijo `Release` in platformo `Any CPU`.
4. Klikni **Build → Build Solution**.
5. Program bo ustvarjen v `bin/Release/VideoDownloader.exe`.

## Prevajanje brez Visual Studia

V Windows dvoklikni `Build_Exact.bat`. Skripta uporabi prevajalnik `csc.exe`, ki je del .NET Frameworka 4.x.

## Zunanja orodja

Program za nekatere funkcije uporablja oziroma lahko sam prenese zunanja orodja, kot sta `yt-dlp` in `FFmpeg`. Ta orodja niso vključena v izvorno kodo tega repozitorija in imajo svoje licence.

## Pomembno

Program uporabljaj samo za vsebine, za katere imaš dovoljenje za prenos, pretvarjanje ali urejanje. Izvršljiva datoteka ni digitalno podpisana, zato lahko Windows ob prvem zagonu prikaže varnostno opozorilo.

## Izvor kode

Koda v tem paketu je bila neposredno izvlečena iz vgrajenega, z GZipom stisnjenega C# vira v namestitveni datoteki `Namesti.bat` različice 10.0.5. Ne gre za dekompilacijo starejše datoteke EXE.
