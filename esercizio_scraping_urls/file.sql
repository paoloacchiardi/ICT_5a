-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Apr 30, 2021 alle 12:28
-- Versione del server: 10.4.17-MariaDB
-- Versione PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `file`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `inputurls`
--

CREATE TABLE `inputurls` (
  `idUrl` int(11) NOT NULL,
  `urlName` text NOT NULL,
  `urlProtocol` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `inputurls`
--

INSERT INTO `inputurls` (`idUrl`, `urlName`, `urlProtocol`) VALUES
(136, 'http://www.itiscuneo.gov.it', 'http'),
(137, 'http://www.vallauri.edu', 'http'),
(138, 'http://www.cigna-baruffi-garelli.edu.it', 'http'),
(139, 'http://www.istitutoguala.edu.it', 'http'),
(140, 'http://www.denina.it', 'http');

-- --------------------------------------------------------

--
-- Struttura della tabella `scrapingurls`
--

CREATE TABLE `scrapingurls` (
  `idUrl` int(11) NOT NULL,
  `urlName` text NOT NULL,
  `urlProtocol` text NOT NULL,
  `idInputUrl` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `scrapingurls`
--

INSERT INTO `scrapingurls` (`idUrl`, `urlName`, `urlProtocol`, `idInputUrl`) VALUES
(3011, 'https://forms.gle/2Uagu9jqfznqyLLX6', 'https', 136),
(3012, 'https://drive.google.com/drive/folders/1_E9Pb2ZdJbAwxa8pZtgKTAWNfrnzDIfn', 'https', 136),
(3013, 'https://sites.google.com/itiscuneo.eu/graffitis/home', 'https', 136),
(3014, 'https://re29.axioscloud.it/Secret/REStart.aspx?Customer_ID=80005430048', 'https', 136),
(3015, 'https://family.axioscloud.it/Secret/REStart.aspx?Customer_ID=80005430048', 'https', 136),
(3016, 'http://www.youtube.com/channel/UCJlDV8r9GfDYd5qIRRvF1lQ', 'http', 136),
(3017, 'https://www.instagram.com/itisdelpozzocuneo/', 'https', 136),
(3018, 'https://orientamento.itiscuneo.edu.it/', 'https', 136),
(3019, 'https://www.facebook.com/Itisdelpozzo', 'https', 136),
(3020, 'http://www.youtube.com/channel/UCJlDV8r9GfDYd5qIRRvF1lQ', 'http', 136),
(3021, 'https://drive.google.com/drive/folders/1_E9Pb2ZdJbAwxa8pZtgKTAWNfrnzDIfn', 'https', 136),
(3022, 'https://re29.axioscloud.it/Secret/REStart.aspx?Customer_ID=80005430048', 'https', 136),
(3023, 'http://www.gmail.com/', 'http', 136),
(3024, 'http://www.itiscuneo.eu/moodle25', 'http', 136),
(3025, 'http://www.itiscuneo.gov.it', 'http', 136),
(3026, 'https://orientamento.itiscuneo.edu.it/', 'https', 136),
(3027, 'https://concorsoemobility.vallauri.edu/', 'https', 136),
(3028, 'https://concorsoemobility.vallauri.edu/', 'https', 136),
(3029, 'https://www.facebook.com/attaccopoetico/posts/2936200666439593/', 'https', 136),
(3030, 'https://twitter.com/search?q=%23Exergames&amp;src=hash', 'https', 136),
(3031, 'https://www.raicultura.it/scienza/articoli/2019/10/Giacinto-Barresi-uso-educativo-e-terapeutico-dei-videogame-f8f6b32a-110e-4061-b2b1-d689ab76c916.html', 'https', 136),
(3032, 'https://www.linkedin.com/in/carlo-brindesi-canali/?originalSubdomain=it', 'https', 136),
(3033, 'https://unige.it/off.f/2018/ins/31346.html', 'https', 136),
(3034, 'https://www.linkedin.com/in/giuseppe-gioco-5755954/?originalSubdomain=it', 'https', 136),
(3035, 'http://www.wondertechweb.com/', 'http', 136),
(3036, 'https://www.aism.it/', 'https', 136),
(3037, 'https://re29.axioscloud.it/Secret/RELogin.aspx', 'https', 136),
(3038, 'http://www.itiscuneo.eu/moodle25', 'http', 136),
(3039, 'https://form.agid.gov.it/view/12a771d6-fd55-4a56-bbec-95d2f48d2e9e', 'https', 136),
(3040, 'https://www.istruzione.it/pagoinrete/', 'https', 136),
(3041, 'https://forms.gle/2Uagu9jqfznqyLLX6', 'https', 136),
(3042, 'https://drive.google.com/drive/folders/1_E9Pb2ZdJbAwxa8pZtgKTAWNfrnzDIfn', 'https', 136),
(3043, 'https://sites.google.com/itiscuneo.eu/graffitis/home', 'https', 136),
(3044, 'https://re29.axioscloud.it/Secret/REStart.aspx?Customer_ID=80005430048', 'https', 136),
(3045, 'https://family.axioscloud.it/Secret/REStart.aspx?Customer_ID=80005430048', 'https', 136),
(3046, 'https://www.facebook.com/Itisdelpozzo', 'https', 136),
(3047, 'http://www.youtube.com/channel/UCJlDV8r9GfDYd5qIRRvF1lQ', 'http', 136),
(3048, 'https://www.instagram.com/itisdelpozzocuneo/', 'https', 136),
(3049, 'http://www.itiscuneo.gov.it/index.php/cb-profile/lostpassword', 'http', 136),
(3050, 'http://www.itiscuneo.gov.it/index.php/cb-registration/registers', 'http', 136),
(3051, 'https://drive.google.com/drive/folders/1_E9Pb2ZdJbAwxa8pZtgKTAWNfrnzDIfn', 'https', 136),
(3052, 'https://orientamento.itiscuneo.edu.it/', 'https', 136),
(3053, 'https://www.facebook.com/Itisdelpozzo', 'https', 136),
(3054, 'http://www.youtube.com/channel/UCJlDV8r9GfDYd5qIRRvF1lQ', 'http', 136),
(3055, 'https://re29.axioscloud.it/Secret/REStart.aspx?Customer_ID=80005430048', 'https', 136),
(3056, 'http://www.gmail.com/', 'http', 136),
(3057, 'http://www.itiscuneo.eu/moodle25', 'http', 136),
(3058, 'http://www.channeldigital.co.uk/developer-resources/eu-cookie-directive-module.html', 'http', 136),
(3059, 'http://mail.google.com', 'http', 137),
(3060, 'https://drive.google.com/a/vallauri.edu/folderview?id=0B1tfkOxidUvEN0ZqNU15N3g2QkE&usp=sharing', 'https', 137),
(3061, 'https://drive.google.com/a/vallauri.edu/folderview?id=0B1tfkOxidUvEeC1uU0o4X2VZTk0&usp=sharing', 'https', 137),
(3062, 'http://www.emobilityfossano.it ', 'http', 137),
(3063, 'http://servizi.vallauri.edu/progettazionedidattica/vispdf.aspx', 'http', 137),
(3064, 'http://twitter.com/VallauriFossano', 'http', 137),
(3065, 'http://www.facebook.com/VallauriFossano', 'http', 137),
(3066, 'http://hubmiur.pubblica.istruzione.it/web/ministero/operazione-trasparenza/personale', 'http', 137),
(3067, 'https://drive.google.com/folderview?id=0BzXyM1km5ikNRDJhbzBleWF3NTg&usp=sharing', 'https', 137),
(3068, 'http://www.itismondo.it', 'http', 138),
(3069, 'http://www.itismondo.it', 'http', 138),
(3070, 'http://www.istitutobaruffi.it', 'http', 138),
(3071, 'http://www.istitutobaruffi.it', 'http', 138),
(3072, 'http://www.ipsiagarelli.it', 'http', 138),
(3073, 'http://www.ipsiagarelli.it', 'http', 138),
(3074, 'https://cigna-baruffi-garelli.edu.it/circolari/circolariStudenti', 'https', 138),
(3075, 'https://www.cigna-baruffi-garelli.edu.it/cigna372', 'https', 138),
(3076, 'https://www.cigna-baruffi-garelli.edu.it/baruffi372', 'https', 138),
(3077, 'https://www.cigna-baruffi-garelli.edu.it/garelli372', 'https', 138),
(3078, 'http://www.itismondo.it/newbib/default.asp', 'http', 138),
(3079, 'http://www.sc27309.scuolanext.info/', 'http', 138),
(3080, 'http://www.itismondo.it/registracellulari/', 'http', 138),
(3081, 'https://www.google.it/', 'https', 138),
(3082, 'https://forms.gle/LmebcMnMFex8ATqp9', 'https', 138),
(3083, 'https://forms.gle/MDGwaUE9U2LDZL4Q6', 'https', 138),
(3084, 'https://www.unionemonregalese.it/2021/04/12/mondovi-vincitori-olimpiadi-raffaellesche/', 'https', 138),
(3085, 'https://www.facebook.com/IIS-G-Cigna-Mondov%C3%AC-260605717929700/', 'https', 138),
(3086, 'https://www.instagram.com/cignamondovi/?hl=it', 'https', 138),
(3087, 'https://www.youtube.com/channel/UCovlI9uAzHk0elh9OAdlUBg', 'https', 138),
(3088, 'http://www.istruzione.it', 'http', 138),
(3089, 'http://www.istruzionepiemonte.it/', 'http', 138),
(3090, 'http://cuneo.istruzionepiemonte.it/', 'http', 138),
(3091, 'http://www.invalsi.it/invalsi/index.php', 'http', 138),
(3092, 'http://www.indire.it/', 'http', 138),
(3093, 'http://cercalatuascuola.istruzione.it/cercalatuascuola/', 'http', 138),
(3094, 'https://validator.w3.org/check?uri=referer', 'https', 138),
(3095, 'https://www.cigna-baruffi-garelli.edu.it/attachments/article/1/Comunicazione RPD-aggiornamenti informativa protezione dati.pdf', 'https', 138),
(3096, 'https://www.cigna-baruffi-garelli.edu.it/attachments/article/1/Comunicazione RPD-aggiornamenti informativa protezione dati.pdf', 'https', 138),
(3097, 'http://trasparenza-pa.net/?codcli=SC27309', 'http', 138),
(3098, 'http://www.albipretorionline.com/sc27309', 'http', 138),
(3099, 'http://trasparenza-pa.net/?codcli=SC27309&amp;node=29075', 'http', 138),
(3100, 'https://www.istruzione.it/iscrizionionline/', 'https', 138),
(3101, 'http://www.sc27309.scuolanext.info/', 'http', 138),
(3102, 'https://www.cigna-baruffi-garelli.edu.it/index.php/newscigna/511-apprendistato', 'https', 138),
(3103, 'http://twitter.github.io/bootstrap/', 'http', 138),
(3104, 'https://github.com/twbs/bootstrap/blob/master/LICENSE', 'https', 138),
(3105, 'http://fortawesome.github.io/Font-Awesome/', 'http', 138),
(3106, 'http://scripts.sil.org/OFL', 'http', 138),
(3107, 'http://t3-framework.org', 'http', 138),
(3108, 'https://www.miur.gov.it/web/guest', 'https', 139),
(3109, 'https://www.istitutoguala.edu.it/wp-login.php?redirect_to=%2F', 'https', 139),
(3110, 'https://www.istitutoguala.edu.it/', 'https', 139),
(3111, 'https://www.istitutoguala.edu.it/orari-segreteria/', 'https', 139),
(3112, 'https://www.istitutoguala.edu.it/wp-content/uploads/2021/03/ORGANIGRAMMA_20_21-1.pdf', 'https', 139),
(3113, 'https://www.istitutoguala.edu.it/indirizzi-di-studio/', 'https', 139),
(3114, 'https://www.istitutoguala.edu.it/category/rassegnastampa/', 'https', 139),
(3115, 'https://www.istitutoguala.edu.it/pon/', 'https', 139),
(3116, 'https://www.istitutoguala.edu.it/mad/', 'https', 139),
(3117, 'https://www.istitutoguala.edu.it/amministrazione-trasparente/', 'https', 139),
(3118, 'https://cnis01600l.regel.it/pubblicazioni/pubblicazioni.php?sez=albo', 'https', 139),
(3119, 'http://istitutoguala.scuola-pa.it/DettCat.aspx/ALBO-ONLINE/71', 'http', 139),
(3120, 'https://www.istitutoguala.edu.it/2021/03/06/orario-definitivo/', 'https', 139),
(3121, 'https://www.istitutoguala.edu.it/manuali-e-piattaforme/', 'https', 139),
(3122, 'https://www.regione.piemonte.it/web/sites/default/files/media/documenti/2020-09/CALENDARIO%20SCOLASTICO%202020-2021.pdf', 'https', 139),
(3123, 'https://www.istitutoguala.it/PTOF/PTOFagg2021ALLEGATI.pdf', 'https', 139),
(3124, 'https://www.istitutoguala.edu.it/programmazioni-didattiche/', 'https', 139),
(3125, 'https://istitutogualacn.sharepoint.com/:f:/s/UpLoadDocenti/Ei40oYRp1FVMtife_N1U3LIBHCagN2KbkJgHRmLMaWcsfw?e=KEO8hx', 'https', 139),
(3126, 'https://istitutogualacn.sharepoint.com/:f:/s/UpLoadDocenti/EjuolrPW51hCmQCsXNo3WwIBmwwd88Y19shH_0N-HrT1zQ?e=Pic1ey', 'https', 139),
(3127, 'https://istitutogualacn.sharepoint.com/:f:/s/UpLoadDocenti/ErK-snf7QndJud1YQeStxhUBSjUFtlRa3HZyK4TvXCkf_w?e=sgXeYL', 'https', 139),
(3128, 'https://istitutogualacn.sharepoint.com/sites/UpLoadDocenti/Documenti%20condivisi/Forms/AllItems.aspx', 'https', 139),
(3129, 'https://www.istitutoguala.edu.it/2021/03/06/orario-definitivo/', 'https', 139),
(3130, 'https://www.istitutoguala.it/allegati/2021/circolare%2017.pdf', 'https', 139),
(3131, 'https://guala-cn-sito.registroelettronico.com/login/?next=%2Fselect-student%2F', 'https', 139),
(3132, 'https://guala-cn.registroelettronico.com/mastercom/', 'https', 139),
(3133, 'https://www.istitutoguala.it/orientamento/iscrizioniclassi1.pdf', 'https', 139),
(3134, 'https://www.istitutoguala.it/defaultECDL.aspx', 'https', 139),
(3135, 'https://outlook.office365.com/mail/group/istitutogualacn.onmicrosoft.com/2021_collegio_docenti/email', 'https', 139),
(3136, 'https://guala-cn.registroelettronico.com/mastercom/index.php', 'https', 139),
(3137, 'https://guala-cn.registroelettronico.com/moodle/index.php', 'https', 139),
(3138, 'https://cnis01600l.regel.it/login/', 'https', 139),
(3139, 'https://alternanza.registroelettronico.com/guala-cn/', 'https', 139),
(3140, 'http://www.office.com', 'http', 139),
(3141, 'https://www.istitutoguala.edu.it/category/in-evidenza/', 'https', 139),
(3142, 'https://www.istitutoguala.edu.it/category/in-evidenza/studenti/', 'https', 139),
(3143, 'https://www.istitutoguala.edu.it/category/in-evidenza/ata/', 'https', 139),
(3144, 'https://www.istitutoguala.edu.it/category/in-evidenza/docenti/', 'https', 139),
(3145, 'https://www.istitutoguala.edu.it/category/pon/', 'https', 139),
(3146, 'https://www.istitutoguala.edu.it/regolamenti/', 'https', 139),
(3147, 'https://www.istitutoguala.it/Allegati/2021/NoteLegaliPrivacy.pdf', 'https', 139),
(3148, 'https://www.istitutoguala.edu.it/2020/10/05/prevenzione-del-contagio-da-sars-cov-2/', 'https', 139),
(3149, 'https://www.facebook.com/istitutoguala/', 'https', 139),
(3150, 'https://twitter.com/istitutoguala', 'https', 139),
(3151, 'https://www.youtube.com/channel/UC-efYfQ5XT8qype3D0cmOyg', 'https', 139),
(3152, 'https://www.instagram.com/istitutoguala', 'https', 139),
(3153, 'https://www.istitutoguala.edu.it/', 'https', 139),
(3154, 'https://www.istitutoguala.edu.it/', 'https', 139),
(3155, 'https://www.facebook.com/istitutoguala/', 'https', 139),
(3156, 'https://twitter.com/istitutoguala', 'https', 139),
(3157, 'https://www.youtube.com/channel/UC-efYfQ5XT8qype3D0cmOyg', 'https', 139),
(3158, 'https://www.instagram.com/istitutoguala', 'https', 139),
(3159, 'https://www.istitutoguala.edu.it/orari-segreteria/', 'https', 139),
(3160, 'https://www.istitutoguala.edu.it/wp-content/uploads/2021/03/ORGANIGRAMMA_20_21-1.pdf', 'https', 139),
(3161, 'https://www.istitutoguala.edu.it/indirizzi-di-studio/', 'https', 139),
(3162, 'https://www.istitutoguala.edu.it/category/rassegnastampa/', 'https', 139),
(3163, 'https://www.istitutoguala.edu.it/pon/', 'https', 139),
(3164, 'https://www.istitutoguala.edu.it/mad/', 'https', 139),
(3165, 'https://www.istitutoguala.edu.it/amministrazione-trasparente/', 'https', 139),
(3166, 'https://cnis01600l.regel.it/pubblicazioni/pubblicazioni.php?sez=albo', 'https', 139),
(3167, 'http://istitutoguala.scuola-pa.it/DettCat.aspx/ALBO-ONLINE/71', 'http', 139),
(3168, 'https://www.istitutoguala.edu.it/2021/03/06/orario-definitivo/', 'https', 139),
(3169, 'https://www.istitutoguala.edu.it/manuali-e-piattaforme/', 'https', 139),
(3170, 'https://www.regione.piemonte.it/web/sites/default/files/media/documenti/2020-09/CALENDARIO%20SCOLASTICO%202020-2021.pdf', 'https', 139),
(3171, 'https://www.istitutoguala.it/PTOF/PTOFagg2021ALLEGATI.pdf', 'https', 139),
(3172, 'https://www.istitutoguala.edu.it/programmazioni-didattiche/', 'https', 139),
(3173, 'https://istitutogualacn.sharepoint.com/:f:/s/UpLoadDocenti/Ei40oYRp1FVMtife_N1U3LIBHCagN2KbkJgHRmLMaWcsfw?e=KEO8hx', 'https', 139),
(3174, 'https://istitutogualacn.sharepoint.com/:f:/s/UpLoadDocenti/EjuolrPW51hCmQCsXNo3WwIBmwwd88Y19shH_0N-HrT1zQ?e=Pic1ey', 'https', 139),
(3175, 'https://istitutogualacn.sharepoint.com/:f:/s/UpLoadDocenti/ErK-snf7QndJud1YQeStxhUBSjUFtlRa3HZyK4TvXCkf_w?e=sgXeYL', 'https', 139),
(3176, 'https://istitutogualacn.sharepoint.com/sites/UpLoadDocenti/Documenti%20condivisi/Forms/AllItems.aspx', 'https', 139),
(3177, 'https://www.istitutoguala.edu.it/2021/03/06/orario-definitivo/', 'https', 139),
(3178, 'https://www.istitutoguala.it/allegati/2021/circolare%2017.pdf', 'https', 139),
(3179, 'https://guala-cn-sito.registroelettronico.com/login/?next=%2Fselect-student%2F', 'https', 139),
(3180, 'https://guala-cn.registroelettronico.com/mastercom/', 'https', 139),
(3181, 'https://www.istitutoguala.it/orientamento/iscrizioniclassi1.pdf', 'https', 139),
(3182, 'https://www.istitutoguala.it/defaultECDL.aspx', 'https', 139),
(3183, 'https://outlook.office365.com/mail/group/istitutogualacn.onmicrosoft.com/2021_collegio_docenti/email', 'https', 139),
(3184, 'https://guala-cn.registroelettronico.com/mastercom/index.php', 'https', 139),
(3185, 'https://guala-cn.registroelettronico.com/moodle/index.php', 'https', 139),
(3186, 'https://cnis01600l.regel.it/login/', 'https', 139),
(3187, 'https://alternanza.registroelettronico.com/guala-cn/', 'https', 139),
(3188, 'http://www.office.com', 'http', 139),
(3189, 'https://www.istitutoguala.edu.it/category/in-evidenza/', 'https', 139),
(3190, 'https://www.istitutoguala.edu.it/category/in-evidenza/studenti/', 'https', 139),
(3191, 'https://www.istitutoguala.edu.it/category/in-evidenza/ata/', 'https', 139),
(3192, 'https://www.istitutoguala.edu.it/category/in-evidenza/docenti/', 'https', 139),
(3193, 'https://www.istitutoguala.edu.it/category/pon/', 'https', 139),
(3194, 'https://www.istitutoguala.edu.it/regolamenti/', 'https', 139),
(3195, 'https://www.istitutoguala.it/Allegati/2021/NoteLegaliPrivacy.pdf', 'https', 139),
(3196, 'https://www.istitutoguala.edu.it/2020/10/05/prevenzione-del-contagio-da-sars-cov-2/', 'https', 139),
(3197, 'https://www.istitutoguala.edu.it/il-guala/', 'https', 139),
(3198, 'https://www.istitutoguala.edu.it/2021/04/26/settimana-civica/', 'https', 139),
(3199, 'https://www.istitutoguala.edu.it/2021/04/24/orario-definitivo/', 'https', 139),
(3200, 'https://www.istitutoguala.edu.it/2021/04/07/sportelli-disciplinari-di-aprile-maggio/', 'https', 139),
(3201, 'https://www.istitutoguala.edu.it/2021/03/19/graduatorie-di-circolo-e-di-istituto-di-terza-fascia-del-personale-ata/', 'https', 139),
(3202, 'https://www.istitutoguala.edu.it/2021/02/12/calendario-sportelli-per-il-recupero-insufficienze/', 'https', 139),
(3203, 'https://www.istitutoguala.edu.it/2021/02/12/pagamenti-telematici-con-pago-in-rete/', 'https', 139),
(3204, 'https://www.istitutoguala.edu.it/2021/02/08/prevenzione-del-contagio-da-sars-cov-2/', 'https', 139),
(3205, 'https://www.istitutoguala.edu.it/2020/11/30/orientamento/', 'https', 139),
(3206, 'https://guala-cn-sito.registroelettronico.com/login/?next=%2Fselect-student%2F', 'https', 139),
(3207, 'https://guala-cn.registroelettronico.com/mastercom/', 'https', 139),
(3208, 'https://guala-cn.registroelettronico.com/quaderno', 'https', 139),
(3209, 'https://alternanza.registroelettronico.com/guala-cn/', 'https', 139),
(3210, 'https://cnis01600l.regel.it/', 'https', 139),
(3211, 'http://cercalatuascuola.istruzione.it/cercalatuascuola/ricerca/risultati?rapida=guala+bra&#038;tipoRicerca=RAPIDA&#038;gidf=1', 'http', 139),
(3212, 'https://www.istitutoguala.it/defaultECDL.aspx', 'https', 139),
(3213, 'https://guala-cn.registroelettronico.com/moodle/', 'https', 139),
(3214, 'https://www.istitutoguala.edu.it/mad/', 'https', 139),
(3215, 'https://www.istitutoguala.edu.it/pon/', 'https', 139),
(3216, 'https://cnis01600l.regel.it/pubblicazioni/pubblicazioni', 'https', 139),
(3217, 'https://www.istitutoguala.edu.it/wp-content/uploads/2021/02/SIGNED_CIR_n_71_orari_segreteria_per_utenti.pdf', 'https', 139),
(3218, 'https://cnis01600l.regel.it/pubblicazioni/pubblicazioni.php?sez=albo', 'https', 139),
(3219, 'http://www.istruzionepiemonte.it/cuneo/pubblicazione-elenco-esiti-valutazione-titoli-classe-di-concorso-a026/', 'http', 139),
(3220, 'http://www.istruzionepiemonte.it/cuneo/istanza-di-conciliazione-lomartire-ilaria/', 'http', 139),
(3221, 'http://www.istruzionepiemonte.it/cuneo/decreto-esclusione-domande-di-mobilita-scuola-dellinfanzia-e-primaria/', 'http', 139),
(3222, 'http://www.istruzionepiemonte.it/cuneo/task-force-di-supporto-al-lavoro-delle-commissioni-dellesame-di-stato-per-lambito-territoriale-della-provincia-di-cuneo-a-s-2020-2021/', 'http', 139),
(3223, 'http://www.istruzionepiemonte.it/cuneo/istanza-di-conciliazione-damu-alice/', 'http', 139),
(3224, 'http://www.istruzionepiemonte.it/cuneo/avviso-di-pubblicazione-dei-bandi-per-laggiornamento-inserimento-nelle-graduatorie-provinciali-permanenti-24-mesi-del-personale-ata-a-s-2021-22/', 'http', 139),
(3225, 'http://www.istruzionepiemonte.it/cuneo/esiti-nomine-in-ruolo-giuridiche-scuola-primaria/', 'http', 139),
(3226, 'http://www.istruzionepiemonte.it/cuneo/elenco-delle-sedi-che-potrebbero-rendersi-disponibili-a-seguito-di-pensionamento-del-personale-a-tempo-indeterminato-docente-e-ata/', 'http', 139),
(3227, 'http://www.istruzionepiemonte.it/cuneo/avviso-assegnazione-sedi-di-titolarita-docenti-immessi-in-ruolo-da-graduatoria-di-merito-del-concorso-straordinario-per-la-scuola-primaria-ddg-1546-2018-con-decorrenza-giuridica-01-09-2020-ed-econo/', 'http', 139),
(3228, 'http://www.istruzionepiemonte.it/concorso-scolastico-dalle-aule-parlamentari-alle-aule-di-scuola-lezioni-di-costituzione-vincitori/', 'http', 139),
(3229, 'http://www.istruzionepiemonte.it/corso-formazione-per-i-docenti-amicorti-a-scuola/', 'http', 139),
(3230, 'http://www.istruzionepiemonte.it/ministero-dellistruzione-rai-programmazione-dedicata-agli-esami-di-stato/', 'http', 139),
(3231, 'http://www.istruzionepiemonte.it/cerimonia-di-premiazione-il-trofeo-smart-project-omron/', 'http', 139),
(3232, 'http://www.istruzionepiemonte.it/ii-seminario-nazionale-di-formazione-docenti-sulle-tematiche-della-shoah-passaggio-di-testimone-maggio-giugno-2021-piattaforma-online-urgente/', 'http', 139),
(3233, 'http://www.istruzionepiemonte.it/scuola-estiva-di-astronomia-sulle-orme-di-dante-un-percorso-didattico-di-astronomia-astrofisica-cosmologia/', 'http', 139),
(3234, 'http://www.istruzionepiemonte.it/concorso-internazionale-di-musica-citta-di-stresa/', 'http', 139),
(3235, 'http://www.istruzionepiemonte.it/etwinning-spunti-pratici-e-applicazioni-per-una-buona-progettazione-webinar-maggio-2021-per-docenti-e-dirigenti-scolastici-delle-scuole-di-ogni-ordine-e-grado/', 'http', 139),
(3236, 'http://www.istruzionepiemonte.it/rilevazioni-invalsi-a-s-2020-2021-gruppo-di-lavoro-regionale/', 'http', 139),
(3237, 'https://www.istitutoguala.edu.it/2021/04/26/settimana-civica/', 'https', 139),
(3238, 'https://www.istitutoguala.edu.it/2021/04/24/orario-definitivo/', 'https', 139),
(3239, 'https://www.istitutoguala.edu.it/2021/04/07/sportelli-disciplinari-di-aprile-maggio/', 'https', 139),
(3240, 'https://www.istitutoguala.edu.it/2021/03/19/graduatorie-di-circolo-e-di-istituto-di-terza-fascia-del-personale-ata/', 'https', 139),
(3241, 'https://www.istitutoguala.edu.it/2021/02/12/calendario-sportelli-per-il-recupero-insufficienze/', 'https', 139),
(3242, 'https://www.istitutoguala.edu.it/2021/02/12/pagamenti-telematici-con-pago-in-rete/', 'https', 139),
(3243, 'https://www.istitutoguala.edu.it/2021/02/08/prevenzione-del-contagio-da-sars-cov-2/', 'https', 139),
(3244, 'https://www.istitutoguala.edu.it/category/in-evidenza/', 'https', 139),
(3245, 'https://www.istitutoguala.edu.it/2021/04/07/sportelli-disciplinari-di-aprile-maggio/', 'https', 139),
(3246, 'https://www.istitutoguala.edu.it/2020/11/30/orientamento/', 'https', 139),
(3247, 'https://www.istitutoguala.edu.it/category/in-evidenza/', 'https', 139),
(3248, 'https://www.istitutoguala.edu.it/2021/03/19/graduatorie-di-circolo-e-di-istituto-di-terza-fascia-del-personale-ata/', 'https', 139),
(3249, 'https://www.istitutoguala.edu.it/category/in-evidenza/ata/', 'https', 139),
(3250, 'https://www.istitutoguala.edu.it/2021/04/07/sportelli-disciplinari-di-aprile-maggio/', 'https', 139),
(3251, 'https://www.istitutoguala.edu.it/2020/11/30/orientamento/', 'https', 139),
(3252, 'https://www.istitutoguala.edu.it/category/in-evidenza/ata/', 'https', 139),
(3253, 'https://www.istitutoguala.edu.it/category/pon/', 'https', 139),
(3254, 'https://www.istitutoguala.edu.it/2021/04/26/settimana-civica/', 'https', 139),
(3255, 'https://www.istitutoguala.edu.it/2021/04/04/bra-i-ragazzi-delliss-ernesto-guala-incontrano-in-dad-lassessore-demaria/', 'https', 139),
(3256, 'https://www.istitutoguala.edu.it/2021/04/04/bra-studentesse-del-guala-sul-podio-di-conoscere-la-borsa/', 'https', 139),
(3257, 'https://www.istitutoguala.edu.it/2021/04/04/conoscere-la-borsa-il-secondo-posto-nella-speciale-classifica-della-sostenibilita-conquistato-dalle-b-girls-del-guala-di-bra/', 'https', 139),
(3258, 'https://www.istitutoguala.edu.it/2021/04/04/liis-ernesto-guala-tra-i-vincitori-del-concorso-diventiamo-cittadini-europei/', 'https', 139),
(3259, 'https://www.istitutoguala.edu.it/category/pon/', 'https', 139),
(3260, 'https://www.istitutoguala.edu.it/', 'https', 139),
(3261, 'https://www.facebook.com/istitutoguala/', 'https', 139),
(3262, 'https://twitter.com/istitutoguala', 'https', 139),
(3263, 'https://www.youtube.com/channel/UC-efYfQ5XT8qype3D0cmOyg', 'https', 139),
(3264, 'https://www.instagram.com/istitutoguala', 'https', 139),
(3265, 'https://form.agid.gov.it/view/0062dc57-70a5-4072-8207-c3d98819e383/', 'https', 139),
(3266, 'https://forms.office.com/Pages/ResponsePage.aspx?id=0XrrFeyohkiq42pwQi9hwhWsGw9DA25JiU5N7qKAtkZURFVBRUhKRTJRRkdBNUJPMzRZOFc4TUZWUC4u', 'https', 139),
(3267, 'https://www.facebook.com/deninapellicorivoira/', 'https', 140),
(3268, 'https://www.instagram.com/deninapellicorivoira/?hl=it', 'https', 140),
(3269, 'https://www.youtube.com/channel/UCY-94jXci5LUJdlAf89brrg/featured', 'https', 140),
(3270, 'https://www.denina.it/component/users/?return=aHR0cDovL3d3dy5kZW5pbmEuZ292Lml0L2NpcmNvbGFyaS1k&Itemid=743', 'https', 140),
(3271, 'https://www.denina.it/cerca-menu', 'https', 140),
(3272, 'https://www.formarealfuturo.it/', 'https', 140),
(3273, 'https://www.denina.it/m-a-d-2', 'https', 140),
(3274, 'https://www.denina.it/m-a-d-2', 'https', 140),
(3275, 'https://www.denina.it/genitori', 'https', 140),
(3276, 'https://www.denina.it/genitori', 'https', 140),
(3277, 'https://web.spaggiari.eu/home/app/default/login.php?ch=scuola', 'https', 140),
(3278, 'https://web.spaggiari.eu/home/app/default/login.php?ch=scuola', 'https', 140),
(3279, 'https://web.spaggiari.eu/home/app/default/login.php?ch=scuola', 'https', 140),
(3280, 'https://web.spaggiari.eu/home/app/default/login.php?ch=scuola', 'https', 140),
(3281, 'https://www.denina.it/ddad/', 'https', 140),
(3282, 'https://www.denina.it/asl', 'https', 140),
(3283, 'https://www.denina.it/asl', 'https', 140),
(3284, 'https://www.denina.it/pon-2014-2020', 'https', 140),
(3285, 'https://www.targatocn.it/2021/04/26/leggi-notizia/argomenti/scuole-e-corsi/articolo/gli-studenti-del-denina-pellico-rivoira-di-saluzzo-hanno-incontrato-carlo-malerba.html', 'https', 140),
(3286, 'https://www.denina.it/prima-pagina', 'https', 140),
(3287, 'https://www.denina.it/orario-lezioni', 'https', 140),
(3288, 'https://www.denina.it/orario-lezioni', 'https', 140),
(3289, 'https://www.denina.it/libri-di-testo-2020-2021', 'https', 140),
(3290, 'https://www.denina.it/libri-di-testo-2020-2021', 'https', 140),
(3291, 'https://www.facebook.com/deninapellicorivoira', 'https', 140),
(3292, 'https://www.instagram.com/deninapellicorivoira/', 'https', 140),
(3293, 'https://www.youtube.com/channel/UCY-94jXci5LUJdlAf89brrg', 'https', 140),
(3294, 'https://www.denina.it/ecdl', 'https', 140),
(3295, 'https://www.denina.it/ecdl', 'https', 140),
(3296, 'https://www.denina.it/certificazioni-pet-e-fce', 'https', 140),
(3297, 'https://www.denina.it/certificazioni-pet-e-fce', 'https', 140),
(3298, 'https://www.denina.gov.it/contatti', 'https', 140),
(3299, 'https://www.denina.it/delf', 'https', 140),
(3300, 'https://www.denina.it/delf', 'https', 140),
(3301, 'http://www.miur.gov.it/', 'http', 140),
(3302, 'http://www.istruzione.it/pon/', 'http', 140),
(3303, 'http://cercalatuascuola.istruzione.it/cercalatuascuola/', 'http', 140),
(3304, 'http://comune.saluzzo.cn.it/', 'http', 140),
(3305, 'http://www.libera.it/flex/cm/pages/ServeBLOB.php/L/IT/IDPagina/1', 'http', 140),
(3306, 'http://www.rsds.it/', 'http', 140),
(3307, 'https://web.spaggiari.eu/sdg/app/default/albo_pretorio.php?sede_codice=CNII0004&amp;referer=https://www.denina.it/', 'https', 140),
(3308, 'https://web.spaggiari.eu/sdg/app/default/trasparenza.php?sede_codice=CNII0004&amp;referer=https://www.denina.it/', 'https', 140),
(3309, 'https://web.spaggiari.eu/sdg/app/default/comunicati.php?sede_codice=CNII0004&amp;referer=https://www.denina.it/', 'https', 140),
(3310, 'https://www.istruzione.it/iscrizionionline/', 'https', 140),
(3311, 'https://web.spaggiari.eu/home/app/default/login.php?ch=scuola', 'https', 140),
(3312, 'https://web.spaggiari.eu/home/app/default/login.php?ch=scuola', 'https', 140),
(3313, 'https://www.themexpert.com/', 'https', 140),
(3314, 'https://form.agid.gov.it/view/b886ed2d-30eb-4f48-9dad-014f601b545b/', 'https', 140);

-- --------------------------------------------------------

--
-- Struttura della tabella `utenti`
--

CREATE TABLE `utenti` (
  `id` int(11) NOT NULL,
  `nickname` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `utenti`
--

INSERT INTO `utenti` (`id`, `nickname`, `password`) VALUES
(1, 'Paolo', '12345');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `inputurls`
--
ALTER TABLE `inputurls`
  ADD PRIMARY KEY (`idUrl`);

--
-- Indici per le tabelle `scrapingurls`
--
ALTER TABLE `scrapingurls`
  ADD PRIMARY KEY (`idUrl`),
  ADD KEY `idInputUrl` (`idInputUrl`);

--
-- Indici per le tabelle `utenti`
--
ALTER TABLE `utenti`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `inputurls`
--
ALTER TABLE `inputurls`
  MODIFY `idUrl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT per la tabella `scrapingurls`
--
ALTER TABLE `scrapingurls`
  MODIFY `idUrl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3315;

--
-- AUTO_INCREMENT per la tabella `utenti`
--
ALTER TABLE `utenti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `scrapingurls`
--
ALTER TABLE `scrapingurls`
  ADD CONSTRAINT `scrapingurls_ibfk_1` FOREIGN KEY (`idInputUrl`) REFERENCES `inputurls` (`idUrl`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
