# I tried to simplest way to start all TC services and oracle at one place
# List of services which needs to be stated
param ($option)
$services = @('OracleServiceTC','OracleOraDB19Home1TNSListener','Teamcenter FSC Service FSC_<MACHINE_NAME>_<user>','Teamcenter Process Manager',
'Teamcenter Server Manager config1_PoolA','tomcat8')

switch( $services )
{
    Default
    {	if($option -eq "Stop")
	{
		Stop-Service -Name $services
	}
	elseif($option -eq "Start")	
	{
		Start-Service -Name $services
	}
	else
	{
		Write-Host "Option is mandatory, please pass -option start or stop"
	}
    }
}
