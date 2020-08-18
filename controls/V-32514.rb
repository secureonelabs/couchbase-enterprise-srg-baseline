# encoding: UTF-8

control 'V-32514' do
  title "The DBMS must separate user functionality (including user interface
services) from database management functionality."
  desc  "Information system management functionality includes functions
necessary to administer databases, network components, workstations, or servers
and typically requires privileged user access.

    The separation of user functionality from information system management
functionality is either physical or logical and is accomplished by using
different computers, different central processing units, different instances of
the operating system, different network addresses, combinations of these
methods, or other methods, as appropriate.

    An example of this type of separation is observed in web administrative
interfaces that use separate authentication methods for users of any other
information system resources.

    This may include isolating the administrative interface on a different
domain and with additional access controls.

    If administrative functionality or information regarding DBMS management is
presented on an interface available for users, information on DBMS settings may
be inadvertently made available to the user.
  "
  desc  'rationale', ''
  desc  'check', "
    Check DBMS settings and vendor documentation to verify that administrative
functionality is separate from user functionality.

    If administrator and general user functionality are not separated either
physically or logically, this is a finding.
  "
  desc  'fix', "Configure DBMS to separate database administration and general
user functionality."
  impact 0.5
  tag severity: 'medium'
  tag gtitle: 'SRG-APP-000211-DB-000122'
  tag gid: 'V-32514'
  tag rid: 'SV-42851r3_rule'
  tag stig_id: 'SRG-APP-000211-DB-000122'
  tag fix_id: 'F-36429r2_fix'
  tag cci: ['CCI-001082']
  tag nist: ['SC-2']
end
