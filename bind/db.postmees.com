$TTL	604800
@	IN	SOA	web.postmees.com. admin.postmees.com. (
				3	; Serial
			604800		; Refresh
			86400		; Retry
			2419200		; Expire
			604800 )	; Negative Cache TTL
;
@	IN	NS	web.postmees.com.
web	IN	A	192.168.56.10
@	IN	A	192.168.56.10
