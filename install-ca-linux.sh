#! /bin/bash
echo "This will fail if not ran with SUDO"
mkdir /usr/local/share/ca-certificates/mach
cat >> /usr/local/share/ca-certificates/mach/mach.crt << __END
-----BEGIN CERTIFICATE-----
MIIFxjCCA66gAwIBAgIBATANBgkqhkiG9w0BAQsFADB0MQswCQYDVQQGEwJQSDEL
MAkGA1UECAwCUEgxDzANBgNVBAcMBk1hbmlsYTENMAsGA1UECgwETUFDSDETMBEG
A1UECwwKT3BlcmF0aW9uczEjMCEGA1UEAwwaTUFDSCBDZXJ0aWZpY2F0ZSBBdXRo
b3JpdHkwHhcNMTcxMDIyMjM0NzI3WhcNMjcxMDIyMjM0NzI3WjB0MQswCQYDVQQG
EwJQSDELMAkGA1UECAwCUEgxDzANBgNVBAcMBk1hbmlsYTENMAsGA1UECgwETUFD
SDETMBEGA1UECwwKT3BlcmF0aW9uczEjMCEGA1UEAwwaTUFDSCBDZXJ0aWZpY2F0
ZSBBdXRob3JpdHkwggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQCm4GW/
R/K9xidTNA3/1xTutIIcGsbRXQ1vSfB8C9BrqxsUGhKVmdiYKX5Q/Nb6V/TGh8hd
ltjlqmGrzgSZ0TZC2D7Og2JL0YLbwmUP1sXaV/y+nyIQRpNpJ6aKTUSj5J+Ak33l
IdODfgXSOvd4doXH4NdOdV84fEg2L82zNUq27EuvmVGAXcZl67f1O46ZAE0nWifZ
Bpv4q58E5UbmTEtaJ0mJGqYVAz0UkwKwcUnK5zyEdEG/t10bvU6rgiHmtIuju2PF
AlrQTxu3mea3OfdDolI8b9nz7GDfDIQrKPmDrmTkknA/dc7rjTO4SgbXFRboUIX1
xWDBvp8uNVMmPZqJurukgWwOfA41s/dtxUTeO2mwdvITz4zX88HXUB1v/HBi8/Uq
F2Hs+gEVJPlEWL0BuN5U/WbPifxmngDDVx4ms9Z5Km3Xi2wzLQFQTmPhalzi11/a
6/8nw9Hm4dEIBOTK2eEwRHxcE/mf+Oag4OVfd216/+faHIVZFLkOHik0nHsFdJSm
FPRCduWPhJ1+FhjsLpxIPQbbbXhsiEfecieTge/QBFtbbBtzuHqaxo5CpLatsP8C
2r1kLDYO3zhqvUr7Fj2I6+qWHBIdP69GyS9RJmOLfwmf/CU03bIaBNTQqKZ1ifxX
pof7YlbSHzVc8KjdB/aspW2bSn8JbnS1WRx0kwIDAQABo2MwYTAOBgNVHQ8BAf8E
BAMCAQYwDwYDVR0TAQH/BAUwAwEB/zAdBgNVHQ4EFgQUJuEFnrGjbSyKIbPXa+pR
rn09sLgwHwYDVR0jBBgwFoAUJuEFnrGjbSyKIbPXa+pRrn09sLgwDQYJKoZIhvcN
AQELBQADggIBABrRSJm0SOaaOrx2eupq7tVp8BrIMCbstsscstvO880Tlbrw+DQ0
Wf+wAYAglyIlj5kAobCuOoolXHxFhg/0FtEyRSzivQfmlLClRSd4dvlLwfaPQFh/
oa15jOgJprnxRLFZBO0eANGJKEeRUY3rlQsOkvHHipKThcPo9RnjZFWvehLNFDBr
ZvTT00zS21X6cbNCh/ZzazMcF/zotFJ+aFTxJo9VZWJbjXlRQnyoVTxvBhQgBI7s
lQZLU7X9Ny8E9hfSV2hAm0ElW5FqstO28ntihkaSKeV8+Fg8GLNRRxvdRl3rHIyY
lu0GO0rfqZDo0l0i6PLrvVRnJ9M7JkdZPpG7kNfLn6BS1BleHK0uNTI04ha++HZK
QbmltwfC8Q6JwM9Ge/RSOeyKVEwnIic04rznz67crsHy2oLo2oWjJ5MdsZcWlLXn
EU8K6RYsp1vKcgX9cvboO/Y4CEdBdkfHzrBYNKc7u1myE089OiPw4K32kbotBt4M
jgIVBI/CQjKEzd9DANtXuZJ7j7AbfM4gxHRjD6ubpwL6AOTAWUygQwd3Dt4imy1r
d8ygqRbvtgsNdjdZn2iKQx04KByr+zwyz7K4jOFiZCcOuuCicNO5VKkh8SWqRwv8
BWtN9B2Kl0L8sCSsyaw3kewCSogo1pkQMOSA1GWC1a3gFSxa5fVjYmql
-----END CERTIFICATE-----
__END
chmod 755 /usr/local/share/ca-certificates/mach
chmod 644 /usr/local/share/ca-certificates/mach/mach.crt
sudo update-ca-certificates

echo "Done!"
