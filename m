Return-Path: <linux-man+bounces-1627-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 01A519556B0
	for <lists+linux-man@lfdr.de>; Sat, 17 Aug 2024 11:19:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7199C1F21110
	for <lists+linux-man@lfdr.de>; Sat, 17 Aug 2024 09:19:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A80813C9C8;
	Sat, 17 Aug 2024 09:18:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ErjWIiJI"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AE0833D5
	for <linux-man@vger.kernel.org>; Sat, 17 Aug 2024 09:18:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723886339; cv=none; b=LRgyqIN1wW6WYpWBSRQ+jDJHeS2QqjjismrGiStyhjOStp6qlwq+zWoUTraGPUiJNtCZf97eHckraKG7hXNy0hGDSKP1RztE6hbkWJ3xfZFesT2CK3lg9CkERWBz9T5pe3SiEoHpfh774S7RqeuoptFpBn6Vh6vWqLZKOakhhqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723886339; c=relaxed/simple;
	bh=zMGPLi2xFuaKuand51QABXozXXw3lHD3z/HJ1CkendU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AuwFO0XbvYsEGtlL2bDvCV6D0oZzO0v91bIqjTCI0VAYBqoh6ZJoDIDbyawKtluRSc2x6H685TSbB5U5kb0bf/pemW2VGAyNeBeCAjmNCZB30A3aZ7cYcHzTgcKY3jYad20Y/EijuVopG3vVQKqNcs/39HNIVqYV6kI8VUT9qB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ErjWIiJI; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1215EC116B1;
	Sat, 17 Aug 2024 09:18:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723886337;
	bh=zMGPLi2xFuaKuand51QABXozXXw3lHD3z/HJ1CkendU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ErjWIiJI6y5bXxKjf9cedgftIoRhKHDjtO3hhdvwdrg2UEawZ1LvVyh1P26Ca5cQu
	 pK88krMpYb2fHKXKSeNzUlckrA55XadAj7RCGafbO6pw+twes8RJ1Cv7Od6qa309/T
	 uS0aPQL4vsUrsz14fawLFxQIpMnaFRKkdS2ZOZhE/umiD+xb97mLEbK5if3dckOFBi
	 DcgKHl8/wLLMDXeo7zkGfYlpf0EH0QJOTjdmq2DA5118/YLN0Mkf1N9DmampoOKtAt
	 7ziEwGzGR1W0k1rYD0guSvr4G7ShTTu6OyTECTAxvmM34cWnyX9KXOBwFxPV9JxZbe
	 q+WnUhp+t8rYg==
Date: Sat, 17 Aug 2024 11:18:54 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] bdflush.2, syscalls.2: bdflush was removed
Message-ID: <b3ily7em4swff7oolrqvbpptkr64rjziusmceicsowxueapi7i@a6fqtq77emz6>
References: <ynknns52cczu2bxtazbmub3xxe62a2hajkod2qephnby5dqt7o@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pklyyzehiknv5r3n"
Content-Disposition: inline
In-Reply-To: <ynknns52cczu2bxtazbmub3xxe62a2hajkod2qephnby5dqt7o@tarta.nabijaczleweli.xyz>


--pklyyzehiknv5r3n
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] bdflush.2, syscalls.2: bdflush was removed
References: <ynknns52cczu2bxtazbmub3xxe62a2hajkod2qephnby5dqt7o@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
In-Reply-To: <ynknns52cczu2bxtazbmub3xxe62a2hajkod2qephnby5dqt7o@tarta.nabijaczleweli.xyz>

Hi =D0=BD=D0=B0=D0=B1,

On Sat, Aug 17, 2024 at 12:35:27AM GMT, =D0=BD=D0=B0=D0=B1 wrote:
> There's no point documenting this syscall at any point in time,
> because it changed constantly. A post-mortem summary I believe to be
> comprehensive is included below.
>=20
> The #include <sys/kdaemon.h> was removed in glibc 2.23:
>     commit eed3e1eb79bcfa9b52609fd875fa2d522e2d6bce
>     Author: Joseph Myers <joseph@codesourcery.com>
>     Date:   Mon Dec 14 22:52:15 2015 +0000
>=20
>     Make obsolete syscall wrappers into compat symbols (bug 18472).
>=20
>     * bdflush: in Linux 2.6, does nothing if present.
>=20
>     [...]
>     generated for such aliases.  Those five syscalls are then made into
>     compat symbols (obsoleted in glibc 2.23, so future ports won't have
>     these symbols at all), with the header <sys/kdaemon.h> declaring
>     bdflush being removed.  When we move to 3.2 as minimum kernel version,
>     the same can be done for nfsservctl (removed in Linux 3.1) as well.
>     [...]
>=20
> Appears in 1.1.3
> (func=3D0  turns the calling process into the bdflush daemon,
>  func=3D1  return sync_old_buffers();,
>  func>=3D2 is parameters):
>     Author: Linus Torvalds <torvalds@linuxfoundation.org>
>         Import 1.1.3
>=20
>     +/* This is the interface to bdflush.  As we get more sophisticated, =
we can
>     + * pass tuning parameters to this "process", to adjust how it behave=
s.  If you
>     + * invoke this again after you have done this once, you would simply=
 modify
>     + * the tuning parameters.  We would want to verify each parameter, h=
owever,
>     + * to make sure that it is reasonable. */
>     +
>     +asmlinkage int sys_bdflush(int func, int data)
>     +{
>=20
> bdflush() is just a kernel thread, and func 0 is just return 0; since 1.3=
=2E50:
>     Author: Linus Torvalds <torvalds@linuxfoundation.org>
>         Import 1.3.50
>=20
>     -       /* Basically func 0 means start, 1 means read param 1, 2 mean=
s write param 1, etc */
>     +       /* Basically func 1 means read param 1, 2 means write param 1=
, etc */
>             if (func >=3D 2) {
>                     i =3D (func-2) >> 1;
>                     if (i < 0 || i >=3D N_PARAM)
>     @@ -1930,13 +1845,32 @@ asmlinkage int sys_bdflush(int func, long dat=
a)
>                     bdf_prm.data[i] =3D data;
>                     return 0;
>             };
>     +
>     +       /* Having func 0 used to launch the actual bdflush and then n=
ever
>     +       return (unless explicitly killed). We return zero here to
>     +       remain semi-compatible with present update(8) programs. */
>     +
>     +       return 0;
>     +}
>     +
>     +/* This is the actual bdflush daemon itself. It used to be started f=
rom
>     + * the syscall above, but now we launch it ourselves internally with
>     + * kernel_thread(...)  directly after the first thread in init/main.=
c */
>     +
>     +int bdflush(void * unused) {
>=20
> func 1 is actually exit(0) since 2.3.23pre1:
>     Author: Linus Torvalds <torvalds@linuxfoundation.org>
>         Import 2.3.23pre1
>=20
>                 if (func =3D=3D 1) {
>     +               /* do_exit directly and let kupdate to do its work al=
one. */
>     +               do_exit(0);
>     +#if 0 /* left here as it's the only example of lazy-mm-stuff used fr=
om
>     +        a syscall that doesn't care about the current mm context. */
>=20
> fund!=3D0 is a return 0 since 2.5.12:
>     Author: Andrew Morton <akpm@zip.com.au>
>     Date:   Mon Apr 29 23:52:10 2002 -0700
>=20
>         [PATCH] writeback from address spaces
>=20
>         [ I reversed the order in which writeback walks the superblock's
>           dirty inodes.  It sped up dbench's unlink phase greatly.  I'm
>           such a sleaze ]
>=20
>         The core writeback patch.  Switches file writeback from the dirty
>         buffer LRU over to address_space.dirty_pages.
>=20
>         - The buffer LRU is removed
>=20
>         - The buffer hash is removed (uses blockdev pagecache lookups)
>=20
>         - The bdflush and kupdate functions are implemented against
>           address_spaces, via pdflush.
>=20
>         [...]
>=20
> Deprecated since 2.5.52:
>     Author: Andrew Morton <akpm@digeo.com>
>     Date:   Sat Dec 14 03:16:29 2002 -0800
>=20
>         [PATCH] deprecate use of bdflush()
>=20
>         Patch from Robert Love <rml@tech9.net>
>=20
>         We can never get rid of it if we do not deprecate it - so do so a=
nd
>         print a stern warning to those who still run bdflush daemons.
>=20
> Removed outright in 5.15-rc1:
>     commit b48c7236b13cb5ef1b5fdf744aa8841df0f7b43a
>     Author: Eric W. Biederman <ebiederm@xmission.com>
>     Date:   Tue Jun 29 15:11:44 2021 -0500
>=20
>         exit/bdflush: Remove the deprecated bdflush system call
>=20
>         The bdflush system call has been deprecated for a very long time.
>         Recently Michael Schmitz tested[1] and found that the last known
>         caller of of the bdflush system call is unaffected by it's remova=
l.
>=20
>         Since the code is not needed delete it.
>=20
>         [1] https://lkml.kernel.org/r/36123b5d-daa0-6c2b-f2d4-a942f069fd5=
4@gmail.com
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xy=
z>
> ---
> First two applied.
>=20
> As for the errors: those are equally as varying as the behaviours,
> and a general summary of "some of them" or "all of them at some point"
> is equally as meaningless and useless as the main DESCRIPTION was.
>=20
> If you're unfortunate enough to care about bdflush(2) (no one is),
> the same applies for the errors (though, if I'm reading=20
>   https://lkml.kernel.org/r/36123b5d-daa0-6c2b-f2d4-a942f069fd54@gmail.com
> right, update(8) du jour didn't care about them either,
> so much so it still works with the syscall removed).

Makes sense.  I've applied the patch.  Thanks!

Have a lovely day!
Alex

>=20
>  man/man2/bdflush.2  | 104 +++++++++++---------------------------------
>  man/man2/syscalls.2 |   3 +-
>  2 files changed, 28 insertions(+), 79 deletions(-)
>=20
> diff --git a/man/man2/bdflush.2 b/man/man2/bdflush.2
> index 8627a42..5b5ed16 100644
> --- a/man/man2/bdflush.2
> +++ b/man/man2/bdflush.2
> @@ -12,91 +12,39 @@ .SH SYNOPSIS
>  .nf
>  .B #include <sys/kdaemon.h>
>  .P
> -.BI "[[deprecated]] int bdflush(int "  func ", long *" address );
> -.BI "[[deprecated]] int bdflush(int "  func ", long " data );
> +.BI "int bdflush(int "  func ", long " data );
>  .fi
>  .SH DESCRIPTION
> -.IR Note :
> -Since Linux 2.6,
> -.\" As noted in changes in the 2.5.12 source
> -this system call is deprecated and does nothing.
> -It is likely to disappear altogether in a future kernel release.
> -Nowadays, the task performed by
> -.BR bdflush ()
> -is handled by the kernel
> -.I pdflush
> -thread.
> +This system call used to turn the calling process into the
> +.I bdflush
> +daemon,
> +or tune it,
> +or flush the "old buffers".
> +It then progressively lost all of that functionality.
>  .P
> -.BR bdflush ()
> -starts, flushes, or tunes the buffer-dirty-flush daemon.
> -Only a privileged process (one with the
> -.B CAP_SYS_ADMIN
> -capability) may call
> -.BR bdflush ().
> -.P
> -If
> -.I func
> -is negative or 0, and no daemon has been started, then
> -.BR bdflush ()
> -enters the daemon code and never returns.
> -.P
> -If
> -.I func
> -is 1,
> -some dirty buffers are written to disk.
> -.P
> -If
> -.I func
> -is 2 or more and is even (low bit is 0), then
> -.I address
> -is the address of a long word,
> -and the tuning parameter numbered
> -.RI "(" "func" "\-2)/2"
> -is returned to the caller in that address.
> -.P
> -If
> -.I func
> -is 3 or more and is odd (low bit is 1), then
> -.I data
> -is a long word,
> -and the kernel sets tuning parameter numbered
> -.RI "(" "func" "\-3)/2"
> -to that value.
> -.P
> -The set of parameters, their values, and their valid ranges
> -are defined in the Linux kernel source file
> -.IR fs/buffer.c .
> -.SH RETURN VALUE
> -If
> -.I func
> -is negative or 0 and the daemon successfully starts,
> -.BR bdflush ()
> -never returns.
> -Otherwise, the return value is 0 on success and \-1 on failure, with
> -.I errno
> -set to indicate the error.
> +See
> +.I fs/buffer.c
> +in the kernel version you're interested in to see what it actually does =
there.
>  .SH ERRORS
> -.TP
> -.B EBUSY
> -An attempt was made to enter the daemon code after
> -another process has already entered.
> -.TP
> -.B EFAULT
> -.I address
> -points outside your accessible address space.
> -.TP
> -.B EINVAL
> -An attempt was made to read or write an invalid parameter number,
> -or to write an invalid value to a parameter.
> -.TP
> -.B EPERM
> -Caller does not have the
> -.B CAP_SYS_ADMIN
> -capability.
> +.B ENOSYS
> +(this system call is unimplemented)
>  .SH STANDARDS
>  Linux.
>  .SH HISTORY
> -Since glibc 2.23, glibc no longer supports this obsolete system call.
> +This system call was introduced in Linux 1.1.3,
> +became effectively obsolete in Linux 1.3.50,
> +mostly useless in Linux 2.3.23,
> +entirely useless in Linux 2.5.12,
> +officially deprecated in Linux 2.5.52,
> +and removed outright in Linux 5.15.
> +.P
> +Sometimes, if
> +.I func
> +was even,
> +.I data
> +actually represented a pointer.
> +.P
> +The header and prototype were removed in glibc 2.23.
>  .SH SEE ALSO
>  .BR sync (1),
>  .BR fsync (2),
> diff --git a/man/man2/syscalls.2 b/man/man2/syscalls.2
> index 7a7d6d7..56bbb59 100644
> --- a/man/man2/syscalls.2
> +++ b/man/man2/syscalls.2
> @@ -170,7 +170,8 @@ .SS System call list
>  \fBatomic_cmpxchg_32\fP(2)	2.6.34	m68k only
>  \fBbdflush\fP(2)	1.2	T{
>  Deprecated (does nothing)
> -since 2.6
> +since 2.6,
> +removed in 5.15
>  T}
>  \fBbind\fP(2)	2.0	T{
>  See notes on \fBsocketcall\fP(2)
> --=20
> 2.39.2



--=20
<https://www.alejandro-colomar.es/>

--pklyyzehiknv5r3n
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmbAav4ACgkQnowa+77/
2zJRkw//ZDpdWtvJsKkU/eX1h8GPfwDuu68sO5oQLygh0Ua0Q6LP/Tywf0soqrLd
8gF/hBxki98nVaMJa417trR/rG0D4wYQjYtf6t3N89HpiLgbkqJWOPeaEGXrhzjE
PblgbVxquO6JykmTg+fgYR1H0XrVDCQFtYEXYbVtsWEBV7bARtnSjYMUXze11Alb
buAC6QcE2pw7CFp9ZrHF1L1tCQgINkRWO8NpmpE/rMIQwT22YO9UEcBWtd3hdsAP
3zrptb9VGJnCBaIw4k2O9JnsP3L6NmDx3/0Qvx1VnKAqREYPikkhfNRN1P025ZaZ
edrVPz0ezi5pI7uC/xtEHykiB8yetLYksRTKwdAV/hom1VEHmSd6u3r/+VnRxS5u
sTdBEmbWb821Lwx95cZWFbTlsWTm1KqP2tYee5nLBbtosltZ/7RzPSp6MxDPLOHB
ffCjdZW7T0DFg4BTxKKTAARY7JHRn8crHqo9ZO7Rc/kiixuh5DudtEELFryUu0VC
6E39qU3sSV1WKs9VUnyAUD3a3KMpDsryG6+7fzBKrF4hCdZ3EUJ9kduK++wBuMDh
klygiWfTdJNmP2moBopzSg0oOmJ3erb9hh96Tw3OuzBHYQCYFz3qeTXW6Wi9l04G
CotUnXcpnnFeLuJlbClLpdQ2ne/efWZYsCTCMq1lU2heCdDlmsw=
=BD0O
-----END PGP SIGNATURE-----

--pklyyzehiknv5r3n--

