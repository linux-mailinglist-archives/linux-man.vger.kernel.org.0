Return-Path: <linux-man+bounces-2854-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 30391AA756C
	for <lists+linux-man@lfdr.de>; Fri,  2 May 2025 17:00:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E4CB81C06054
	for <lists+linux-man@lfdr.de>; Fri,  2 May 2025 15:00:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F82D256C81;
	Fri,  2 May 2025 15:00:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D9ikomDI"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 538E0156C63
	for <linux-man@vger.kernel.org>; Fri,  2 May 2025 15:00:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746198001; cv=none; b=u9dAURKv9LThwYQt7GoDJeVAnTxKixzpyvci38RGrlIBwKzjjq14xbMPt47zJjt4eu8msEj3ef/FkKpJtGYsq1g+P4PmxJPeUWaFHr/MOChBFL+AJn19YAhpwDizDzsS3MTCSdljG8IBeYv6NXx+0oy7dH6U5B1rXX+SXfTv4DI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746198001; c=relaxed/simple;
	bh=U5Bz1HqMnfnM3qFNqw2S6FkrBa4EMfPm+zm720Z0DXI=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XLd8XKX+PhA1JKrYe6v6bgvDl9LvVBfHq4ZDaA5pJjweVPHkT2dT+OVnFKl2PLNiDaYUSt5+2PeDJbm/clLHYiNQfWJvqW7GzWaUVuDtECsd8vf4YwnYmj3M/3c3+Y3Li6MPEv4IBKo7RDV1K9Oh5edPeX88pJIWeuw9leQPRRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D9ikomDI; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 36C28C4CEE4;
	Fri,  2 May 2025 15:00:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746198000;
	bh=U5Bz1HqMnfnM3qFNqw2S6FkrBa4EMfPm+zm720Z0DXI=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=D9ikomDI4MAKQFK9EIAlL/cKXE7Tk05ELCkcwFVuluWQYg0kNkK1G395KCrgjzqqI
	 TLxlQhHA8W0uPgy3qdJi0xDDNjM+9j7JXrLiOFrryURlwy7ykY7JBOVGCt5DAdUNCM
	 fPYbjti0gLJzhnwig7CGG8kL9R8ff3nl9UC4J32v9/TRTZ4Fgag/+FbfvEaoHQIFjU
	 +IVbUaFdh7WUDKdMkQA659+Z/Ci0vBZYzvhgTiNvpD7g3FFlaQqicuD5ntJ0k0C9NK
	 qZXyXwalcW0oRZwL8xZQrM/srneFBj3qSkIzz6ClZ39DRymtnK7B991NVZViQsaAyC
	 e6uIbr5adTVOQ==
Date: Fri, 2 May 2025 16:59:58 +0200
From: Alejandro Colomar <alx@kernel.org>
To: groff@gnu.org, linux-man@vger.kernel.org
Subject: Re: grof --run
Message-ID: <ina3kzpisr62v4dcrzrneae6mo5vlaoosgmlhaewpeqhusv6u6@xy33kozxiknz>
References: <dbczpry2ukcht3d2pw4b2l7yla63eetfprfpblhvhwj2dpalvv@ba4itgqked3d>
 <20250502120139.yqstcq32hdtagozl@illithid>
 <fg6yru6cwn4itrn55mmnpt2eerjeph3z3ow3asowf2dhkq5iwv@qewmi2xgqgf6>
 <20250502141948.bszoef7vvhnuworm@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="u62rka2eycjoslth"
Content-Disposition: inline
In-Reply-To: <20250502141948.bszoef7vvhnuworm@illithid>


--u62rka2eycjoslth
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: groff@gnu.org, linux-man@vger.kernel.org
Subject: Re: grof --run
References: <dbczpry2ukcht3d2pw4b2l7yla63eetfprfpblhvhwj2dpalvv@ba4itgqked3d>
 <20250502120139.yqstcq32hdtagozl@illithid>
 <fg6yru6cwn4itrn55mmnpt2eerjeph3z3ow3asowf2dhkq5iwv@qewmi2xgqgf6>
 <20250502141948.bszoef7vvhnuworm@illithid>
MIME-Version: 1.0
In-Reply-To: <20250502141948.bszoef7vvhnuworm@illithid>

Hi Branden,

On Fri, May 02, 2025 at 09:19:48AM -0500, G. Branden Robinson wrote:
> Hi Alex,
>=20
> At 2025-05-02T14:26:23+0200, Alejandro Colomar wrote:
> > On Fri, May 02, 2025 at 07:01:39AM -0500, G. Branden Robinson wrote:
> > > [2] $ type mailman
> > > mailman is a function
> > > mailman ()
> > > {
> > >     local cmd=3D;
> > >     case "$1" in
> > >         -*)
> > >             opts=3D"$opts $1";
> > >             shift
> > >         ;;
> > >     esac;
> > >     set -- $(man -w "$@");
> > >     cmd=3D$(zcat --force "$@" | grog -Tutf8 -b -ww -P -cbou -rU0 -rLL=
=3D72n -rHY=3D0 -dAD=3Dl $opts);
> > >     zcat --force "$@" | $cmd | less
> > > }
> >=20
> > I was trying to simplify your mailman() function to the following pipe
> > (after parsing the options):
> >=20
> > 	man -w "$@" \
> > 	| xargs zcat --force \
> > 	| grog --run \
> > 		-Tutf8 -b -ww -P -cbou -rU0 -rLL=3D72n -rHY=3D0 -dAD=3Dl \
> > 		$opts \
> > 		2>/dev/null \
> > 	| less;
> >=20
> > And I found out that grog(1) seems to be not accepting a documented
> > option: --run. [1]  Am I doing something incorrectly?  I never used
> > grog(1) before, so it might very well be.
>=20
> Your grog executable may be out of sync with the man page you're
> reading.
>=20
> Compare `type grog` with `man -w grog`.

Hmmmm.

alx@devuan:~$ which grog
/usr/local/bin/grog
alx@devuan:~$ grog --version
GNU grog (groff) 1.23.0.2695-49927
alx@devuan:~$ man grog | tail -n1
groff 1.23.0                    26 December 2024                        gro=
g(1)

> > alx@devuan:~$ grog --run
> > grog: error: unrecognized grog option '--run'; ignored
>=20
> grog's `--run` option has been removed in the forthcoming groff 1.24.0
> release, so if you're running groff Git's master branch, that could
> explain it.
>=20
> NEWS:
>=20
> *  grog(1) no longer supports the `--ligatures` and `--run` options.
>    Simulate the former (which was specific to the "pdf" output device)
>    with the option sequence "-P -U -P y", and the latter by using the
>    command substitution feature of your shell; see section "Examples" of
>    groff(1).

Okay, this complicates things a bit.  :)


Cheers,
Alex

>=20
> Regards,
> Branden



--=20
<https://www.alejandro-colomar.es/>

--u62rka2eycjoslth
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgU3ecACgkQ64mZXMKQ
wqlXVQ//S/r8lhMFzWkZVIp+S0jDXi1GYN9pXj1AY5gTwtegppme/dSJZeUxza4c
rc2g98kzhLC9bwXPTHflIorRNAXCPFMyCkthTtHPEFiIIdOue8msz9BGmbMZGJZs
z88skVQXD57hSQFXfPV16l6+qX8LpDCkKkSyoh0K+uS8o3pfDfIbpg+SJs0vFXdR
SOHqgs5MDNl+Gsnyyl/WBNPL1jKpgWPe27BqVfEDu0T4lsHQwpfbYcGebS1tF2pf
CtUiFI8Y+IIB32f2gY6DTSQQTClFsonK9psyEnVlViX6WNunRzfFY9UKmVftcHuP
U6vPvPFkA1qw58jcWsI1rz+T6jJG2ph0RB36WKbn/4SoPvyzROBIVYAtdHQuNIu/
lRFTMe2Fu83mSHmyhVOtMudzXcXfnAJi5CUcIuKAgD+viJz5qg3Tzy4sUgZvCuqa
yn7rpcV0Bu5ZnEeFmEZCPRtvOMRf9gqjDQSKRSlxmnl1iGWcKNIHcc7nFSCr7FEZ
l8W4pUk8DM7I+VVg9zMl7mnrJ718Sm8R1tzw9MgZcPHIYhuCNOfbuGH5qoiPazTI
rV/banyF2WbEwPIlhnDzbaAFlWiFbsAzrNh8sjnjkrMsBzuan863HXtFhoe1E+sj
aZcgsNxBA8hB7bF2iLfj7+4U5Xe2+KtKEsULUgAQi/tKcDmWvTo=
=mLt+
-----END PGP SIGNATURE-----

--u62rka2eycjoslth--

