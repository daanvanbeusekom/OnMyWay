<?php
$page_title = "Indexbeheer";
$page_name = "Statistieken";
$local_page = "<i class='fa fa-bar-chart'></i>&nbsp;Statistieken /";
include "top_admin.php";

if($_SESSION['user_level'] == 1){
	
?>
				
		<div class="box col col-50" id="welcome_message">
					<div class="box-header with-border">
						<p> Bandbreedte :</p>
						
						<div class="box-tools pull-right">
							<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
							</button>
							<button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
						</div>
					</div>
					
					<div id="statics_static_statics" class="box-body">
						<br />
						<br />
							<script src="JS/highcharts.js"></script>
							<script src="https://code.highcharts.com/modules/exporting.js"></script>

							<div id="container" style=" height: 400px; margin: 0 auto"></div>					
					</div>
				</div>		

            <div class="box col col-50 right" id="welcome_message">
					<div class="box-header with-border">
						<p>Sessies</p>
				 
						<div class="box-tools pull-right">
							<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
							</button>
							<button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
						</div>
					</div>
					
					<div id="text_welcome_message" class="box-body">
					  <div id="world-map" style="width: 85%; height: 400px; margin-left:20px; margin-top:-40px;"></div>
					  <script>
						$(function(){
						  $('#world-map').vectorMap({
							map: 'world_mill',
							series: {
							  regions: [{
								values: gdpData,
								scale: ['#C8EEFF', '#0071A4'],
								normalizeFunction: 'polynomial'
							  }]
							},
							onRegionTipShow: function(e, el, code){
							  el.html(el.html()+' (GDP - '+gdpData[code]+')');
							}
						  });
						});
					  </script>
					</div>
				</div>	

                <div class="box col col-25" id="welcome_message">
				    <div class="box-header with-border">
						<p>Sessies</p>
				 
						<div class="box-tools pull-right">
							<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
							</button>
							<button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
						</div>
					</div>
					
					<div id="text_welcome_message" class="box-body">
                        <P>Hello ik ben daan en wie bent u, dit is een test, want de collums doen een beetje raar vandaag, nog een testje want als de tekst meer word blijkt alles op te gaan schuiven.</P>
                        <br/>
                        <p>Nu nog met een lege regel er tussen, wat een werk zeg!</p>
                        <br/>
                        <p>Dat lijkt hij te doen jippie, volgens mij zijn de problemen nu wel eventjes op gelost, hop en weer verder met het volgende probleem, ruimte tussen de collums :(</p>
                    </div>
				</div>	

                  <div class="box col col-25" id="welcome_message">
					<div class="box-header with-border">
						<p>Sessies</p>
				 
						<div class="box-tools pull-right">
							<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
							</button>
							<button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
						</div>
					</div>
					
					<div id="text_welcome_message" class="box-body">
                        <P>Hello ik ben daan en wie bent u, dit is een test, want de collums doen een beetje raar vandaag, nog een testje want als de tekst meer word blijkt alles op te gaan schuiven.</P>
                        <br/>
                        <p>Nu nog met een lege regel er tussen, wat een werk zeg!</p>
                        <br/>
                        <p>Dat lijkt hij te doen jippie, volgens mij zijn de problemen nu wel eventjes op gelost, hop en weer verder met het volgende probleem, ruimte tussen de collums :(</p>
                        <br />
                        <p>Eventjes een copietje</p>
                    </div>
				</div>

                <div class="box col col-25" id="welcome_message">
					
				</div>

                <div class="box col col-25" id="welcome_message">
					
				</div>

                 <div class="box col col-25" id="welcome_message">
					
				</div>

                <div class="box col col-25" id="welcome_message">
					
				</div>
				
<?php

include "bottom_admin.php"

?>
				
<?php
}else{

include "forbidden.php"
?>

<?php
}
?>