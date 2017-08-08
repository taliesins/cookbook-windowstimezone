powershell_script 'copy_certificates_to_chef_certificates_store' do		
	code <<-EOH
        $TimeZoneId = "#{node['windowstimezone']['timezoneid']}"
        $tzutilPath = join-path $env:windir 'system32\tzutil'
        $CurrentTimeZoneId = &$tzutilPath /s $TimeZoneId
	EOH
	only_if <<-EOH2
        $TimeZoneId = "#{node['windowstimezone']['timezoneid']}"
        $tzutilPath = join-path $env:windir 'system32\tzutil'
        $CurrentTimeZoneId = &$tzutilPath /g
        $TimeZoneMustBeChanged = $TimeZoneId -ne $CurrentTimeZoneId
		
		return $TimeZoneMustBeChanged
	EOH2
end