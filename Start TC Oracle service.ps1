# I tried to simplest way to start all TC services and oracle at one place
# List of services which needs to be stated
$services = @('OracleServiceTC','OracleOraDB19Home1TNSListener','Teamcenter FSC Service FSC_<MACHINE_NAME>_<user>','Teamcenter Process Manager',
'Teamcenter Server Manager config1_PoolA')

switch( $services )
{
    Default
    {
        Start-Service -Name $services
    }
}

#Start tomcat in invisible mode
Start-Process -FilePath "D:\_my\apps\apache-tomcat-8.5.69\bin\startup.bat" -WindowStyle Hidden
