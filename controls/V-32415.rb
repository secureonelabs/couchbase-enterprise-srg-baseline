# encoding: UTF-8

control 'V-32415' do
  title "The DBMS must limit privileges to change software modules, to include
stored procedures, functions and triggers, and links to software external to
the DBMS."
  desc  "If the system were to allow any user to make changes to software
libraries, then those changes might be implemented without undergoing the
appropriate testing and approvals that are part of a robust change management
process.

    Accordingly, only qualified and authorized individuals shall be allowed to
obtain access to information system components for purposes of initiating
changes, including upgrades and modifications.

    Unmanaged changes that occur to the database software libraries or
configuration can lead to unauthorized or compromised installations.
  "
  desc  'rationale', ''
  desc  'check', "
    Review monitoring procedures and implementation evidence to verify
monitoring of changes to database software libraries, related applications, and
configuration files is done.

    Verify the list of files, directories, and database application objects
(procedures, functions, and triggers) being monitored is complete.

    If monitoring does not occur or is not complete, this is a finding.
  "
  desc  'fix', "
    Implement procedures to monitor for unauthorized changes to DBMS software
libraries, related software application libraries, and configuration files. If
a third-party automated tool is not employed, an automated job that reports
file information on the directories and files of interest and compares them to
the baseline report for the same will meet the requirement.

    Use file hashes or checksums for comparisons, as file dates may be
manipulated by malicious users.
  "
  impact 0.5
  tag severity: 'medium'
  tag gtitle: 'SRG-APP-000133-DB-000179'
  tag gid: 'V-32415'
  tag rid: 'SV-42752r3_rule'
  tag stig_id: 'SRG-APP-000133-DB-000179'
  tag fix_id: 'F-36330r2_fix'
  tag cci: ['CCI-001499']
  tag nist: ['CM-5 (6)']
end
