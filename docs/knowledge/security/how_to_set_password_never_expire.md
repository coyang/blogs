# How to Set Password to NEVER Expire

To set a user's password to never expire on a Linux system, you need to use the
`chage` command or modify the user's password aging settings in the
`/etc/shadow` file. Here are two methods to achieve this:

## Method 1: Using the `chage` Command

1. Open a terminal window.

2. Run the following command to set a user's password to never expire, replacing
   `<username>` with the actual username of the user you want to modify:

```bash
[root@fedora blogs]# chage -l <username>
Last password change                                    : Sep 10, 2023
Password expires                                        : Dec 09, 2023
Password inactive                                       : never
Account expires                                         : never
Minimum number of days between password change          : 0
Maximum number of days between password change          : 90
Number of days of warning before password expires       : 14
[root@fedora blogs]# chage -I -1 -m 0 -M 99999 -E -1  <username>
[root@fedora blogs]# chage -l <username>
Last password change                                    : Sep 10, 2023
Password expires                                        : never
Password inactive                                       : never
Account expires                                         : never
Minimum number of days between password change          : 0
Maximum number of days between password change          : 99999
Number of days of warning before password expires       : 14
```

This command will display the user's password aging information, including the
password expiration date, which should now show "Never."

## Method 2: Modifying the `/etc/shadow` File

1. Open a terminal window.

2. Edit the `/etc/shadow` file using a text editor like `sudo nano` or `sudo
   vim`. For example:

   ```bash
   sudo vi /etc/shadow
   ```

3. Locate the line that corresponds to the user whose password you want to make
   never expire. The `/etc/shadow` file has fields separated by colons (`:`),
   and the field you're interested in is the one that controls password
   expiration. It's typically the second field.

4. Modify the second field to set the password to never expire. This means
   removing any value from this field. For example, change:

   ```log
   username:$6$randomstring:18576:0:99999:7:::
   ```

   to:

   ```log
   username::18576:0:99999:7:::
   ```

   Note that you may need to use a different field format based on your system's
   configuration, but removing the value between the first and second colons
   usually signifies a password that never expires.

5. Save the changes and exit the text editor.

6. Verify that the changes have been applied by running the following command:

   ```bash
   sudo chage -l <username>
   ```

   The password expiration date should now show "Never."

Remember to use these methods responsibly, as setting passwords to never expire
can pose a security risk if not managed carefully. Always consider alternative
security measures like strong password policies and multi-factor authentication
to enhance system security.
