Return-Path: <linux-man+bounces-3499-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 373A2B2C917
	for <lists+linux-man@lfdr.de>; Tue, 19 Aug 2025 18:08:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1AB2E5C00AE
	for <lists+linux-man@lfdr.de>; Tue, 19 Aug 2025 16:08:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3A1F28031D;
	Tue, 19 Aug 2025 16:08:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="df9MjG+u"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92D491D5146
	for <linux-man@vger.kernel.org>; Tue, 19 Aug 2025 16:08:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755619723; cv=none; b=R7hwku3HjNBn0VBPsNQYM1mFzZpuURBBbAhxKQ4MpeJiQbAMjW5yxqgp/cerKMw75ofWKIeOAgQkD+JU6Y/nTPUzU5h9QS6XWRtC2apU0N/aC0wAHRudtiJ0dKPHOsEQPqRs7zPdDGGOA+lbKiWXJnFNz86SH53mlE8fHsLuTfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755619723; c=relaxed/simple;
	bh=M5H58VGaewJLzFNy0u/l6Oom+md4xlgsOy1+M3nuwtQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sZZ3S+P359M9SfCndf05uxkurVmPlYIK1KmTo5dJY/h3ZbXzo8chEJm39Ysm2t4WesJIkLnlrF/wopTQYj3VqtNULlEWolSIp2sYf3N/Ue4HdjTS3yxQVhVcQMplyPP4XTZi7Gb7b8RLjis2E1h6H9jxBo/EJHAqbliwNrfze+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=df9MjG+u; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2EB2C4CEF1;
	Tue, 19 Aug 2025 16:08:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755619723;
	bh=M5H58VGaewJLzFNy0u/l6Oom+md4xlgsOy1+M3nuwtQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=df9MjG+u01gMFmDF5If3lwMQ4uqkpn9/O4ySydncj1dFlxZzhLZdAb/fQnjTTazOn
	 6iiUwdNgiBoYf6yE3V0xyDxLXcFDJKfiyi8Zyz3DIYwyYTAPToyddU1WYDTz7UUNqk
	 eM38DnKEHf8VamkEzCV5PCxSKF0zhJ6IZTyXNpjeHVlHfTfx9nah0HfvyQOgKtWBwN
	 IYUCZAyVpuCgUe8aAVBf3qjdX6ibrR0Cih8i9VG+eqpidHcCBbD1u23Y5v+h8jwlWh
	 bBYe5K2Nj18tOmF7CV6y9OQ+ItpK4GDQgYmtGVoHFh2y/L8bx58pHkjdfXs9I7GRC0
	 XLXYv+e486pRQ==
Date: Tue, 19 Aug 2025 18:08:37 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Askar Safin <safinaskar@zohomail.com>
Cc: linux-man@vger.kernel.org, Elliott Hughes <enh@google.com>, 
	Carlos O'Donell <carlos@redhat.com>, Eugene Syromyatnikov <evgsyr@gmail.com>, 
	Walter Harms <wharms@bfs.de>
Subject: Re: [PATCH 1/2] Remove all mentions of blackfin architecture
Message-ID: <jqw7baa3nx7vkbramdnlpdybfesgc34gwfdeo2l6otue2bglmr@m54n6nmbtush>
References: <20250819155400.763253-1-safinaskar@zohomail.com>
 <20250819155400.763253-2-safinaskar@zohomail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="s5sjbrye4lqp6dq5"
Content-Disposition: inline
In-Reply-To: <20250819155400.763253-2-safinaskar@zohomail.com>


--s5sjbrye4lqp6dq5
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Askar Safin <safinaskar@zohomail.com>
Cc: linux-man@vger.kernel.org, Elliott Hughes <enh@google.com>, 
	Carlos O'Donell <carlos@redhat.com>, Eugene Syromyatnikov <evgsyr@gmail.com>, 
	Walter Harms <wharms@bfs.de>
Subject: Re: [PATCH 1/2] Remove all mentions of blackfin architecture
References: <20250819155400.763253-1-safinaskar@zohomail.com>
 <20250819155400.763253-2-safinaskar@zohomail.com>
MIME-Version: 1.0
In-Reply-To: <20250819155400.763253-2-safinaskar@zohomail.com>

[CC++]

Hi Askar,

On Tue, Aug 19, 2025 at 03:53:59PM +0000, Askar Safin wrote:
> ...except for syscalls(2).
>=20
> Blackfin was removed in Linux 4.17, i. e. in 2018 (7 years ago).
>=20
> Linux 4.17 is not supported
>=20

Please add in Cc: tags everyone that showed interest in this:

Cc: Elliott Hughes <enh@google.com>
Cc: Carlos O'Donell <carlos@redhat.com>
Cc: Eugene Syromyatnikov <evgsyr@gmail.com>
Cc: Walter Harms <wharms@bfs.de>

> Signed-off-by: Askar Safin <safinaskar@zohomail.com>
> ---
>  man/man2/clone.2   |  6 +++---
>  man/man2/fork.2    |  2 +-
>  man/man2/ptrace.2  |  2 +-
>  man/man2/syscall.2 |  2 --
>  man/man7/vdso.7    | 17 -----------------
>  5 files changed, 5 insertions(+), 24 deletions(-)
>=20
> diff --git a/man/man2/clone.2 b/man/man2/clone.2
> index 16d9f7f91..adbaa3ab2 100644
> --- a/man/man2/clone.2
> +++ b/man/man2/clone.2
> @@ -1637,12 +1637,12 @@ an additional argument is supplied:
>  .EE
>  .in
>  .\"
> -.SS blackfin, m68k, and sparc
> +.SS m68k and sparc
>  .\" Mike Frysinger noted in a 2013 mail:
>  .\"     these arches don't define __ARCH_WANT_SYS_CLONE:
> -.\"     blackfin ia64 m68k sparc
> +.\"     ia64 m68k sparc
>  The argument-passing conventions on
> -blackfin, m68k, and sparc are different from the descriptions above.
> +m68k and sparc are different from the descriptions above.

I think I'd keep this.

>  For details, see the kernel (and glibc) source.
>  .SH STANDARDS
>  Linux.
> diff --git a/man/man2/fork.2 b/man/man2/fork.2
> index c5eeaca10..9d24222dd 100644
> --- a/man/man2/fork.2
> +++ b/man/man2/fork.2
> @@ -238,7 +238,7 @@ See
>  .B ENOSYS
>  .BR fork ()
>  is not supported on this platform (for example,
> -.\" e.g., arm (optionally), blackfin, c6x, frv, h8300, microblaze, xtensa
> +.\" e.g., arm (optionally), c6x, frv, h8300, microblaze, xtensa

LGTM.

>  hardware without a Memory-Management Unit).
>  .TP
>  .BR ERESTARTNOINTR " (since Linux 2.6.17)"
> diff --git a/man/man2/ptrace.2 b/man/man2/ptrace.2
> index bab6fee19..1d1642d74 100644
> --- a/man/man2/ptrace.2
> +++ b/man/man2/ptrace.2
> @@ -55,7 +55,7 @@
>  .\" PTRACE_GETFDPIC
>  .\" PTRACE_GETFDPIC_EXEC
>  .\" PTRACE_GETFDPIC_INTERP
> -.\"	blackfin, c6x, frv, sh
> +.\"	c6x, frv, sh

I think LGTM.

>  .\"	First appearance in Linux 2.6.11 on frv
>  .\"
>  .\" and others that can be found in the arch/*/include/uapi/asm/ptrace f=
iles
> diff --git a/man/man2/syscall.2 b/man/man2/syscall.2
> index be645c0f4..4996b203e 100644
> --- a/man/man2/syscall.2
> +++ b/man/man2/syscall.2
> @@ -172,7 +172,6 @@ arc	trap0	r8	r0	-	-
>  arm/OABI	swi NR	-	r0	-	-	2
>  arm/EABI	swi 0x0	r7	r0	r1	-
>  arm64	svc #0	w8	x0	x1	-
> -blackfin	excpt 0x0	P0	R0	-	-
>  i386	int $0x80	eax	eax	edx	-
>  ia64	break 0x100000	r15	r8	r9	r10	1, 6
>  loongarch	syscall 0	a7	a0	-	-
> @@ -298,7 +297,6 @@ arc	r0	r1	r2	r3	r4	r5	-
>  arm/OABI	r0	r1	r2	r3	r4	r5	r6
>  arm/EABI	r0	r1	r2	r3	r4	r5	r6
>  arm64	x0	x1	x2	x3	x4	x5	-
> -blackfin	R0	R1	R2	R3	R4	R5	-


I'd keep this one.  It doesn't hurt much, anyway, I think.

>  i386	ebx	ecx	edx	esi	edi	ebp	-
>  ia64	out0	out1	out2	out3	out4	out5	-
>  loongarch	a0	a1	a2	a3	a4	a5	a6
> diff --git a/man/man7/vdso.7 b/man/man7/vdso.7
> index 0dc8bf6f2..2086d53fb 100644
> --- a/man/man7/vdso.7
> +++ b/man/man7/vdso.7
> @@ -236,23 +236,6 @@ __kernel_clock_getres	LINUX_2.6.39
>  .in
>  .ft P
>  \}
> -.SS bfin (Blackfin) functions (port removed in Linux 4.17)
> -.\" See linux/arch/blackfin/kernel/fixed_code.S
> -.\" See http://docs.blackfin.uclinux.org/doku.php?id=3Dlinux-kernel:fixe=
d-code
> -As this CPU lacks a memory management unit (MMU),
> -it doesn't set up a vDSO in the normal sense.
> -Instead, it maps at boot time a few raw functions into
> -a fixed location in memory.
> -User-space applications then call directly into that region.
> -There is no provision for backward compatibility
> -beyond sniffing raw opcodes,
> -but as this is an embedded CPU, it can get away with things\[em]some of =
the
> -object formats it runs aren't even ELF based (they're bFLT/FLAT).
> -.P
> -For information on this code page,
> -it's best to refer to the public documentation:
> -.br
> -http://docs.blackfin.uclinux.org/doku.php?id=3Dlinux\-kernel:fixed\-code

This one I think is important to keep.  I wouldn't mind moving it to
a HISTORY section, although maybe it's okay to keep it there.


Have a lovely day!
Alex

>  .SS mips functions
>  .\" See linux/arch/mips/vdso/vdso.ld.S
>  The table below lists the symbols exported by the vDSO.
> --=20
> 2.47.2
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--s5sjbrye4lqp6dq5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmikoYUACgkQ64mZXMKQ
wqmtrA//SSdByDrvXQvYxPkRK8uI6QtUxC09a3m9v2m6k6XWABeQWclFujjJ5t3N
GyD0/zfsSkLpklfJ7gRFrnvOQ8/FnBIAz4Hx/GY51rx1VhdCGR1fLI3W0HfuDfES
c7k/8OxSuZsiuKZ+K3he/2otkFGMO2zNcdZtu1FQQToQye0FxEQ2DeqE+WddGd8v
BK4OIDIqyOlIAgHWPzysIzD5hnpiVPUNE9WFEnl6nWp0f5uH53hcWuly4rnqXOMT
PlZnp4fMeNW5DGEqP6XkQGzGdZsbNFWpuozy+5gBR9VxHVVv+mwGjEtm47YGlhba
RwI6ibJAN9Uxb4veMG+IviO50AQZuUItrS7XP5dn+nSyXVqm864LdPtcuHtEExLU
fONYrBru/tKcw+NC/4aN81VOGXZYbXwSnFEC+pYywTdWg4LvtkGX+/JXgHjghk3a
ELQ74DzYo4vwBOsxYLwsBh2VJNzhQLV+T41bYlsTDaHuEIKO4hP8yKdYFpu4YBW+
Lne+0KH4Qr1yBOshwlWmrVQT6nFJhaxPu5OkW/RzvRTOBpi0cElD7VZ6OgRfFrjv
VNTOk0S+3NT4RD7TPRPkXWJFca9HhK5xvv5XbH5SPwOQhcWvCgeDIexsJnijhVW1
sX0t85aGQjb8ZVf/559kFFpwU0MCOqucq1IkEmXxoatqeGsnaVc=
=cAEJ
-----END PGP SIGNATURE-----

--s5sjbrye4lqp6dq5--

