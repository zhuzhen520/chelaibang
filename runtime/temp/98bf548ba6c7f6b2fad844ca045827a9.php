<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:64:"/www2/wwwroot/Zhu/CRMEB/application/admin/view/public/notice.php";i:1552637812;}*/ ?>
<script>
    var $eb = parent._mpApi,back = <?=$backUrl?>;
    $eb.notice('<?php echo $type; ?>',{
        title:'<?php echo $msg; ?>',
        desc:'<?php echo $info; ?>' || null,
        duration:<?=$duration?>
    });
    !!back ? (location.replace(back)) : history.go(-1);
</script>