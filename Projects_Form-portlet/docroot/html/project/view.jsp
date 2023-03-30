<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="p"%>

<p:defineObjects />

This is the <b>Project</b> portlet in View mode.
<br>
<p:renderURL var="update">
						      <p:param name="name" value="vinit"></p:param>
							<p:param name="jspPage" value="/html/project/PrepareToQuote.jsp"></p:param>
						</p:renderURL> <a type="button" href="${update}"
						class="btn btn-sm btn-warning">page</a>