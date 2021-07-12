Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5D2563C5FE6
	for <lists+linux-man@lfdr.de>; Mon, 12 Jul 2021 17:57:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234360AbhGLQA3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 12 Jul 2021 12:00:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48494 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234386AbhGLQA1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 12 Jul 2021 12:00:27 -0400
Received: from smtp-8faa.mail.infomaniak.ch (smtp-8faa.mail.infomaniak.ch [IPv6:2001:1600:4:17::8faa])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A28AFC0613DD
        for <linux-man@vger.kernel.org>; Mon, 12 Jul 2021 08:57:38 -0700 (PDT)
Received: from smtp-3-0001.mail.infomaniak.ch (unknown [10.4.36.108])
        by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4GNpLl6fcdzMpt3m;
        Mon, 12 Jul 2021 17:57:35 +0200 (CEST)
Received: from localhost (unknown [23.97.221.149])
        by smtp-3-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 4GNpLl4VFZzlmrrj;
        Mon, 12 Jul 2021 17:57:35 +0200 (CEST)
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
Subject: [PATCH v2 3/4] landlock_add_rule.2: Document new syscall
Date:   Mon, 12 Jul 2021 17:57:44 +0200
Message-Id: <20210712155745.831580-4-mic@digikod.net>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210712155745.831580-1-mic@digikod.net>
References: <20210712155745.831580-1-mic@digikod.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Mickaël Salaün <mic@linux.microsoft.com>

This is an adaptation of
https://www.kernel.org/doc/html/v5.13/userspace-api/landlock.html

Signed-off-by: Mickaël Salaün <mic@linux.microsoft.com>
Link: https://lore.kernel.org/r/20210712155745.831580-4-mic@digikod.net
---

Changes since v1:
* Replace all ".I" with ".IR", except when used for titles.
* Append punctuation to ".IR" and ".BR" when it makes sense (requested
  by Alejandro Colomar).
* Cut lines according to the semantic newline rules (requested by
  Alejandro Colomar).
* Remove roman style from ".TP" section titles (requested by Alejandro
  Colomar).
* Add comma after "i.e." and "e.g.".
* Add a "CONFORMING TO" section.
* Replace "(2)" with "()" for the described syscall name.
---
 man2/landlock_add_rule.2 | 139 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 139 insertions(+)
 create mode 100644 man2/landlock_add_rule.2

diff --git a/man2/landlock_add_rule.2 b/man2/landlock_add_rule.2
new file mode 100644
index 000000000000..06ff55821222
--- /dev/null
+++ b/man2/landlock_add_rule.2
@@ -0,0 +1,139 @@
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
+.TH LANDLOCK_ADD_RULE 2 2021-06-27 Linux "Linux Programmer's Manual"
+.SH NAME
+landlock_add_rule \- add a new Landlock rule to a ruleset
+.SH SYNOPSIS
+.nf
+.BR "#include <linux/landlock.h>" "  /* Definition of " LANDLOCK_* " constants */"
+.BR "#include <sys/syscall.h>" "     /* Definition of " SYS_* " constants */"
+.PP
+.BI "int syscall(SYS_landlock_add_rule, int " ruleset_fd ,
+.BI "            enum landlock_rule_type " rule_type ,
+.BI "            const void * " rule_attr ", __u32 " flags );
+.SH DESCRIPTION
+A Landlock rule describes an action on an object.
+An object is currently a file hierarchy, and the related filesystem actions
+are defined with a set of access rights.
+This
+.BR landlock_add_rule ()
+system call enables adding a new Landlock rule to an existing ruleset
+created with
+.BR landlock_create_ruleset (2).
+See
+.BR landlock (7)
+for a global overview.
+.PP
+.IR ruleset_fd
+is a Landlock ruleset file descriptor obtained with
+.BR landlock_create_ruleset (2).
+.PP
+.IR rule_type
+identifies the structure type pointed to by
+.IR rule_attr .
+Currently, Linux supports the following
+.IR rule_type
+value:
+.TP
+.B LANDLOCK_RULE_PATH_BENEATH
+This defines the object type as a file hierarchy.
+In this case,
+.IR rule_attr
+points to the following structure:
+.IP
+.in +4n
+.EX
+struct landlock_path_beneath_attr {
+    __u64 allowed_access;
+    __s32 parent_fd;
+} __attribute__((packed));
+.EE
+.in
+.IP
+.IR allowed_access
+contains a bitmask of allowed filesystem actions for this file hierarchy
+(see
+.BR "Filesystem actions"
+in
+.BR landlock (7)).
+.IP
+.IR parent_fd
+is an opened file descriptor, preferably with the
+.IR O_PATH flag,
+which identifies the parent directory of the file hierarchy or a just file.
+.PP
+.IR flags
+must be 0.
+.SH RETURN VALUE
+On success,
+.BR landlock_add_rule ()
+returns 0.
+.SH ERRORS
+.BR landlock_add_rule ()
+can failed for the following reasons:
+.TP
+.B EOPNOTSUPP
+Landlock is supported by the kernel but disabled at boot time.
+.TP
+.B EINVAL
+.IR flags
+is not 0, or the rule accesses are inconsistent (i.e.,
+.IR rule_attr->allowed_access
+is not a subset of the ruleset handled accesses).
+.TP
+.B ENOMSG
+Empty accesses (i.e.,
+.IR rule_attr->allowed_access
+is 0).
+.TP
+.B EBADF
+.IR ruleset_fd
+is not a file descriptor for the current thread, or a member of
+.IR rule_attr
+is not a file descriptor as expected.
+.TP
+.B EBADFD
+.IR ruleset_fd
+is not a ruleset file descriptor, or a member of
+.IR rule_attr
+is not the expected file descriptor type.
+.TP
+.B EPERM
+.IR ruleset_fd
+has no write access to the underlying ruleset.
+.TP
+.B EFAULT
+.IR rule_attr
+was not a valid address.
+.SH VERSIONS
+Landlock was added in Linux 5.13.
+.SH CONFORMING TO
+This system call is Linux-specific.
+.SH SEE ALSO
+.BR landlock (7),
+.BR landlock_create_ruleset (2),
+.BR landlock_restrict_self (2)
-- 
2.32.0

