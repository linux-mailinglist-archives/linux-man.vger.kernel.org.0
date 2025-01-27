Return-Path: <linux-man+bounces-2302-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AF5D0A1DB62
	for <lists+linux-man@lfdr.de>; Mon, 27 Jan 2025 18:37:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C257A1888493
	for <lists+linux-man@lfdr.de>; Mon, 27 Jan 2025 17:37:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75944186E26;
	Mon, 27 Jan 2025 17:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IEJ0d+Ec"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31998291E
	for <linux-man@vger.kernel.org>; Mon, 27 Jan 2025 17:37:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737999443; cv=none; b=WaKwYAoQlt30ZoA+l6dgY5dx8X1OKQa9ovzByFJGz3sWYnll946PDKc5/iBGg+xL3DwT8sqt8yyGKajE/guCdM2Uhe4PJ2VFiugs/OXfa1gf1ewdcwZPtKMwwEXP02N9o4b4pCl7XJMSQajAeR19zqH4LqF7iSkPeNXh3nWNe18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737999443; c=relaxed/simple;
	bh=2yC1DD0LURWMFI6Q3FSHbPlm2HetdetFZSLy+uZVW04=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sCV3WdBza1N0z/VfpOHjFt3ZrYyk2XvtxV4prJuNhxMJzdXpbxmHoIRZZaZNgCEsH+TifRgjkNbs3hBulDvqPABMGGXtMF6glZquuWrzktN5Phc6VXLBXSUB20xy8TGDiebQz70wFeQ7Zr0cz22eYhAcR7CIhL8qsOT95k5qAUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IEJ0d+Ec; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6EA6BC4CED2;
	Mon, 27 Jan 2025 17:37:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737999442;
	bh=2yC1DD0LURWMFI6Q3FSHbPlm2HetdetFZSLy+uZVW04=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IEJ0d+EcxctYhEON3RRFxf4Lp6NbyDEO6RIWwCDMWpzKZCpzVn3XJJm2g2iD7aCzp
	 bqborYGuX8C4JhfhDWg2BCnvqRDGnMkS5dFe5GbBALKVW2DuPZZDIJGUhrsHoB+ZXq
	 JySR6ER5o0yaOG6LXiy1n99WWzIIOVyghcl9tN37/0djfyR8nXeMal8ArRRZy0ojPc
	 v/o+9mbUXRGj+13P3s/w6hsJ5zs9bARbs4RQI5xr6Apum4IS5QdqkR0d1fs4gcVCAA
	 Ptm9W+609q0acMJU330ae8MtcX2e2alWhvO/IGkHvZ40Yh4w3iQA+VniS0WKHUXQdJ
	 1geZo2HSGf4/g==
Date: Mon, 27 Jan 2025 18:37:40 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jason Yundt <jason@jasonyundt.email>
Cc: linux-man@vger.kernel.org, Florian Weimer <fweimer@redhat.com>, 
	"G. Branden Robinson" <branden@debian.org>, =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Subject: Re: man/man7/pathname.7: Correct handling of pathnames
Message-ID: <a3turtye3rcug5glnau3x6brxjlvkruu7unely5dpz6ttjr255@aurahmflvg2d>
References: <kvezw2xintnc5cv3ijqefahwt4i3rzczcidp4krmxsafr4azsb@nvbkzgciq3vm>
 <cf6lfplzm5hkmo7lkuyuw6blw4zemrsrhhlucjr4vpwns7m4nu@7pfcxat7bgue>
 <barhqqli6kccy6sntknt444bwees3jbwy6quyapd4l24juz5th@l4cj3yhfrms5>
 <lpgdi23g56ksr622o6w4tpd6vqphyio4jjw6c5gwafenuwjncb@ubitjqklzxer>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="i6duvnku7zrnjclz"
Content-Disposition: inline
In-Reply-To: <lpgdi23g56ksr622o6w4tpd6vqphyio4jjw6c5gwafenuwjncb@ubitjqklzxer>


--i6duvnku7zrnjclz
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jason Yundt <jason@jasonyundt.email>
Cc: linux-man@vger.kernel.org, Florian Weimer <fweimer@redhat.com>, 
	"G. Branden Robinson" <branden@debian.org>, =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Subject: Re: man/man7/pathname.7: Correct handling of pathnames
References: <kvezw2xintnc5cv3ijqefahwt4i3rzczcidp4krmxsafr4azsb@nvbkzgciq3vm>
 <cf6lfplzm5hkmo7lkuyuw6blw4zemrsrhhlucjr4vpwns7m4nu@7pfcxat7bgue>
 <barhqqli6kccy6sntknt444bwees3jbwy6quyapd4l24juz5th@l4cj3yhfrms5>
 <lpgdi23g56ksr622o6w4tpd6vqphyio4jjw6c5gwafenuwjncb@ubitjqklzxer>
MIME-Version: 1.0
In-Reply-To: <lpgdi23g56ksr622o6w4tpd6vqphyio4jjw6c5gwafenuwjncb@ubitjqklzxer>

[CC +=3D =D0=BD=D0=B0=D0=B1]

Hi Jason,

On Mon, Jan 27, 2025 at 12:14:43PM -0500, Jason Yundt wrote:
> On Mon, Jan 27, 2025 at 04:53:10PM +0100, Alejandro Colomar wrote:
> > Right.  But then, when do you need to do encoding?
>=20
> Personally, my preference is that programs use the locale=E2=80=99s codes=
et
> because I can override the locale codeset in the rare event that UTF-8
> isn=E2=80=99t the correct option.  In my previous example, I was able to =
set the
> LANG environment variable to jp_JP.SJIS so that I could run that old
> software in an environment where pathnames were encoded in Shift-JIS.
> If everything just always assumed a particular character encoding for
> pathnames, then I wouldn=E2=80=99t have been able to do that.

But if the program handles arbitrary strings, just like the kernel does,
that would work too.

> > > > -  Accept anything, but reject control characters.
> > > > -  Accept anything, just like the kernel.
> > >=20
> > > These last two also aren=E2=80=99t quite complete recommendations.  I=
f a GUI
> > > program wants to display a pathname on the screen, then what character
> > > encoding should it use when decoding the bytes?
> >=20
> > Just print them as they got in.  No decoding.  Send the raw bytes to
> > write(2) or printf(3) or whatever.
>=20
> I don=E2=80=99t think that printing is a good way for GUI applications to
> display text.  I don=E2=80=99t normally run GUI applications in a termina=
l, so
> I=E2=80=99m not normally able to see a GUI application=E2=80=99s stdout o=
r stderr.  Most
> of the GUI applications that I use display pathnames as part of a larger
> window.  In order to do that, the GUI application needs to know which
> characters the bytes in the pathname represent so that the GUI
> application can draw those characters on the screen.

I would do in a GUI exactly the same as what command-line programs do:
pass the raw string to whatever API prints them.  If the string makes
sense in the current locale, it will be shown nicely.  If it doesn't
make sense, it will display weird characters, but that's not a terrible
issue.  Just run again with the appropriate locale.

For example, in the git repository of the Linux man-pages project, there
are commits authored by =D0=BD=D0=B0=D0=B1 <nabijaczleweli@nabijaczleweli.x=
yz>. =20
Whenever I see the git-log(1) in one of my systems with the C locale, I
see weird characters.  I just need to re-run with the C.UTF-8 locale.

But it handles the bytes correctly, even if they don't make sense to the
system.  If git(1) failed whenever a string doesn't make sense in the
current locale, the repo would be corrupted sooner than later.


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--i6duvnku7zrnjclz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmeXxF0ACgkQnowa+77/
2zImlRAAjLn12zi6jnTTDPCQ1GA+59SvtfuG/CuqFQrqUMrxAxiZuvI6uATBx5lm
k11p2H3y9aPsVCS3CG1OChesImWTOLKIDOoew5YrwzTIZ4J6AqZFAznghZsQAbqZ
OtOILj90L9ZcmSJUk/msE2Bhs2MsBpB3kF85YzpnSk0WT5kBxikHvMOys3JV/omK
uiBG3ZfZYeX0ykKGAHU3MXK8ClGs6UkdRvSJorhxtI/4RS4UJjJRreX5Db4rzKkx
JO/fF9Ru5jjubD0oLWHM+G9m1lOjjwXd5SEnqLXKw202bq7oO5G89pEJWO2XsNO/
EvPG8gET/bFQlHdKivJioIA8XtdJGYHG5vjg9CuJhvHMdtPq7wAwPzdRe+T/eyfw
jB1kb3Jhl1tw0aKsDfPA3BSBkSIq28PGE5zMZIQcn3agDwJ9SGVymnZGiZcsjozT
RyVIjJRHGsF11kMSg9oMk5ap1O8HwL9Fr0/E8nsU5wGLY+ZjMd9MDbpDCfPEs+HV
35VFsQfXvi5n2TUXG7l4Y5jHnNNf5ceTGxfPbT0IDscp1gL2rCfFOPYXKViKIpEI
F6KIuSK0minnuFMjo/IDYsWGgIFam8hbvgfqKhZpG0QEGT9q3EijDzTLKGGgq8RQ
C8ZL4/kOm7bnw9BLF1jmudvYfqfxZn+9F06IV0NFuOHn2vPLg38=
=MfaN
-----END PGP SIGNATURE-----

--i6duvnku7zrnjclz--

