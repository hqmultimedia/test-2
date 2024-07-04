
<!-- footer -->
<?php 
$path_dir=__DIR__;
?>
<?php require($path_dir.'/../general-ingredients/footer/footer.php'); ?>
<!-- end footer -->

</body>


<link rel="stylesheet" href="<?php echo base_url(); ?>library/hq-multimedia-plugin/hq-js/hq-js-ver-1.9.css">
<script src="<?php echo base_url(); ?>library/hq-multimedia-plugin/hq-js/hq-js-ver-1.9.js "></script>
<!-- HQ jquery theme project -->


<!-- gọi hàm trong hq-jquery -->
<script>
    $('.FancyBox_preview a').fancybox();
</script>

<script>
   $('.owl-carousel').owlCarousel({
    merge:true,
    loop:false,
    margin:10,
    nav:true,
    
    responsive:{
        0:{
            items:1
        },
        600:{
            items:2
        },
        1000:{
            items:3
        }
    }
})
</script>

<!-- js video -->
<script
    src="<?php echo base_url(); ?>vendor/video-mediaelement-plugins-2.6.7/dist/playlist/mediaelement-and-player.min.js">
</script>
<script src="<?php echo base_url(); ?>vendor/video-mediaelement-plugins-2.6.7/dist/playlist/playlist.js"></script>
<script>
var mediaElements = document.querySelectorAll('video, audio');

for (var i = 0, total = mediaElements.length; i < total; i++) {
    new MediaElementPlayer(mediaElements[i], {
        features: ['prevtrack', 'playpause', 'nexttrack', 'current', 'progress', 'duration', 'volume',
            'playlist', 'shuffle', 'loop', 'fullscreen'
        ],
    });
}
</script>
<!-- end js video -->
<script>
    Menu();
    Show_Menu();
</script>

</html>



<!-- End footer -->