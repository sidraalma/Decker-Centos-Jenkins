systemctl daemon-reload 
systemctl jenkins start &&\
systemctl enable jenkin &&\
systemctl jenkins status 
#password
cat /var/lib/jenkins/secrets/initialAdminPassword