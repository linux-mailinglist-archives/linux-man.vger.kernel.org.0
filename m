Return-Path: <linux-man+bounces-744-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 283638A3E1F
	for <lists+linux-man@lfdr.de>; Sat, 13 Apr 2024 20:40:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5EAAB1C209B0
	for <lists+linux-man@lfdr.de>; Sat, 13 Apr 2024 18:40:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E568E53362;
	Sat, 13 Apr 2024 18:40:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b4J6gJVL"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A431145C1C
	for <linux-man@vger.kernel.org>; Sat, 13 Apr 2024 18:40:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713033601; cv=none; b=PI3LQZ8S9Bvue9PWB0UXtoDMdGXqwIeQy1MjSW/jFrm7zAZv+vn0b1TNUp4qCWlFl7AhBSA6qn+1XWflX3kFCNBTJBPTFwA71RIW4USkkt08Yi6ZPgs//9gX8wfry2ODZlqV5VBqwszScF9Hb5569IKyuOotm9Zco1pfJLHUF4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713033601; c=relaxed/simple;
	bh=z9xjslMpP4VWGQX1Gpu7jCm1ZARzkEJB1z0nPQ3TPtw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=r910fB5ed81LEPdl9XZzj6m8DvUzj4plyey9SqyYMT9lger55tsaim2ZHuB6sF3I9a3J2gx+9pHTXo7zTd1bkpyeE/MZSA7mtyUO7nsSbodk7ZPvPXyNmC6YhjCKVgAmWDkgfMUP4nMttdotEBGsY9jad5A6VMuatYd8KTnQ2mQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b4J6gJVL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2798AC113CD;
	Sat, 13 Apr 2024 18:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713033601;
	bh=z9xjslMpP4VWGQX1Gpu7jCm1ZARzkEJB1z0nPQ3TPtw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=b4J6gJVLswwgu7Jm0eXvjOd6TzaEdhI8AGUymsn12G7FXEcfP2Lmk+qvIPBp8o4tm
	 AfcFL6J994obq5+qiZe9SRPho31AVXvaASDfizZ4hG+rtcTofItEWEjbQ/ALN/UMfI
	 7MN3WgU/ne4R5gNvAhUqd8Gov6U1OtFsaewdMgcLCbSfC0drWabYXi6Y7m/haJmIfq
	 3YCgnNqzTQgqsRvywT5pP8BhcExzfUa3+53DgMx/XixxsfwPxqbscTikUtoV865FrR
	 tf53AkXERk3qpCXBCUqor6UIU6XL6m4eOAblDARO9Vy/b2ksbEeBk59Fgk2XUBh0An
	 NVpTDK8FyJ+Kw==
Date: Sat, 13 Apr 2024 20:39:51 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Keith Marshall <keith.d.marshall@ntlworld.com>, branden@debian.org
Cc: linux-man@vger.kernel.org, Ingo Schwarze <schwarze@usta.de>
Subject: Re: man page style conventions
Message-ID: <ZhrRfmky6hB_6eJV@debian>
References: <bcc2e2ec-32af-4254-a2c9-1884f28af407@ntlworld.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mQ89K0RWZ05iBwXV"
Content-Disposition: inline
In-Reply-To: <bcc2e2ec-32af-4254-a2c9-1884f28af407@ntlworld.com>


--mQ89K0RWZ05iBwXV
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sat, 13 Apr 2024 20:39:51 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Keith Marshall <keith.d.marshall@ntlworld.com>, branden@debian.org
Cc: linux-man@vger.kernel.org, Ingo Schwarze <schwarze@usta.de>
Subject: Re: man page style conventions

On Sat, Apr 13, 2024 at 01:22:01PM +0100, Keith Marshall wrote:
> Hello,

Hi Keith! (and Branden!)

> In the man-pages(7) document, as rendered at:
> http://www.alejandro-colomar.es/share/dist/man-pages/git/HEAD/man-pages-H=
EAD.pdf#man-pages.7
>=20
> under the section heading "FORMATTING AND WORDING CONVENTIONS", and
> subsection "Formatting conventions (general)", close to the bottom of
> page 9, I see:

Page numbers broke at some point.  I noticed recently, but didn't know
when it started happening.  It might have been some of the refactors I
applied to the script.  If anyone contributes a fix to the script
without making it less readable, please.
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/share/mk/=
build/pdf/book/prepare.pl>

>=20
> > Any reference to another man page should be written with the name in
> > bold, always followed by the section number, formatted in Roman
> > (normal) font, without any separating spaces (e.g., intro(2)). The
> > preferred way to write this in the source file is:
> >=20
> >    .BR intro (2)

Yep.  We still follow that convention in the source code (you can check
yourself at any page's SEE ALSO for example).

> I have noticed that, as of groff-1.23, both groff_man(7), and the macro
> package which it documents, flagrantly ignore, and indeed violate this
> convention.  I further notice that man-pages(7) document, from which I
> have quoted, above, appears to have been formatted using that very
> version of groff_man(7), perhaps with the intro(2) reference, within the
> quoted paragraph, having been formatted using:
>=20
>    .MR intro 2

It is written in the source code with BR:
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/man7/man-=
pages.7#n754>

However, the magic script that prepares the PDF book does some
transformations to MR.  I think it's this line:
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/share/mk/=
build/pdf/book/prepare.pl#n140>

I would love to see that perl(1) script transformed into a bash(1)
script, so I can put my hands on it comfortably.  If anyone offers for
such task, such anyone is more than welcome.

> rather than the recommended:
>=20
>    .BR intro (2)
>=20
> This leads to a glaring anomaly, within the quoted paragraph; rather
> than the topic name "intro" being set in bold, as the convention
> demands, it is set in (non-bold) italics!

If you see the manual page in the terminal, you'll still see it in bold.
>=20
> In my personal opinion, FWIW, the use of italics in this context is just
> plain ugly.  Opinion aside, it does not conform to the convention, as it
> is stated in man-pages(7) -- either the convention needs to be changed,
> by common consent, or groff_man(7) needs to be brought to heel.

Yep.  I'm waiting for Branden to send MR.sed, aka, the biggest
single-commit change ever to this repo (AFAIR).  When he sends that
patch, I'll change this page to recommend the use of MR.  (Or he could.)

Have a lovely day!
Alex

>=20
> --=20
> Regards,
> Keith.

--=20
<https://www.alejandro-colomar.es/>

--mQ89K0RWZ05iBwXV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYa0XcACgkQnowa+77/
2zIPEA//YTs6i9f5jWRR6H9eGtlr3JTMjE9yhD8Q5bD6BIVe2ruMkKg+FIfT/6Pt
umxgfXSkzQa+mkXa8RDD8Z1AdtSmCjX5diMO20NFf6+z7BF+IimtpIuGbH8jBrwb
oTDXkaGcuEMafqfkLNnF6pATdJ2TYYTh3RwPELS2rHMrhcuei5HOfMCxAVS8mq2w
pQOlIR7XSdxM8shZybEjDRGMuZ8kRzklDrMNmr1DNWgM3/HjDlW3ihF1NNIkpyaW
EzQdIHU89dhj6JfXrR3qEqCuKSXxuMiGw+uQLd5wS8ugwCggjcJpVtiLPKLt3Xnz
UadeAwx2JK5/FvbOgZ4dI2kGk/+uiZBHGih5t/TYpfviXYhNSXIS18yRJRJSkHuM
Ne/p/dI2atgtzLtp7WCBNGJXyUsczl8h9swvddCJ/VWm91DpRz1Pp2leATqk8VQW
VARVwNb7/AytB6/0Q7wDGi6mJnI+QNZDG4HNHY5KjqgU76Foe9bFjNUfmqcpSQQ5
CAki4kBL+V25jTkbx/b+EAadD/qUjNq3pbeDot9IS/wNyI9poPip3VHA37uBDs0k
kaI6DKcsfmMULA7KsiHX5V1zEvEmHH3JhODerXXNFXrrov2McpHqvTNuU+JV/Vz1
i5t+8C401AAcHf6B49bzkq7YCY9mclfOx0W0Mn3l/ZNbnFAJa7g=
=qYy4
-----END PGP SIGNATURE-----

--mQ89K0RWZ05iBwXV--

