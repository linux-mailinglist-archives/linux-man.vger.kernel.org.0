Return-Path: <linux-man+bounces-4229-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE92C1D66A
	for <lists+linux-man@lfdr.de>; Wed, 29 Oct 2025 22:15:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 58C9B1882D76
	for <lists+linux-man@lfdr.de>; Wed, 29 Oct 2025 21:16:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 696CA2D8DB1;
	Wed, 29 Oct 2025 21:15:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MqgNB51w"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2895E770FE
	for <linux-man@vger.kernel.org>; Wed, 29 Oct 2025 21:15:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761772537; cv=none; b=galhbfLXeCHMU9E4AmZlpBI7eUZApWNBk5V8IzisDrrs7P3POVzzhi1RPGGMBTz5AxlT9cuXy1dWQROKSe9nfPORxUTWxzUg9ydaEED7kscnJxyR4FNlqjvAv+m7pDMNpa6Smjssyr+VA3fEjqBcyQx+JxHiTNPnT1dFUmfDvGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761772537; c=relaxed/simple;
	bh=3IxvvGLp339O3Lfh60CQQKB9iNREdDZzpzDTytF5qCI=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version; b=L+kLdZFop4otAx8apUX7O6eyzuU0jsPQqfLFvO+jDwqU79e+Gc9hVUNU54E7lBhEsNxdl/D308QTQ7m6b3td7hYDphPlBVz9BO9nqFi4O1gQ+u2BqIzrHd95xsfgJb+WTiVbHgs7AXE14buh/mIqtRRFhSnhd+I1985FpDZON8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MqgNB51w; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0C24C4CEFF
	for <linux-man@vger.kernel.org>; Wed, 29 Oct 2025 21:15:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761772536;
	bh=3IxvvGLp339O3Lfh60CQQKB9iNREdDZzpzDTytF5qCI=;
	h=From:To:Subject:Date:From;
	b=MqgNB51wL1abBH6++eQMuMpquIONA3ksHlC7E+MAxQ8W7cn3hNeVEJkRRfBegRMda
	 sdeRs2YJF58PfCRYDDxhEtuyv3wmbPeTQipI1kaCFKQsZbQKfxR1PTv9/kYINHOQ0q
	 swhX9H6py9be0yd3jUOdOVPhy4+lR6cBRh7WQ3BHrW2KerxWTLbvpJOTzTAMzYgf8m
	 REc6a71tAxGP+xmmJ+b2JH0Vv80+ZsYsgGd/PIWVw2p3YorugYiV1bU/hns68g3Jd9
	 KuLUzBzMe451miCpmVJqyrbhVbtgt8zvhtNHKlJlSTZnT6N6zRLUete4jFgyzYE21C
	 91qcv9Xmfc/9Q==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id A3D33C41612; Wed, 29 Oct 2025 21:15:36 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 220723] New: the man page seccomp(2) instructs the user to
 include <linux/signal.h> and it causes conflicts
Date: Wed, 29 Oct 2025 21:15:36 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: mpatocka@redhat.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-220723-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

https://bugzilla.kernel.org/show_bug.cgi?id=3D220723

            Bug ID: 220723
           Summary: the man page seccomp(2) instructs the user to include
                    <linux/signal.h> and it causes conflicts
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P3
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: mpatocka@redhat.com
        Regression: No

The man page seccomp(2) instructs the user to include these files:

       #include <linux/seccomp.h>  /* Definition of SECCOMP_* constants */
       #include <linux/filter.h>   /* Definition of struct sock_fprog */
       #include <linux/audit.h>    /* Definition of AUDIT_* constants */
       #include <linux/signal.h>   /* Definition of SIG* constants */
       #include <sys/ptrace.h>     /* Definition of PTRACE_* constants */
       #include <sys/syscall.h>    /* Definition of SYS_* constants */
       #include <unistd.h>

However, the include file <linux/signal.h> defines sigset_t and struct time=
val
and they clash with the glibc definition. <linux/signal.h> should be change=
d to
<signal.h> in the man page.

How to reproduce: Try to compile this program:

#include <linux/seccomp.h>
#include <linux/filter.h>
#include <linux/audit.h>
#include <linux/signal.h>
#include <sys/ptrace.h>
#include <sys/syscall.h>
#include <unistd.h>

#include <stdlib.h>

int main(void)
{
        return 0;
}

You get these errors:
In file included from /usr/include/x86_64-linux-gnu/sys/select.h:33,
                 from /usr/include/x86_64-linux-gnu/sys/types.h:179,
                 from /usr/include/stdlib.h:395,
                 from seccomp.c:9:
/usr/include/x86_64-linux-gnu/bits/types/sigset_t.h:7:20: error: conflicting
types for =E2=80=98sigset_t=E2=80=99; have =E2=80=98__sigset_t=E2=80=99
    7 | typedef __sigset_t sigset_t;
      |                    ^~~~~~~~
In file included from /usr/include/linux/signal.h:5,
                 from seccomp.c:4:
/usr/include/x86_64-linux-gnu/asm/signal.h:16:23: note: previous declaratio=
n of
=E2=80=98sigset_t=E2=80=99 with type =E2=80=98sigset_t=E2=80=99 {aka =E2=80=
=98long unsigned int=E2=80=99}
   16 | typedef unsigned long sigset_t;
      |                       ^~~~~~~~
In file included from /usr/include/x86_64-linux-gnu/sys/select.h:37:
/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h:8:8: error:
redefinition of =E2=80=98struct timeval=E2=80=99
    8 | struct timeval
      |        ^~~~~~~
In file included from /usr/include/x86_64-linux-gnu/asm/signal.h:7:
/usr/include/linux/time.h:16:8: note: originally defined here
   16 | struct timeval {
      |        ^~~~~~~

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

