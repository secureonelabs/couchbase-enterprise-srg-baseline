# encoding: UTF-8

control 'V-32393' do
  title "The audit information produced by the DBMS must be protected from
unauthorized read access."
  desc  "If audit data were to become compromised, then competent forensic
analysis and discovery of the true source of potentially malicious system
activity is difficult, if not impossible, to achieve. In addition, access to
audit records provides information an attacker could potentially use to his or
her advantage.

    To ensure the veracity of audit data, the information system and/or the
application must protect audit information from any and all unauthorized
access. This includes read, write, copy, etc.

    This requirement can be achieved through multiple methods which will depend
upon system architecture and design. Some commonly employed methods include
ensuring log files enjoy the proper file system permissions utilizing file
system protections and limiting log data location.

    Additionally, applications with user interfaces to audit records should not
allow for the unfettered manipulation of or access to those records via the
application. If the application provides access to the audit data, the
application becomes accountable for ensuring that audit information is
protected from unauthorized access.

    Audit information includes all information (e.g., audit records, audit
settings, and audit reports) needed to successfully audit information system
activity.
  "
  desc  'rationale', ''
  desc  'check', "
    Review locations of audit logs, both internal to the database and database
audit logs located at the operating system level.

    Verify there are appropriate controls and permissions to protect the audit
information from unauthorized access.

    If appropriate controls and permissions do not exist, this is a finding.
  "
  desc  'fix', "Apply controls and modify permissions to protect database audit
log data from unauthorized access, whether stored in the database itself or at
the OS level."
  impact 0.5
  tag severity: 'medium'
  tag gtitle: 'SRG-APP-000118-DB-000059'
  tag gid: 'V-32393'
  tag rid: 'SV-42730r3_rule'
  tag stig_id: 'SRG-APP-000118-DB-000059'
  tag fix_id: 'F-36308r2_fix'
  tag cci: ['CCI-000162']
  tag nist: ['AU-9']
end
