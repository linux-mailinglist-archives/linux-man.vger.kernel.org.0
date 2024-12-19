Return-Path: <linux-man+bounces-2175-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 488DA9F886A
	for <lists+linux-man@lfdr.de>; Fri, 20 Dec 2024 00:18:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A1C2B169191
	for <lists+linux-man@lfdr.de>; Thu, 19 Dec 2024 23:18:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 840931C5F1E;
	Thu, 19 Dec 2024 23:18:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="imt5XflE"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397341BC9E2
	for <linux-man@vger.kernel.org>; Thu, 19 Dec 2024 23:18:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734650312; cv=none; b=tk3T16ipDxJCzbNsVQBupkRu88zmx2INLYYJz5DgYi51GpD9ii36+NaeLbVq1/5r4l0hVTI63oQByNjRoJutJygixdHHnYZAAo2jGnmJf+ZAn3RDdjarNYzrrUW7NMxpiybD1HnOwBClFttXtZceY41Zyj/FbW/6p9/ZdN4KZGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734650312; c=relaxed/simple;
	bh=osrdV1uXcmeWlzFsfLXmWP26kWgFN0kD/rYPbhS97+k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oFbRKTSnJfWI9J+K6e4bvMWeq8qOwRh+ZI+lUz0IlU1mDZoArGpYnJrl0aObSPYx7TryP2b14Ksa8Z0GmUhyTEdtB9ChTOU9MxL6m/Xxgto87TbSEnvP/O1iBBRd9WoPKZOTsTkKZpz76nYomXs+NSi0NCs4y42IQ4x/yqzpeog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=imt5XflE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ADDF1C4CECE;
	Thu, 19 Dec 2024 23:18:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734650310;
	bh=osrdV1uXcmeWlzFsfLXmWP26kWgFN0kD/rYPbhS97+k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=imt5XflECqG6y3+CRV46Rp6bgzX7aZKIGqvAS4958QPv50qCIx5WIwMKi0dXiWexB
	 TQWpixuyAtJZ6aC7gvWOdmW+A/yro0DnArMhun5CVI9zOaNBl8V8LYB8lMhx/mnHTk
	 Ig4otqLlmKoJN1oXUesplTqly9H5k16iR9x/1vHzZiaS086HAFMaGcqmP7rFchmvuq
	 QfEvBal6a3qpN6Pw9nD0/DUG62rJvkqEd1oCEDzyMUqbRFyPR4ZKNVdUFr5KgkDiQx
	 RJtZLPFx6gw9gqrTcoTGxNpPbOI6IPSKwIO+I+zox/vZ2BjnwVE4pGUiYUvFLxYi+C
	 d8auEbyBO0aBA==
Date: Fri, 20 Dec 2024 00:18:26 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: How to set URLs in man pages
Message-ID: <20241219231826.mfljkwjjzgr7smv5@devuan>
References: <20241219161912.bclicxtutaji42qd@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uouyklrcvqwc2bmp"
Content-Disposition: inline
In-Reply-To: <20241219161912.bclicxtutaji42qd@illithid>


--uouyklrcvqwc2bmp
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: How to set URLs in man pages
MIME-Version: 1.0

Hi Branden,

On Thu, Dec 19, 2024 at 10:19:12AM -0600, G. Branden Robinson wrote:
> Here's the exhibit Alex handled recently:
>=20
> At 2024-12-19T12:08:35+0100, Alejandro Colomar wrote:
> > I've had to amend the patch again.  I didn't notice that it caused
> > many warnings in -Tutf8, -Thtml, -Tps, and -Tpdf output.  I've applied
> > the following diff.
> >=20
> > diff --git a/man/man3/getopt.3 b/man/man3/getopt.3
> > index 3b0025528..cb946355a 100644
> > --- a/man/man3/getopt.3
> > +++ b/man/man3/getopt.3
> > @@ -384,7 +384,7 @@ .SH HISTORY
> >  .IR <stdio.h> .
> >  .P
> >  Very old versions of glibc were affected by a
> > -.UR https://sourceware.org/git/?p=3Dglibc.git;a=3Dcommitdiff;h=3Dbf079=
e19f50d64aa5e05b5e17ec29afab9aabb20
> > +.UR https://\:sourceware.org/\:git/\:?p=3Dglibc.git;a=3Dcommitdiff;h=
=3Dbf079e19f50d64aa5e05
> >  .BI _ PID _GNU_nonoption_argv_flags_
> >  environment variable
> >  .UE .
> >=20
> > That adds break points, and also reduces the hash by half (which
> > should hold without clashes forever, hopefully).
>=20
> I observe that break points could also be added after semicolons.

I would have done that if there was another warning.  But I prefer to
keep that part as a single token, if not necessary.

>=20
> Also, you can escape a newline to keep the input line length short.

I prefer to keep the input line unbroken.  It makes it easier to sed(1)
stuff later.

It keeps the language simpler.


Have a lovely night!
Alex

> .UR https://\:sourceware.org/\:git/\:?p=3Dglibc.git;a=3Dcommitdiff;\
> h=3Dbf079e19f50d64aa5e05
>=20
> groff_man_style(7):
>      \newline  Join the next input line to the current one.  Except for
>                the update of the input line counter (used for diagnostic
>                messages and related purposes), a series of lines ending
>                in backslash=E2=80=90newline appears to groff as a single =
input
>                line.  Use this escape sequence to split excessively long
>                input lines for document maintenance.
>=20
> Regards,
> Branden



--=20
<https://www.alejandro-colomar.es/>

--uouyklrcvqwc2bmp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmdkqbsACgkQnowa+77/
2zLCzA/9Fwh9mBnJZTXXpmGZQJqBvLQ2vrwvVN9UsKQ2cXNB4VFbqwjfEKa9OEm3
VlGGq7ZpQH1er4EWiIxpw01NK4Vce3MOQYE03pb2WGXJWJjNbKVhH4u6MGcOliKb
2YlZWBpmChDxLGtfXDpc/E1XWxbF8GYONZ0vjxAGjCEBQPvLt3ClVu2TCu+RtAGM
qCyaoYAJcdnOBKPudDGQrDQYGmkbJ38p5l5nvZshJFpCxCBxBBcwQiQbPJWYQXr6
JbKeHtUmEQPpYtZCxr3dkXv412Sj1ghtYRgI8wNv7B5J+EkZ7DVtBN2j6W+mCL7J
Sx/p59gVN0sjH72RHlUDfmP+Up43YkAoPTkOY6+gG+YxYr9SVdC6A12ZXDwS8twO
Y9fMmFLX2aE0RtYXJDXm62vW+0jJuLb7aoHB2tW9YZtVoSs4yZx8Q3pi49QrdHga
gNdS7QoLriBxmBKucl1ehOTDu21gaT9Zt4bI/xYkNtNWy95QuZr2arROUQs8ExXr
kWTLzq27h2jT2xJUmcI3D89ll/RRQpCJ1fp+RWmdYOrxYGFLpViJLAD7WMn3fb8I
Jc2bfAolAg553tABaiwVsudGvBVehCm7ofoSv/0eZHJBWxG26cS9gknweGkyiC5q
VRHJzE9YXF32lUXTu0qnVx0DNoA2RIFU8uVYBhAqitBHjhSKq4A=
=LGcY
-----END PGP SIGNATURE-----

--uouyklrcvqwc2bmp--

