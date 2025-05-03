<?php
include('./dbConnection.php');
include('./mainInclude/header.php'); 
?>  
<!-- Start Video Background-->
<div class="container-fluid remove-vid-marg">
  <div class="vid-parent">
    <video playsinline autoplay muted loop>
      <source src="video/banvid.mp4" />
    </video>
    <div class="vid-overlay"></div>
  </div>
  <div class="vid-content">
    <h1 class="my-content">Welcome to StudySquare</h1>
  </div>
</div> <!-- End Video Background -->

<div class="container mt-5"> <!-- Start Most Popular Course -->
  <h1 class="text-center">Our Courses</h1>
  <div class="card-deck mt-4"> <!-- Start Most Popular Course 1st Card Deck -->
    <?php
    $sql = "SELECT * FROM course LIMIT 3";
    $result = $conn->query($sql);
    if($result->num_rows > 0){ 
      while($row = $result->fetch_assoc()){
        $course_id = $row['course_id'];
        echo '
        <a href="coursedetails.php?course_id='.$course_id.'" class="btn" style="text-align: left; padding:0px; margin:0px;">
          <div class="card">
            <img src="'.str_replace('..', '.', $row['course_img']).'" class="card-img-top" alt="Course Image" />
            <div class="card-body">
              <h5 class="card-title">'.$row['course_name'].'</h5>
              <p class="card-text">'.$row['course_desc'].'</p>
            </div>
            <div class="card-footer">
              <p class="card-text d-inline">Price: <span class="font-weight-bolder">&#8377 '.$row['course_price'].'<span></p> 
              <a class="btn btn-primary text-white font-weight-bolder float-right" href="coursedetails.php?course_id='.$course_id.'">Avail Now</a>
            </div>
          </div>
        </a>';
      }
    }
    ?>   
  </div>  <!-- End Most Popular Course 1st Card Deck -->   
  <div class="card-deck mt-4"> <!-- Start Most Popular Course 2nd Card Deck -->
    <?php
    $sql = "SELECT * FROM course LIMIT 3,3";
    $result = $conn->query($sql);
    if($result->num_rows > 0){ 
      while($row = $result->fetch_assoc()){
        $course_id = $row['course_id'];
        echo '
          <a href="coursedetails.php?course_id='.$course_id.'" class="btn" style="text-align: left; padding:0px;">
            <div class="card">
              <img src="'.str_replace('..', '.', $row['course_img']).'" class="card-img-top" alt="Course Image" />
              <div class="card-body">
                <h5 class="card-title">'.$row['course_name'].'</h5>
                <p class="card-text">'.$row['course_desc'].'</p>
              </div>
              <div class="card-footer">
                <p class="card-text d-inline">Price: <span class="font-weight-bolder">&#8377 '.$row['course_price'].'<span></p> 
                <a class="btn btn-primary text-white font-weight-bolder float-right" href="#">Enroll</a>
              </div>
            </div>
          </a>';
      }
    }
    ?>
  </div>   <!-- End Most Popular Course 2nd Card Deck --> 
</div>  <!-- End Most Popular Course -->

<?php 
// Contact Us
include('./contact.php'); 
?>  

<!-- Start Students Testimonial -->
<div class="container-fluid mt-5" style="background-color: #808080" id="Feedback">
  <h1 class="text-center testyheading p-4"> Our Testimonials </h1>
  <div class="row">
    <div class="col-md-12">
      <div id="testimonial-slider" class="owl-carousel">
      <?php 
        $sql = "SELECT s.stu_name, s.stu_occ, s.stu_img, f.f_content FROM student AS s JOIN feedback AS f ON s.stu_id = f.stu_id";
        $result = $conn->query($sql);
        if($result->num_rows > 0) {
          while($row = $result->fetch_assoc()){
            $s_img = $row['stu_img'];
            $n_img = str_replace('../','',$s_img)
      ?>
        <div class="testimonial">
          <p class="description">
          <?php echo $row['f_content'];?>  
          </p>
          <div class="pic">
            <img src="<?php echo $n_img; ?>" alt=""/>
          </div>
          <div class="testimonial-prof">
            <h4><?php echo $row['stu_name']; ?></h4>
            <small><?php echo $row['stu_occ']; ?></small>
          </div>
        </div>
        <?php }} ?>
      </div>
    </div>
  </div>
</div>  <!-- End Students Testimonial -->

<!-- Start About Section -->
<div class="container-fluid p-4" style="background-color:#E9ECEF">
  <div class="container" style="background-color:#E9ECEF">
    <div class="row text-center">
      <div class="col-sm">
        <h5>About Us</h5>
          <p>It is the platform providing affordable content to prepare for government exams.</p>
      </div>
      <div class="col-sm">
        <h5>Category</h5>
        <a class="text-dark" href="index.php">Banking exams</a><br />
        <a class="text-dark" href="index.php">SSC Exams</a><br />
        <a class="text-dark" href="index.php">UPSC Exams</a><br />
        <a class="text-dark" href="index.php">RRB Exams</a><br />
      </div>
      <div class="col-sm">
        <h5>Contact Us</h5>
      </div>
    </div>
  </div>
</div> <!-- End About Section -->

<?php 
  include('./mainInclude/footer.php'); 
?>  

<!-- Inline CSS and JS for Heading Color Change -->
<style>
/* Default heading color */
.testyheading {
    color: #333; /* Default color */
    transition: color 0.3s ease;
}


