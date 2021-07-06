Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EFE823BDD40
	for <lists+linux-man@lfdr.de>; Tue,  6 Jul 2021 20:33:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231393AbhGFSfC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 6 Jul 2021 14:35:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231371AbhGFSfC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 6 Jul 2021 14:35:02 -0400
Received: from smtp-42ac.mail.infomaniak.ch (smtp-42ac.mail.infomaniak.ch [IPv6:2001:1600:4:17::42ac])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50270C061574
        for <linux-man@vger.kernel.org>; Tue,  6 Jul 2021 11:32:23 -0700 (PDT)
Received: from smtp-3-0001.mail.infomaniak.ch (unknown [10.4.36.108])
        by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4GK9sT588hzMprg6;
        Tue,  6 Jul 2021 20:23:09 +0200 (CEST)
Received: from localhost (unknown [23.97.221.149])
        by smtp-3-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 4GK9sT2nkGzlmrrg;
        Tue,  6 Jul 2021 20:23:09 +0200 (CEST)
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
Subject: [PATCH v1 2/4] landlock_create_ruleset.2: Document new syscall
Date:   Tue,  6 Jul 2021 20:22:15 +0200
Message-Id: <20210706182217.32338-3-mic@digikod.net>
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

This is an adaptation of
https://www.kernel.org/doc/html/v5.13/userspace-api/landlock.html

Signed-off-by: Mickaël Salaün <mic@linux.microsoft.com>
Link: https://lore.kernel.org/r/20210706182217.32338-3-mic@digikod.net
---
 man2/landlock_create_ruleset.2 | 134 +++++++++++++++++++++++++++++++++
 1 file changed, 134 insertions(+)
 create mode 100644 man2/landlock_create_ruleset.2

diff --git a/man2/landlock_create_ruleset.2 b/man2/landlock_create_ruleset.2
new file mode 100644
index 000000000000..5fe0f8fd808e
--- /dev/null
+++ b/man2/landlock_create_ruleset.2
@@ -0,0 +1,134 @@
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
+.BI "            const struct landlock_ruleset_attr " attr ,
+.BI "            size_t " size " , __u32 " flags );
+.SH DESCRIPTION
+A Landlock ruleset identifies a set of rules (i.e. actions on objects).
+This
+.BR landlock_create_ruleset (2)
+system call enables creating a new file descriptor identifying a ruleset.
+This file descriptor can then be used by
+.BR landlock_add_rule (2)
+and
+.BR landlock_restrict_self (2)
+\&.  See
+.BR landlock (7)
+for a global overview.
+.PP
+.I attr
+specifies the properties of the new ruleset.  It points to the following
+structure:
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
+.BR "Filesystem actions"
+in
+.BR landlock (7)
+).
+This enables simply restricting ambient rights (e.g., global filesystem
+access) and is needed for compatibility reasons.
+.PP
+.I size
+must be specified as
+.I sizeof(struct landlock_ruleset_attr)
+for compatibility reasons.
+.PP
+.I flags
+must be 0 if
+.I attr
+is used.  Otherwise,
+.I flags
+can be set to:
+.TP
+.BR LANDLOCK_CREATE_RULESET_VERSION
+If
+.I attr
+is NULL and
+.I size
+is 0, then the returned value is the highest supported Landlock ABI version
+(starting at 1).  This version can be used for a best-effort security
+approach, which is encouraged when user space is not pinned to a specific
+kernel version.  All features documented in these man pages are available
+with the version 1.
+.SH RETURN VALUE
+On success,
+.BR landlock_create_ruleset (2)
+returns a new Landlock ruleset file descriptor, or a Landlock ABI version
+according to
+.I flags
+\&.
+.SH ERRORS
+.BR landlock_create_ruleset (2)
+can failed for the following reasons:
+.TP
+.BR EOPNOTSUPP
+Landlock is supported by the kernel but disabled at boot time.
+.TP
+.BR EINVAL
+Unknown
+.I flags
+, or unknown access, or too small
+.I size
+\&.
+.TP
+.BR E2BIG
+.I size
+is too big.
+.TP
+.BR EFAULT
+.I attr
+was not a valid address.
+.TP
+.BR ENOMSG
+Empty accesses (i.e.
+.I attr->handled_access_fs
+is 0).
+.SH VERSIONS
+Landlock was added in Linux 5.13.
+.SH SEE ALSO
+.BR landlock (7),
+.BR landlock_add_rule (2),
+.BR landlock_restrict_self (2)
-- 
2.32.0

