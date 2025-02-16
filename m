Return-Path: <linux-man+bounces-2451-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C84EA37490
	for <lists+linux-man@lfdr.de>; Sun, 16 Feb 2025 14:48:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EB3D2164D0D
	for <lists+linux-man@lfdr.de>; Sun, 16 Feb 2025 13:48:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BDB918DB17;
	Sun, 16 Feb 2025 13:48:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jhbFXHy/"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C4E19450
	for <linux-man@vger.kernel.org>; Sun, 16 Feb 2025 13:48:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739713692; cv=none; b=pi+NmsTXpfrOGN5AICtU47+Xs55BEWUZE1AqaopMwAOcISfpkcQWxdHvGFV/a1l0ltChwEPr/3KyJCxYZFbr1gR9ur/VJrPqJn2BNtX/5B/WV3f3oVpWTqPtVt9/X4LQfXO0nWNzdPpx7UNIRBbK9gR/1sKxtZosvcmfRCeoEuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739713692; c=relaxed/simple;
	bh=qB2/gMKmezhlQJNVP5zC93loV1ytRqa6eQhKC4xlQJk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ceh9DpEf6Obm6c556D9e4rEDGYa/41sfmoILAmCGPJsL6le7zDwwKl96h85/TvYp3kMtYKcACGwSVLgRLSD8zmsNoG3o4XyCdf2tZO6Gdl53eoiEWyNWaS11qgCgxoIlwS3kwGH82mC4qwCAqZX1V4/InxlvNWpitPWhM8FYWZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jhbFXHy/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AEFE9C4CEDD;
	Sun, 16 Feb 2025 13:48:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739713691;
	bh=qB2/gMKmezhlQJNVP5zC93loV1ytRqa6eQhKC4xlQJk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jhbFXHy/ACD/O9snGywjF4CYJiJMFFuxIGpN/NZdaQpCWTQ8ScGjdgcgQlE2qoDNb
	 w2loxyoC3N0Jp0j3bzLl2ZH5Iq/uZy/w542wOtbVwaO9OBa2/eOe+C0KmWeTXyet1H
	 C632GE9QkroeuaD/aQpZx1S56n2a0Pd4TLDk7qA6WQYRXjNDnyGoj785O9CMc5jZRF
	 Q4+iwi2ipmBHuGbvk57U3lvY3rrcHSICNIhZwXd1zIncWvwTxFqGMMcwhO8a0UCv4l
	 E7m0vJ9qVzJsifNDm6w3VxK0hY5P/zbQA8cmlkTc+FrLHhzqYb+FrAsdJloy8kZZh7
	 molukHKDyqowg==
Date: Sun, 16 Feb 2025 14:48:51 +0100
From: Alejandro Colomar <alx@kernel.org>
To: brian.inglis@systematicsw.ab.ca
Cc: linux-man@vger.kernel.org
Subject: Re: man-pages-6.11 released
Message-ID: <672qhmdi2ef7l2lgczjaxwmkxdxhhi3ng7ivqgp6w6clgfhznj@hk3it3n4vz6v>
References: <frz5e2i7dv3kpl3mqxnkrrl5v54bjvw77fev6szkrggtx2ztxh@oyfvhx7zfm4u>
 <b6a4f0ba-2d13-4fa2-933d-131792adea3e@systematicsw.ab.ca>
 <t3ha5wm6yqgkx43y5mycwcw2ynwidl6gi2sq5erlhssadibvcr@mbmk2qff45fl>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jfhi6cp25guegpqx"
Content-Disposition: inline
In-Reply-To: <t3ha5wm6yqgkx43y5mycwcw2ynwidl6gi2sq5erlhssadibvcr@mbmk2qff45fl>


--jfhi6cp25guegpqx
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: brian.inglis@systematicsw.ab.ca
Cc: linux-man@vger.kernel.org
Subject: Re: man-pages-6.11 released
References: <frz5e2i7dv3kpl3mqxnkrrl5v54bjvw77fev6szkrggtx2ztxh@oyfvhx7zfm4u>
 <b6a4f0ba-2d13-4fa2-933d-131792adea3e@systematicsw.ab.ca>
 <t3ha5wm6yqgkx43y5mycwcw2ynwidl6gi2sq5erlhssadibvcr@mbmk2qff45fl>
MIME-Version: 1.0
In-Reply-To: <t3ha5wm6yqgkx43y5mycwcw2ynwidl6gi2sq5erlhssadibvcr@mbmk2qff45fl>

On Sun, Feb 16, 2025 at 02:37:44PM +0100, Alejandro Colomar wrote:
> Hi Brian,
>=20
> On Sun, Feb 16, 2025 at 05:50:17AM -0700, brian.inglis@systematicsw.ab.ca=
 wrote:
> > Hi Alex,
> >=20
> > Looks like the tarball pages are missing the version preceding release =
-1!
>=20
> Hmmmm!  I can reproduce that.  I'll check why this is happening.
>=20
> 	alx@devuan:~/Downloads/man$ ls
> 	alx@devuan:~/Downloads/man$ wget https://mirrors.edge.kernel.org/pub/lin=
ux/docs/man-pages/man-pages-6.11.tar.gz >/dev/null 2>&1; echo $?
> 	0
> 	alx@devuan:~/Downloads/man$ tar xf man-pages-6.11.tar.gz=20
> 	alx@devuan:~/Downloads/man$ rm man-pages-6.11.tar.gz=20
> 	alx@devuan:~/Downloads/man$ cd man-pages-6.11/
> 	alx@devuan:~/Downloads/man/man-pages-6.11$ man ./man2/membarrier.2 | tai=
l -n1
> 	Linux man=E2=80=90pages (unreleased)       2024=E2=80=9007=E2=80=9023   =
                  membarrier(2)
> 	alx@devuan:~/Downloads/man/man-pages-6.11$ make -R -j24 install DESTDIR=
=3Di 2>/dev/null | wc -l
> 	5740
> 	alx@devuan:~/Downloads/man/man-pages-6.11$ man ./i/usr/local/share/man/m=
an2/membarrier.2 | tail -n1
> 	Linux man=E2=80=90pages                    2024=E2=80=9007=E2=80=9023   =
                  membarrier(2)
>=20
> There are some error messages in the make(1) call, so it might be
> related to that.
>=20
> I should also make sure that there are tests for this in the build
> system, but due to a bug in the packaging of the tools I use in my
> distro, I can't at the moment.  For now, I'll try to just fix the bug.

Bisecting the bug shows it's fault of this commit:

0d69e51cd4b8 (2025-02-10; "share/mk/: Use ?=3D assignments for user-facing =
variables")

I suspect there's some variable that we use that exists in a normal
environment?  I'll check.


Cheers,
Alex

>=20
> Thanks for the report!
>=20
>=20
> Have a lovely day!
> Alex
>=20
> --=20
> <https://www.alejandro-colomar.es/>



--=20
<https://www.alejandro-colomar.es/>

--jfhi6cp25guegpqx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmex7LwACgkQ64mZXMKQ
wql5Xg//d4wgO2UdGNt0f1EspQ0yvV08/JoAbw4ghJsvY2YFiORzBG9+L3m4Uh86
h4XtUKdlM5UUJlQu68VICObOXuIqWfyW1KbrdYMbLzbUI1KgtHRpZJ598/ZGPBcr
J3u0TsQ5EMRlwYKmHPA9qAXYb0djL/VCAp57asPJ+3FSNThoRhF83on1c4zn11Lp
+jJ9E5T3oPy12UmNVK6BQPApLJS6Wvb1QJUCL85j+RmXRfuiiojC3Ccd7FIY+Lpa
lzAIM4D+W0C9Sd2JiROMdTHNDhBCpymZaknVtl/Ng2YpOLYNjRA1W/mQvorbWjfi
dk5JC55Z1FJevnmR4yZWBjswOsxaQ5l95jlGfw9JiolhwBRAbzRWn8jAlwVSendq
WQ+3/uVdZhUl2HiA8RCCirTSPb3vmTY3M4sQcqrTTIAjx6OLvXLczVfDnEfN5sNx
MNBLuux1dhe6EICFQcM+ifDB3kc5/DJXUCp+iO9PZmPowUP+x4VZ/Qc/WwKAbCkE
46ep/So3YqNK8cSPKPvrmS3rOlwBIjmr1Ewjwug2Kf90MGFPlsegquuJzbqTUX1A
snrJvXHlrgSsg0GkXWqnP+SZ4EiW/79iPSj3iemn28pB8EN7iyWTl2XSbxewg9N0
g0x+4BC1mVS5oIHRFP41+Mo0kSwdWN6XhsH6OulJMhKPCd+yu6s=
=0FQV
-----END PGP SIGNATURE-----

--jfhi6cp25guegpqx--

