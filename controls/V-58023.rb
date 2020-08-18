# encoding: UTF-8

control 'V-58023' do
  title "The DBMS must prevent non-privileged users from executing privileged
functions, to include disabling, circumventing, or altering implemented
security safeguards/countermeasures."
  desc  "Preventing non-privileged users from executing privileged functions
mitigates the risk that unauthorized individuals or processes may gain
unnecessary access to information or privileges.

    System documentation should include a definition of the functionality
considered privileged.

    Depending on circumstances, privileged functions can include, for example,
establishing accounts, performing system integrity checks, or administering
cryptographic key management activities. Non-privileged users are individuals
that do not possess appropriate authorizations. Circumventing intrusion
detection and prevention mechanisms or malicious code protection mechanisms are
examples of privileged functions that require protection from non-privileged
users.

    A privileged function in the DBMS/database context is any operation that
modifies the structure of the database, its built-in logic, or its security
settings. This would include all Data Definition Language (DDL) statements and
all security-related statements. In an SQL environment, it encompasses, but is
not necessarily limited to:
    CREATE
    ALTER
    DROP
    GRANT
    REVOKE
    DENY

    There may also be Data Manipulation Language (DML) statements that, subject
to context, should be regarded as privileged. Possible examples include:

    TRUNCATE TABLE;
    DELETE, or
    DELETE affecting more than n rows, for some n, or
    DELETE without a WHERE clause;

    UPDATE or
    UPDATE affecting more than n rows, for some n, or
    UPDATE without a WHERE clause;

    any SELECT, INSERT, UPDATE, or DELETE to an application-defined security
table executed by other than a security principal.

    Depending on the capabilities of the DBMS and the design of the database
and associated applications, the prevention of unauthorized use of privileged
functions may be achieved by means of DBMS security features, database
triggers, other mechanisms, or a combination of these.
  "
  desc  'rationale', ''
  desc  'check', "
    Review the system documentation to obtain the definition of the
database/DBMS functionality considered privileged in the context of the system
in question.

    Review the DBMS security configuration and/or other means used to protect
privileged functionality from unauthorized use.

    If the configuration does not protect all of the actions defined as
privileged, this is a finding.
  "
  desc  'fix', "Configure DBMS security to protect all privileged
functionality."
  impact 0.5
  tag severity: 'medium'
  tag gtitle: 'SRG-APP-000340-DB-000304'
  tag gid: 'V-58023'
  tag rid: 'SV-72453r1_rule'
  tag stig_id: 'SRG-APP-000340-DB-000304'
  tag fix_id: 'F-63231r1_fix'
  tag cci: ['CCI-002235']
  tag nist: ['AC-6 (10)']
end
