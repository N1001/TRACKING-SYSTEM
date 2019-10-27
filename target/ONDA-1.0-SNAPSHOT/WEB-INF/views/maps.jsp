<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>


<html>
    <head>
        <title>Map</title>
        <link href="${contextPath}/resources/css/nav.css" rel="stylesheet">
        <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
        <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
        <meta name="viewport" content="initial-scale=1.0">
        <meta charset="utf-8">

        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>



    </head>
    <body>
        <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
                           url = "jdbc:mysql://localhost:8889/onda_db?zeroDateTimeBehavior=convertToNull"
                           user = "root"  password = "root"/>

        <sql:query dataSource = "${snapshot}" var = "result">
            SELECT * FROM gmap ORDER BY id DESC LIMIT 1;
        </sql:query>
        <div id="mySidenav" class="sidenav">
            <!-- <a href="javascript:void(0)" class="closebtn" onclick="open_closeNav()">&times</a> -->

            <div class="sidenav_logo">
                <img src="${contextPath}/resources/img/logo.png">
            </div>


            <div id="mySidenav_info" class="sidenav_info">
                <strong class="sidenav_info_title">General</strong>
                <ul class="sidenav_list">
                    <li>
                        <a href="#" class="sidenav_list_alabel">Object :</a>
                        <a href="#" class="sidenav_list_avalue">Car</a>
                    </li>
                    <li>
                        <a href="#" class="sidenav_list_alabel">Model  :</a>
                        <a href="#" class="sidenav_list_avalue">UNKNOW</a>
                    </li>
                    <li>
                        <a href="#" class="sidenav_list_alabel">Plate  :</a>
                        <a href="#" class="sidenav_list_avalue">51174 - A - 20</a>
                    </li>

                    <li>
                        <a href="#" class="sidenav_list_alabel">Name   :</a>
                        <a href="#" class="sidenav_list_avalue">LAGHCHIM FAHD</a>
                    </li>
                    <li>
                        <a href="#" class="sidenav_list_alabel">ID     :</a>
                        <a href="#" class="sidenav_list_avalue">UNKNOW</a>
                    </li>
                    <li>
                        <a href="#" class="sidenav_list_alabel">Phone  :</a>
                        <a href="#" class="sidenav_list_avalue">(+212) 601475701</a>
                    </li>

                </ul>

                <script type="text/javascript">


                    var map;

                    var marker;

                    this.getmap = function () {
                        return map;
                    }

                    this.getMarker = function () {
                        return marker;
                    }

                    function initMap() {

                        var uluru = {lat: 34.05180628092754, lng: -6.751222764787259};
                        var bounds = new google.maps.LatLngBounds(
                                new google.maps.LatLng(34.03452395421125, -6.778259431657375),
                                new google.maps.LatLng(34.06908508533493, -6.724186097917141)
                                );

                        // The map, centered at Uluru
                        var map = new google.maps.Map(
                                document.getElementById('map'), {
                            center: uluru,
                            zoom: 14.7,
                            maxZoom: 20,
                            //minZoom: 14.7,
                            //gestureHandling: 'greedy',
                            //restriction: {
                            //    latLngBounds: bounds,
                             //   strictBounds: false
                            //},
                            zoomControl: false,
                            mapTypeControl: false,
                            scaleControl: false,
                            streetViewControl: false,
                            rotateControl: false,
                            fullscreenControl: false,
                            mapTypeId: 'satellite',
                            heading: 0,
                            tilt: 45
                        });

                        marker = new google.maps.Marker
                                (
                                        {

                                            map: map,
                                            icon: {
                                                url: "http://maps.google.com/mapfiles/ms/icons/blue-dot.png"
                                            },
                                            title: 'Click me'

                                        }

                                );



                        var mBaseFRAPath = [
                            {lat: 34.0623689, lng: -6.7579839},
                            {lat: 34.0620801, lng: -6.7587456},
                            {lat: 34.0614312, lng: -6.7600545},
                            {lat: 34.0604758, lng: -6.7619643},
                            {lat: 34.0580026, lng: -6.7643622},
                            {lat: 34.0593736, lng: -6.7663202},
                            {lat: 34.0593003, lng: -6.7665723},
                            {lat: 34.0594536, lng: -6.7668083},
                            {lat: 34.0587981, lng: -6.7692357},
                            {lat: 34.0564404, lng: -6.7714432},
                            {lat: 34.0559804, lng: -6.7718348},
                            {lat: 34.0556071, lng: -6.7721137},
                            {lat: 34.0551471, lng: -6.7724141},
                            {lat: 34.0546871, lng: -6.7726824},
                            {lat: 34.0541449, lng: -6.7729452},
                            {lat: 34.053656, lng: -6.7731437},
                            {lat: 34.0531093, lng: -6.7733154},
                            {lat: 34.0526159, lng: -6.7734334},
                            {lat: 34.0522293, lng: -6.7735058},
                            {lat: 34.0516292, lng: -6.7735836},
                            {lat: 34.0503336, lng: -6.7737418},
                            {lat: 34.049038, lng: -6.7738867},
                            {lat: 34.0478468, lng: -6.7740342},
                            {lat: 34.0467912, lng: -6.7741522},
                            {lat: 34.0459422, lng: -6.7742354},
                            {lat: 34.0459311, lng: -6.7741871},
                            {lat: 34.0455599, lng: -6.7742193},
                            {lat: 34.0455155, lng: -6.7741281},
                            {lat: 34.0451866, lng: -6.7740771},
                            {lat: 34.0450888, lng: -6.774281},
                            {lat: 34.0436441, lng: -6.7744338},
                            {lat: 34.0435864, lng: -6.7736399},
                            {lat: 34.0429285, lng: -6.7736936},
                            {lat: 34.0427196, lng: -6.7709845},
                            {lat: 34.0431307, lng: -6.7709336},
                            {lat: 34.0429752, lng: -6.769115},
                            {lat: 34.0414683, lng: -6.7692867},
                            {lat: 34.0407482, lng: -6.7690641},
                            {lat: 34.0391279, lng: -6.7690828},
                            {lat: 34.0388078, lng: -6.7669639},
                            {lat: 34.0386789, lng: -6.7662612},
                            {lat: 34.0366696, lng: -6.7659983},
                            {lat: 34.0365541, lng: -6.7647994},
                            {lat: 34.0422328, lng: -6.7607492},
                            {lat: 34.0414705, lng: -6.7592069},
                            {lat: 34.0464667, lng: -6.7555645},
                            {lat: 34.0479713, lng: -6.7579168},
                            {lat: 34.0531404, lng: -6.7541376},
                            {lat: 34.0532604, lng: -6.7544031},
                            {lat: 34.0582203, lng: -6.7507741},
                            {lat: 34.06302, lng: -6.747314},
                            {lat: 34.0633133, lng: -6.7473704},
                            {lat: 34.0646931, lng: -6.7478746},
                            {lat: 34.0650731, lng: -6.7537808},
                            {lat: 34.0653308, lng: -6.7579544},
                            {lat: 34.0636755, lng: -6.7579731}

                        ];

                        var mBaseFRA = new google.maps.Polygon({
                            paths: mBaseFRAPath,
                            strokeColor: '#fff',
                            strokeOpacity: 1.0,
                            strokeWeight: 1,
                            fillColor: '#a4c0b0',
                            fillOpacity: 0.5
                        });
                        mBaseFRA.setMap(map);


                        var mAirportPath = [
                            {lat: 34.0473613, lng: -6.7510987},
                            {lat: 34.0434064, lng: -6.7499883},
                            {lat: 34.0419327, lng: -6.7480652},
                            {lat: 34.0421839, lng: -6.745568},
                            {lat: 34.039928, lng: -6.7452649},
                            {lat: 34.0386544, lng: -6.7450745},
                            {lat: 34.0377566, lng: -6.7450396},
                            {lat: 34.0377453, lng: -6.745509},
                            {lat: 34.0358627, lng: -6.7454044},
                            {lat: 34.0358962, lng: -6.7457236},
                            {lat: 34.0361583, lng: -6.7469976},
                            {lat: 34.035136, lng: -6.7473437},
                            {lat: 34.0333555, lng: -6.7482717},
                            {lat: 34.0332778, lng: -6.7521475},
                            {lat: 34.0330843, lng: -6.7523111},
                            {lat: 34.0332578, lng: -6.7526222},
                            {lat: 34.0341024, lng: -6.7541323},
                            {lat: 34.0359673, lng: -6.7578525},
                            {lat: 34.0361051, lng: -6.7595853},
                            {lat: 34.035965, lng: -6.7615459},
                            {lat: 34.035925, lng: -6.7618249},
                            {lat: 34.0348048, lng: -6.762643},
                            {lat: 34.0350626, lng: -6.7631553},
                            {lat: 34.0321353, lng: -6.765293},
                            {lat: 34.0322063, lng: -6.7659929},
                            {lat: 34.0353448, lng: -6.7636998},
                            {lat: 34.0356005, lng: -6.764204},
                            {lat: 34.0364562, lng: -6.7635817},
                            {lat: 34.036554, lng: -6.7647995},
                            {lat: 34.0422329, lng: -6.7607493},
                            {lat: 34.0414682, lng: -6.7592071},
                            {lat: 34.0464644, lng: -6.7555619},
                            {lat: 34.0479691, lng: -6.7579169},
                            {lat: 34.0531403, lng: -6.7541377},
                            {lat: 34.0532603, lng: -6.7544032},
                            {lat: 34.0581069, lng: -6.7508547},
                            {lat: 34.0630177, lng: -6.7473141},
                            {lat: 34.0633155, lng: -6.7473732},
                            {lat: 34.0645621, lng: -6.7464532},
                            {lat: 34.0665528, lng: -6.743323},
                            {lat: 34.0662818, lng: -6.7427839},
                            {lat: 34.0676683, lng: -6.7417727},
                            {lat: 34.0683038, lng: -6.7413113},
                            {lat: 34.0685192, lng: -6.741314},
                            {lat: 34.0687125, lng: -6.7412844},
                            {lat: 34.0688902, lng: -6.7412309},
                            {lat: 34.0690658, lng: -6.7411585},
                            {lat: 34.0693102, lng: -6.7410136},
                            {lat: 34.0695013, lng: -6.7408608},
                            {lat: 34.0696879, lng: -6.7406623},
                            {lat: 34.0698724, lng: -6.740402},
                            {lat: 34.0700124, lng: -6.7401205},
                            {lat: 34.0701012, lng: -6.7398844},
                            {lat: 34.0701656, lng: -6.7395974},
                            {lat: 34.0701967, lng: -6.7393559},
                            {lat: 34.0702011, lng: -6.7390556},
                            {lat: 34.0701834, lng: -6.7387981},
                            {lat: 34.0701456, lng: -6.7385782},
                            {lat: 34.0700835, lng: -6.7383556},
                            {lat: 34.0699946, lng: -6.7381169},
                            {lat: 34.0698434, lng: -6.7378217},
                            {lat: 34.0697212, lng: -6.7376555},
                            {lat: 34.0695657, lng: -6.7374865},
                            {lat: 34.0693746, lng: -6.7373149},
                            {lat: 34.0691525, lng: -6.7371673},
                            {lat: 34.0689148, lng: -6.73706},
                            {lat: 34.0686658, lng: -6.7369984},
                            {lat: 34.0684126, lng: -6.7369742},
                            {lat: 34.0681659, lng: -6.7369984},
                            {lat: 34.0678616, lng: -6.7370787},
                            {lat: 34.0675949, lng: -6.7372022},
                            {lat: 34.0673638, lng: -6.7373658},
                            {lat: 34.0671261, lng: -6.7376126},
                            {lat: 34.0669818, lng: -6.7378057},
                            {lat: 34.0668483, lng: -6.7380391},
                            {lat: 34.0667595, lng: -6.738251},
                            {lat: 34.0647287, lng: -6.7397423},
                            {lat: 34.0608014, lng: -6.742344},
                            {lat: 34.0578692, lng: -6.7440043},
                            {lat: 34.0525937, lng: -6.7479016}
                        ];




                        var mAirport2Path = [
                            {lat: 34.0403782, lng: -6.7453158},
                            {lat: 34.0387245, lng: -6.7450691},
                            {lat: 34.0377577, lng: -6.7450369},
                            {lat: 34.0377377, lng: -6.7454982},
                            {lat: 34.0358817, lng: -6.7453963},
                            {lat: 34.0360729, lng: -6.7434168},
                            {lat: 34.0356195, lng: -6.7400372},
                            {lat: 34.0394913, lng: -6.7372156},
                            {lat: 34.0419917, lng: -6.7377949},
                            {lat: 34.0452166, lng: -6.7330903},
                            {lat: 34.0483569, lng: -6.7325163},
                            {lat: 34.0484991, lng: -6.7336321},
                            {lat: 34.0496014, lng: -6.7335034},
                            {lat: 34.0493459, lng: -6.730038},
                            {lat: 34.0513148, lng: -6.7293782},
                            {lat: 34.0593503, lng: -6.7307944},
                            {lat: 34.0598881, lng: -6.7320979},
                            {lat: 34.0609724, lng: -6.7360837},
                            {lat: 34.0634678, lng: -6.7374945},
                            {lat: 34.0641944, lng: -6.7400963},
                            {lat: 34.0618346, lng: -6.741668},
                            {lat: 34.0608036, lng: -6.7423279},
                            {lat: 34.0602125, lng: -6.7426658},
                            {lat: 34.057866, lng: -6.7440069},
                            {lat: 34.0565682, lng: -6.7449671},
                            {lat: 34.0538305, lng: -6.7470056},
                            {lat: 34.0525993, lng: -6.7478908},
                            {lat: 34.0508148, lng: -6.7489744},
                            {lat: 34.047359, lng: -6.7510879},
                            {lat: 34.0434342, lng: -6.7499882},
                            {lat: 34.0419362, lng: -6.7480624},
                            {lat: 34.0421918, lng: -6.7455733}


                        ];

                        var Airport2 = new google.maps.Polygon({
                            paths: [mAirportPath, mAirport2Path],
                            strokeColor: '#fff',
                            strokeOpacity: 1.0,
                            strokeWeight: 1,
                            fillColor: '#f9f6e7',
                            fillOpacity: 0.5
                        });
                        Airport2.setMap(map);



                        var RunWayPath = [
                            {lat: 34.065558, lng: -6.7416037},
                            {lat: 34.0651525, lng: -6.7419161},
                            {lat: 34.0651759, lng: -6.7419953},
                            {lat: 34.0652092, lng: -6.7421052},
                            {lat: 34.0652036, lng: -6.7422487},
                            {lat: 34.0651737, lng: -6.7423842},
                            {lat: 34.0651325, lng: -6.7425116},
                            {lat: 34.0650737, lng: -6.7425853},
                            {lat: 34.0650181, lng: -6.7426497},
                            {lat: 34.064947, lng: -6.742706},
                            {lat: 34.0648392, lng: -6.7427516},
                            {lat: 34.0647159, lng: -6.7427664},
                            {lat: 34.0646182, lng: -6.7427704},
                            {lat: 34.0644793, lng: -6.7427798},
                            {lat: 34.0643849, lng: -6.7427865},
                            {lat: 34.0642938, lng: -6.7427798},
                            {lat: 34.0641771, lng: -6.7427704},
                            {lat: 34.0640605, lng: -6.7427932},
                            {lat: 34.0639627, lng: -6.74282},
                            {lat: 34.063866, lng: -6.7428737},
                            {lat: 34.0380694, lng: -6.7617336},
                            {lat: 34.0376671, lng: -6.7620246},
                            {lat: 34.0373904, lng: -6.7614641},
                            {lat: 34.0377827, lng: -6.7611596},
                            {lat: 34.0641571, lng: -6.7418746},
                            {lat: 34.0641949, lng: -6.741841},
                            {lat: 34.0642404, lng: -6.7417565},
                            {lat: 34.0642715, lng: -6.7416734},
                            {lat: 34.0643082, lng: -6.7415795},
                            {lat: 34.0643582, lng: -6.7414682},
                            {lat: 34.0644171, lng: -6.7414052},
                            {lat: 34.064486, lng: -6.7413555},
                            {lat: 34.0645604, lng: -6.7413287},
                            {lat: 34.0646382, lng: -6.7413153},
                            {lat: 34.064727, lng: -6.7413287},
                            {lat: 34.0648048, lng: -6.7413542},
                            {lat: 34.0648792, lng: -6.7413636},
                            {lat: 34.0652825, lng: -6.7410511}
                        ];

                        var RunWay = new google.maps.Polygon({
                            paths: RunWayPath,
                            strokeColor: '#384458',
                            strokeOpacity: 1.0,
                            strokeWeight: 1,
                            fillColor: '#384458',
                            fillOpacity: 0.8
                        });
                        RunWay.setMap(map);

                        var mRunway001Path = [
                            {lat: 34.0649937, lng: -6.7418973},
                            {lat: 34.0648104, lng: -6.7415312},
                            {lat: 34.0645794, lng: -6.7417082},
                            {lat: 34.0647604, lng: -6.742077}
                        ];


                        var mRunway_leftPath = [
                            {lat: 34.038095, lng: -6.7616249},
                            {lat: 34.0380917, lng: -6.7616156},
                            {lat: 34.0650471, lng: -6.7418799},
                            {lat: 34.0650548, lng: -6.7418893}
                        ];

                        var mRunway_rightPath = [
                            {lat: 34.0378639, lng: -6.7611985},
                            {lat: 34.0648349, lng: -6.7414736},
                            {lat: 34.0648393, lng: -6.7414843},
                            {lat: 34.0378705, lng: -6.7612119}
                        ];




                        var mRunway002Path = [
                            {lat: 34.0383639, lng: -6.7613876},
                            {lat: 34.0381783, lng: -6.7610094},
                            {lat: 34.0379472, lng: -6.7611878},
                            {lat: 34.0381272, lng: -6.7615686}
                        ];


                        var mRunway003Path = [
                            {lat: 34.0391085, lng: -6.7604702},
                            {lat: 34.0390685, lng: -6.7603884},
                            {lat: 34.0392407, lng: -6.7602584},
                            {lat: 34.0392863, lng: -6.7603415}
                        ];



                        var mRunway004Path = [
                            {lat: 34.0394041, lng: -6.7606044},
                            {lat: 34.0393608, lng: -6.7605185},
                            {lat: 34.0391897, lng: -6.7606392},
                            {lat: 34.0392285, lng: -6.7607277}
                        ];




                        var mRunway005Path = [
                            {lat: 34.0404421, lng: -6.7594912},
                            {lat: 34.0403988, lng: -6.7594134},
                            {lat: 34.040221, lng: -6.7595516},
                            {lat: 34.0402643, lng: -6.7596293}
                        ];



                        var mRunway006Path = [
                            {lat: 34.0405654, lng: -6.7597246},
                            {lat: 34.0405243, lng: -6.7596442},
                            {lat: 34.0403465, lng: -6.7597743},
                            {lat: 34.0403898, lng: -6.759852}
                        ]



                        var mRunway007Path = [
                            {lat: 34.0413733, lng: -6.7588194},
                            {lat: 34.0413322, lng: -6.7587376},
                            {lat: 34.0409933, lng: -6.7589642},
                            {lat: 34.0410377, lng: -6.75905}
                        ];




                        var mRunway008Path = [
                            {lat: 34.0415011, lng: -6.7590729},
                            {lat: 34.0414578, lng: -6.7589924},
                            {lat: 34.0411189, lng: -6.7592231},
                            {lat: 34.0411666, lng: -6.7593075}
                        ];




                        var mRunway009Path = [
                            {lat: 34.0427491, lng: -6.7578122},
                            {lat: 34.0427202, lng: -6.7577599},
                            {lat: 34.042548, lng: -6.7578846},
                            {lat: 34.0425735, lng: -6.7579369}
                        ];



                        var mRunway010Path = [
                            {lat: 34.0428524, lng: -6.7580295},
                            {lat: 34.0428302, lng: -6.7579812},
                            {lat: 34.042658, lng: -6.7581019},
                            {lat: 34.0426813, lng: -6.7581555}
                        ];


                        var mRunway011Path = [
                            {lat: 34.0437259, lng: -6.7571134},
                            {lat: 34.0437159, lng: -6.7570974},
                            {lat: 34.0438925, lng: -6.75697},
                            {lat: 34.0439014, lng: -6.7569887}
                        ];


                        var mRunway012Path = [
                            {lat: 34.0439926, lng: -6.7571671},
                            {lat: 34.0439804, lng: -6.7571497},
                            {lat: 34.0438082, lng: -6.757273},
                            {lat: 34.0438182, lng: -6.7572931}
                        ];


                        var mRunway013Path = [
                            {lat: 34.0450527, lng: -6.7561345},
                            {lat: 34.0450472, lng: -6.756117},
                            {lat: 34.0448772, lng: -6.7562364},
                            {lat: 34.0448849, lng: -6.7562511}
                        ];



                        var mRunway014Path = [
                            {lat: 34.0451483, lng: -6.7563129},
                            {lat: 34.0451383, lng: -6.7562941},
                            {lat: 34.0449672, lng: -6.7564135},
                            {lat: 34.044976, lng: -6.7564295}
                        ];



                        var mRunway015Path = [
                            {lat: 34.0579776, lng: -6.746673},
                            {lat: 34.0579676, lng: -6.7466529},
                            {lat: 34.0577932, lng: -6.7467843},
                            {lat: 34.0578031, lng: -6.7468017}
                        ];



                        var mRunway016Path = [
                            {lat: 34.0580688, lng: -6.7468554},
                            {lat: 34.0580599, lng: -6.7468393},
                            {lat: 34.0578866, lng: -6.7469707},
                            {lat: 34.0578965, lng: -6.7469854}
                        ];


                        var mRunway017Path = [
                            {lat: 34.0591197, lng: -6.745816},
                            {lat: 34.0589498, lng: -6.7459461},
                            {lat: 34.0589609, lng: -6.7459635},
                            {lat: 34.0591286, lng: -6.7458321}
                        ];



                        var mRunway018Path = [
                            {lat: 34.0592198, lng: -6.7460158},
                            {lat: 34.0592098, lng: -6.7459997},
                            {lat: 34.0590376, lng: -6.7461352},
                            {lat: 34.0590498, lng: -6.7461499}
                        ];



                        var mRunway019Path = [
                            {lat: 34.0602931, lng: -6.7449779},
                            {lat: 34.0602642, lng: -6.7449309},
                            {lat: 34.0600887, lng: -6.7450691},
                            {lat: 34.0601142, lng: -6.7451146}
                        ];


                        var mRunway020Path = [
                            {lat: 34.0604008, lng: -6.7451883},
                            {lat: 34.0603708, lng: -6.7451401},
                            {lat: 34.0601975, lng: -6.7452742},
                            {lat: 34.060223, lng: -6.7453224}
                        ];




                        var mRunway021Path = [
                            {lat: 34.0618273, lng: -6.7438432},
                            {lat: 34.0617851, lng: -6.7437641},
                            {lat: 34.0614363, lng: -6.7440216},
                            {lat: 34.061484, lng: -6.7441047}
                        ];


                        var mRunway022Path = [
                            {lat: 34.0619562, lng: -6.74409},
                            {lat: 34.0619129, lng: -6.7440068},
                            {lat: 34.0615674, lng: -6.7442643},
                            {lat: 34.0616151, lng: -6.7443501}
                        ];



                        var mRunway023Path = [
                            {lat: 34.0626018, lng: -6.7432867},
                            {lat: 34.0625607, lng: -6.7432049},
                            {lat: 34.0623874, lng: -6.7433256},
                            {lat: 34.0624285, lng: -6.7434087}
                        ];


                        var mRunway024Path = [
                            {lat: 34.062725, lng: -6.7435281},
                            {lat: 34.062685, lng: -6.7434463},
                            {lat: 34.062514, lng: -6.7435724},
                            {lat: 34.0625528, lng: -6.7436501}
                        ];


                        var mRunway025Path = [
                            {lat: 34.0637094, lng: -6.7423667},
                            {lat: 34.0635395, lng: -6.7424968},
                            {lat: 34.0635772, lng: -6.7425799},
                            {lat: 34.0637528, lng: -6.7424458}
                        ];




                        var mRunway026Path = [
                            {lat: 34.0638761, lng: -6.7426925},
                            {lat: 34.0638339, lng: -6.7426148},
                            {lat: 34.0636595, lng: -6.7427408},
                            {lat: 34.0637028, lng: -6.7428199}
                        ];



                        var mRunway_t = new google.maps.Polygon({
                            paths: [
                                mRunway001Path, mRunway002Path, mRunway003Path, mRunway004Path
                                        , mRunway005Path, mRunway006Path, mRunway007Path, mRunway008Path
                                        , mRunway009Path, mRunway010Path, mRunway011Path, mRunway012Path
                                        , mRunway013Path, mRunway014Path, mRunway015Path, mRunway016Path
                                        , mRunway017Path, mRunway018Path, mRunway019Path, mRunway020Path
                                        , mRunway021Path, mRunway022Path, mRunway023Path, mRunway024Path
                                        , mRunway025Path, mRunway026Path, mRunway_leftPath, mRunway_rightPath
                            ],
                            strokeColor: '#fff',
                            strokeOpacity: 1.0,
                            strokeWeight: 1,
                            fillColor: '#fff',
                            fillOpacity: 1
                        });
                        mRunway_t.setMap(map);


                        var triPath = [
                            {lat: 34.0972708, lng: -6.8292427}, {lat: 34.0820949, lng: -6.6491318}, {lat: 33.9564086, lng: -6.7609887}
                        ];



                        var tri_Path = [{lat: 34.0414739, lng: -6.7692948}, {lat: 34.0407449, lng: -6.7690534}, {lat: 34.0391313, lng: -6.7690748}, {lat: 34.0386823, lng: -6.76628}, {lat: 34.0366597, lng: -6.7660225}, {lat: 34.0364552, lng: -6.763587}, {lat: 34.0355972, lng: -6.7642093}, {lat: 34.0353305, lng: -6.7637158}, {lat: 34.0321964, lng: -6.7659903}, {lat: 34.0321342, lng: -6.7652876}, {lat: 34.0350638, lng: -6.7631525}, {lat: 34.0348037, lng: -6.7626322}, {lat: 34.0359484, lng: -6.7618061}, {lat: 34.0361084, lng: -6.7595745}, {lat: 34.0359662, lng: -6.7578471}, {lat: 34.0341102, lng: -6.7541671}, {lat: 34.0330788, lng: -6.7523218}, {lat: 34.0333011, lng: -6.7521286}, {lat: 34.0333722, lng: -6.7482448}, {lat: 34.0361773, lng: -6.7469359}, {lat: 34.0358816, lng: -6.7453963}, {lat: 34.0360728, lng: -6.7434168}, {lat: 34.0356194, lng: -6.7400372}, {lat: 34.0394912, lng: -6.7372156}, {lat: 34.0419916, lng: -6.7377949}, {lat: 34.0452165, lng: -6.7330903}, {lat: 34.0483568, lng: -6.7325163}, {lat: 34.048499, lng: -6.7336321}, {lat: 34.0496013, lng: -6.7335034}, {lat: 34.0493458, lng: -6.730038}, {lat: 34.0513147, lng: -6.7293782}, {lat: 34.0593502, lng: -6.7307944}, {lat: 34.059888, lng: -6.7320979}, {lat: 34.0609723, lng: -6.7360837}, {lat: 34.0634677, lng: -6.7374945}, {lat: 34.0641966, lng: -6.7400694}, {lat: 34.0667696, lng: -6.7382563}, {lat: 34.0669029, lng: -6.7379344}, {lat: 34.0670718, lng: -6.7376769}, {lat: 34.0674184, lng: -6.7373014}, {lat: 34.0681827, lng: -6.7369688}, {lat: 34.0687826, lng: -6.7370224}, {lat: 34.0693825, lng: -6.7372907}, {lat: 34.0696758, lng: -6.7375803}, {lat: 34.0699068, lng: -6.7379344}, {lat: 34.0701468, lng: -6.7385567}, {lat: 34.0702046, lng: -6.7394257}, {lat: 34.0700402, lng: -6.7400694}, {lat: 34.0697646, lng: -6.7405951}, {lat: 34.0693736, lng: -6.7409814}, {lat: 34.0688226, lng: -6.7412711}, {lat: 34.0685004, lng: -6.741314}, {lat: 34.0683138, lng: -6.741314}, {lat: 34.0662919, lng: -6.7427248}, {lat: 34.0665363, lng: -6.743331}, {lat: 34.0645454, lng: -6.7464745}, {lat: 34.0633189, lng: -6.7473382}, {lat: 34.0647498, lng: -6.7478103}, {lat: 34.0654431, lng: -6.7579705}, {lat: 34.0623768, lng: -6.7579759}, {lat: 34.0621101, lng: -6.7587054}, {lat: 34.0604614, lng: -6.7619884}, {lat: 34.0579993, lng: -6.7643542}, {lat: 34.0593681, lng: -6.7663175}, {lat: 34.0593192, lng: -6.7665643}, {lat: 34.059457, lng: -6.7668164}, {lat: 34.0587992, lng: -6.7692519}, {lat: 34.056786, lng: -6.7711133}, {lat: 34.0559149, lng: -6.7718804}, {lat: 34.0550838, lng: -6.7724544}, {lat: 34.0543993, lng: -6.7728353}, {lat: 34.053586, lng: -6.7731733}, {lat: 34.0527593, lng: -6.7733986}, {lat: 34.052106, lng: -6.7735166}, {lat: 34.0503503, lng: -6.7737472}, {lat: 34.0502437, lng: -6.7727977}, {lat: 34.0489636, lng: -6.7729319}, {lat: 34.0429808, lng: -6.7691339}];



                        var bermudaTriangle = new google.maps.Polygon({
                            paths: [triPath, tri_Path],
                            strokeColor: '#fff',
                            strokeOpacity: 1,
                            strokeWeight: 4,
                            fillColor: '#384458',
                            fillOpacity: 0.8
                        });
                        bermudaTriangle.setMap(map);






                    }



                    var auto_refresh = setInterval(
                            function ()
                            {
                                $('#myupdate').load(document.URL + ' #myupdate');
                                console.log("updating...");

                                var mp = $("#position_value").text().split(",");

                                marker.setPosition(new google.maps.LatLng(mp[0], mp[1]));




                            }, 500);
                </script>


                <strong class="sidenav_info_title">Information's</strong>

                <ul id="myupdate" class="sidenav_list" >
                    <c:forEach var = "row" items = "${result.rows}">

                        <li>
                            <a href="#" class="sidenav_list_alabel">GPS :</a>
                            <a href="#" class="sidenav_list_avalue">UBLOX NEO-6M</a>
                        </li>
                        <li>
                            <a href="#" class="sidenav_list_alabel">Position :</a>
                            <a id="position_value" href="#" class="sidenav_list_avalue"><c:out value = "${row.lat}"/>, <c:out value = "${row.lon}"/></a>
                        </li>

                        <li>
                            <a href="#" class="sidenav_list_alabel">Altitude :</a>
                            <a href="#" class="sidenav_list_avalue"><c:out value = "${row.alt}"/> KM</a>
                        </li>
                        <li>
                            <a href="#" class="sidenav_list_alabel">Speed :</a>
                            <a href="#" class="sidenav_list_avalue"><c:out value = "${row.speed}"/> KM/H</a>
                        </li>
                        <li>
                            <a href="#" class="sidenav_list_alabel">Time :</a>
                            <a href="#" class="sidenav_list_avalue"><c:out value = "${row.date}"/> <c:out value = "${row.time}"/></a>
                        </li>
                        <li>
                            <a href="#" class="sidenav_list_alabel">Satellites :</a>
                            <a href="#" class="sidenav_list_avalue">Sat00<c:out value = "${row.satellites}"/></a>
                        </li>
                        <li>
                            <a href="#" class="sidenav_list_alabel">Quality :</a>
                            <a href="#" class="sidenav_list_avalue"><c:out value = "${row.hdop}"/> %</a>
                        </li>

                    </c:forEach>


                </ul>

            </div>

            <div id="mySidenav_bottom" class="sidenav_bottom">
                <a href="#" class="sidenav_a">SEARCH
                    <i class="fa fa-search"></i></a>
                <a href="#" class="sidenav_a">SETTINGS
                    <i class="fa fa-cog"></i></a>
                <a href="#" class="sidenav_a">ABOUT
                    <i class="fa fa-info-circle"></i></a>
                <a href="#" class="sidenav_a">LOGOUT
                    <i class="fa fa-sign-out"></i></a>
            </div>

        </div>

        <!-- Use any element to open the sidenav -->


        <div id="map" class="map" ondragover="myFunction(event)"></div>





        <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBXvj--uajBL2dP6TB1273WAfnGquNt41c&callback=initMap"
        async defer></script>
    </body>
</html>