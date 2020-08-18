# encoding: UTF-8

control 'V-32398' do
  title "The DBMS must protect its audit configuration from unauthorized
modification."
  desc  "Protecting audit data also includes identifying and protecting the
tools used to view and manipulate log data. Therefore, protecting audit tools
is necessary to prevent unauthorized operation on audit data.

    Applications providing tools to interface with audit data will leverage
user permissions and roles identifying the user accessing the tools and the
corresponding rights the user enjoys in order make access decisions regarding
the modification of audit tools.

    Audit tools include, but are not limited to, vendor-provided and open
source audit tools needed to successfully view and manipulate audit information
system activity and records. Audit tools include custom queries and report
generators.
  "
  desc  'rationale', ''
  desc  'check', "
    Review the access permissions to tools used to view or modify audit log
data. These tools may include features within the DBMS itself or software
external to the database.

    If appropriate permissions and access controls to prevent unauthorized
configuration are not applied to these tools, this is a finding.
  "
  desc  'fix', "Apply or modify access controls and permissions (both within
the DBMS and in the file system/operating system) to tools used to view or
modify audit log data. Tools must be configurable by authorized personnel only."
  impact 0.5
  tag severity: 'medium'
  tag gtitle: 'SRG-APP-000122-DB-000203'
  tag gid: 'V-32398'
  tag rid: 'SV-42735r3_rule'
  tag stig_id: 'SRG-APP-000122-DB-000203'
  tag fix_id: 'F-36312r2_fix'
  tag cci: ['CCI-001494']
  tag nist: ['AU-9']
end
