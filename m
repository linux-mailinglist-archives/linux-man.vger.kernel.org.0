Return-Path: <linux-man+bounces-699-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AD57988D2C7
	for <lists+linux-man@lfdr.de>; Wed, 27 Mar 2024 00:20:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D1B471C301C6
	for <lists+linux-man@lfdr.de>; Tue, 26 Mar 2024 23:20:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E56B113DDB5;
	Tue, 26 Mar 2024 23:20:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jtGxMXjd"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A65576FE35
	for <linux-man@vger.kernel.org>; Tue, 26 Mar 2024 23:20:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711495248; cv=none; b=gMI3w28E6o3HMvhrXWN9KhJ6pXs/6OrVG+vEq+ejgeG16+ByWACqXLAdjQipgSkRf0AJMrK6ztV2we3ZQtQZEVJk6JVyGk2bqx9ztS/ZjdzMBsTEElmI4TMNpqGJVF+yhpvr9hmz9HhIXcg1ggxGRmFJUqkE3pBO0ue1a7TPMzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711495248; c=relaxed/simple;
	bh=pxcDJQNVrGqPvh0Ta/27twosBem1+IV88TT+P0aRwX0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uRxd0Q5B+lqeVVcpI8LNV5tUZDEkVdSubqy6FV4giVWkheG4G6txs/we9BiJkrESbQ3GA+D2ru6K5lj3CpyXJafZ5g9XlKumStidaxUggFAxGolBnAkCQHVTxJLUptdTzO3oXcUzKfoKBWuX22vanSfVKoMeyr/DH6Q47eKJJLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jtGxMXjd; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6281BC433C7;
	Tue, 26 Mar 2024 23:20:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711495248;
	bh=pxcDJQNVrGqPvh0Ta/27twosBem1+IV88TT+P0aRwX0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jtGxMXjdq7e0SWO7sL89xvYs7NN+bNeLTJiXZFYwjLUIVyUoXBfmGN3q4PaMnQkUV
	 FiDTDlpL49/Y6SlFJ7GJZ8rUHHlSu1d/4OUFZ5pCw9ciEPh6hA8LnT47pC38ElMAsZ
	 c0OeTlCbf6KEkLPr6j3a8+EHaofKlfVbZJKjKiZ7o4cPfkcVspS4hj67bPDm7jGhJL
	 JTIkGqOs9bXd87/PAfBMZW480kNmCV9flJ4VGVItUqJpEMg3SLUnwb8PbWz7UM9kQD
	 Gjr/PE/e5y5wzwEo3aS6+hzIiGlhk9lZR5rxlBnuWRssZEVaNvqQrQ17eMLAqNbdFG
	 KR7Z0hta7YxJg==
Date: Wed, 27 Mar 2024 00:20:32 +0100
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: linux-man <linux-man@vger.kernel.org>,
	"Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: Re: getpagesize.2
Message-ID: <ZgNYTXW4qHm7fBxi@debian>
References: <CAJgzZooCY7EV5LZSom08k0wVB2SW3KAk-HL9VMsioxivQB=MeQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="F2YOWQHKMekrDs1O"
Content-Disposition: inline
In-Reply-To: <CAJgzZooCY7EV5LZSom08k0wVB2SW3KAk-HL9VMsioxivQB=MeQ@mail.gmail.com>


--F2YOWQHKMekrDs1O
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 27 Mar 2024 00:20:32 +0100
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: linux-man <linux-man@vger.kernel.org>,
	"Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: Re: getpagesize.2

Hi Elliott!

On Tue, Mar 26, 2024 at 03:27:27PM -0700, enh wrote:
> i'm not sure a lot of the text in getpagesize.2 is very helpful? for
> example:
>=20
>        Portable applications should employ sysconf(_SC_PAGESIZE) instead
>        of getpagesize():
>=20
>            #include <unistd.h>
>            long sz =3D sysconf(_SC_PAGESIZE);
>=20
>        (Most systems allow the synonym _SC_PAGE_SIZE for _SC_PAGESIZE.)
>=20
> is this a good recommendation _unless_ you've found yourself on a system
> that doesn't have getpagesize()? on Android i'm advising getpagesize()
> because it's (a) attribute const and (b) inherently cheaper than sysconf(=
).
> (though obviously, "if it really matters, stick it in a static".)
>=20
> afaict the only motivation for the "portable applications" advice is that
> HP-UX removed getpagesize() at some point? but given that HP-UX has been
> kept "alive" in an artificial coma since 2007... does anyone writing code
> in 2024 need to worry about that enough for this to be good advice?

I hope not.  It's dead, AFAIC.

> getpagesize() is available on Android, *BSD, iOS/macOS, glibc/musl, and
> even mingw!
>=20
>        Whether getpagesize() is present as a Linux system call depends
>        on the architecture.  If it is, it returns the kernel symbol
>        PAGE_SIZE, whose value depends on the architecture and machine
>        model.  Generally, one uses binaries that are dependent on the
>        architecture but not on the machine model, in order to have a
>        single binary distribution per architecture.  This means that a
>        user program should not find PAGE_SIZE at compile time from a
>        header file, but use an actual system call, at least for those
>        architectures (like sun4) where this dependency exists.
>=20
> should this just say alpha, sparc32, and sparc64 instead of being vague? =
(i

Yep, I'd appreciate that, after the current text (not replacing it).

> suspect anyone who doesn't default to searching the kernel source would
> turn to the man pages to answer the "which architectures?" question :-)
> though i'm not sure why anyone who doesn't read the kernel source would
> care whether getpagesize() should really be in man2 or man3...)
>=20
>        glibc 2.0 fails because its getpagesize() returns a statically
>        derived value, and does not use a system call.  Things are OK in
>        glibc 2.1.
>=20
> 1997 called, and wondered whether we're helping anyone by documenting a b=
ug
> that's been fixed longer than several folks on my team have been alive? :=
-)

Agree.

Do you intend to send patches?  Otherwise, let me know, and I'll prepare
something.

Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--F2YOWQHKMekrDs1O
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYDWEAACgkQnowa+77/
2zI7kxAAjwcGhTtp+bSV1N6QfC9FIczArMejEUgOz9Ca52VcDhkxy+STfySNlq1J
hl9r+TsmqNzwT1sTCf/63aFWkpi23GijfG8JU53VUB7CNsE75fqfGYxkJQQDpP22
yuauO35aNDnQMCJD2GfWPtGHILNPnocSaZY3dREzPdHeCWBuLo3ChQBOIM0HtF/a
TlRJY4TGRdNWj5gcR9738zqXSKMJGPPPoLbO/9Rjl4Tad7MbS75fyb0mihHZM46x
QljXLwLSjxhoWhuLyp83h95hjNz8zL+2v9gfdjpEyEx9LMAy/ytrhhXK0lxTZN/+
49YSeSSVa2XxBMe0APw2BfLtX/J3FMmyTzHin+cdW4jw+0dMVp55X6k1KHrjEz6D
xelGjp4pg7CzKZvuEUuvlzD/8rimCM+DU9n1/9uAzyvYESJgf07TW1EuUB/zxtj1
frOYSQGjb5WygG36PclsjPjWKxQEAAPEfV2AiQ0VSXKknlrz2DSigOoFbpWDVTcc
wmtQHhKaNcTmhJQ0UA9kZZ9QkaKddfqY7PqLaAQvIRESTE5WcoHFggt8BR26D4AL
RJIj0HhmQUw4Ols3G9CNwaA8EHRPqKx6ZD3H+oT8QI35yfAMNwqoofXhXJd0mETn
zuyDVA0fJlSES5bzFyIaH/Dews9UaTD/ugNEjZ/EmOEHACM/gek=
=JNNq
-----END PGP SIGNATURE-----

--F2YOWQHKMekrDs1O--

