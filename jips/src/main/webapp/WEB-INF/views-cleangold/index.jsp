<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=utf-8" language="java" %>
<%@ page pageEncoding="utf-8" %>
<!doctype html>
<!--[if IE 8 ]>    <html class="no-js loading ie8 oldie" dir="ltr" lang="en-US"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--> <html class="no-js loading" dir="ltr" lang="en-US"> <!--<![endif]-->
<head>
	<%@ include file="/WEB-INF/views-cleangold/include/head.jsp" %>
	<title>JIPS</title>
</head>
<body>
	<div class="border-header"></div>
	<%@ include file="/WEB-INF/views-cleangold/include/header.jsp" %>
	<section id="content" class="container">
		<h1 class="page-title text-right"><strong>Journal of Information Processing Systems</strong></h1>
		<div class="grid10 col">
			<div class="col-md-6" align="center" style="background-color: red">
				<div class="col-md-6" align="center" style="background-color: black;">
					6
				</div>
				<div class="col-md-3" align="center" style="background-color: yellow">
					3
				</div>
				<div class="col-md-3" align="center" style="background-color: green;">
					3
				</div>

			</div>
			<div class="col-md-6" salign="center" style="background-color: blue;">
				2
			</div>
		</div>

		<div class="col-md-10 temp">
			<p>${test}</p>
			<h1>${test.num}</h1>

		</div>
		<div class="grid2 col text-right">
			<img src="${resources2}/img/jips/JIPS_engpaper.jpg" height="200" alt="JIPS"/>
		</div>

		<div class="grid12 col">
			<div class="call-to-action clearfix">
				<div class="left text-justify">
					<h6><i class="fa fa-bullseye"></i> <strong>[Dec. 12, 2016]</strong> Call for papers about <strong>Special sections</strong> scheduled in 2017 are registered. Please refer to <a href="/ss">here</a> for details.</h6>
				</div>
			</div>
			<div class="call-to-action clearfix">
				<div class="left text-justify">
					<h6><i class="fa fa-bullseye"></i> <strong>[Oct. 1, 2016]</strong> Call for papers about a new special issue titled "<strong>Smart Standards, Algorithms and Frameworks for Interoperability in Internet of Things</strong>" is now registered. Please refer to <a href="/si">here</a> for details.</h6>
				</div>
			</div>
			<div class="call-to-action clearfix">
				<div class="left text-justify">
					<h6><i class="fa fa-bullseye"></i> <strong>[Aug. 20, 2016]</strong> Since August 20, 2016, the JIPS has started to manage two fast tracks as well as the regular track, and authors has been required to pay the publication charge. Please refer to the details on the <a href="/authorinfo">author information</a> page.</h6>
				</div>
			</div>
			<div class="call-to-action clearfix">
				<div class="left text-justify">
					<h6><i class="fa fa-bullseye"></i> <strong>[Aug. 1, 2016]</strong> Since August 2016, the JIPS has been indexed in "<strong>Emerging Sources Citation Index (ESCI)</strong>", a new Web of Science index managed by Thomson Reuters, launched in late 2015 for journals that have passed <u>an initial evaluation for inclusion in SCI/SCIE/AHCI/SSCI indexes</u>. Indexing in the ESCI will improve the visibility of the JIPS and provide a mark of quality. This achievement is good for all authors of the JIPS. For more information about ESCI, please see the <a href="http://wokinfo.com/media/pdf/S024651_Flyer.pdf" target="_blank">ESCI fact sheet</a> file.
					</h6>
				</div>
			</div>
		</div>

		<div class="col sep sep-big"></div>


		<div class="col sep sep-big"></div>



		<div class="col sep sep-big"></div>
		<div class="grid12 col">
			<h2 class="page-title text-right"><strong>PUBLICATION ETHICS</strong></h2>
			<p class="normal text-justify">
				With regard to ethical standards, the JIPS takes plagiarism very seriously and thoroughly checks all articles.
				The JIPS defines research ethics as securing objectivity and accuracy in the execution of research and the conclusion of results without any unintentional errors resulting from negligence or incorrect knowledge, etc.
				and without any intentional misconduct such as falsification, plagiarism, etc. When an author submits a paper to the JIPS online submission and peer-review system,
				he/she should also upload the separate file "author check list" which contains a statement that all his/her research has been performed in accordance with ethical standards.
				<br/><br/>Among the JIPS editorial board members, there are four associate manuscript editors who support the JIPS by dealing with any ethical problems associated with the publication process
				and give advice on how to handle cases of suspected research and publication misconduct. When the JIPS managing editor looks over submitted papers and checks that they are suitable for further processing,
				the managing editor also routes them to the CrossCheck service provided by iTenticate. Based on the results provided by the CrossCheck service, the JIPS associate manuscript editors inform the JIPS editor-in-chief of any plagiarism that is detected in a paper.
				Then, the JIPS editor-in-chief communicates such detection to the author(s) while rejecting the paper.
			</p>
		</div>

		<div class="col sep sep-big"></div>
		<div class="grid12 col">
			<h2 class="page-title text-right"><strong>OPEN ACCESS</strong></h2>
			<p class="normal text-justify">
				Since 2005, all papers published in the JIPS are subjected to a peer review and upon acceptance are immediately made
				permanently available free of charge for everyone worldwide to read and download from the journal’s homepage (http://www.jips-k.org)
				without any subscription fee or personal registration. This is an Open Access article distributed under the terms of the Creative Commons Attribution Non-Commercial License (<a href="http://creativecommons.org/licenses/by-nc/3.0/" target="_blank" >http://creativecommons.org/licenses/by-nc/3.0/</a>) which permits unrestricted non-commercial use, distribution, and reproduction in any medium, provided the original work is properly cited. The KIPS waives paper processing charges for submissions from international authors as well as society members. This waiver policy supports and encourages the publication of quality papers, making the journal an international forum for the exchange of different ideas and experiences.
			</p>
		</div>

		<div class="col sep sep-big"></div>
		<div class="grid12 col">
			<h2 class="page-title text-right"><strong>Contact Information</strong></h2>
			<p class="normal text-right">
				<strong>JIPS Secretary: Ms. Joo-yeon Lee</strong><br/>
				Email: <a href="mailto:joo@kips.or.kr">joo@kips.or.kr</a><br/> Phone: +82-2-2077-1414, Fax: +82-2-2077-1472
			</p>
		</div>

		<a href="#top" id="top-link"><span></span></a>
	</section>
	<%@ include file="/WEB-INF/views-cleangold/include/footer.jsp" %>
</body>
<script>
	$(document).ready(function(){
		$(".mini_abstract").hide();
		$(".temp").show();
	});
</script>
</html>