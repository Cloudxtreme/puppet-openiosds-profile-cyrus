# Install unstable repository
(
cat <<EOF
[openio-sds-unstable-common]
name=OpenIO SDS unstable packages for Enterprise Linux 7 - x86_64
baseurl=http://mirror.openio.io/pub/repo/unstable/openio/sds/centos/7/common/x86_64
enabled=1
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-OPENIO-0
EOF
) >/etc/yum.repos.d/openio-sds-unstable.repo
yum clean all
yum install openio-sds-mod-httpd-test201507171422.master openio-sds-mod-snmp-test201507171422.master openio-sds-common-test201507171422.master openio-sds-server-test201507171422.master
