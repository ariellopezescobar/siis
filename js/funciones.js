// INICIO calendario \\

// +------------------------------------------------------------+
// |                   Popup Calendar(Window)                   |
// +------------------------------------------------------------+
// | Last Modified:                  03-Oct-2003                |
// | Web Site:                       http://www.yxscripts.com   |
// | EMail:                          m_yangxin@hotmail.com      |
// +------------------------------------------------------------+
// |       Copyright 2002  Xin Yang   All Rights Reserved.      |
// |           This version featured on Dynamic Drive           |
// |               (http://www.dynamicdrive.com)                |
// +------------------------------------------------------------+

// default settings
var fontFace="verdana";
var fontSize=9;

var titleWidth=90;
var titleMode=1;
var dayWidth=12;
var dayDigits=1;

var titleColor="#f0f0f0";
var daysColor="#9999ff";
var bodyColor="#ffffd9";
var dayColor="#ffffd9";
var currentDayColor="#FF0033";
var footColor="#9999ff";
var borderColor="#333333";

var titleFontColor = "#333333";
var daysFontColor = "#333333";
var dayFontColor = "#333333";
var currentDayFontColor = "#ffffff";
var footFontColor = "#333333";

var calFormat = "yyyy-mm-dd";

var weekDay = 0;
// ------

// codes
var calWidth=200, calHeight=200, calOffsetX=-200, calOffsetY=16;
var calWin=null;
var winX=0, winY=0;
var cal="cal";
var cals=new Array();
var currentCal=null;

var yxMonths=new Array("Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre");
var yxDays=new Array("Domingo", "Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado", "Domingo");
var yxLinks=new Array("[cerrar]", "[limpiar]");

var isOpera=(navigator.userAgent.indexOf("Opera")!=-1)?true:false;
var isOpera5=(navigator.appVersion.indexOf("MSIE 5")!=-1 && navigator.userAgent.indexOf("Opera 5")!=-1)?true:false;
var isOpera6=(navigator.appVersion.indexOf("MSIE 5")!=-1 && navigator.userAgent.indexOf("Opera 6")!=-1)?true:false;
var isN6=(navigator.userAgent.indexOf("Gecko")!=-1);
var isN4=(document.layers)?true:false;
var isMac=(navigator.userAgent.indexOf("Mac")!=-1);
var isIE=(document.all && !isOpera && (!isMac || navigator.appVersion.indexOf("MSIE 4")==-1))?true:false;

if (isN4) {
  fontSize+=2;
}

var span2="</span>";

function span1(tag) {
  return "<span class='"+tag+"'>";
}
function spanx(tag, color) {
  return "."+tag+" { font-family:"+fontFace+"; font-size:"+fontSize+"px; color:"+color+"; }\n";
}

function a1(tag) {
  return "<a class='"+tag+"' href=";
}

function ax(tag, color) {
  return "."+tag+" { text-decoration:none; color:"+color+"; }\n";
}


function mostrarForm(miform) {
     NuevaVentana=window.open('','','width=300,height=100');
     entrada_nombre="Soporte Tecnico y Consultas<br>A&A INGENIEROS CONSULTORES<br>Telf.:724-62609";
     NuevaVentana.document.write(entrada_nombre);
    }
  


function calOBJ(name, title, field, form) {
  this.name = name;
  this.title = title;
  this.field = field;
  this.formName = form;
  this.form = null
}

function compruebaFormulario(tuinfo){
           if(tuinfo.diagnostico.value == "" || tuinfo.diagnostico.value == null){
                  // Comprueba si contiene un string vacío o un valor nulo
              alert("Por favor, escribe ALGO en Diagnostico");
              tuinfo.diagnostico.focus();
              tuinfo.diagnostico.select();
              return false;
            }else{
             return true;
            }
  }


function sumalab(a,b,c,d) {
r = a+b+c+d;
form.sumalab1.value= r; 
return  r;
}

function cal_total(N,obj){ 
    if(isNaN(obj.value) || eval(obj.value)<0){
	   alert(obj.value+"  número incorrecto"); obj.value=N;
	}else{ 
	   f=document.f1x;
	   f.total_cancelar.value=rounddecimal(eval(eval(f.total_amort.value) + eval(f.multa.value) + eval(f.pro.value)));
	}
}


function setFont(font, size) {
  if (font != "") {
    fontFace=font;
  }
  if (size > 0) {
    fontSize=size;

    if (isN4) {
      fontSize+=2;
    }
  }
}

function setWidth(tWidth, tMode, dWidth, dDigits) {
  if (tWidth > 0) {
    titleWidth=tWidth;
  }
  if (tMode == 1 || tMode == 2) {
    titleMode=tMode;
  }
  if (dWidth > 0) {
    dayWidth=dWidth;
  }
  if (dDigits > 0) {
    dayDigits=dDigits;
  }
}

function setColor(tColor, dsColor, bColor, dColor, cdColor, fColor, bdColor) {
  if (tColor != "") {
    titleColor=tColor;
  }
  if (dsColor != "") {
    daysColor=dsColor;
  }
  if (bColor != "") {
    bodyColor=bColor;
  }
  if (dColor != "") {
    dayColor=dColor;
  }
  if (cdColor != "") {
    currentDayColor=cdColor;
  }
  if (fColor != "") {
    footColor=fColor;
  }
  if (bdColor != "") {
    borderColor=bdColor;
  }
}

function setFontColor(tColorFont, dsColorFont, dColorFont, cdColorFont, fColorFont) {
  if (tColorFont != "") {
    titleFontColor=tColorFont;
  }
  if (dsColorFont != "") {
    daysFontColor=dsColorFont;
  }
  if (dColorFont != "") {
    dayFontColor=dColorFont;
  }
  if (cdColorFont != "") {
    currentDayFontColor=cdColorFont;
  }
  if (fColorFont != "") {
    footFontColor=fColorFont;
  }
}

function setFormat(format) {
  calFormat = format;
}

function setSize(width, height, ox, oy) {
  if (width > 0) {
    calWidth=width;
  }
  if (height > 0) {
    calHeight=height;
  }

  calOffsetX=ox;
  calOffsetY=oy;
}

function setWeekDay(wDay) {
  if (wDay == 0 || wDay == 1) {
    weekDay = wDay;
  }
}

function setMonthNames(janName, febName, marName, aprName, mayName, junName, julName, augName, sepName, octName, novName, decName) {
  if (janName != "") {
    yxMonths[0] = janName;
  }
  if (febName != "") {
    yxMonths[1] = febName;
  }
  if (marName != "") {
    yxMonths[2] = marName;
  }
  if (aprName != "") {
    yxMonths[3] = aprName;
  }
  if (mayName != "") {
    yxMonths[4] = mayName;
  }
  if (junName != "") {
    yxMonths[5] = junName;
  }
  if (julName != "") {
    yxMonths[6] = julName;
  }
  if (augName != "") {
    yxMonths[7] = augName;
  }
  if (sepName != "") {
    yxMonths[8] = sepName;
  }
  if (octName != "") {
    yxMonths[9] = octName;
  }
  if (novName != "") {
    yxMonths[10] = novName;
  }
  if (decName != "") {
    yxMonths[11] = decName;
  }
}

function setDayNames(sunName, monName, tueName, wedName, thuName, friName, satName) {
  if (sunName != "") {
    yxDays[0] = sunName;
    yxDays[7] = sunName;
  }
  if (monName != "") {
    yxDays[1] = monName;
  }
  if (tueName != "") {
    yxDays[2] = tueName;
  }
  if (wedName != "") {
    yxDays[3] = wedName;
  }
  if (thuName != "") {
    yxDays[4] = thuName;
  }
  if (friName != "") {
    yxDays[5] = friName;
  }
  if (satName != "") {
    yxDays[6] = satName;
  }
}

function setLinkNames(closeLink, clearLink) {
  if (closeLink != "") {
    yxLinks[0] = closeLink;
  }
  if (clearLink != "") {
    yxLinks[1] = clearLink;
  }
}

function addCalendar(name, title, field, form) {
  cals[cals.length] = new calOBJ(name, title, field, form);
}

function findCalendar(name) {
  for (var i = 0; i < cals.length; i++) {
    if (cals[i].name == name) {
      if (cals[i].form == null) {
        if (cals[i].formName == "") {
          if (document.forms[0]) {
            cals[i].form = document.forms[0];
          }
        }
        else if (document.forms[cals[i].formName]) {
          cals[i].form = document.forms[cals[i].formName];
        }
      }

      return cals[i];
    }
  }

  return null;
}

function getDayName(y,m,d) {
  var wd=new Date(y,m,d);
  return yxDays[wd.getDay()].substring(0,3);
}

function getMonthFromName(m3) {
  for (var i = 0; i < yxMonths.length; i++) {
    if (yxMonths[i].toLowerCase().substring(0,3) == m3.toLowerCase()) {
      return i;
    }
  }

  return 0;
}

function getFormat() {
  var calF = calFormat;

  calF = calF.replace(/\\/g, '\\\\');
  calF = calF.replace(/\//g, '\\\/');
  calF = calF.replace(/\[/g, '\\\[');
  calF = calF.replace(/\]/g, '\\\]');
  calF = calF.replace(/\(/g, '\\\(');
  calF = calF.replace(/\)/g, '\\\)');
  calF = calF.replace(/\{/g, '\\\{');
  calF = calF.replace(/\}/g, '\\\}');
  calF = calF.replace(/\</g, '\\\<');
  calF = calF.replace(/\>/g, '\\\>');
  calF = calF.replace(/\|/g, '\\\|');
  calF = calF.replace(/\*/g, '\\\*');
  calF = calF.replace(/\?/g, '\\\?');
  calF = calF.replace(/\+/g, '\\\+');
  calF = calF.replace(/\^/g, '\\\^');
  calF = calF.replace(/\$/g, '\\\$');

  calF = calF.replace(/dd/i, '\\d\\d');
  calF = calF.replace(/mm/i, '\\d\\d');
  calF = calF.replace(/yyyy/i, '\\d\\d\\d\\d');
  calF = calF.replace(/day/i, '\\w\\w\\w');
  calF = calF.replace(/mon/i, '\\w\\w\\w');

  return new RegExp(calF);
}

function getDateNumbers(date) {
  var y, m, d;

  var yIdx = calFormat.search(/yyyy/i);
  var mIdx = calFormat.search(/mm/i);
  var m3Idx = calFormat.search(/mon/i);
  var dIdx = calFormat.search(/dd/i);

  y=date.substring(yIdx,yIdx+4)-0;
  if (mIdx != -1) {
    m=date.substring(mIdx,mIdx+2)-1;
  }
  else {
    var m = getMonthFromName(date.substring(m3Idx,m3Idx+3));
  }
  d=date.substring(dIdx,dIdx+2)-0;

  return new Array(y,m,d);
}

function hideCal() {
  calWin.close();
  calWin = null;
  window.status = "";
}

function getLeftIE(x,m) {
  var dx=0;
  if (x.tagName=="TD"){
    dx=x.offsetLeft;
  }
  else if (x.tagName=="TABLE") {
    dx=x.offsetLeft;
    if (m) { dx+=(x.cellPadding!=""?parseInt(x.cellPadding):2); m=false; }
  }
  return dx+(x.parentElement.tagName=="BODY"?0:getLeftIE(x.parentElement,m));
}
function getTopIE(x,m) {
  var dy=0;
  if (x.tagName=="TR"){
    dy=x.offsetTop;
  }
  else if (x.tagName=="TABLE") {
    dy=x.offsetTop;
    if (m) { dy+=(x.cellPadding!=""?parseInt(x.cellPadding):2); m=false; }
  }
  return dy+(x.parentElement.tagName=="BODY"?0:getTopIE(x.parentElement,m));
}

function getLeftN4(l) { return l.pageX; }
function getTopN4(l) { return l.pageY; }

function getLeftN6(l) { return l.offsetLeft; }
function getTopN6(l) { return l.offsetTop; }

function lastDay(d) {
  var yy=d.getFullYear(), mm=d.getMonth();
  for (var i=31; i>=28; i--) {
    var nd=new Date(yy,mm,i);
    if (mm == nd.getMonth()) {
      return i;
    }
  }
}

function firstDay(d) {
  var yy=d.getFullYear(), mm=d.getMonth();
  var fd=new Date(yy,mm,1);
  return fd.getDay();
}

function dayDisplay(i) {
  if (dayDigits == 0) {
    return yxDays[i];
  }
  else {
    return yxDays[i].substring(0,dayDigits);
  }
}

function calTitle(d) {
  var yy=d.getFullYear(), mm=yxMonths[d.getMonth()];
  var s;

  if (titleMode == 2) {
    s="<tr align='center' bgcolor='"+titleColor+"'><td colspan='7'>\n<table cellpadding='0' cellspacing='0' border='0'><tr align='center' valign='middle'><td align='right'>"+span1("title")+"<b>"+a1("titlea")+"'javascript:if(window.opener && !window.opener.closed && window.opener.moveYear) window.opener.moveYear(-10)'>&nbsp;&#171;</a>&nbsp;"+a1("titlea")+"'javascript:if(window.opener && !window.opener.closed && window.opener.moveYear) window.opener.moveYear(-1)'>&#139;&nbsp;</a></b>"+span2+"</td><td width='"+titleWidth+"'><b>"+span1("title")+yy+span2+"</b></td><td align='left'>"+span1("title")+"<b>"+a1("titlea")+"'javascript:if (window.opener && !window.opener.closed && window.opener.moveYear) window.opener.moveYear(1)'>&nbsp;&#155;</a>&nbsp;"+a1("titlea")+"'javascript:if (window.opener && !window.opener.closed && window.opener.moveYear) window.opener.moveYear(10)'>&#187;&nbsp;</a></b>"+span2+"</td></tr><tr align='center' valign='middle'><td align='right'>"+span1("title")+"<b>"+a1("titlea")+"'javascript:if (window.opener && !window.opener.closed && window.opener.prepMonth) window.opener.prepMonth("+d.getMonth()+")'>&nbsp;&#139;&nbsp;</a></b>"+span2+"</td><td width='"+titleWidth+"'><b>"+span1("title")+mm+span2+"</b></td><td align='left'>"+span1("title")+"<b>"+a1("titlea")+"'javascript:if (window.opener && !window.opener.closed && window.opener.nextMonth) window.opener.nextMonth("+d.getMonth()+")'>&nbsp;&#155;&nbsp;</a></b>"+span2+"</td></tr></table>\n</td></tr><tr align='center' bgcolor='"+daysColor+"'>";
  }
  else {
    s="<tr align='center' bgcolor='"+titleColor+"'><td colspan='7'>\n<table cellpadding='0' cellspacing='0' border='0'><tr align='center' valign='middle'><td>"+span1("title")+"<b>"+a1("titlea")+"'javascript:if(window.opener && !window.opener.closed && window.opener.moveYear) window.opener.moveYear(-1)'>&nbsp;&#171;</a>&nbsp;"+a1("titlea")+"'javascript:if (window.opener && !window.opener.closed && window.opener.prepMonth) window.opener.prepMonth("+d.getMonth()+")'>&#139;&nbsp;</a></b>"+span2+"</td><td width='"+titleWidth+"'><nobr><b>"+span1("title")+mm+" "+yy+span2+"</b></nobr></td><td>"+span1("title")+"<b>"+a1("titlea")+"'javascript:if (window.opener && !window.opener.closed && window.opener.nextMonth) window.opener.nextMonth("+d.getMonth()+")'>&nbsp;&#155;</a>&nbsp;"+a1("titlea")+"'javascript:if(window.opener && !window.opener.closed && window.opener.moveYear) window.opener.moveYear(1)'>&#187;&nbsp;</a></b>"+span2+"</td></tr></table>\n</td></tr><tr align='center' bgcolor='"+daysColor+"'>";
  }

  for (var i=weekDay; i<weekDay+7; i++) {
    s+="<td width='"+dayWidth+"'>"+span1("days")+dayDisplay(i)+span2+"</td>";
  }

  s+="</tr>";

  return s;
}

function calHeader() {
  return "<head>\n<title>"+currentCal.title+"</title>\n<style type='text/css'>\n"+spanx("title",titleFontColor)+spanx("days",daysFontColor)+spanx("foot",footColor)+spanx("day",dayFontColor)+spanx("currentDay",currentDayFontColor)+ax("titlea",titleFontColor)+ax("daya",dayFontColor)+ax("currenta",currentDayFontColor)+ax("foota",footFontColor)+"</style>\n</head>\n<body>\n<table align='center' border='0' bgcolor='"+borderColor+"' cellspacing='0' cellpadding='1'><tr><td>\n<table cellspacing='1' cellpadding='3' border='0'>";
}

function calFooter() {
  return "<tr bgcolor='"+footColor+"'><td colspan='7' align='center'>"+span1("foot")+"<b>"+a1("foota")+"'javascript:if (window.opener && !window.opener.closed && window.opener.hideCal) window.opener.hideCal()'>"+yxLinks[0]+"</a>&nbsp;&nbsp;"+a1("foota")+"'javascript:if (window.opener && !window.opener.closed && window.opener.clearDate) window.opener.clearDate()'>"+yxLinks[1]+"</a></b>"+span2+"</td></tr></table>\n</td></tr></table>\n</body>";
}

function calBody(d,day) {
  var s="", dayCount=1, fd=firstDay(d), ld=lastDay(d);

  if (weekDay > 0 && fd == 0) {
    fd = 7;
  }

  for (var i=0; i<6; i++) {
    s+="<tr align='center' bgcolor='"+bodyColor+"'>";
    for (var j=weekDay; j<weekDay+7; j++) {
      if (i*7+j<fd || dayCount>ld) {
        s+="<td>"+span1("day")+"&nbsp;"+span2+"</td>";
      }
      else {
        var bgColor=dayColor;
        var fgTag="day";
        var fgTagA="daya";
        if (dayCount==day) {
          bgColor=currentDayColor;
          fgTag="currentDay";
          fgTagA="currenta";
        }

        s+="<td bgcolor='"+bgColor+"'>"+span1(fgTag)+a1(fgTagA)+"'javascript: if (window.opener && !window.opener.closed && window.opener.pickDate) window.opener.pickDate("+dayCount+")'>"+(dayCount++)+"</a>"+span2+"</td>";
      }
    }
    s+="</tr>";
  }

  return s;
}

function moveYear(dy) {
  cY+=dy;
  var nd=new Date(cY,cM,1);
  changeCal(nd);
}

function prepMonth(m) {
  cM=m-1;
  if (cM<0) { cM=11; cY--; }
  var nd=new Date(cY,cM,1);
  changeCal(nd);
}

function nextMonth(m) {
  cM=m+1;
  if (cM>11) { cM=0; cY++;}
  var nd=new Date(cY,cM,1);
  changeCal(nd);
}

function changeCal(d) {
  var dd = 0;

  if (currentCal != null) {
    var calRE = getFormat();

    if (currentCal.form[currentCal.field].value!="" && calRE.test(currentCal.form[currentCal.field].value)) {
      var cd = getDateNumbers(currentCal.form[currentCal.field].value);
      if (cd[0] == d.getFullYear() && cd[1] == d.getMonth()) {
        dd=cd[2];
      }
    }
    else {
      var cd = new Date();
      if (cd.getFullYear() == d.getFullYear() && cd.getMonth() == d.getMonth()) {
        dd=cd.getDate();
      }
    }
  }

  var calendar=calHeader()+calTitle(d)+calBody(d,dd)+calFooter();

  calWin.document.open();
  calWin.document.write(calendar);
  calWin.document.close();
}

function markClick(e) {
  if (isIE || isOpera6) {
    winX=event.screenX;
    winY=event.screenY;
  }
  else if (isN4 || isN6) {
    winX=e.screenX;
    winY=e.screenY;

    document.routeEvent(e);
  }

  if (isN4 || isN6) {
    document.routeEvent(e);
  }
  else {
    event.cancelBubble=false;
  }

  return true;
}

function showCal(name) {
  addCalendar(name, 'Select Date', name, 'forma');
  var lastCal=currentCal;
  var d=new Date(), hasCal=false;

  currentCal = findCalendar(name);

  if (currentCal != null && currentCal.form != null && currentCal.form[currentCal.field]) {
    var calRE = getFormat();

    if (currentCal.form[currentCal.field].value!="" && calRE.test(currentCal.form[currentCal.field].value)) {
      var cd = getDateNumbers(currentCal.form[currentCal.field].value);
      d=new Date(cd[0],cd[1],cd[2]);

      cY=cd[0];
      cM=cd[1];
      dd=cd[2];
    }
    else {
      cY=d.getFullYear();
      cM=d.getMonth();
      dd=d.getDate();
    }

    var calendar=calHeader()+calTitle(d)+calBody(d,dd)+calFooter();

    if (calWin != null && !calWin.closed) {
      hasCal=true;
      calWin.moveTo(winX+calOffsetX,winY+calOffsetY);
    }

    if (!hasCal) {
      if (isIE || isOpera6) {
        calWin=window.open("","cal","toolbar=0,width="+calWidth+",height="+calHeight+",left="+(winX+calOffsetX)+",top="+(winY+calOffsetY));
      }
      else {
        calWin=window.open("","cal","toolbar=0,width="+calWidth+",height="+calHeight+",screenx="+(winX+calOffsetX)+",screeny="+(winY+calOffsetY));
      }
    }

    calWin.document.open();
    calWin.document.write(calendar);
    calWin.document.close();

    calWin.focus();
  }
  else {
    if (currentCal == null) {
      window.status = "Calendar ["+name+"] not found.";
    }
    else if (!currentCal.form) {
      window.status = "Form ["+currentCal.formName+"] not found.";
    }
    else if (!currentCal.form[currentCal.field]) {
      window.status = "Form Field ["+currentCal.formName+"."+currentCal.field+"] not found.";
    }

    if (lastCal != null) {
      currentCal = lastCal;
    }
  }
}

function get2Digits(n) {
  return ((n<10)?"0":"")+n;
}

function clearDate() {
  currentCal.form[currentCal.field].value="";
  hideCal();
}

function pickDate(d) {
  hideCal();
  window.focus();

  var date=calFormat;
  date = date.replace(/yyyy/i, cY);
  date = date.replace(/mm/i, get2Digits(cM+1));
  date = date.replace(/MON/, yxMonths[cM].substring(0,3).toUpperCase());
  date = date.replace(/Mon/i, yxMonths[cM].substring(0,3));
  date = date.replace(/dd/i, get2Digits(d));
  date = date.replace(/DAY/, getDayName(cY,cM,d).toUpperCase());
  date = date.replace(/day/i, getDayName(cY,cM,d));

  currentCal.form[currentCal.field].value=date;
  // IE5/Mac needs focus to show the value, weird.
  currentCal.form[currentCal.field].focus();
}
// ------

// user functions
function checkDate(name) {
  var thisCal = findCalendar(name);

  if (thisCal != null && thisCal.form != null && thisCal.form[thisCal.field]) {
    var calRE = getFormat();

    if (calRE.test(thisCal.form[thisCal.field].value)) {
      return 0;
    }
    else {
      return 1;
    }
  }
  else {
    return 2;
  }
}

function getCurrentDate() {
  var date=calFormat, d = new Date();
  date = date.replace(/yyyy/i, d.getFullYear());
  date = date.replace(/mm/i, get2Digits(d.getMonth()+1));
  date = date.replace(/dd/i, get2Digits(d.getDate()));

  return date;
}

function compareDates(date1, date2) {
  var calRE = getFormat();
  var d1, d2;

  if (calRE.test(date1)) {
    d1 = getNumbers(date1);
  }
  else {
    d1 = getNumbers(getCurrentDate());
  }

  if (calRE.test(date2)) {
    d2 = getNumbers(date2);
  }
  else {
    d2 = getNumbers(getCurrentDate());
  }

  var dStr1 = d1[0] + "" + d1[1] + "" + d1[2];
  var dStr2 = d2[0] + "" + d2[1] + "" + d2[2];

  if (dStr1 == dStr2) {
    return 0;
  }
  else if (dStr1 > dStr2) {
    return 1;
  }
  else {
    return -1;
  }
}

function getNumbers(date) {
  var calRE = getFormat();
  var y, m, d;

  if (calRE.test(date)) {
    var yIdx = calFormat.search(/yyyy/i);
    var mIdx = calFormat.search(/mm/i);
    var m3Idx = calFormat.search(/mon/i);
    var dIdx = calFormat.search(/dd/i);

    y=date.substring(yIdx,yIdx+4);
    if (mIdx != -1) {
      m=date.substring(mIdx,mIdx+2);
    }
    else {
      var mm=getMonthFromName(date.substring(m3Idx,m3Idx+3))+1;
      m=(mm<10)?("0"+mm):(""+mm);
    }
    d=date.substring(dIdx,dIdx+2);

    return new Array(y,m,d);
  }
  else {
    return new Array("", "", "");
  }
}
// ------

if (isN4 || isN6) {
  document.captureEvents(Event.CLICK);
}
document.onclick=markClick;

// FIN calendario \\

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// JAVASCRIPT PROBADO EN IE -Internet Explorer 5
//           MOZILLA 1
//           KONQUEROR 3.0.4

// funcion que coloca el cursor en un objeto deseado
function inicio(obj) {
  obj.focus();
}

// funcion que valida un dato cualquiera
// tipo   =  "9" numerico   "A" alfabetico   "A9" alfanumerico
function validar(obj, tipo) {
  dato = obj.value;
  cad = dato.split("");
  if (obj.value == "") {
    return false;
  }
  else {
    switch (tipo) {
    case '9' :
      for (i=0; i < cad.length; i++) {
        if (((cad[i] > '9')||(cad[i] < '0')) && !((cad[i] == '.' )||(cad[i] == '-' ))) {
          alert("el dato : '"+dato+"'  no es un número valido");
          obj.focus();
          obj.select();
          return false;
        }
      }
      break;
    case 'A' :
      for (i=0; i < cad.length; i++) {
        if (!((cad[i] == 'Ñ') || (cad[i] == 'ñ') || (cad[i] == ' ')||((cad[i] >= 'a')&&(cad[i] <= 'z'))||((cad[i]  >= 'A')&&(cad[i] <= 'Z'))||(cad[i]=='.')||(cad[i]=='%') ||(cad[i]=='Ñ')||(cad[i]=='ñ'))) {
          alert("el dato : '"+dato+"'  no es parte del alfabeto valido");
          obj.focus();
          obj.select();
          return false;
        }
      }
      break;
    case 'A9':
      for (i=0; i<cad.length; i++) {
        if (!( (cad[i] == 'Ñ') || (cad[i] == 'ñ') || (cad[i] == '%') || (cad[i] == ' ')||((cad[i]>='0')&&(cad[i]<='9'))||((cad[i]>='a')&&(cad[i]<='z'))||((cad[i]>='A')&&(cad[i]<='Z')) )) {
          alert("el dato : '"+dato+"'  contiene caracteres especiales no validos");
          obj.focus();
          obj.select();
          return false;
        }
      }
      break;
    }
  }
  return true;
}

// funcion que valida un conjunto de datos del mismo tipo
// forma  (formulario a validar)
// inicio  (numerico primer elemento a validar)
// cant  (numerico cantidad de elementos a validar)
function validarVacio(forma, inicio, cant) {
  for (j=inicio; j<inicio+cant; j++) {
    res = forma.elements[j];
    if (res.value == "") {
      alert("Todos los campos deben tener valores");
      return false;
      break;
    }
  }
  return true;
}

// funcion que valida un conjunto de datos segun el nombre del objeto
// forma  (formulario a validar)
// inicio  (numerico primer elemento a validar)
// cant  (numerico cantidad de elementos a validar)
function validarTodo(forma, inicio, cant) {
  for (j=inicio; j<inicio+cant; j++) {
    res = forma.elements[j];
    cad = res.name;
    if ((res.value == "")||((cad.lastIndexOf("cad") == 0)&&((!(validar(res,"A"))) == true))) {
      return true;
      break;
    }
    if ((res.value == "")||((cad.lastIndexOf("int") == 0)&&((!(validar(res,"9"))) == true))) {
      return true;
      break;
    }
  }
  return true;
}

// funcion que valida un conjunto de datos numericos entre un rango
// ri,rs  (numerico rango inferior superior)

function validarNota(obj,ri,rs) {
  res = validar(obj,"9");
  if (res == true) {
    valor=parseInt(obj.value);
    if ((valor<ri) || (valor>rs)) {
      alert("el número : " + obj.value + " fuera de rango, debe estar entre : " + ri + " y " + rs);
      obj.focus();
      obj.select();
      return false;
    }
  }
  return true;
}

function ventana(direccion, nombre, ancho, largo) {
  window.open(direccion, nombre, "width ="+ ancho +", height="+ largo +", scrollbars=yes, menubar=no, toolbar=no, resizable=yes");
}

// funcion que valida un conjunto de datos numericos entre un rango
// ri,rs  (numerico rango inferior superior)

function validarHora(obj,ri,rs) {
  res = validar(obj,"9");
  if (res == true) {
    valor=parseInt(obj.value);
    if ((valor<ri) || (valor>rs)) {
      alert("el número : "+obj.value+" fuera de rango, debe estar entre : "+ri+" y "+rs);
      obj.focus();
      obj.select();
      return false;
    }
  }
  return true;
}

// inicio Jojó
function obligar(forma, obligatorios) {
  var datos = obligatorios.split(';');
  for (var i = 0; i < datos.length; i++) {
    var j = 0;
    var obj;
    do {
      obj = forma.elements[j];
      j = j + 1;
    } while (obj.name != datos[i]);
    if (obj.value == "") {
      alert("Por favor, ingrese todos los campos obligatorios");
      obj.focus();
      return false;
    }
  }
  //forma.action = url;
  forma.submit();
}

/**************************************************************
Máscara de entrada. Script creado por Tunait! (21/12/2004)
Si quieres usar este script en tu sitio eres libre de hacerlo
 con la condición de que permanezcan intactas estas líneas,
 osea, los créditos.
No autorizo a distribuír el código en sitios de script sin
 previa autorización.
Si quieres distribuírlo, por favor, contacta conmigo.
Ver condiciones de uso en http://javascript.tunait.com/
tunait@yahoo.com
****************************************************************/
var patron = new Array(2, 2, 4)
var patron2 = new Array(1, 3, 3, 3, 3)
function mascara(d, sep, pat, nums){
  if (d.valant != d.value) {
    val = d.value
    largo = val.length
    val = val.split(sep)
    val2 = ''
    for (r = 0; r < val.length; r++){
      val2 += val[r]
    }
    if (nums) {
      for (z = 0; z < val2.length; z++){
        if (isNaN(val2.charAt(z))) {
          letra = new RegExp(val2.charAt(z), "g")
    val2 = val2.replace(letra, "")
        }
      }
    }
    val = ''
    val3 = new Array()
    for (s = 0; s < pat.length; s++){
      val3[s] = val2.substring(0, pat[s])
      val2 = val2.substr(pat[s])
    }
    for (q = 0; q < val3.length; q++){
      if (q == 0) {
        val = val3[q]
      } else {
        if (val3[q] != "") {
          val += sep + val3[q]
        }
      }
    }
    d.value = val
    d.valant = val
  }
}

function esconderEnlaces(){
  enlaces = document.getElementsByTagName('div').length;
  cap = 1;
  for(i = 0; i < enlaces; i++){
    if(document.getElementsByTagName('div')[i].id.charAt(0) == 'e'){
      document.getElementsByTagName('div')[i].style.display = 'none';
      cap++;
    }
  }
}

function cambiarMenu(enlace, categoria){
  if (document.getElementById(enlace).style.display == 'none') {
    document.getElementById(enlace).style.display = 'block';
    categoria.className = 'categoriaActiva';
  } else {
    document.getElementById(enlace).style.display = 'none';
    categoria.className = 'categoria';
  }
}
// inicio Jojó

function cambiarVentana(){
  top.cambiarSize();
  var boton1 = document.getElementById('oculta');
  valor = boton1.value.split(" ");
  if ("Ocultar"==valor[0]){
    boton1.value="Mostrar Menú";
  } else {
    boton1.value="Ocultar Menú";
  }
  return true;
}


//inicio LDJ
var isOpera6=(navigator.appVersion.indexOf("MSIE 5")!=-1 && navigator.userAgent.indexOf("Opera 6")!=-1)?true:false;
var isIE=(document.all && !isOpera && (!isMac || navigator.appVersion.indexOf("MSIE 4")==-1))?true:false;
if (isN4) {
  fontSize+=2;
}
var calWidth1=500, calHeight1=300, calOffsetX1=0, calOffsetY1=16;

var tablaWin=null;
var id_campo;
var campo;
var valor;
var valores;
var ids;
var campos;
var campo_padre;
var camposA = new Array();
var dominio_padre;
var dominio_padreA=new Array();
var camposASel = new Array();
var camposPreSel = new Array();
var idsA = new Array();
var valoresA = new Array();
var valoresB = new Array();
var valoresC = new Array();
var valoresD = new Array();
var valoresAux = new Array();
var tabla=true;
function showTabla(valor,id_campo,campo,dominio_padre,campo_padre,valores,campos,ids) {
  if (tabla) {
    this.id_campo = id_campo;
    this.dominio_padre = dominio_padre;
    this.campo = campo;
    this.campo_padre = campo_padre;
    this.valor = valor;
    this.ids = ids;
    this.valores = valores;
    this.campos = campos;
    if (isIE || isOpera6) {
    tablaWin = window.open("", "Tabla Externa", "toolbar=0,width=" + calWidth1 + ",height=" + calHeight1 + ",left=" + (calOffsetX1) + ",top=" + (calOffsetY1));
    }
    else {
    tablaWin = window.open("","Tabla Externa","toolbar=0,width=" + calWidth1 + ",height=" + calHeight1 + ",screenx=" + (calOffsetX1) + ",screeny=" + (calOffsetY1));
    }
    crearArrays();
    tablaWin.document.write(cabecera());
    tabla=false;
    tablaWin.document.close();
  }
}
function cerrar_tabla(){
  tabla=true;
}
function pickValor(id,j){
  var s="";
  var s1="";
  var primera=0;
  for (i=0 ; i < camposA.length ; i++){
    if (camposASel[i]==1){
      if(primera==0){
        s+="("+camposA[i];
        s1+=valoresB[j][i];
        primera=1;
      }
      else {
        s+="||' '||"+camposA[i];
        s1+=" "+valoresB[j][i];
      }
    }
  }
  s+=")";  
  id_campo.value=id;
  campo.value=s;
  valor.value=s1;
  cerrar_tabla();
  tablaWin.window.close();
}
       
function crearArrays(){
  idsA = ids.split('###');
  camposA = campos.split('#~~#');
  valoresAux = valores.split('@@@');
  for (i = 0 ; i < valoresAux.length-1 ; i++){
    valoresA[i] = valoresAux[i].split("#~~#");
    valoresB[i] = new Array();
    valoresD[i] = new Array();
    for (j = 0 ; j < valoresA[i].length ; j++){
      valoresC = (valoresA[i][j]).split("#~#");
      if (valoresC.length==1)
        valoresB[i][j] = valoresC[0];
      else {
        valoresB[i][j] = valoresC[1];
        valoresD[i][j] = valoresC[0];
      }
    }
  }
}
function cargando(){
  var s="<div id=l style='visibility:visible'>cargando......</div>";
  return s;
}
function cabecera(){
  var foraneo=0;
  var s="<body OnUnload='window.opener.cerrar_tabla();'><div id=lu style='visibility:visible'><br>";
  s+="<link rel=\"stylesheet\" href=\"pagina.css\" type=\"text/css\">";
  s+="<center><table class=tabla border=1 cellspacing=0 cellpadding=0>";
  s+="<tr>";
  
  if(campo.value!=""){
    var s2=campo.value;
    s2=s2.substring(1,s2.length-1);
    camposPreSel=s2.split("||' '||");
  }
  for (i=0 ; i < camposA.length ; i++){
    if(camposA[i]==campo_padre){
      foraneo=i;
    }
    camposASel[i]=0;
    s+="<th><div class=clave><input type=checkbox name=c"+i;
    if(campo.value!=""){
      for (j=0 ; j < camposPreSel.length ; j++){
        if (camposA[i]==camposPreSel[j]){
          s+=" checked";
          camposASel[i]=1;
        }
      }
    }
    else {
      if (i==0) {
        s+=" checked";
        camposASel[i]=1;
      }
    }
    s+=" onchange=\"if(window.opener.camposASel["+i+"]==0) window.opener.camposASel["+i+"]=1;else window.opener.camposASel["+i+"]=0;\"></div></th>";
  }
  s+="</tr>";
  s+="<tr>";
  for (i=0 ; i < camposA.length ; i++){
    s+="<th><div class=clave>"+camposA[i]+"</div></th>";
  }
  s+="</tr>";
  for (i=0 ; i < idsA.length ; i++){
    s+="<tr onMouseOver=\"this.className='sobreFila'\" onmouseout=\"this.className=''\">";
    if(dominio_padre==0){
      for (j=0 ; j < camposA.length ; j++){
        s+="<td onmousedown=\"window.opener.pickValor('"+idsA[i]+"',"+i+");window.close();\">"+valoresB[i][j]+"</td>";
      }
    }
    else{
      if( document.getElementById("p"+dominio_padreA[dominio_padre]).value==valoresD[i][foraneo]){
        for (j=0 ; j < camposA.length ; j++){
          s+="<td onmousedown=\"window.opener.pickValor('"+idsA[i]+"',"+i+");window.close();\">"+valoresB[i][j]+"</td>";
	}
      }
    }
    s+="</tr>";
  }    
  s+="</table></div></body>";
  return s;
}

// Fin LDJ

function validarClave(obj) {
  dato = obj.value;
  cad = dato.split("");
  if (obj.value == "") {
    return false;
  }
  else {
    for (i=0; i<cad.length; i++) {
      if (!((cad[i] == '%')||(cad[i] == ' ')||((cad[i]>='0')&&(cad[i]<='9'))||((cad[i]>='a')&&(cad[i]<='z'))||((cad[i]>='A')&&(cad[i]<='Z')) )) {
        alert("Ingreso caracteres no validos");
        obj.focus();
        obj.select();
        return false;
      }
    }
  }
  return true;
}

//funcion que suma los datos de laboratorios cay, seg, linf, mono
function SumaLab1(){ 
	f=document.f1;
	valor=eval(f.cay.value + f.seg.value + f.linf.value + f.mono.value)
	f.sumalab1.value=rounddecimal(eval(valor));
}

