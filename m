Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0362F3BDD2C
	for <lists+linux-man@lfdr.de>; Tue,  6 Jul 2021 20:29:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231254AbhGFSbH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 6 Jul 2021 14:31:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57526 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231252AbhGFSbH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 6 Jul 2021 14:31:07 -0400
X-Greylist: delayed 317 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 06 Jul 2021 11:28:28 PDT
Received: from smtp-190d.mail.infomaniak.ch (smtp-190d.mail.infomaniak.ch [IPv6:2001:1600:3:17::190d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9AD0AC061574
        for <linux-man@vger.kernel.org>; Tue,  6 Jul 2021 11:28:28 -0700 (PDT)
Received: from smtp-3-0000.mail.infomaniak.ch (unknown [10.4.36.107])
        by smtp-2-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4GK9sS3RcVzMqGqs;
        Tue,  6 Jul 2021 20:23:08 +0200 (CEST)
Received: from localhost (unknown [23.97.221.149])
        by smtp-3-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4GK9sS10Nyzlh8T3;
        Tue,  6 Jul 2021 20:23:08 +0200 (CEST)
From:   =?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     =?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>,
        Jann Horn <jannh@google.com>, Jonathan Corbet <corbet@lwn.net>,
        Kees Cook <keescook@chromium.org>,
        Randy Dunlap <rdunlap@infradead.org>,
        Vincent Dagonneau <vincent.dagonneau@ssi.gouv.fr>,
        landlock@lists.linux.dev, linux-kernel@vger.kernel.org,
        linux-man@vger.kernel.org, linux-security-module@vger.kernel.org,
        =?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@linux.microsoft.com>
Subject: [PATCH v1 1/4] landlock.7: Add a new page to introduce Landlock
Date:   Tue,  6 Jul 2021 20:22:14 +0200
Message-Id: <20210706182217.32338-2-mic@digikod.net>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210706182217.32338-1-mic@digikod.net>
References: <20210706182217.32338-1-mic@digikod.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Mickaël Salaün <mic@linux.microsoft.com>

From the user point of view, Landlock is a set of system calls enabling
to build and enforce a set of access-control rules.  A ruleset can be
created with landlock_create_ruleset(2), populated with
landlock_add_rule(2) and enforced with landlock_restrict_self(2).  This
man page gives an overview of the whole mechanism.  Details of these
system calls are documented in their respective man pages.

This is an adaptation of
https://www.kernel.org/doc/html/v5.13/userspace-api/landlock.html

Signed-off-by: Mickaël Salaün <mic@linux.microsoft.com>
Link: https://lore.kernel.org/r/20210706182217.32338-2-mic@digikod.net
---
 man7/landlock.7 | 354 ++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 354 insertions(+)
 create mode 100644 man7/landlock.7

diff --git a/man7/landlock.7 b/man7/landlock.7
new file mode 100644
index 000000000000..32127d3b2061
--- /dev/null
+++ b/man7/landlock.7
@@ -0,0 +1,354 @@
+.\" Copyright © 2017-2020 Mickaël Salaün <mic@digikod.net>
+.\" Copyright © 2019-2020 ANSSI
+.\" Copyright © 2021 Microsoft Corporation
+.\"
+.\" %%%LICENSE_START(VERBATIM)
+.\" Permission is granted to make and distribute verbatim copies of this
+.\" manual provided the copyright notice and this permission notice are
+.\" preserved on all copies.
+.\"
+.\" Permission is granted to copy and distribute modified versions of this
+.\" manual under the conditions for verbatim copying, provided that the
+.\" entire resulting derived work is distributed under the terms of a
+.\" permission notice identical to this one.
+.\"
+.\" Since the Linux kernel and libraries are constantly changing, this
+.\" manual page may be incorrect or out-of-date.  The author(s) assume no
+.\" responsibility for errors or omissions, or for damages resulting from
+.\" the use of the information contained herein.  The author(s) may not
+.\" have taken the same level of care in the production of this manual,
+.\" which is licensed free of charge, as they might when working
+.\" professionally.
+.\"
+.\" Formatted or processed versions of this manual, if unaccompanied by
+.\" the source, must acknowledge the copyright and authors of this work.
+.\" %%%LICENSE_END
+.\"
+.TH LANDLOCK 7 2021-06-27 Linux "Linux Programmer's Manual"
+.SH NAME
+Landlock \- security sandboxing
+.SH DESCRIPTION
+Landlock is a sandboxing mechanism that enables any processes to securely
+restrict themselves and their future children.
+Because Landlock is a stackable LSM, it makes possible to create safe
+security sandboxes as new security layers in addition to the existing
+system-wide access-controls.  This kind of sandbox is expected to help
+mitigate the security impact of bugs, and unexpected or malicious behaviors
+in applications.
+.PP
+A Landlock security policy is a set of access rights (e.g., open a file in
+read-only, make a directory, etc.) tied to a file hierarchy.  Such policy
+can be configured and enforced by processes for themselves using three
+system calls:
+.IP \(bu 2
+.BR landlock_create_ruleset (2)
+creates a new ruleset;
+.IP \(bu
+.BR landlock_add_rule (2)
+adds a new rule to a ruleset;
+.IP \(bu
+.BR landlock_restrict_self (2)
+enforces a ruleset on the calling thread.
+.PP
+To be able to use these system calls, the running kernel must support
+Landlock and it must be enabled at boot time.
+.\"
+.SS Landlock rules
+A Landlock rule describes an action on an object.  An object is currently a
+file hierarchy, and the related filesystem actions are defined with access
+rights (see
+.BR landlock_add_rule (2)
+).  A set of rules is aggregated in a ruleset, which can
+then restrict the thread enforcing it, and its future children.
+.\"
+.SS Defining and enforcing a security policy
+We first need to create the ruleset that will contain our rules.  For this
+example, the ruleset will contain rules that only allow read actions, but
+write actions will be denied.  The ruleset then needs to handle both of
+these kind of actions.  See below for the description of filesystem
+actions.
+.PP
+.in +4n
+.EX
+int ruleset_fd;
+struct landlock_ruleset_attr ruleset_attr = {
+    .handled_access_fs =
+        LANDLOCK_ACCESS_FS_EXECUTE |
+        LANDLOCK_ACCESS_FS_WRITE_FILE |
+        LANDLOCK_ACCESS_FS_READ_FILE |
+        LANDLOCK_ACCESS_FS_READ_DIR |
+        LANDLOCK_ACCESS_FS_REMOVE_DIR |
+        LANDLOCK_ACCESS_FS_REMOVE_FILE |
+        LANDLOCK_ACCESS_FS_MAKE_CHAR |
+        LANDLOCK_ACCESS_FS_MAKE_DIR |
+        LANDLOCK_ACCESS_FS_MAKE_REG |
+        LANDLOCK_ACCESS_FS_MAKE_SOCK |
+        LANDLOCK_ACCESS_FS_MAKE_FIFO |
+        LANDLOCK_ACCESS_FS_MAKE_BLOCK |
+        LANDLOCK_ACCESS_FS_MAKE_SYM,
+};
+
+ruleset_fd = landlock_create_ruleset(&ruleset_attr, sizeof(ruleset_attr), 0);
+if (ruleset_fd < 0) {
+    perror("Failed to create a ruleset");
+    return 1;
+}
+.EE
+.in
+.PP
+We can now add a new rule to this ruleset thanks to the returned file
+descriptor referring to this ruleset.  The rule will only allow reading the
+file hierarchy
+.I /usr
+\&.  Without another rule, write actions would then be denied by the
+ruleset.  To add
+.I /usr
+to the ruleset, we open it with the
+.I O_PATH
+flag and fill the
+.I struct landlock_path_beneath_attr
+with this file descriptor.
+.PP
+.in +4n
+.EX
+int err;
+struct landlock_path_beneath_attr path_beneath = {
+    .allowed_access =
+        LANDLOCK_ACCESS_FS_EXECUTE |
+        LANDLOCK_ACCESS_FS_READ_FILE |
+        LANDLOCK_ACCESS_FS_READ_DIR,
+};
+
+path_beneath.parent_fd = open("/usr", O_PATH | O_CLOEXEC);
+if (path_beneath.parent_fd < 0) {
+    perror("Failed to open file");
+    close(ruleset_fd);
+    return 1;
+}
+err = landlock_add_rule(ruleset_fd, LANDLOCK_RULE_PATH_BENEATH,
+                        &path_beneath, 0);
+close(path_beneath.parent_fd);
+if (err) {
+    perror("Failed to update ruleset");
+    close(ruleset_fd);
+    return 1;
+}
+.EE
+.in
+.PP
+We now have a ruleset with one rule allowing read access to
+.I /usr
+while denying all other handled accesses for the filesystem.  The next step
+is to restrict the current thread from gaining more privileges (e.g.,
+thanks to a set-user-ID binary).
+.PP
+.in +4n
+.EX
+if (prctl(PR_SET_NO_NEW_PRIVS, 1, 0, 0, 0)) {
+    perror("Failed to restrict privileges");
+    close(ruleset_fd);
+    return 1;
+}
+.EE
+.in
+.PP
+The current thread is now ready to sandbox itself with the ruleset.
+.PP
+.in +4n
+.EX
+if (landlock_restrict_self(ruleset_fd, 0)) {
+    perror("Failed to enforce ruleset");
+    close(ruleset_fd);
+    return 1;
+}
+close(ruleset_fd);
+.EE
+.in
+.PP
+If the
+.BR landlock_restrict_self (2)
+system call succeeds, the current thread is now restricted and this policy
+will be enforced on all its subsequently created children as well.  Once a
+thread is landlocked, there is no way to remove its security policy; only
+adding more restrictions is allowed.  These threads are now in a new
+Landlock domain, merge of their parent one (if any) with the new ruleset.
+.PP
+Full working code can be found in
+.UR https://git.kernel.org\:/pub\:/scm\:/linux\:/kernel\:/git\:/stable\:/linux.git\:/tree\:/samples\:/landlock\:/sandboxer.c
+.UE
+.\"
+.SS Filesystem actions
+These flags enable to restrict a sandboxed process to a set of actions on
+files and directories.  Files or directories opened before the sandboxing
+are not subject to these restrictions.  See
+.BR landlock_add_rule (2)
+and
+.BR landlock_create_ruleset (2)
+for more context.
+.PP
+A file can only receive these access rights:
+.TP
+.BR LANDLOCK_ACCESS_FS_EXECUTE
+Execute a file.
+.TP
+.BR LANDLOCK_ACCESS_FS_WRITE_FILE
+Open a file with write access.
+.TP
+.BR LANDLOCK_ACCESS_FS_READ_FILE
+Open a file with read access.
+.PP
+A directory can receive access rights related to files or directories.  The
+following access right is applied to the directory itself, and the
+directories beneath it:
+.TP
+.BR LANDLOCK_ACCESS_FS_READ_DIR
+Open a directory or list its content.
+.PP
+However, the following access rights only apply to the content of a
+directory, not the directory itself:
+.TP
+.BR LANDLOCK_ACCESS_FS_REMOVE_DIR
+Remove an empty directory or rename one.
+.TP
+.BR LANDLOCK_ACCESS_FS_REMOVE_FILE
+Unlink (or rename) a file.
+.TP
+.BR LANDLOCK_ACCESS_FS_MAKE_CHAR
+Create (or rename or link) a character device.
+.TP
+.BR LANDLOCK_ACCESS_FS_MAKE_DIR
+Create (or rename) a directory.
+.TP
+.BR LANDLOCK_ACCESS_FS_MAKE_REG
+Create (or rename or link) a regular file.
+.TP
+.BR LANDLOCK_ACCESS_FS_MAKE_SOCK
+Create (or rename or link) a UNIX domain socket.
+.TP
+.BR LANDLOCK_ACCESS_FS_MAKE_FIFO
+Create (or rename or link) a named pipe.
+.TP
+.BR LANDLOCK_ACCESS_FS_MAKE_BLOCK
+Create (or rename or link) a block device.
+.TP
+.BR LANDLOCK_ACCESS_FS_MAKE_SYM
+Create (or rename or link) a symbolic link.
+.\"
+.SS Layers of file path access rights
+Each time a thread enforces a ruleset on itself, it updates its Landlock
+domain with a new layer of policy.  Indeed, this complementary policy is
+composed with the potentially other rulesets already restricting this
+thread.  A sandboxed thread can then safely add more constraints to itself
+with a new enforced ruleset.
+.PP
+One policy layer grants access to a file path if at least one of its rules
+encountered on the path grants the access.  A sandboxed thread can only
+access a file path if all its enforced policy layers grant the access as
+well as all the other system access controls (e.g., filesystem DAC, other
+LSM policies, etc.).
+.\"
+.SS Bind mounts and OverlayFS
+Landlock enables restricting access to file hierarchies, which means that
+these access rights can be propagated with bind mounts (cf.
+.BR mount_namespaces (7)
+) but not with OverlayFS.
+.PP
+A bind mount mirrors a source file hierarchy to a destination.  The
+destination hierarchy is then composed of the exact same files, on which
+Landlock rules can be tied, either via the source or the destination path.
+These rules restrict access when they are encountered on a path, which
+means that they can restrict access to multiple file hierarchies at the
+same time, whether these hierarchies are the result of bind mounts or not.
+.PP
+An OverlayFS mount point consists of upper and lower layers.  These layers
+are combined in a merge directory, result of the mount point.  This merge
+hierarchy may include files from the upper and lower layers, but
+modifications performed on the merge hierarchy only reflects on the upper
+layer.  From a Landlock policy point of view, each OverlayFS layers and
+merge hierarchies are standalone and contains their own set of files and
+directories, which is different from bind mounts.  A policy restricting an
+OverlayFS layer will not restrict the resulted merged hierarchy, and vice
+versa.  Landlock users should then only think about file hierarchies they
+want to allow access to, regardless of the underlying filesystem.
+.\"
+.SS Inheritance
+Every new thread resulting from a
+.BR clone (2)
+inherits Landlock domain restrictions from its parent.  This is similar to
+the
+.BR seccomp (2)
+inheritance or any other LSM dealing with task's
+.BR credentials (7)
+\&.  For instance, one process's thread may apply Landlock rules to itself,
+but they will not be automatically applied to other sibling threads (unlike
+POSIX thread credential changes, cf.
+.BR nptl (7)
+).
+.PP
+When a thread sandboxes itself, we have the guarantee that the related
+security policy will stay enforced on all this thread's descendants.  This
+allows creating standalone and modular security policies per application,
+which will automatically be composed between themselves according to their
+runtime parent policies.
+.\"
+.SS Ptrace restrictions
+A sandboxed process has less privileges than a non-sandboxed process and
+must then be subject to additional restrictions when manipulating another
+process.  To be allowed to use
+.BR ptrace (2)
+and related syscalls on a target process, a sandboxed process should have a
+subset of the target process rules, which means the tracee must be in a
+sub-domain of the tracer.
+.SH VERSIONS
+Landlock was added in Linux 5.13.
+.SH NOTES
+Landlock is enabled by CONFIG_SECURITY_LANDLOCK.
+The
+.I lsm=lsm1,...,lsmN
+command line parameter controls the sequence of the initialization of
+Linux Security Modules.
+It must contain the string
+.I landlock
+to enable Landlock.
+If the command line parameter is not specified,
+the initialization falls back to the value of the deprecated
+.I security=
+command line parameter and further to the value of CONFIG_LSM.
+We can check that Landlock is enabled by looking for
+.I
+landlock: Up and running.
+in kernel logs.
+.\"
+.PP
+It is currently not possible to restrict some file-related actions
+accessible through these syscall families:
+.BR chdir (2)
+,
+.BR truncate (2)
+,
+.BR stat (2)
+,
+.BR flock (2)
+,
+.BR chmod (2)
+,
+.BR chown (2)
+,
+.BR setxattr (2)
+,
+.BR utime (2)
+,
+.BR ioctl (2)
+,
+.BR fcntl (2)
+,
+.BR access (2)
+\&.
+Future Landlock evolutions will enable to restrict them.
+.SH SEE ALSO
+.BR landlock_create_ruleset (2),
+.BR landlock_add_rule (2),
+.BR landlock_restrict_self (2)
+.PP
+.UR https://landlock.io\:/
+.UE
-- 
2.32.0

