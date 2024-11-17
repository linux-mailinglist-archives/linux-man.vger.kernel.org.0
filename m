Return-Path: <linux-man+bounces-2009-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E3FF9D045F
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 15:56:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 230CB281998
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 14:56:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D85821D89E5;
	Sun, 17 Nov 2024 14:56:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HeeEic2+"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 991F81898FC
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 14:56:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731855369; cv=none; b=kD2QtRUakVAqefLEoH1PfNgyBtlsf2/1wf2Ad4OJjtEyRWZGUiqyJvvHvZ50UknEntB5EZQCt9lxdoGG2w/9lIYTSJzv2WW6baRcU57BjOTFWTiuWCQuW1ikBQCp63n8HmzmvJ2obFgB2ugNIwGATzlMtLY1Ht86y0+RzqQFYIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731855369; c=relaxed/simple;
	bh=L3NGwEc7Gcce5NNJD3v6djDPxRy6OpXTfUykTwrPVp8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YaRn5GHbxd3LQW/jIHIPYNObpycy/V7P5VAyfbu8IjkLnZzVhw23owQqsweZXjh8/uyr58xIi9A6dsU+ErUSYU21wthouOjKtmDRF8skWGut8nOgYlBHLRYgFZqdsdWQyvkCjVBMGRiTQQVjcYkFz0KiKNlyb4yfsLMN+cOKE68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HeeEic2+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7143CC4CECD;
	Sun, 17 Nov 2024 14:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731855369;
	bh=L3NGwEc7Gcce5NNJD3v6djDPxRy6OpXTfUykTwrPVp8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HeeEic2+wLw1BvsVYaCvJo8o05qtq5Us1vs7HGjZr027kQCbTDgcYz9plHw1Ruj5Y
	 haFfEgoZKfrL6XncZQDSzQg7kchSW6TWk1mRJWMbQdtutrF7awenIFwKAC8N61xuzl
	 5cM2uhiSUroWyTPSycbQhODS/IeB7GsWfGrjfzUnD8Ghz3Uzgo1j1rDCt6z3qH6UnT
	 EbzHdbhwwQy6vcybekjN2kAfDhSdW9KYt2rCT6Hn4UEy0ku7yKkLQK2Mi4lxlUGrov
	 1/LBJxIrTR7ax4+fWefvR6DZCSPx++TNeIebTbIoRYZf/jtB0ifU4/WP4e8LTAFbR2
	 zeEfvJCxbalqQ==
Date: Sun, 17 Nov 2024 15:56:06 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org, 
	"Dr. Tobias Quathamer" <toddy@debian.org>
Subject: Re: Issue in man page tzfile.5
Message-ID: <qwrwdtsyzhgsakvx67clqvvnllswvvln6o4igsyrlwyt25sauv@p4qbpnwmibwy>
References: <ZznJgShtaSiy5wle@meinfjell.helgefjelltest.de>
 <hq423ifu5ilhhkb6nph2wptsoinkrhliilif4on56jdutz7vs2@yuavaywyynio>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gcvhjxtmcxqregzy"
Content-Disposition: inline
In-Reply-To: <hq423ifu5ilhhkb6nph2wptsoinkrhliilif4on56jdutz7vs2@yuavaywyynio>


--gcvhjxtmcxqregzy
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org, 
	"Dr. Tobias Quathamer" <toddy@debian.org>
Subject: Re: Issue in man page tzfile.5
References: <ZznJgShtaSiy5wle@meinfjell.helgefjelltest.de>
 <hq423ifu5ilhhkb6nph2wptsoinkrhliilif4on56jdutz7vs2@yuavaywyynio>
MIME-Version: 1.0
In-Reply-To: <hq423ifu5ilhhkb6nph2wptsoinkrhliilif4on56jdutz7vs2@yuavaywyynio>

On Sun, Nov 17, 2024 at 03:55:26PM GMT, Alejandro Colomar wrote:
> Hi Helge,
>=20
> On Sun, Nov 17, 2024 at 10:46:25AM GMT, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    timezone =E2=86=92 B<timezone>(3)
> >=20
> > "It seems that timezone uses B<tzfile> internally, but glibc refuses to=
 "
> > "expose it to userspace.  This is most likely because the standardised "
> > "functions are more useful and portable, and actually documented by gli=
bc.  "
> > "It may only be in glibc just to support the non-glibc-maintained timez=
one "
> > "data (which is maintained by some other entity)."
>=20
> You're right, but this is a Debian patch.  I've CCed Tobias.
> I suggest transforming
>=20
> 	+It seems that timezone uses
>=20
> into
>=20
> 	+It seems that
> 	+.BR timezone (1)

d'oh!  s/1/3/

> 	+uses
>=20
> Reported-by: Helge Kreutzmann <debian@helgefjell.de>
> Reported-by: Alejandro Colomar <alx@kernel.org>
> Suggested-by: Alejandro Colomar <alx@kernel.org>
>=20
> Cheers,
> Alex
>=20
>=20
>=20
> alx@debian:~/src/debian/doc/manpages/debian/latest/debian/patches$ cat ./=
0010-tzfile.5.patch
> From: "Dr. Tobias Quathamer" <toddy@debian.org>
> Date: Sat, 6 Feb 2016 01:25:30 +0100
> Subject: tzfile.5
>=20
> ---
>  man/man5/tzfile.5 | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
>=20
> diff --git a/man/man5/tzfile.5 b/man/man5/tzfile.5
> index 4aa3f6c..d0cefa9 100644
> --- a/man/man5/tzfile.5
> +++ b/man/man5/tzfile.5
> @@ -210,6 +210,22 @@ if either
>  .B tzh_timecnt
>  is zero or the time argument is less than the first transition time reco=
rded
>  in the file.
> +.\" http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D122906#47
> +.\" Reviewed by upstream and rejected, May 2012
> +.SH NOTES
> +This manual page documents
> +.I <tzfile.h>
> +in the glibc source archive, see
> +.IR timezone/tzfile.h .
> +.PP
> +It seems that timezone uses
> +.B tzfile
> +internally, but glibc refuses to expose it to userspace.  This is most
> +likely because the standardised functions are more useful and
> +portable, and actually documented by glibc.  It may only be in glibc
> +just to support the non-glibc-maintained timezone data (which is
> +maintained by some other entity).
> +.\" End of patch
>  .SS Version 2 format
>  For version-2-format timezone files,
>  the above header and data are followed by a second header and data,
>=20
>=20
> --=20
> <https://www.alejandro-colomar.es/>



--=20
<https://www.alejandro-colomar.es/>

--gcvhjxtmcxqregzy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc6BAYACgkQnowa+77/
2zLFCg//UUzzPGWXYShFIhW4jX9faEM48Pzj0Ejpb9n+pFiterai8rWDRgOZL8q3
g3EZNr9aa9FhoU4dcKFA27Bu5h/dVF+co/QmXSt8EujRlBPBWUxQyj1rtQssHjly
oBBKKiyD61B6trYSAmI7soeTUTkkCdCpGJwZPZhm18q8ptEMoYAJZiowCr5Q+DYs
4pFg9pu9tEnngCgQdOZsB9OzYKkmbOJGs1+WfINXORgq4PGhX0Kc2FFzqRZ+j7k0
Fe2/wZ/Z0zdNrsdeZTSZPumw4o+DISDR4A4xi+3eNUoyd/HeCk5lWKS2H7Qwr3u6
YeXZP+2x9hKps1mFWvIh48mmz6Bwd2PgDAkwLJlBH0eZomhs/FOKvn6o1GgMkFOw
JGWoVYlGc6U3F9O+PVIX4Z7faVjmm9WT4RoOPReqIDj/QmijhZgLN6cUXZAq8B+e
p2aRLPwqRc4N1/kbLAj2fs4MBJJr7v2Kqqn6mIXGn61xjN13zjzGYsMA0FdhmT09
xFC8J+ka09x4N4ktRQEpzHKnnx5qlreTezJWWIbdaazDzBfQFMyDxYBx+m6cqBCf
/N/iY8pTTLN1nEGkrJIRrDhsNZ1jOfbvU2an9U5+PhJ011OmY/BiwCSXaZAp+FP7
rT9Uy2As34W5EWrRuisOxWlxGT82evXB9ZvqzutXW8iwNi1+JyI=
=Zjzt
-----END PGP SIGNATURE-----

--gcvhjxtmcxqregzy--

