maintainer          "LabKey"
maintainer_email    "cookbooks@labkey.com"
license             "Apache 2.0"
name                "build-essential"
description         "Install GCC and other development tools"
version             "0.0.1"

%w{ ubuntu debian }.each do |os|
    supports os
end
