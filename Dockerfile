FROM nginx:latest

COPY nginx.conf /etc/nginx/nginx.conf
COPY _DS_Store /opt/proBook-front-end/
COPY index.html /opt/proBook-front-end/
COPY add_type.html /opt/proBook-front-end/
COPY add_bookmark2.html /opt/proBook-front-end/
COPY view_bookmark2.html /opt/proBook-front-end/
COPY view_type2.html /opt/proBook-front-end/
COPY jquery-3.3.1.min.js /opt/proBook-front-end/
COPY main.css /opt/proBook-front-end/
COPY main.js /opt/proBook-front-end/

COPY bootstrap /opt/proBook-front-end/bootstrap/
COPY images /opt/proBook-front-end/images/
COPY scripts /opt/proBook-front-end/scripts/
COPY styles /opt/proBook-front-end/styles/
COPY unused /opt/proBook-front-end/unused/