maintainer          "LabKey"
maintainer_email    "cookbooks@labkey.com"
license             "Apache 2.0"
name                "tomcat"
description         "Install and configure Tomcat for use with LabKey Server"
version             "0.0.1"

%w{ ubuntu debian }.each do |os|
    supports os
end
