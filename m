Return-Path: <linux-man+bounces-252-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6791080F4BB
	for <lists+linux-man@lfdr.de>; Tue, 12 Dec 2023 18:39:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1A6CC1F215C8
	for <lists+linux-man@lfdr.de>; Tue, 12 Dec 2023 17:39:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61A497D8A5;
	Tue, 12 Dec 2023 17:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RjGZSl/z"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D2E1C687
	for <linux-man@vger.kernel.org>; Tue, 12 Dec 2023 17:39:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B06BEC433C7;
	Tue, 12 Dec 2023 17:39:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702402762;
	bh=KfEhZSL7qoLl8nkBEYdZWF1/18HE5WKHZDy/d/kLG0U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RjGZSl/zewnnWHqEejIMMUnuMEbn6Dkr7jmk210RSDVD60VYD/XbSYOEtICoC0IV4
	 eYDfHYSQYmq/WPZ6dFWaRQRC2w13PpOn+EiZKZ+IqpusSmDkC1KLh7tOOlHH4p9gGd
	 Lw6gaN+zYMZOoCkO6CK299+fl3uFuKFuUcnyqv2UvUTZxS35TVA169xL6CBOD2pAZ9
	 JkISW2hAJBLU+LVm0d/4NgxrS2mTcEo0xjIANTE6cRh9tWVH0EkOfTT6vSMt44198T
	 E7/2q6+VJu8o+vaPcNw3TF9nDKgnW+Z5VJoJHL/pf9huC+Jz0JtMACtS3pGa7YiZrZ
	 s5ewhj4azGwYg==
Date: Tue, 12 Dec 2023 18:39:13 +0100
From: Alejandro Colomar <alx@kernel.org>
To: ellie <el@horse64.org>
Cc: linux-man@vger.kernel.org, Petr Gajdos <pgajdos@suse.cz>
Subject: Re: Suggestion for clarifications on "man 5 proc" page regarding
 /proc/[pid]/self race conditions
Message-ID: <ZXiaxx3mjXhLDayT@debian>
References: <e170ffa6-986a-4e55-9d44-27d7d7520151@horse64.org>
 <ZXhrblTGLBirUpki@debian>
 <c78fe5eb-65cd-4705-8628-d07240906bff@horse64.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dDRboyXwaNlt4i9o"
Content-Disposition: inline
In-Reply-To: <c78fe5eb-65cd-4705-8628-d07240906bff@horse64.org>


--dDRboyXwaNlt4i9o
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 12 Dec 2023 18:39:13 +0100
From: Alejandro Colomar <alx@kernel.org>
To: ellie <el@horse64.org>
Cc: linux-man@vger.kernel.org, Petr Gajdos <pgajdos@suse.cz>
Subject: Re: Suggestion for clarifications on "man 5 proc" page regarding
 /proc/[pid]/self race conditions

Hi ellie,

On Tue, Dec 12, 2023 at 05:55:13PM +0100, ellie wrote:
> Thanks so much for the response!
>=20
> For what it's worth, I checked my code again for the correct path, what I
> meant was /proc/self/exe which links to the binary of the currently runni=
ng
> process, as far as I understand it.
>=20
> I'm not sure it's easily possible to write a test program, because the
> open() wrapper by the libc on the /proc/self/exe symlink would need to be
> intercepted at just the right time in case /proc/self/exe is actually
> vulnerable. The breakpoint wouldn't be in the regular user code, might ev=
en
> be kernel code I guess, depending on where the race condition is located =
if
> it exists. (For FreeBSD a developer told me it supposedly exists for
> /proc/curproc/file which is apparently the equivalent, although that was
> about two years ago so I don't know if that has changed since.)

Do you suggest that open("/proc/self/exe", ...) could have a race within
the kernel?  It might be useful to CC <linux-kernel@vger.kernel.org> or
some other mailing list to be sure.

>=20
> The wrong approach via readlink() on /proc/self/exe and then libc open() =
on
> the resulting path should be easy to intercept and break, but that doesn't
> really say much about the question at hand. I guess that this readlink
> approach isn't a good idea, even if commonly used, should be relatively
> obvious.

Now I'm not sure if the question at hand is that readlink(2)+open(2) has
a race (which of course it has), or if open("/proc/self/exe", ...) is
the race you're suggesting.  A patch for the former is welcome, and you
could add something like this to the commit message (or you could skip
it if you feel lazy, but these things help).

	int   fd, r;
	char  path[PATH_MAX];
	char  text[BUFSIZ];

	if (readlink("/proc/self/exe", path, NITEMS(path)) =3D=3D -1)
		err(EXIT_FAILURE, "readlink");

	sleep(100);  // Give some time for the race
	// $ readlink /proc/$pid/exe \
	//   | while read f; do
	//           mv $f $f.bak;
	//           echo malicious >$f;
	//   done;

	fd =3D open(path, 0_RDONLY);
	if (fd =3D=3D -1)
		err(EXIT_FAILURE, "open");

	r =3D read(fd, text, NITEMS(text));
	if (r =3D=3D -1)
		err(EXIT_FAILURE, "read");
	if (write(STDOUT_FILENO, text, r) =3D=3D -1)
		err(EXIT_FAILURE, "write");

Have a lovely day,
Alex

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--dDRboyXwaNlt4i9o
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmV4msEACgkQnowa+77/
2zIFOQ/+NMp/6xFkBRfOIBknQZ+8Pyz5kK2uony1/MMuQGbvIPrsz4gPjso9bhp7
P0005sJD64mHKS7HAcmxkZ8cNGx8dkQfBWdbFnsGgI8xftFppq2ZRtX7VDtT9PRA
1IG430+Y2f4RIDNHmBvP0LtaJMC1g5xgTVshLGSe2vGU8HtefzDgx/4G/+qhEKxV
oF7loOBzcSOxxW4ARyA5cu7syQBL32ew6bhfCKQbtYtGuj8JMnnIYogGNwNdKMM6
ZAEeces+qoswbgJjv5oHauxB2nky5NUigyynY9oixhnjCpwlws59xxiqCusz5vWa
hl+mnfzyH7aNH1TTzUFr81z5llF5zBUcAAHHk9lLeDnlrqieg9D4JnoRhNi4h2ZW
ia2hGEima4NCG12iuaj2fnnJV34o4Q0IjUTQ70XyEonxEqKldMrpnMxnLvz+CAc0
CLjmtlqUmZPWaiKbbr73trWf6NalanhCNCcLIrUPP34KRl8Nchj8tyENJpiXXy0j
73/OO+Viq0Ers+DMvtQMgtcZdc+eiw6UD8mNfEKNcMzlLxbwH3qpk+DshRVqIEN6
D14ybXj/nf+q6hr6HUfr/JzumBCQ3GMB/NFg/JF4HuBIzYUciZ1LSKn2J/ntbQyS
skfGSSUBJEuWsRotPzeyw2//swya5SrkxUoIvzUlzY7PgqabDVo=
=PBTk
-----END PGP SIGNATURE-----

--dDRboyXwaNlt4i9o--

