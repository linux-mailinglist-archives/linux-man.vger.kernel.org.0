Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1EB373DBAB6
	for <lists+linux-man@lfdr.de>; Fri, 30 Jul 2021 16:39:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239271AbhG3Ojf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Jul 2021 10:39:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239213AbhG3Oje (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 30 Jul 2021 10:39:34 -0400
Received: from smtp-bc09.mail.infomaniak.ch (smtp-bc09.mail.infomaniak.ch [IPv6:2001:1600:3:17::bc09])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1391C0613CF
        for <linux-man@vger.kernel.org>; Fri, 30 Jul 2021 07:39:27 -0700 (PDT)
Received: from smtp-2-0001.mail.infomaniak.ch (unknown [10.5.36.108])
        by smtp-2-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4GbqmG4bh7zMqRVp;
        Fri, 30 Jul 2021 16:39:26 +0200 (CEST)
Received: from localhost (unknown [23.97.221.149])
        by smtp-2-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 4GbqmG2cSqzlh8mf;
        Fri, 30 Jul 2021 16:39:26 +0200 (CEST)
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
Subject: [PATCH v3 2/4] landlock_create_ruleset.2: Document new syscall
Date:   Fri, 30 Jul 2021 16:41:14 +0200
Message-Id: <20210730144116.332091-3-mic@digikod.net>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210730144116.332091-1-mic@digikod.net>
References: <20210730144116.332091-1-mic@digikod.net>
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
Link: https://lore.kernel.org/r/20210730144116.332091-3-mic@digikod.net
---

Changes since v2:
* Fix syscall signature (attr pointer).
* Add an EXAMPLES section referring to landlock(7).
* Change list order in the SEE ALSO section.
* Fix .IR and .BR use as explained by Alejandro Colomar.

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
 man2/landlock_create_ruleset.2 | 139 +++++++++++++++++++++++++++++++++
 1 file changed, 139 insertions(+)
 create mode 100644 man2/landlock_create_ruleset.2

diff --git a/man2/landlock_create_ruleset.2 b/man2/landlock_create_ruleset.2
new file mode 100644
index 000000000000..e1ca4bcf8c86
--- /dev/null
+++ b/man2/landlock_create_ruleset.2
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
+.TH LANDLOCK_CREATE_RULESET 2 2021-06-27 Linux "Linux Programmer's Manual"
+.SH NAME
+landlock_create_ruleset \- create a new Landlock ruleset
+.SH SYNOPSIS
+.nf
+.BR "#include <linux/landlock.h>" "  /* Definition of " LANDLOCK_* " constants */"
+.BR "#include <sys/syscall.h>" "     /* Definition of " SYS_* " constants */"
+.PP
+.BI "int syscall(SYS_landlock_create_ruleset,
+.BI "            const struct landlock_ruleset_attr *" attr ,
+.BI "            size_t " size " , __u32 " flags );
+.SH DESCRIPTION
+A Landlock ruleset identifies a set of rules (i.e., actions on objects).
+This
+.BR landlock_create_ruleset ()
+system call enables creating a new file descriptor identifying a ruleset.
+This file descriptor can then be used by
+.BR landlock_add_rule (2)
+and
+.BR landlock_restrict_self (2).
+See
+.BR landlock (7)
+for a global overview.
+.PP
+.I attr
+specifies the properties of the new ruleset.
+It points to the following structure:
+.IP
+.in +4n
+.EX
+struct landlock_ruleset_attr {
+	__u64 handled_access_fs;
+};
+.EE
+.in
+.IP
+.I handled_access_fs
+is a bitmask of actions that is handled by this ruleset and should then be
+forbidden if no rule explicitly allow them
+(see
+.B Filesystem actions
+in
+.BR landlock (7)).
+This enables simply restricting ambient rights
+(e.g., global filesystem access) and is needed for compatibility reasons.
+.PP
+.I size
+must be specified as
+.I sizeof(struct landlock_ruleset_attr)
+for compatibility reasons.
+.PP
+.I flags
+must be 0 if
+.I attr
+is used.
+Otherwise,
+.I flags
+can be set to:
+.TP
+.B LANDLOCK_CREATE_RULESET_VERSION
+If
+.I attr
+is NULL and
+.I size
+is 0, then the returned value is the highest supported Landlock ABI version
+(starting at 1).
+This version can be used for a best-effort security approach,
+which is encouraged when user space is not pinned to a specific kernel
+version.
+All features documented in these man pages are available with the version
+1.
+.SH RETURN VALUE
+On success,
+.BR landlock_create_ruleset ()
+returns a new Landlock ruleset file descriptor, or a Landlock ABI version
+according to
+.IR flags .
+.SH ERRORS
+.BR landlock_create_ruleset ()
+can failed for the following reasons:
+.TP
+.B EOPNOTSUPP
+Landlock is supported by the kernel but disabled at boot time.
+.TP
+.B EINVAL
+Unknown
+.IR flags ,
+or unknown access, or too small
+.IR size .
+.TP
+.B E2BIG
+.I size
+is too big.
+.TP
+.B EFAULT
+.I attr
+was not a valid address.
+.TP
+.B ENOMSG
+Empty accesses (i.e.,
+.I attr->handled_access_fs
+is 0).
+.SH VERSIONS
+Landlock was added in Linux 5.13.
+.SH CONFORMING TO
+This system call is Linux-specific.
+.SH EXAMPLES
+See
+.BR landlock (7).
+.SH SEE ALSO
+.BR landlock_add_rule (2),
+.BR landlock_restrict_self (2),
+.BR landlock (7)
-- 
2.32.0

