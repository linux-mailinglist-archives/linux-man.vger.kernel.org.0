Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 150093DBABF
	for <lists+linux-man@lfdr.de>; Fri, 30 Jul 2021 16:39:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239225AbhG3Oji (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Jul 2021 10:39:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43610 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239172AbhG3Oji (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 30 Jul 2021 10:39:38 -0400
Received: from smtp-8fae.mail.infomaniak.ch (smtp-8fae.mail.infomaniak.ch [IPv6:2001:1600:4:17::8fae])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 22E3DC0613C1
        for <linux-man@vger.kernel.org>; Fri, 30 Jul 2021 07:39:33 -0700 (PDT)
Received: from smtp-2-0000.mail.infomaniak.ch (unknown [10.5.36.107])
        by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4GbqmK0S96zNVMPL;
        Fri, 30 Jul 2021 16:39:29 +0200 (CEST)
Received: from localhost (unknown [23.97.221.149])
        by smtp-2-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4GbqmJ5QVHzlh8TT;
        Fri, 30 Jul 2021 16:39:28 +0200 (CEST)
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
Subject: [PATCH v3 4/4] landlock_restrict_self.2: Document new syscall
Date:   Fri, 30 Jul 2021 16:41:16 +0200
Message-Id: <20210730144116.332091-5-mic@digikod.net>
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
Link: https://lore.kernel.org/r/20210730144116.332091-5-mic@digikod.net
---

Changes since v2:
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
 man2/landlock_restrict_self.2 | 133 ++++++++++++++++++++++++++++++++++
 1 file changed, 133 insertions(+)
 create mode 100644 man2/landlock_restrict_self.2

diff --git a/man2/landlock_restrict_self.2 b/man2/landlock_restrict_self.2
new file mode 100644
index 000000000000..4b10997e2fb6
--- /dev/null
+++ b/man2/landlock_restrict_self.2
@@ -0,0 +1,133 @@
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
+.TH LANDLOCK_RESTRICT_SELF 2 2021-06-27 Linux "Linux Programmer's Manual"
+.SH NAME
+landlock_restrict_self \- enforce a Landlock ruleset
+.SH SYNOPSIS
+.nf
+.BR "#include <linux/landlock.h>" "  /* Definition of " LANDLOCK_* " constants */"
+.BR "#include <sys/syscall.h>" "     /* Definition of " SYS_* " constants */"
+.PP
+.BI "int syscall(SYS_landlock_restrict_self, int " ruleset_fd ,
+.BI "            __u32 " flags );
+.SH DESCRIPTION
+Once a Landlock ruleset is populated with the desired rules, the
+.BR landlock_restrict_self ()
+system call enables enforcing this ruleset on the calling thread.
+See
+.BR landlock (7)
+for a global overview.
+.PP
+A thread can be restricted with multiple rulesets that are then composed
+together to form the thread's Landlock domain.
+This can be seen as a stack of rulesets but it is implemented in a more
+efficient way.
+A domain can only be updated in such a way that the constraints of each
+past and future composed rulesets will restrict the thread and its future
+children for their entire life.
+It is then possible to gradually enforce tailored access control policies
+with multiple independant rulesets coming from different sources
+(e.g., init system configuration, user session policy,
+built-in application policy).
+However, most applications should only need one call to
+.BR landlock_restrict_self ()
+and they should avoid arbitrary numbers of such calls because of the
+composed rulesets limit.
+Instead, developers are encouraged to build a tailored ruleset thanks to
+multiple calls to
+.BR landlock_add_rule (2).
+.PP
+In order to enforce a ruleset, either the caller must have the
+.B CAP_SYS_ADMIN
+capability in its user namespace, or the thread must already have the
+.I no_new_privs
+bit set.
+As for
+.BR seccomp (2),
+this avoids scenarios where unprivileged processes can affect the behavior
+of privileged children (e.g., because of set-user-ID binaries).
+If that bit was not already set by an ancestor of this thread,
+the thread must make the following call:
+.IP
+.EX
+prctl(PR_SET_NO_NEW_PRIVS, 1, 0, 0, 0);
+.EE
+.PP
+.I ruleset_fd
+is a Landlock ruleset file descriptor obtained with
+.BR landlock_create_ruleset (2)
+and fully populated with a set of calls to
+.BR landlock_add_rule (2).
+.PP
+.I flags
+must be 0.
+.SH RETURN VALUE
+On success,
+.BR landlock_restrict_self ()
+returns 0.
+.SH ERRORS
+.BR landlock_restrict_self ()
+can failed for the following reasons:
+.TP
+.B EOPNOTSUPP
+Landlock is supported by the kernel but disabled at boot time.
+.TP
+.B EINVAL
+.I flags
+is not 0.
+.TP
+.B EBADF
+.I ruleset_fd
+is not a file descriptor for the current thread.
+.TP
+.B EBADFD
+.I ruleset_fd
+is not a ruleset file descriptor.
+.TP
+.B EPERM
+.I ruleset_fd
+has no read access to the underlying ruleset,
+or the calling thread is not running with
+.IR no_new_privs ,
+or it doesn't have the
+.B CAP_SYS_ADMIN
+in its user namespace.
+.TP
+.B E2BIG
+The maximum number of composed rulesets is reached for the calling thread.
+This limit is currently 64.
+.SH VERSIONS
+Landlock was added in Linux 5.13.
+.SH CONFORMING TO
+This system call is Linux-specific.
+.SH EXAMPLES
+See
+.BR landlock (7).
+.SH SEE ALSO
+.BR landlock_create_ruleset (2),
+.BR landlock_add_rule (2),
+.BR landlock (7)
-- 
2.32.0

