/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2020-11-20 21:15:41 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.pages.enquiry;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005furl_0026_005fvalue_005fnobody;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _005fjspx_005ftagPool_005fc_005furl_0026_005fvalue_005fnobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005furl_0026_005fvalue_005fnobody.release();
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("\n");
      out.write("  <meta charset=\"utf-8\">\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("  <meta name=\"description\" content=\"\">\n");
      out.write("  <meta name=\"author\" content=\"\">\n");
      out.write("\n");
      out.write("  <title>Landing page</title>\n");
      out.write("    <link type=\"image/jpg\" href=\"");
      if (_jspx_meth_c_005furl_005f0(_jspx_page_context))
        return;
      out.write("\" rel=\"icon\">\n");
      out.write("\n");
      out.write("  <!-- Custom fonts for this theme -->\n");
      out.write("  <link href=\"vendor/fontawesome-free/css/all.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("  <link href=\"https://fonts.googleapis.com/css?family=Montserrat:400,700\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("  <link href=\"https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("\n");
      out.write("  <!-- Theme CSS -->\n");
      out.write("    <link type=\"text/css\" href=\"");
      if (_jspx_meth_c_005furl_005f1(_jspx_page_context))
        return;
      out.write(" \"  rel=\"stylesheet\">\n");
      out.write("    <link type=\"text/css\" href=\"");
      if (_jspx_meth_c_005furl_005f2(_jspx_page_context))
        return;
      out.write(" \"  rel=\"stylesheet\">\n");
      out.write("  <style>\n");
      out.write("      a {\n");
      out.write("  color: wheat;}\n");
      out.write("  </style>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body id=\"page-top\">\n");
      out.write("\n");
      out.write("  <!-- Navigation -->\n");
      out.write("  <nav class=\"navbar navbar-expand-lg bg-secondary text-uppercase fixed-top\" id=\"mainNav\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("      <a class=\"navbar-brand js-scroll-trigger\" href=\"#page-top\">Verify </a>\n");
      out.write("      <button class=\"navbar-toggler navbar-toggler-right text-uppercase font-weight-bold bg-primary text-danger rounded\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarResponsive\" aria-controls=\"navbarResponsive\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("        <i class=\"fas fa-bars\"></i>\n");
      out.write("      </button>\n");
      out.write("      <div class=\"collapse navbar-collapse\" id=\"navbarResponsive\">\n");
      out.write("        <ul class=\"navbar-nav ml-auto\">\n");
      out.write("         \n");
      out.write("          <li class=\"nav-item mx-0 mx-lg-1\">\n");
      out.write("            <a class=\"nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger\" href=\"#about\">About</a>\n");
      out.write("          </li>\n");
      out.write("          <li class=\"nav-item mx-0 mx-lg-1\">\n");
      out.write("            <a class=\"nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger\" href=\"login\">Sign in</a>\n");
      out.write("          </li>\n");
      out.write("        </ul>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </nav>\n");
      out.write("\n");
      out.write("  <!-- Masthead -->\n");
      out.write("  <header class=\"masthead bg-primary text-white text-center\">\n");
      out.write("    <div class=\"container d-flex align-items-center flex-column\">\n");
      out.write("\n");
      out.write("      <!-- Masthead Avatar Image -->\n");
      out.write("      <img class=\"masthead-avatar mb-5\" src=\"");
      if (_jspx_meth_c_005furl_005f3(_jspx_page_context))
        return;
      out.write("\" alt=\"\">\n");
      out.write("      <!-- Masthead Heading -->\n");
      out.write("      <h1 class=\"masthead-heading text-uppercase mb-0\">Welcome</h1>\n");
      out.write("\n");
      out.write("      <!-- Icon Divider -->\n");
      out.write("      <div class=\"divider-custom divider-light\">\n");
      out.write("        <div class=\"divider-custom-line\"></div>\n");
      out.write("        <div class=\"divider-custom-icon\">\n");
      out.write("          <i class=\"fas fa-star\"></i>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"divider-custom-line\"></div>\n");
      out.write("      </div>\n");
      out.write("\n");
      out.write("      <!-- Masthead Subheading -->\n");
      out.write("      <p class=\"masthead-subheading font-weight-light mb-0\"> \n");
      out.write("        Get the opportunity to Ascertain and Verify that qualifications presented by the employee you wish to hire or the student\n");
      out.write("        you will admit to your institution are true and credible.<br>\n");
      out.write("        <b>Check - Verify - Be Sure!</b><br>\n");
      out.write("        <a href=\"login\">To Get Started</a></p>\n");
      out.write("    </div>\n");
      out.write("  </header>\n");
      out.write("\n");
      out.write("\n");
      out.write("  <!-- About Section -->\n");
      out.write("  <section class=\"page-section bg-primary text-white mb-0\" id=\"about\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("\n");
      out.write("      <!-- About Section Heading -->\n");
      out.write("      <h2 class=\"page-section-heading text-center text-uppercase text-white\">About</h2>\n");
      out.write("\n");
      out.write("      <!-- Icon Divider -->\n");
      out.write("      <div class=\"divider-custom divider-light\">\n");
      out.write("        <div class=\"divider-custom-line\"></div>\n");
      out.write("        <div class=\"divider-custom-icon\">\n");
      out.write("          <i class=\"fas fa-star\"></i>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"divider-custom-line\"></div>\n");
      out.write("      </div>\n");
      out.write("\n");
      out.write("      <!-- About Section Content -->\n");
      out.write("      <div class=\"row\">\n");
      out.write("        <div class=\"col-lg-4 ml-auto\">\n");
      out.write("          <p class=\"lead\">We allow you to verify the details of any student from any institution of choice.</p>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-lg-4 mr-auto\">\n");
      out.write("          <p class=\"lead\">True, correct , certified results, covering all institutions in Kenya.</p>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("\n");
      out.write("  </section>\n");
      out.write("\n");
      out.write(" \n");
      out.write("  <!-- Footer -->\n");
      out.write("  <footer class=\"footer text-center\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("      <div class=\"row\">\n");
      out.write("\n");
      out.write("        <!-- Footer Location -->\n");
      out.write("        <div class=\"col-lg-6 mb-5 mb-lg-0\">\n");
      out.write("          <h4 class=\"text-uppercase mb-4\">Contact</h4>\n");
      out.write("          <p class=\"lead mb-0\">Email: lucienduta9148@verify.org.ke</p>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("       \n");
      out.write("\n");
      out.write("        <!-- Footer About Text -->\n");
      out.write("        <div class=\"col-lg-6\">\n");
      out.write("         <h4 class=\"text-uppercase mb-4\">Services</h4>\n");
      out.write("          <p class=\"lead mb-0\">Easy, free verification of details\n");
      out.write("            <a href=\"login\">Start Now</a></p>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </footer>\n");
      out.write("\n");
      out.write("  <!-- Copyright Section -->\n");
      out.write("  <section class=\"copyright py-4 text-center text-white\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("      <small>Copyright &copy; Your Website 2020</small>\n");
      out.write("    </div>\n");
      out.write("  </section>\n");
      out.write("\n");
      out.write("  <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->\n");
      out.write("  <div class=\"scroll-to-top d-lg-none position-fixed \">\n");
      out.write("    <a class=\"js-scroll-trigger d-block text-center text-white rounded\" href=\"#page-top\">\n");
      out.write("      <i class=\"fa fa-chevron-up\"></i>\n");
      out.write("    </a>\n");
      out.write("  </div>\n");
      out.write("\n");
      out.write(" \n");
      out.write("             \n");
      out.write("\n");
      out.write("  <!-- Bootstrap core JavaScript -->\n");
      out.write("  <script src=\"vendor/jquery/jquery.min.js\"></script>\n");
      out.write("  <script src=\"vendor/bootstrap/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("\n");
      out.write("  <!-- Plugin JavaScript -->\n");
      out.write("  <script src=\"vendor/jquery-easing/jquery.easing.min.js\"></script>\n");
      out.write("\n");
      out.write("  <!-- Contact Form JavaScript -->\n");
      out.write("  <script src=\"js/jqBootstrapValidation.js\"></script>\n");
      out.write("  <script src=\"js/contact_me.js\"></script>\n");
      out.write("\n");
      out.write("  <!-- Custom scripts for this template -->\n");
      out.write("  <script src=\"js/freelancer.min.js\"></script>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_005furl_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:url
    org.apache.taglibs.standard.tag.rt.core.UrlTag _jspx_th_c_005furl_005f0 = (org.apache.taglibs.standard.tag.rt.core.UrlTag) _005fjspx_005ftagPool_005fc_005furl_0026_005fvalue_005fnobody.get(org.apache.taglibs.standard.tag.rt.core.UrlTag.class);
    _jspx_th_c_005furl_005f0.setPageContext(_jspx_page_context);
    _jspx_th_c_005furl_005f0.setParent(null);
    // /WEB-INF/pages/enquiry/index.jsp(17,33) name = value type = null reqTime = true required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_c_005furl_005f0.setValue("/libs/bootstrap/images/graduation.jpg");
    int _jspx_eval_c_005furl_005f0 = _jspx_th_c_005furl_005f0.doStartTag();
    if (_jspx_th_c_005furl_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fc_005furl_0026_005fvalue_005fnobody.reuse(_jspx_th_c_005furl_005f0);
      return true;
    }
    _005fjspx_005ftagPool_005fc_005furl_0026_005fvalue_005fnobody.reuse(_jspx_th_c_005furl_005f0);
    return false;
  }

  private boolean _jspx_meth_c_005furl_005f1(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:url
    org.apache.taglibs.standard.tag.rt.core.UrlTag _jspx_th_c_005furl_005f1 = (org.apache.taglibs.standard.tag.rt.core.UrlTag) _005fjspx_005ftagPool_005fc_005furl_0026_005fvalue_005fnobody.get(org.apache.taglibs.standard.tag.rt.core.UrlTag.class);
    _jspx_th_c_005furl_005f1.setPageContext(_jspx_page_context);
    _jspx_th_c_005furl_005f1.setParent(null);
    // /WEB-INF/pages/enquiry/index.jsp(25,32) name = value type = null reqTime = true required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_c_005furl_005f1.setValue("/libs/bootstrap/dist/css/freelancer.css");
    int _jspx_eval_c_005furl_005f1 = _jspx_th_c_005furl_005f1.doStartTag();
    if (_jspx_th_c_005furl_005f1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fc_005furl_0026_005fvalue_005fnobody.reuse(_jspx_th_c_005furl_005f1);
      return true;
    }
    _005fjspx_005ftagPool_005fc_005furl_0026_005fvalue_005fnobody.reuse(_jspx_th_c_005furl_005f1);
    return false;
  }

  private boolean _jspx_meth_c_005furl_005f2(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:url
    org.apache.taglibs.standard.tag.rt.core.UrlTag _jspx_th_c_005furl_005f2 = (org.apache.taglibs.standard.tag.rt.core.UrlTag) _005fjspx_005ftagPool_005fc_005furl_0026_005fvalue_005fnobody.get(org.apache.taglibs.standard.tag.rt.core.UrlTag.class);
    _jspx_th_c_005furl_005f2.setPageContext(_jspx_page_context);
    _jspx_th_c_005furl_005f2.setParent(null);
    // /WEB-INF/pages/enquiry/index.jsp(26,32) name = value type = null reqTime = true required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_c_005furl_005f2.setValue("/libs/bootstrap/dist/css/sb-admin-2.css");
    int _jspx_eval_c_005furl_005f2 = _jspx_th_c_005furl_005f2.doStartTag();
    if (_jspx_th_c_005furl_005f2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fc_005furl_0026_005fvalue_005fnobody.reuse(_jspx_th_c_005furl_005f2);
      return true;
    }
    _005fjspx_005ftagPool_005fc_005furl_0026_005fvalue_005fnobody.reuse(_jspx_th_c_005furl_005f2);
    return false;
  }

  private boolean _jspx_meth_c_005furl_005f3(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:url
    org.apache.taglibs.standard.tag.rt.core.UrlTag _jspx_th_c_005furl_005f3 = (org.apache.taglibs.standard.tag.rt.core.UrlTag) _005fjspx_005ftagPool_005fc_005furl_0026_005fvalue_005fnobody.get(org.apache.taglibs.standard.tag.rt.core.UrlTag.class);
    _jspx_th_c_005furl_005f3.setPageContext(_jspx_page_context);
    _jspx_th_c_005furl_005f3.setParent(null);
    // /WEB-INF/pages/enquiry/index.jsp(61,45) name = value type = null reqTime = true required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_c_005furl_005f3.setValue("/libs/bootstrap/images/graduation.jpg");
    int _jspx_eval_c_005furl_005f3 = _jspx_th_c_005furl_005f3.doStartTag();
    if (_jspx_th_c_005furl_005f3.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fc_005furl_0026_005fvalue_005fnobody.reuse(_jspx_th_c_005furl_005f3);
      return true;
    }
    _005fjspx_005ftagPool_005fc_005furl_0026_005fvalue_005fnobody.reuse(_jspx_th_c_005furl_005f3);
    return false;
  }
}
