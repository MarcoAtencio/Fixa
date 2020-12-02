
<html>
<head>
<title>Ejemplo de ventana emergente centrada con Javascript</title>
</head>

<body>

<script>
  function obtenerAnchoSegunNavetadorWeb ()
  {
    if (navigator.userAgent.indexOf("MSIE") > 0)
    {
      return(document.body.clientWidth);
    }
    else
    {
      return window.outerWidth;
    }
  }

  function obtenerAltoSegunNavetadorWeb()
  {
    if (navigator.userAgent.indexOf("MSIE") > 0)
    {
      return(document.body.clientHeight);
    }
    else
    {
      return(window.outerHeight);
    }
  }

  var ventanaEm = new Object()
  function ventanaEmergenteCentrada (paginaMostrar, ancho, alto)
  {
    var X = obtenerAnchoSegunNavetadorWeb() / 2
    var Y = obtenerAltoSegunNavetadorWeb() / 2
    ventanaEm = window.open(paginaMostrar, 'PopUp', 'scrollbars=yes ' + 'width=' + ancho + ' ' +
       'height=' + alto + ' ' + 'top=' + (window.screenTop +
      (Y - (alto/2))) + ' ' + 'left=' +
      (window.screenLeft + (X - (ancho/2))))
    ventanaEm.focus()
  }
</script>

<p>A continuación un ejemplo de ventana emergente (popup) centrada, válido tanto para Firefox como para Internet Explorer:<br/><br/>
<a href="" onclick="ventanaEmergenteCentrada ('emergenteTarjeta.jsp', 640, 480); return(false);">Ejemplo ventana emergente centrada</a>
</p>
</body>
</html>