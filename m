Return-Path: <linux-man+bounces-937-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 587408C99FB
	for <lists+linux-man@lfdr.de>; Mon, 20 May 2024 10:53:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0E4142819D8
	for <lists+linux-man@lfdr.de>; Mon, 20 May 2024 08:53:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BF541B974;
	Mon, 20 May 2024 08:53:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QQ1oN30B"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B7F1A2D
	for <linux-man@vger.kernel.org>; Mon, 20 May 2024 08:53:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716195207; cv=none; b=ujniYhsUdzUtWKHsa1n7pDHhvXGjxxs9PBpcMOf7p1t6NolWjavbc+h4mw3r6uFPIroaIXPaL0co/MuhRsE/viqCfTrM5mqQKRaw7J01Dsl9Q+pbT5dfw9IZqFgzFYp2yhLFEoDBOxYwXIkBa11BQTjuDvJx9Mn41UnBEirWry4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716195207; c=relaxed/simple;
	bh=IFEdgkSlq3izUNq7w/o8YIf1b2b0WopmmPwV3QjLyk8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=evWFJ9XLUDrjJOzFamyboIB5Zj+Jtm9OKI29IjpziHJ6Yy6KE+6UDZZuRofZLWBppDm4XHO6V2cAp+V19QneKqcL1w3q1c/KRjBGuiSjDA/NhuOBasQK/bPZnNUBhfCY7F3gUfZvBXeQ74BIct3ex/G44YLJaCud6x5o+jHkMZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QQ1oN30B; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0F383C2BD10;
	Mon, 20 May 2024 08:53:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716195206;
	bh=IFEdgkSlq3izUNq7w/o8YIf1b2b0WopmmPwV3QjLyk8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QQ1oN30BXvRPtl5NyE2O6Fz3w851SrSlsigTm1R9HK6tic56JYkzAooK+f7uEsdY8
	 rT+CUtspEU8V0/GOFrY9H2+Xa0ymSVYCrU7vZzyZoBEKrg+vl2tkvAWnz8AoEzDIf4
	 j2vjZE7v6jRr4IqfS/kyjTz8k+efigqxH+5nJxmesNbiRXAi6c7cxdlAnmncko7EWD
	 SkAXehKfIgR1bUUYI3/TokerKGgJ6e91ScSZEYlv/eZezXNKFD5nQjwn2xJA2QxOKb
	 7LO+qUCnMlfBhoCYMKQ65DbDeDIKYcleoszyd/LN+vjl640uCBD9QLcAb+mTPwuqKE
	 +mlRfa0sEjGCA==
Date: Mon, 20 May 2024 10:53:23 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Emanuele Torre <torreemanuele6@gmail.com>
Cc: linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: Re: pidfd_open.2: PIDFD_NONBLOCK is not defined by the listed headers
Message-ID: <5j4gyoh75xrmuljl3dlobviroi3huhriufk6gzcwsyeibupov3@lpmy4moyjjhn>
References: <ZkrZb91EgZoaOybZ@t420>
 <e4avr4d44fpkqtby6i53qthlkvhvum7fxkq63hkmuqtqgougyr@cropbgglzx2a>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="445vsyse2xdsokpv"
Content-Disposition: inline
In-Reply-To: <e4avr4d44fpkqtby6i53qthlkvhvum7fxkq63hkmuqtqgougyr@cropbgglzx2a>


--445vsyse2xdsokpv
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Emanuele Torre <torreemanuele6@gmail.com>
Cc: linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: Re: pidfd_open.2: PIDFD_NONBLOCK is not defined by the listed headers
References: <ZkrZb91EgZoaOybZ@t420>
 <e4avr4d44fpkqtby6i53qthlkvhvum7fxkq63hkmuqtqgougyr@cropbgglzx2a>
MIME-Version: 1.0
In-Reply-To: <e4avr4d44fpkqtby6i53qthlkvhvum7fxkq63hkmuqtqgougyr@cropbgglzx2a>

Oops, I mistyped the glibc list.  Below is included the original email.

---

On Mon, May 20, 2024 at 07:02:39AM GMT, Emanuele Torre wrote:
> Hello.

Hi Emanuele,

> pidfd_open(2) only lists sys/syscall.h and unistd.h in its SYNOPSYS:
>
>   SYNOPSIS
>          #include <sys/syscall.h>      /* Definition of SYS_* constants */
>          #include <unistd.h>
>
>          int syscall(SYS_pidfd_open, pid_t pid, unsigned int flags);
>
>          Note:  glibc provides no wrapper for pidfd_open(), necessitating
>          the use of syscall(2).
>
> Then it mentions PIDFD_NONBLOCK as one of its flags:
>
>   PIDFD_NONBLOCK (since Linux 5.10)
>          Return  a nonblocking file descriptor.  If the process referred
>          to by the file descriptor has not yet terminated, then  an  at=
=E2=80=90
>          tempt to wait on the file descriptor using waitid(2) will imme=
=E2=80=90
>          diately return the error EAGAIN rather than blocking.
>
> But PIDFD_NONBLOCK is not defined in any of the listed headers.

Hmmm.  Thanks!  We need to add its header.

> I have noticed that PIDFD_NONBLOCK is the same value as O_NONBLOCK,
> so perhaps this flag could be listed as
>
>   O_NONBLOCK or PIDFD_NONBLOCK (since Linux 5.10)
>
> like O_NDELAY and O_NONBLOCK in open.2.
>
> This way the user would know that O_NONBLOCK may be used instead of
> PIDFD_NONBLOCK if PIDFD_NONBLOCK is not available.

No.  That's an implementation detail, which shouldn't be abused.

> I have also noticed that GNU libc (in its linux-api-headers submodule)
> provides a linux/pidfd.h header that just defines PIDFD_NONBLOCK as
> O_NONBLOCK, perhaps another solution would be to list in linux/pidfd.h
> in the synopsis and say it is required to use PIDFD_NONBLOCK.

Yep, that's the kernel uapi header.  I didn't know glibc redistributes
those.

Anyway, we should indeed include <linux/pidfd.h> for this macro.

> Then, I also noticed that GNU libc now also provides the sys/pidfd.h
> header with the definition of PIDFD_NONBLOCK, and prototypes for
> pidfd_open, pidfd_send_signal, pidfd_getfd, and also a prototype for
> pidfd_getpid that is an helper function that parses the "Pid:" field
> from /proc/self/fdinfo/FD and currently does not have a man page.

Hmmm, I've CCed glibc for a question:  When you provide a macro like
this one, without providing a syscall wrapper, should we include the
glibc header or the kernel one?  Do you provide all kernel uapi macros,
or just select ones?

>
> So probably the best solution is to just make the pidfd_open(2),
> pidfd_send_signal(2), and pidfd_getfd(2) man pages tell users to include
> sys/pidfd.h and call the GNU libc functions instead of including
> sys/syscall.h and unistd.h and calling syscall(2) directly; now that
> sys/pidfd.h exists.

Ahh, interesting.  I'm using glibc 2.38 and still don't have that one.
It seems added in 2.39.  We can directly document that in
pidfd_getfd(2).

> And maybe to also add a pidfd_getpid(3) man page for the new pidfd
> helper function.

No, usually we document the glibc wrapper in man2, unless there's a big
difference between the kernel syscall and the glibc wrapper.

Thanks for the detailed report!

Have a lovely day!
Alex

>
>
> o/
>  emanuele6

--=20
<https://www.alejandro-colomar.es/>

--445vsyse2xdsokpv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZLD4MACgkQnowa+77/
2zILTxAAmu0iczLcJVlc8xGEeeLOLLw6PTNMKFCeia9TxWGM3DYY72scQslgH2ZB
pfba8OHUSbaZZ+5wotXjl0LB3Rb+/xlrqPkDpcY8IEbddHR7TUXLp+7Yhk0UKAqq
B+bgxsnExb+6GJiJpzbb8ZaNKzS5npUMaDMzoejBa1Al+fqt/CPASHLHQrD+vx7U
YoXRtoisxjk4+b1om+nCVC61Otwrr3mLLln/sbltglNFMhowF6jwGh0bPMyNVWiQ
7UY5+p606WQ/A7c/9fhn+3Sh/1oRqPbq9rpiBuaogBZphWQV51euEXY5Wm1vBKkQ
41TelhWQOxp9bJOJM6Jl/+WYRc3havLDFu4Tdodmhjl9M3aJaGXS7Vg86tZ5Q2/f
ZzBZkicOfpjHeX4bdqJasZvdfBFBHmQ2vo1iLRLxnX8u0vBk4G6Rju9FeS1AAxTJ
KtSShMN65mcz1UCttJMaRoHV+RU0kmctllqfYe1asV1B9lVk9dErw0PVFMwgIEX1
oCJ08oJuXDInru2yr70R1EmB0yW16tyA+JsIhNYyDGAU3kA1HKWt7r1sk8w35UW6
hxcBpCZEzFvmDh9HG2XWVlpp7Xy8WM29j3zub0OzdweAe+AadzdCzFe5/2QRA/GH
3tCacA6OmdhhTbpYFBftzA/bO69bQthCPV6gWsuaYMMNo0+9frA=
=9BuL
-----END PGP SIGNATURE-----

--445vsyse2xdsokpv--

