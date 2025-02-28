Return-Path: <linux-man+bounces-2543-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 168EAA4A502
	for <lists+linux-man@lfdr.de>; Fri, 28 Feb 2025 22:24:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4CB8816F2BD
	for <lists+linux-man@lfdr.de>; Fri, 28 Feb 2025 21:23:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 686B01D7E4F;
	Fri, 28 Feb 2025 21:23:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZVKJHYyY"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 083941D61BC;
	Fri, 28 Feb 2025 21:23:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740777832; cv=none; b=oNUZpoz6gE6XjFGtK3o0uVY6Kb0iXX+B8ozS1E/fv++FaV1UTsD7ykxTVhQ0b6Ng//7Qr9GIUG6m7yDCnLxf5yxThSjPiYpM/f5yNjBRWkD7Erp41YMit4FRpCA6abRURog2VVfqjQmj7PPbZKNJz2Q2FFcvFZBynJnm62tzBJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740777832; c=relaxed/simple;
	bh=jheh1VnV6j0oDWalZdNbiLHUD09dPChQcZHHvzcUD+Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZgukPVA3rITYRBHcsQUZpoLB53O7YgCpdWXZ1C2LHELXEM5L8l7NczMQ5o0k5hGp397I6qjYMcf6Pze/0xaWf06Hg1mt0iWKUwtY0bd1G6mXrpCfFFlmifQMUeNBnB8Rl1E89MZVFL9kcTU7nzSfkWN0dh6PerwNIO/GO741IO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZVKJHYyY; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 98266C4CED6;
	Fri, 28 Feb 2025 21:23:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740777831;
	bh=jheh1VnV6j0oDWalZdNbiLHUD09dPChQcZHHvzcUD+Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZVKJHYyYLf7m5wdBLFlYVD5uZNO01meMHNSKBA9pTvqTAvWXAkLgtjkFMSapc+l8/
	 9xBNH4kYIs2JCm2SM0T9qRUo9V7EPkjXZRe3D4HHQClOIgnyZR9+y2VgRUMSON4dSw
	 F/GBJL50lzPyJNIBmrGTuMSkwf/7+031li3SmuSYFvMUTk1cMub9UHG7oIP60FXBzg
	 9Mtbt1tZwNzqvP9LEGbW3r/rpb5u9iK6ESGp5Ndy9TFdomO2QukZtchUmdnzcqYtFq
	 QXILUKV0s0onreMxO6XjJdo1ukCL3xRb4x9DEC6YsKhEl3emYYEiIUT3P2qjirxK/Z
	 pvuXhVRtsXnNQ==
Date: Fri, 28 Feb 2025 22:23:47 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	Tahera Fahimi <fahimitahera@gmail.com>, Tanya Agarwal <tanyaagarwal25699@gmail.com>, 
	linux-security-module@vger.kernel.org, linux-man@vger.kernel.org, 
	Daniel Burgener <dburgener@linux.microsoft.com>
Subject: Re: [PATCH v2 2/3] landlock.7: Move over documentation for ABI
 version 6
Message-ID: <sbib2esl6bev7tqww3rgyykpxorpyaix7dujwwm2pg42egg6an@rdyjnecj5vti>
References: <20250226211814.31420-2-gnoack@google.com>
 <20250226212911.34502-3-gnoack@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="v2kkpi5cusklrt44"
Content-Disposition: inline
In-Reply-To: <20250226212911.34502-3-gnoack@google.com>


--v2kkpi5cusklrt44
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	Tahera Fahimi <fahimitahera@gmail.com>, Tanya Agarwal <tanyaagarwal25699@gmail.com>, 
	linux-security-module@vger.kernel.org, linux-man@vger.kernel.org, 
	Daniel Burgener <dburgener@linux.microsoft.com>
Subject: Re: [PATCH v2 2/3] landlock.7: Move over documentation for ABI
 version 6
References: <20250226211814.31420-2-gnoack@google.com>
 <20250226212911.34502-3-gnoack@google.com>
MIME-Version: 1.0
In-Reply-To: <20250226212911.34502-3-gnoack@google.com>

Hi G=C3=BCnther!

On Wed, Feb 26, 2025 at 10:29:11PM +0100, G=C3=BCnther Noack wrote:
> With this ABI version, Landlock can restrict outgoing interactions with
> higher-privileged Landlock domains through Abstract Unix Domain sockets a=
nd
> signals.
>=20
> Signed-off-by: G=C3=BCnther Noack <gnoack@google.com>
> ---
>  man/man7/landlock.7 | 69 ++++++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 68 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man7/landlock.7 b/man/man7/landlock.7
> index 11f76b072..30dbac73d 100644
> --- a/man/man7/landlock.7
> +++ b/man/man7/landlock.7
> @@ -248,7 +248,8 @@ This access right is available since the fifth versio=
n of the Landlock ABI.
>  .SS Network flags
>  These flags enable to restrict a sandboxed process
>  to a set of network actions.
> -This is supported since the Landlock ABI version 4.
> +.P
> +This is supported since Landlock ABI version 4.
>  .P
>  The following access rights apply to TCP port numbers:
>  .TP
> @@ -258,6 +259,24 @@ Bind a TCP socket to a local port.
>  .B LANDLOCK_ACCESS_NET_CONNECT_TCP
>  Connect an active TCP socket to a remote port.
>  .\"
> +.SS Scope flags
> +These flags enable to isolate a sandboxed process from a set of IPC acti=
ons.

s/to isolate/isolating/

AFAIU, to be able to use an infinitive with enable/allow you need a
direct object in the sentence.  If there's no direct object, you need a
gerund.

> +Setting a flag for a ruleset will isolate the Landlock domain
> +to forbid connections to resources outside the domain.
> +.P
> +This is supported since Landlock ABI version 6.

I'm wondering if we should have this as a parenthetical next to the
title, like we usually do with "(since Linux X.Y)".  Don't do it for
now, but please consider it for when you have some time.  I'm not saying
you should do it though, just that you consider it, and tell me if you
agree or not.

> +.P
> +The following scopes exist:
> +.TP
> +.B LANDLOCK_SCOPE_ABSTRACT_UNIX_SOCKET
> +Restrict a sandboxed process from connecting to an abstract UNIX socket
> +created by a process outside the related Landlock domain
> +(e.g., a parent domain or a non-sandboxed process).
> +.TP
> +.B LANDLOCK_SCOPE_SIGNAL
> +Restrict a sandboxed process from sending a signal
> +to another process outside the domain.
> +.\"
>  .SS Layers of file path access rights
>  Each time a thread enforces a ruleset on itself,
>  it updates its Landlock domain with a new layer of policy.
> @@ -334,6 +353,51 @@ and related syscalls on a target process,
>  a sandboxed process should have a subset of the target process rules,
>  which means the tracee must be in a sub-domain of the tracer.
>  .\"
> +.SS IPC scoping
> +Similar to the implicit
> +.BR "Ptrace restrictions" ,
> +we may want to further restrict interactions between sandboxes.
> +Each Landlock domain can be explicitly scoped for a set of actions
> +by specifying it on a ruleset.
> +For example, if a sandboxed process should not be able to
> +.BR connect (2)
> +to a non-sandboxed process through abstract
> +.BR unix (7)
> +sockets,
> +we can specify such a restriction with
> +.BR LANDLOCK_SCOPE_ABSTRACT_UNIX_SOCKET .
> +Moreover, if a sandboxed process should not be able
> +to send a signal to a non-sandboxed process,
> +we can specify this restriction with
> +.BR LANDLOCK_SCOPE_SIGNAL .
> +.P
> +A sandboxed process can connect to a non-sandboxed process
> +when its domain is not scoped.

Does "its" refer to the sandboxed one or to the non-snadboxed one?

> +If a process's domain is scoped,
> +it can only connect to sockets created by processes in the same scope.
> +Moreover,
> +If a process is scoped to send signal

Is this a typo?  s/signal/&s/

> to a non-scoped process,

Should we use plural here?

> +it can only send signals to processes in the same scope.
> +.P
> +A connected datagram socket behaves like a stream socket
> +when its domain is scoped,
> +meaning if the domain is scoped after the socket is connected,
> +it can still
> +.BR send (2)
> +data just like a stream socket.
> +However, in the same scenario,
> +a non-connected datagram socket cannot send data (with
> +.BR sendto (2))
> +outside its scope.
> +.P
> +A process with a scoped domain can inherit a socket
> +created by a non-scoped process.
> +The process cannot connect to this socket since it has a scoped domain.
> +.P
> +IPC scoping does not support exceptions, so if a domain is scoped,

Please break after the first ',' too.

> +no rules can be added to allow access to resources or processes

Please break after the second 'to'.

> +outside of the scope.
> +.\"
>  .SS Truncating files
>  The operations covered by
>  .B LANDLOCK_ACCESS_FS_WRITE_FILE
> @@ -413,6 +477,9 @@ _	_	_
>  \^	\^	LANDLOCK_ACCESS_NET_CONNECT_TCP
>  _	_	_
>  5	6.10	LANDLOCK_ACCESS_FS_IOCTL_DEV
> +_	_	_
> +6	6.12	LANDLOCK_SCOPE_ABSTRACT_UNIX_SOCKET
> +\^	\^	LANDLOCK_SCOPE_SIGNAL
>  .TE
>  .P
>  Users should use the Landlock ABI version rather than the kernel version
> --=20
> 2.48.1.711.g2feabab25a-goog
>=20

--=20
<https://www.alejandro-colomar.es/>

--v2kkpi5cusklrt44
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfCKVwACgkQ64mZXMKQ
wqm0Tg//S2x6oJ7wPhWL/sZCj79VGDm3RCwWzYgMKHEERAAMIvpR7s0zqsD3fsc6
tySeTJBr+Ry93/g9bsZRV8roo5nCRDx+B5jbbr75OJAQ1pbrE9pZKUWvWn7MgyLp
tkw5mHoHTA6YP845RSgUuBeFdrt6W6wbpqvIntFUBLWZfFADp34oCwg8kQXsQ1k9
CEmabEsVoN/7gFB9rVZWFafQKBCaDzh46cs0nWqZ+aZ3BKKp27TPW621efQ2TuBH
oWahZx5h6ARIMF12m3q46qswurCmkEV/Z4+C0bC5CIdAGWjRqmYF2AmcpnLNBEcR
1zjbvtXn3GkkF5epXzgqTcX6gwLzfOPYNghEX2CScdosXn4QSEZAMjFOqpiZP9JT
Mv15kQH2FnNI+RptJiOhSy7+iwIy6mJQHpWuaPviaaLoBa6DUDENp0+MlxnjrBbi
woJKGVVV3pG2J0nb9xAyx5N1ioKTPIw4uS249YdaM93iqG8ylzpic4sRtsvsm/sq
QmB5ixSZyUsP4a8b+xGUwP7Kz8UGFu0ufV+9CEkRdYk33OK4hX8a8dtdu4AUrajV
LCIDh/cgrbFM1n8u9w/BUmS4lF+14i/c1gYcCdXLuUGN9AUUp/bw2RYWP6qhc26G
7Dao/gBZ1NXBBeOrUXcPrwTbe8Avvjt1aL421QOk/Srgxr3kzJ8=
=6yle
-----END PGP SIGNATURE-----

--v2kkpi5cusklrt44--

