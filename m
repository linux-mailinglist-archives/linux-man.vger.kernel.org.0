Return-Path: <linux-man+bounces-4269-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B1C8C43D62
	for <lists+linux-man@lfdr.de>; Sun, 09 Nov 2025 13:22:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3859F4E13AC
	for <lists+linux-man@lfdr.de>; Sun,  9 Nov 2025 12:22:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47A0B2EC08C;
	Sun,  9 Nov 2025 12:22:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UwdBmri5"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 072C32EBDF2
	for <linux-man@vger.kernel.org>; Sun,  9 Nov 2025 12:22:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762690969; cv=none; b=gryZW0Gm749/gtGe5vr9r2W24fiqwQPFkGOQm3umH0fKPGOx9T1rUc6zKBlFHU3a9F93z6XvR4Dk+lQxSz5MRR5m0FzPBYeGGGHoyaFhrt7UDRlkDxF8N8yRVTsRolkXl00Da6RSg+XvQfjO5IK32lmRrcsSgrRGXb5McYdl5V8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762690969; c=relaxed/simple;
	bh=D0Qc9O0R0jvkN32s1ssNDHgVTw0GSP9+FgPCCTZ9Lio=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=FWasvuBvxUEG4/GdDknKQtFuEMPNttjFEArHh33+CKtGOiaBMDJlW8nEEAtNUAJ77iSZnCH2BbF9fLMj2ixHXsK345rZNIBgtflxP2l8qn639oEeGf+PdaHDXr8LwrFK5dGPpz7ZACMNs7QXaLLMByj/5639F/mhNAECwfuirlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UwdBmri5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id D94AAC19423
	for <linux-man@vger.kernel.org>; Sun,  9 Nov 2025 12:22:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762690968;
	bh=D0Qc9O0R0jvkN32s1ssNDHgVTw0GSP9+FgPCCTZ9Lio=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=UwdBmri5+5pSJnUP7mkk5Ez59hHLPlyka6xvuBcDZhtg6y6Czglz4ZfbhLT5X93Je
	 wMJuZ9kU6N3VQ148H4nX1JC/o6x7/kjNAtwfdPFXXog3nvE/y5l7F11SiXRjsjBATp
	 r4KIB5cLPJ9gWYhCB39rbaxYjmhbCDpeveqWdD9HWAK7YvTH57wOYctjY8VZ/Ykkta
	 Yk+hVsXgqTAg6qkZ5PCDtFq+vOchF2KpCi+O//9J9ctgxy6YfSpIAclxm5A1BPoFYb
	 I26FxUk/blRsRFij4kHzL6F4qMckmo446K/beAl9w4tIPEj0YsvoIEi3ivJtNvn6Xw
	 N/bGd9ZT12oFw==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id CC43EC53BC7; Sun,  9 Nov 2025 12:22:48 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 220723] the man page seccomp(2) instructs the user to include
 <linux/signal.h> and it causes conflicts
Date: Sun, 09 Nov 2025 12:22:47 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: alx@kernel.org
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-220723-11311-9Gxd1kN0cA@https.bugzilla.kernel.org/>
In-Reply-To: <bug-220723-11311@https.bugzilla.kernel.org/>
References: <bug-220723-11311@https.bugzilla.kernel.org/>
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

--- Comment #1 from Alejandro Colomar (alx@kernel.org) ---
Hi Carlos,

On Wed, Oct 29, 2025 at 09:15:36PM +0000, bugzilla-daemon@kernel.org wrote:
> https://bugzilla.kernel.org/show_bug.cgi?id=3D220723
>=20
>             Bug ID: 220723
>            Summary: the man page seccomp(2) instructs the user to include
>                     <linux/signal.h> and it causes conflicts
>            Product: Documentation
>            Version: unspecified
>           Hardware: All
>                 OS: Linux
>             Status: NEW
>           Severity: normal
>           Priority: P3
>          Component: man-pages
>           Assignee: documentation_man-pages@kernel-bugs.osdl.org
>           Reporter: mpatocka@redhat.com
>         Regression: No
>=20
> The man page seccomp(2) instructs the user to include these files:
>=20
>        #include <linux/seccomp.h>  /* Definition of SECCOMP_* constants */
>        #include <linux/filter.h>   /* Definition of struct sock_fprog */
>        #include <linux/audit.h>    /* Definition of AUDIT_* constants */
>        #include <linux/signal.h>   /* Definition of SIG* constants */
>        #include <sys/ptrace.h>     /* Definition of PTRACE_* constants */
>        #include <sys/syscall.h>    /* Definition of SYS_* constants */
>        #include <unistd.h>
>=20
> However, the include file <linux/signal.h> defines sigset_t and struct
> timeval
> and they clash with the glibc definition. <linux/signal.h> should be chan=
ged
> to
> <signal.h> in the man page.

Would you mind reviewing this?


Have a lovely day!
Alex

>=20
> How to reproduce: Try to compile this program:
>=20
> #include <linux/seccomp.h>
> #include <linux/filter.h>
> #include <linux/audit.h>
> #include <linux/signal.h>
> #include <sys/ptrace.h>
> #include <sys/syscall.h>
> #include <unistd.h>
>=20
> #include <stdlib.h>
>=20
> int main(void)
> {
>         return 0;
> }
>=20
> You get these errors:
> In file included from /usr/include/x86_64-linux-gnu/sys/select.h:33,
>                  from /usr/include/x86_64-linux-gnu/sys/types.h:179,
>                  from /usr/include/stdlib.h:395,
>                  from seccomp.c:9:
> /usr/include/x86_64-linux-gnu/bits/types/sigset_t.h:7:20: error: conflict=
ing
> types for =E2=80=98sigset_t=E2=80=99; have =E2=80=98__sigset_t=E2=80=99
>     7 | typedef __sigset_t sigset_t;
>       |                    ^~~~~~~~
> In file included from /usr/include/linux/signal.h:5,
>                  from seccomp.c:4:
> /usr/include/x86_64-linux-gnu/asm/signal.h:16:23: note: previous declarat=
ion
> of
> =E2=80=98sigset_t=E2=80=99 with type =E2=80=98sigset_t=E2=80=99 {aka =E2=
=80=98long unsigned int=E2=80=99}
>    16 | typedef unsigned long sigset_t;
>       |                       ^~~~~~~~
> In file included from /usr/include/x86_64-linux-gnu/sys/select.h:37:
> /usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h:8:8: error:
> redefinition of =E2=80=98struct timeval=E2=80=99
>     8 | struct timeval
>       |        ^~~~~~~
> In file included from /usr/include/x86_64-linux-gnu/asm/signal.h:7:
> /usr/include/linux/time.h:16:8: note: originally defined here
>    16 | struct timeval {
>       |        ^~~~~~~
>=20
> --=20
> You may reply to this email to add a comment.
>=20
> You are receiving this mail because:
> You are watching the assignee of the bug.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

