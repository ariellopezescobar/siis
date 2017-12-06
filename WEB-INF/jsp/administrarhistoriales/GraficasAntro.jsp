<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page isELIgnored="false" %>

<html>
    <body ng-app="App">
        <div class="container-fluid" ng-controller="InicioCtrl">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="text-center">Gr&aacute;fico Peso/Talla</h1>                    
                    <highchart id="chart1" config="chartConfig"></highchart>
                </div>
            </div>
        </div>

        <script src="<c:url value="js/jquery.min.js" />"></script>
        <script src="<c:url value="js/bootstrap.min.js" />"></script>
        <script src="<c:url value="js/angular.min.js" />"></script>
        <script src="<c:url value="js/highcharts.src.js" />"></script>
        <script src="<c:url value="js/highcharts-ng.min.js" />"></script>
        
        <script>


var App = angular.module('App', ['highcharts-ng']);

App.controller('InicioCtrl', ['$scope', function ($scope) {
console.log('inicio ....');

        var talla = [];
        var x3sd = [];
        var x2sd = [];
        var x1sd = [];
        var median = [];
        var sd1 = [];
        var sd2 = [];
        var sd3 = [];
        var peso = [];


        $scope.getAllGraficos = function () {
       
                    console.log('cargo ....');
                       <c:forEach var="lista" items="${listaPacientesG}" varStatus="contador">
                            talla.push(<c:out value="${lista.g1}"/>);
                            x3sd.push(<c:out value="${lista.g2}"/>);
                            x2sd.push(<c:out value="${lista.g3}"/>);
                            x1sd.push(<c:out value="${lista.g4}"/>);
                            median.push(<c:out value="${lista.g5}"/>);
                            sd1.push(<c:out value="${lista.g6}"/>);
                            sd2.push(<c:out value="${lista.g7}"/>);
                            sd3.push(<c:out value="${lista.g8}"/>);
                            peso.push(<c:out value="${lista.g9}"/>);                           
                       </c:forEach>
                        
                     
        };

        $scope.chartConfig = {
            chart: {
                type: 'line',      
                height: 600,
                zoomType: 'xy',
            },

            series: [
                {
                    name: 'Peso',
                    data: peso,
                    id: 'Peso',
                    Color: '#00870D',
                    lineWidth: 4,
                },
                {
                    name: 'x3sd',
                    data: x3sd,
                    id: 'x3sd',
                    Color: '#1300FF',
                    lineWidth: 1,
                    dashStyle: 'longdash',
                },
                {
                    name: 'x2sd',
                    data: x2sd,
                    id: 'x2sd',
                    Color: '#1359E8',
                    lineWidth: 1,
                    dashStyle: 'longdash',
                },
                {
                    name: 'x1sd',
                    data: x1sd,
                    id: 'x1sd',
                    Color: '#1386A5',
                    lineWidth: 1,
                    dashStyle: 'longdash',
                },
                {
                    name: 'median',
                    data: median,
                    id: 'median',
                    Color: '#000000',
                    lineWidth: 1,
                    dashStyle: 'longdash',
                },
                {
                    name: 'sd1',
                    data: sd1,
                    id: 'sd1',
                    Color: '#eba10b',
                    lineWidth: 1,
                    dashStyle: 'longdash',
                },
                {
                    name: 'sd2',
                    data: sd2,
                    id: 'sd2',
                    Color: '#e63c21',
                    lineWidth: 1,
                    dashStyle: 'longdash',
                },
                {
                    name: 'sd3',
                    data: sd3,
                    id: 'sd3',
                    Color: '#FB0000',
                    lineWidth: 1,
                    dashStyle: 'longdash',
                }
            ],
            title: {
                text: 'Tabla de Crecimiento'
            },
            subtitle: {
                text: 'Niños de 0 a 2 años'
            },
            xAxis: {
                title: {
                    text: 'Talla (cm)',
                },
                categories: talla
            },
            yAxis:
                    {
                        title: {
                            text: 'Peso (kg)',
                        }
                    },
        };



        $scope.getAllGraficos();

    }]);
</script>
    </body>
</html>


<html>
    <body ng-app="App">
        <div class="container-fluid" ng-controller="InicioCtrl">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="text-center">Grfico Talla/Edad</h1>                    
                    <highchart id="chart1" config="chartConfig"></highchart>
                </div>
            </div>
        </div>

        <script src="<c:url value="js/jquery.min.js" />"></script>
        <script src="<c:url value="js/bootstrap.min.js" />"></script>
        <script src="<c:url value="js/angular.min.js" />"></script>
        <script src="<c:url value="js/highcharts.src.js" />"></script>
        <script src="<c:url value="js/highcharts-ng.min.js" />"></script>
        
        <script>


var App = angular.module('App', ['highcharts-ng']);

App.controller('InicioCtrl', ['$scope', function ($scope) {
console.log('inicio ....');

        var talla = [];
        var x3sd = [];
        var x2sd = [];
        var x1sd = [];
        var median = [];
        var sd1 = [];
        var sd2 = [];
        var sd3 = [];
        var peso = [];


        $scope.getAllGraficos = function () {
       
                    console.log('cargo ....');
                       <c:forEach var="lista" items="${listaPacientesG}" varStatus="contador">
                            talla.push(<c:out value="${lista.g1}"/>);
                            x3sd.push(<c:out value="${lista.g2}"/>);
                            x2sd.push(<c:out value="${lista.g3}"/>);
                            x1sd.push(<c:out value="${lista.g4}"/>);
                            median.push(<c:out value="${lista.g5}"/>);
                            sd1.push(<c:out value="${lista.g6}"/>);
                            sd2.push(<c:out value="${lista.g7}"/>);
                            sd3.push(<c:out value="${lista.g8}"/>);
                            peso.push(<c:out value="${lista.g9}"/>);                           
                       </c:forEach>
                        
                     
        };

        $scope.chartConfig = {
            chart: {
                type: 'line',      
                height: 600,
                zoomType: 'xy',
            },

            series: [
                {
                    name: 'Peso',
                    data: peso,
                    id: 'Peso',
                    Color: '#00870D',
                    lineWidth: 4,
                },
                {
                    name: 'x3sd',
                    data: x3sd,
                    id: 'x3sd',
                    Color: '#1300FF',
                    lineWidth: 1,
                    dashStyle: 'longdash',
                },
                {
                    name: 'x2sd',
                    data: x2sd,
                    id: 'x2sd',
                    Color: '#1359E8',
                    lineWidth: 1,
                    dashStyle: 'longdash',
                },
                {
                    name: 'x1sd',
                    data: x1sd,
                    id: 'x1sd',
                    Color: '#1386A5',
                    lineWidth: 1,
                    dashStyle: 'longdash',
                },
                {
                    name: 'median',
                    data: median,
                    id: 'median',
                    Color: '#000000',
                    lineWidth: 1,
                    dashStyle: 'longdash',
                },
                {
                    name: 'sd1',
                    data: sd1,
                    id: 'sd1',
                    Color: '#eba10b',
                    lineWidth: 1,
                    dashStyle: 'longdash',
                },
                {
                    name: 'sd2',
                    data: sd2,
                    id: 'sd2',
                    Color: '#e63c21',
                    lineWidth: 1,
                    dashStyle: 'longdash',
                },
                {
                    name: 'sd3',
                    data: sd3,
                    id: 'sd3',
                    Color: '#FB0000',
                    lineWidth: 1,
                    dashStyle: 'longdash',
                }
            ],
            title: {
                text: 'Tabla de Crecimiento'
            },
            subtitle: {
                text: 'Niños de 0 a 2 años'
            },
            xAxis: {
                title: {
                    text: 'Talla (cm)',
                },
                categories: talla
            },
            yAxis:
                    {
                        title: {
                            text: 'Peso (kg)',
                        }
                    },
        };



        $scope.getAllGraficos();

    }]);
</script>
    </body>
</html>