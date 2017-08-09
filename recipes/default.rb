powershell_script 'copy_certificates_to_chef_certificates_store' do		
	code <<-EOH
		$ErrorActionPreference = "Stop"
        $TimeZoneId = "#{node['windowstimezone']['timezoneid']}"
        $tzutilPath = Join-Path -Path $env:windir -ChildPath 'system32\\tzutil.exe'
        $CurrentTimeZoneId = &$tzutilPath /s $TimeZoneId
	EOH
	only_if <<-EOH2
		$ErrorActionPreference = "Stop"
        $TimeZoneId = "#{node['windowstimezone']['timezoneid']}"
        $tzutilPath = Join-Path $env:windir 'system32\\tzutil.exe'
        $CurrentTimeZoneId = &$tzutilPath /g
        $TimeZoneMustBeChanged = $TimeZoneId -ne $CurrentTimeZoneId
		
		return $TimeZoneMustBeChanged
	EOH2
end