<?php
include 'include/header_other.php';
?>

<section class="page-header @@extraClassName" data-jarallax data-speed="0.3" data-imgPosition="50% -100%">
    <div class="page-header__bg jarallax-img"></div><!-- /.page-header-bg -->
    <div class="page-header__overlay"></div><!-- /.page-header-overlay -->
    <div class="container text-center">
        <h2 class="page-header__title">Daily News Bulletins</h2><!-- /.page-title -->
        <ul class="page-header__breadcrumb list-unstyled">
            <li><a href="<?php echo base_url()?>">Home</a></li>
            <li><span>Dalily News Bulletins</span></li>
        </ul><!-- /.page-breadcrumb list-unstyled -->
    </div><!-- /.container -->
</section><!-- /.page-header -->

<div>   
  <center>
    <?php foreach ($this->data['list'] as $k1 => $v1) { 
      $date = $v1['date'];

      $details = $this->Cms_model->pg_bulletins_dt('', $date, 'Active');
    ?>

      <hr class=line>   
      <h3> <?php echo date_format(date_create($date),'M d, Y'); ?> </h3>
      <hr class=line1>
      <?php foreach ($details as $key => $value ) { if (!empty($value['image'])) { ?>
        <a href="<?php echo base_url('uploads/pg/'.$value['image'])?>"> 
          <img height=50% width=40% src="<?php echo base_url('uploads/pg/'.$value['image'])?>" alt="News Paper">
        </a>
      <?php } } ?>      
    <?php } ?>
  </center>
</div>
<style>
  .line{
     height: 7px;
     background: #ff0000;
     margin: 20px 0;
     box-shadow: 0px 0px 5px 2px rgba(204,204,204,1);
  }
  .line1{
     height: 7px;
     background: #0000ff;
     margin: 20px 0;
     box-shadow: 0px 0px 5px 2px rgba(204,204,204,1);
  }
</style>
<?php
include 'include/footer.php';
?>