# encoding: UTF-8

control 'V-32373' do
  title "The DBMS must produce audit records containing sufficient information
to establish the outcome (success or failure) of the events."
  desc  "Information system auditing capability is critical for accurate
forensic analysis. Without information about the outcome of events, security
personnel cannot make an accurate assessment as to whether an attack was
successful or if changes were made to the security state of the system.

    Event outcomes can include indicators of event success or failure and
event-specific results (e.g., the security state of the information system
after the event occurred). As such, they also provide a means to measure the
impact of an event and help authorized personnel to determine the appropriate
response.
  "
  desc  'rationale', ''
  desc  'check', "
    Check DBMS settings and existing audit records to verify information
specific to the outcome of the event is being captured and stored with the
audit records.

    If audit records exist without the outcome of the event that occurred, this
is a finding.
  "
  desc  'fix', "Configure DBMS audit settings to include the outcome of the
event as part of the audit record."
  impact 0.5
  tag severity: 'medium'
  tag gtitle: 'SRG-APP-000099-DB-000043'
  tag gid: 'V-32373'
  tag rid: 'SV-42710r3_rule'
  tag stig_id: 'SRG-APP-000099-DB-000043'
  tag fix_id: 'F-36287r2_fix'
  tag cci: ['CCI-000134']
  tag nist: ['AU-3']
end
