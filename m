Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A39D3442CC4
	for <lists+linux-man@lfdr.de>; Tue,  2 Nov 2021 12:37:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230100AbhKBLkW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Nov 2021 07:40:22 -0400
Received: from mail.kernel.org ([198.145.29.99]:49636 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229931AbhKBLkV (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 2 Nov 2021 07:40:21 -0400
Received: by mail.kernel.org (Postfix) with ESMTPS id 1E09861053
        for <linux-man@vger.kernel.org>; Tue,  2 Nov 2021 11:37:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1635853067;
        bh=6J9OY/yFWL3T2mncPqhrFaWIuuG/ovxltIn9wM6EtbQ=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=ZiYbxdMHCaoxMkuXOjJYpmsL4QooZYZzlHNt7GRPD3X/CWQh89ZSVC0+CzgY7qFFJ
         2FAEOERu/NikOJzRpSVdasmOHmgz+vALJOj0Wtti17Y8GRnUUUuOPEACFrdKLi+IQn
         muoN36FuFsL8CWIijiWgKva8wCzXe6OGougpDVm8cC73k4lfaciVKv7C6n+NClnuiz
         lvIRD2rl90v4sHiT3TEC3nYRiUK6uEzkT525BJl4OEREcuMdpj8bHrTO90OGBM2PNM
         JZb2HrYp6t4VssfcLeyGdldkuR0R1UdCb0ugaMXmDRzHg33Q4YCPTZkGwhpH+x1W+J
         VaQXIvneAF3SQ==
Received: by pdx-korg-bugzilla-2.web.codeaurora.org (Postfix, from userid 48)
        id 1A95C60F55; Tue,  2 Nov 2021 11:37:47 +0000 (UTC)
From:   bugzilla-daemon@bugzilla.kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 214871] Man(3) system outdated
Date:   Tue, 02 Nov 2021 11:37:46 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: adhemerval.zanella@linaro.org
X-Bugzilla-Status: RESOLVED
X-Bugzilla-Resolution: DOCUMENTED
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-214871-11311-moIG6ySBLE@https.bugzilla.kernel.org/>
In-Reply-To: <bug-214871-11311@https.bugzilla.kernel.org/>
References: <bug-214871-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D214871

--- Comment #4 from adhemerval.zanella@linaro.org ---
On 02/11/2021 06:58, Alejandro Colomar (man-pages) via Libc-alpha wrote:
> Hi Adhemerval, Michael,
>=20
> On 11/1/21 13:06, zatrazz wrote:
>> Hi Alejandro,
>>
>> Indeed we changed glibc to use posix_spawn on system and popen on=C2=A0 =
2.29
>> since
>> to use posix_spawn (which uses clone (CLONE_VFORK | CLONE_VM)).=C2=A0 It=
 plays
>> way better with Linux memory subsystem than fork() + exec() specially wh=
en
>> such
>> calls are used with process with large RSS.
>=20
> I applied the following patch.=C2=A0 I'll close the bug.
>=20
> Thanks,
>=20
> Alex

I forgot to add that neither system(), posix_spawn(), nor popen() call
atfork handlers [1].  POSIX recently changed their description to make
it implementation-defined instead of unspecified [2], so I think it
is worth to change that is not really behave as called by fork() (since
it will run atfork handlers).

[1] https://sourceware.org/bugzilla/show_bug.cgi?id=3D17490
[2] https://www.austingroupbugs.net/view.php?id=3D1317

>=20
> ---
> =C2=A0=C2=A0=C2=A0 system.3: It doesn't call fork anymore
>=20
> =C2=A0=C2=A0=C2=A0 Reported-by: Michael Kearney <mikekearney85@hotmail.co=
m>
> =C2=A0=C2=A0=C2=A0 Cc: Adhemerval Zanella <zatrazz@gmail.com>
> =C2=A0=C2=A0=C2=A0 Signed-off-by: Alejandro Colomar <alx.manpages@gmail.c=
om>
>=20
> diff --git a/man3/system.3 b/man3/system.3
> index 880fe93c6..bde45ed82 100644
> --- a/man3/system.3
> +++ b/man3/system.3
> @@ -40,9 +40,9 @@ system \- execute a shell command
> =C2=A0.SH DESCRIPTION
> =C2=A0The
> =C2=A0.BR system ()
> -library function uses
> +library function behaves as if it used
> =C2=A0.BR fork (2)
> -to create a child process that executes the shell command specified in
> +to create a child process that executed the shell command specified in
> =C2=A0.I command
> =C2=A0using
> =C2=A0.BR execl (3)
>=20
>=20
>

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
