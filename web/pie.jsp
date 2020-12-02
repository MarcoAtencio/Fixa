<!-- FOOTER -->
        <footer id="footer">
            <!-- top footer -->
            <div class="section">
                <!-- container -->
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
                
                <div class="container">
                    <!-- row -->
                    <div class="container">
                        <div class="col-md-3 col-xs-6">
                            <div class="footer">
                                <h3 class="footer-title">Sobre nosotros</h3>
                                <p>Somos una empresa peruana importadora y comercializadora con más de 59 años de experiencia en sistemas de fijación con el propósito de abastecer y entregar soluciones integrales al mercado de la construcción, industria, minería, etc.</p>
                                <ul class="footer-links">
                                    <li><a href="Ubicacion.jsp"><i class="fa fa-map-marker"></i>Parque Industrial, Callao 07006</a></li>
                                    <li><a href="#"><i class="fa fa-phone"></i>+51 981353626</a></li>
                                    <li><a href="" onclick="ventanaEmergenteCentrada ('contactanos.jsp', 640, 480); return(false);" title=""><i class="fa fa-envelope-o"></i>fijacionesyperforacion@fixaperu.com</a></li>
                                </ul>
                            </div>
                        </div>

                        <div class="col-md-3 col-xs-6">
                            <div class="footer">
                                <h3 class="footer-title">Categorias</h3>
                                <ul class="footer-links">
                                    <li><a href="ControllerList?action=listar&cod=Broca">Brocas</a></li>
                                    <li><a href="ControllerList?action=listar&cod=Perno">Pernos</a></li>
                                    <li><a href="ControllerList?action=listar&cod=Clavija">Clavijas</a></li>
                               
                                </ul>
                            </div>
                        </div>

                        <div class="clearfix visible-xs"></div>

                        <div class="col-md-3 col-xs-6">
                            <div class="footer">
                                <h3 class="footer-title">Informacion</h3>
                                <ul class="footer-links">
                                    <li><a href="SobreNosotros.jsp">Sobre Nosotros</a></li>
                                    <li><a href="politicaPrivacidad.jsp">Politica de privacidad</a></li>
                                    <li><a href="TerminosCon.jsp">Terminos y condiciones</a></li>
                                </ul>
                            </div>
                        </div>

                        <div class="col-md-3 col-xs-6">
                            <div class="footer">
                                <h3 class="footer-title">Servicios</h3>
                                <ul class="footer-links">
                                    <li><a href="#">Ayuda</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- /row -->
                </div>
                <!-- /container -->
            </div>
            <!-- /top footer -->

            <!-- bottom footer -->
            <div id="bottom-footer" class="section">
                <div class="container">
                    <!-- row -->
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <ul class="footer-payments">
                                <li><a href="#"><i class="fa fa-cc-visa"></i></a></li>
                                <li><a href="#"><i class="fa fa-credit-card"></i></a></li>
                                <li><a href="#"><i class="fa fa-cc-paypal"></i></a></li>
                                <li><a href="#"><i class="fa fa-cc-mastercard"></i></a></li>
                                <li><a href="#"><i class="fa fa-cc-discover"></i></a></li>
                                <li><a href="#"><i class="fa fa-cc-amex"></i></a></li>
                            </ul>
                            <span class="copyright">
                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                Copyright &copy;<script>document.write(new Date().getFullYear());</script> Todos los derechos reservados  
                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                            </span>
                        </div>
                    </div>
                    <!-- /row -->
                </div>
                <!-- /container -->
            </div>
            <!-- /bottom footer -->
        </footer>
        <!-- /FOOTER -->

        <!-- jQuery Plugins -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/slick.min.js"></script>
        <script src="js/nouislider.min.js"></script>
        <script src="js/jquery.zoom.min.js"></script>
        <script src="js/main.js"></script>
        <script src="js/jquery.dataTables.min.js"></script>
        <script src="js/dataTables.bootstrap4.min.js"></script>
        <script>
            $(document).ready(function () {
                $('#example').DataTable();
            });
        </script>
        <script>
            $(function(){
                var requiredCheckboxes = $('.options :checkbox[required]');
                requiredCheckboxes.change(function(){
                    if(requiredCheckboxes.is(':checked')) {
                        requiredCheckboxes.removeAttr('required');
                    } else {
                        requiredCheckboxes.attr('required', 'required');
                    }
                });
            });
            </script>
    </body>
</html>
