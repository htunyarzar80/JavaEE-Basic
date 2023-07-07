 
 <%@ taglib uri="jakarta.tags.core" prefix="c" %>
 <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container">
                <a class="navbar-brand" href="#result"><img id="logo" src="assets/fblogo.jpg" alt="logo"/> HMI</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="#result">Home</a></li>
                       
                        <c:if test="${user.role == 'admin' }">
                         
                         <li class="nav-item"><a class="nav-link" href="result?mode=PAGE">AddResult</a></li>
                         
                        </c:if>
                        
                        
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">${user.username }</a>
                            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#">Action</a></li>
                                <li><a class="dropdown-item" href="#">Another action</a></li>
                                <li><hr class="dropdown-divider" /></li>
                                <li><a class="dropdown-item" href="Logout">Logout</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
            </nav>