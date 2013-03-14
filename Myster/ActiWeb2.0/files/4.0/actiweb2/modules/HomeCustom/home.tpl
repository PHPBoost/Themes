<!-- DC Parallax Slider CSS -->
<link rel="stylesheet" type="text/css" href="{PATH_TO_ROOT}/templates/{THEME}/modules/HomeCustom/tsc_parallax.css" />
 
<!-- DC Javascript Library -->
<script type="text/javascript" src="{PATH_TO_ROOT}/templates/{THEME}/modules/HomeCustom/js/jquery.min.js"></script> <!-- jQuery Library (do not call twice on same page) -->
 
<!-- DC Parallax Slider JS -->
<script type="text/javascript" src="{PATH_TO_ROOT}/templates/{THEME}/modules/HomeCustom/js/modernizr.custom.js"></script>
<script type="text/javascript" src="{PATH_TO_ROOT}/templates/{THEME}/modules/HomeCustom/js/jquery.cslider.js"></script>
 
<!-- DC Parallax Slider Settings -->
<script type="text/javascript">
            $(function() {
             
                $('#da-slider').cslider({
                    autoplay    : true, // auto play slider on load
                    bgincrement : 450
                });
             
            });
</script>
 
<!-- DC Parallax Slider Start -->
<div style="width:100%; margin:0 auto; padding:0px; position:relative;"> <!-- define slider container width (strict enforce) -->
<div id="da-slider" class="da-slider">
     
    <!-- Slide 1 -->
    <!-- Slide 3 -->
    <div class="da-slide">
        <h2>Les bases de Windows 7</h2>
        <p>Vous venez d'acquérir un ordinateur équipé de Windows 7 ? N'hésitez pas à lire notre tutoriel consacré à l'apprentissage de l'utilisation sur Windows 7</p>
        <a href="{PATH_TO_ROOT}/articles" class="da-link">Apprendre les bases</a>
        <div class="da-img"><img src="{PATH_TO_ROOT}/templates/{THEME}/modules/HomeCustom/images/windows-7-slide.png" alt="image01" /></div>
    </div>
          
    <!-- Slide 3 -->
    <div class="da-slide">
        <h2>Besoin d'aide ?</h2>
        <p>Le forum est à votre disposition si vous rencontrez des problèmes dans le domaine de l'informatique !</p>
        <a href="{PATH_TO_ROOT}/forum" class="da-link">Accéder au forum</a>
        <div class="da-img"><img src="{PATH_TO_ROOT}/templates/{THEME}/modules/HomeCustom/images/forum-icone-6640-128.png" alt="image01" /></div>
    </div>
     
    <!-- Slide 3 -->
    <div class="da-slide">
        <h2>Le t'Chat</h2>
        <p>Pour toujours plus de convivialité, une plateforme de t'Chat est disponible pour discuter et vous amusez tranquillement !</p>
        <a href="{PATH_TO_ROOT}/pages" class="da-link">Accéder au t'Chat</a>
        <div class="da-img"><img src="{PATH_TO_ROOT}/templates/{THEME}/modules/HomeCustom/images/chat-icone-8257-128.png" alt="image01" /></div>
    </div>
     
    <!-- Slide 4 -->
     
    <!-- navigation controls -->
    <nav class="da-arrows">
        <span class="da-arrows-prev"></span>
        <span class="da-arrows-next"></span>
    </nav>
     
</div> <!-- /da-slider -->
</div>
<!-- DC Parallax Slider End -->
<div class="tsc_clear"></div> <!-- line break/clear line -->

<br/>

<!-- DC [2 Columns] Start -->
<div class="one_half">
  <h3>Apprendre les bases de l'informatique</h3>
  <p>Noridia a été fondée principalement dans le but d'apprendre les bases de l'informatique aux débutants grâce à des tutoriels simples et intuitifs, chaque jour voire chaque semaine des tutoriels sont ajoutés afin de vous permettre d'en apprendre plus sur l'informatique</p>
</div>
<!-- END one_half -->
 
<div class="one_half column-last">
  <h3>Participer à Noridia</h3>
  <p>Il y a bien des façons de participer à Noridia, vous pouvez par exemple, créer des tutoriels, aider les membres sur les forums, signaler des bugs, suggéré des nouvelles améliorations, etc.</p>
</div>
<div class="tsc_clear"></div>   <br />

<hr> <br />

  <div class="tsc_ribbon_wrap edge" style="width:49%; height:130px;">
    <div class="ribbon-wrap right-edge fork lblue"><span>Sur le forum ...</span></div>
    <br />
    <br />
    <div align="center">
        <small>${Feed::get_parsed('forum', 'master', 0, true, 5)}</small>
  </div>
  </div>


<!-- DC Ribbons Start -->
  <div class="tsc_ribbon_wrap edge" style=" float: left ;height: 130px; margin: -135px 78px 78px 506px; width: 48%;">
    <div class="ribbon-wrap right-edge fork lred"><span>Quelques News ...</span></div>
    <br />
    <br />
   <div align="center">
        <small>${Feed::get_parsed('news', 'master', 0, true, 5)}</small>  </div>
  </div>
<!-- DC Ribbons End -->


<br/><br/><br/>
 <div class="tsc_ribbon_banner">
    <div class="ribbon-banner fold-down lyellow"><span>A la une ...</span></div>
  </div>
<br/><br/>
<!-- Les derniers tutoriels -->
  <div class="tsc_ribbon_wrap edge" style="width:49%; height:130px;">
    <div class="ribbon-wrap right-edge fork lblue"><span>Derniers tutoriels</span></div>
    <br />
    <br />
    <div align="center">
        <small>${Feed::get_parsed('articles', 'master', 0, TRUE, 5)}</small>
  </div>
  </div>


<!-- DC Ribbons Start -->
  <div class="tsc_ribbon_wrap edge" style=" float: left ;height: 130px; margin: -135px 78px 78px 506px; width: 48%;">
    <div class="ribbon-wrap right-edge fork lred"><span>Derniers logiciels</span></div>
    <br />
    <br />
   <div align="center">
        <small>${Feed::get_parsed('download', 'master', 0, true, 5)}</small>  </div>
  </div>
<!-- DC Ribbons End -->

<br/><br/><br/>
 