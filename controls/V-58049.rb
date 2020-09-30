		# encoding: UTF-8

	control "V-58049" do
	title "The Couchbase must utilize centralized management of the content
	captured in audit records generated by all components of the Couchbase."

	desc  "Without the ability to centrally manage the content captured in the
	audit records, identification, troubleshooting, and correlation of suspicious
	behavior would be difficult and could lead to a delayed or incomplete analysis
	of an ongoing attack.

	The content captured in audit records must be managed from a central
	location (necessitating automation). Centralized management of audit records
	and logs provides for efficiency in maintenance and management of records, as
	well as the backup and archiving of those records.

	Couchbase may write audit records to database tables, to files in the file
	system, to other kinds of local repository, or directly to a centralized log
	management system. Whatever the method used, it must be compatible with
	off-loading the records to the centralized system.
	  "
	desc  "check", "
	  Review system documentation to determine the data and the actions on data
	  that need to be protected from repudiation by means of audit trails.
	  When enabled, Couchbase can identify a unique user for each record.
	  As the Full Admin, verify that auditing is enabled by executing the following command:
	  $ curl -v -X GET -u <Full Admin>:<Password> http://<host>:<port>/settings/audit
	  Verify from the output that \"auditEnabled\" is set to \"true\". If  \"auditEnabled\" 
	  is not set to \"true\", this is finding."

	desc  "fix", "
	Configure and/or deploy software tools to ensure Couchbase audit records
	are written directly to or systematically transferred to a centralized log
	management system.
	Couchbase Server 6.5.0 and earlier -
	As the Full Admin, execute the following command to enable auditing:
	$ couchbase-cli setting-audit --cluster <host>:<port> --u <Full Admin>
	--password <Password> --audit-enabled 1 --audit-log-rotate-interval 604800
	--audit-log-path /opt/couchbase/var/lib/couchbase/logs
	Couchbase Server Version 6.5.1 and later -
	As the Full Admin, execute the following command to enable auditing:
	$ couchbase-cli setting-audit --cluster <host>:<port> --u <Full Admin>
	--password <Password> --set  --audit-enabled 1 --audit-log-rotate-interval
	604800 --audit-log-path /opt/couchbase/var/lib/couchbase/logs"

	impact 0.5
	tag "severity": "medium"
	tag "gtitle": "SRG-APP-000356-DB-000314"
	tag "gid": "V-58049"
	tag "rid": "SV-72479r1_rule"
	tag "stig_id": "SRG-APP-000356-DB-000314"
	tag "fix_id": "F-63257r1_fix"
	tag "cci": ["CCI-001844"]
	tag "nist": ["AU-3 (2)", "Rev_4"]

  describe "Couchbase log auditing should be enabled." do
    subject { json( command: "curl -v -X GET -u #{input('cb_full_admin')}:#{input('cb_full_admin_password')} \
    http://#{input('cb_cluster_host')}:#{input('cb_cluster_port')}/settings/audit") }
    its('auditdEnabled') { should eq true }
  end 
end
