Return-Path: <linux-man+bounces-2670-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ABFEA757AA
	for <lists+linux-man@lfdr.de>; Sat, 29 Mar 2025 20:09:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2C1D23ABEB0
	for <lists+linux-man@lfdr.de>; Sat, 29 Mar 2025 19:08:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27B6D1CAA74;
	Sat, 29 Mar 2025 19:08:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uWj7uIg0"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA10B17A31A
	for <linux-man@vger.kernel.org>; Sat, 29 Mar 2025 19:08:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743275335; cv=none; b=SfXH3KfGkxifp+1Cg/tEt82slVvt6Cx7b/bvXLtKO5wyKPRVqezkkD/0UvgLnPQxmsTnr6zM5eioCMmCbxPGFLNgOYF300Gp6/CHTVVB11g1mhVTf269wMF1Wk8cU7SOzmvWwkuMaSPmkMMX/5H13qVZyxouMtaWTZuLLVZFmSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743275335; c=relaxed/simple;
	bh=BJkESEwmGkx0a6cMU8qqG/BrodQWgYKqmd+SmL7GqDI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OWtFeSKDbGvRGsL8xsa79qJNKVQq15Ss2QbA5Fkg0ROgiGnMYizeIx0aJ/KzYu1vekHRyXkskVj8WGrn6RbusBqRoP8JOzsx/ZyQV6V6WrbJ7k4YrksPtKKV/EcuhjQvRlOmEfg0eOvmrwvsMtI0wOFfHEkorWtkO/aPV+3J+aM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uWj7uIg0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 58425C4CEE2;
	Sat, 29 Mar 2025 19:08:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743275335;
	bh=BJkESEwmGkx0a6cMU8qqG/BrodQWgYKqmd+SmL7GqDI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uWj7uIg0CeaZTQGNWwK60352yoZj+jH7clwubW+fzpOOh1ASLswm/0Odq4geKLMpV
	 dBcWPZsotZ3mG+5Jl5/6XbaeAoxR9Mh1N0vejP7V6dwmuP32V1P3GYfqJFTCah7jbd
	 wRyJB1VKRZUKxm9iJVxvsOza0y3ppYrg2KS9ARoYSBJyblX4TkkEYqK022vPJUBflr
	 43sh3GM2f7I1lIiCb8bdfp2U4jIEh2a970Htea3YMI9+CuqD2Xb2jZ/PnOZ9/p4KwS
	 BfRMXmVAQ9ooC2RAiiJYckaPAeOp0Awac0R7NmY7KekEQusOCMs+bDf9ceJR8nl+lu
	 DpSH9iiFM0z1Q==
Date: Sat, 29 Mar 2025 20:08:51 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Linux Man-Pages <linux-man@vger.kernel.org>
Cc: Bruno Haible <bruno@clisp.org>, 
	Brian Inglis <Brian.Inglis@systematicsw.ab.ca>, cygwin@cygwin.com
Subject: Re: acl man pages (Was: symbolic link curiosity in 3.6.0)
Message-ID: <cwf5m5oemcbqxo2ppgfigglbnmp3dbu6tdkov66wsw45sijunf@l4boe6wekhs7>
References: <Pine.BSF.4.63.2503250218240.74063@m0.truegem.net>
 <11037686.3WhfQktd6Z@nimes>
 <Z-fINO05FlFrTIUs@calimero.vinschen.de>
 <7892953.SKYDtnEIZr@nimes>
 <20b30d5f-2e2d-4abb-a391-5956d98345b8@SystematicSW.ab.ca>
 <jkbpzugorztmkphew4jwoybfwywje5e5xn6dfpbfk2lso6u45o@eezmf2m57vv2>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cwleernzd54jv5pr"
Content-Disposition: inline
In-Reply-To: <jkbpzugorztmkphew4jwoybfwywje5e5xn6dfpbfk2lso6u45o@eezmf2m57vv2>


--cwleernzd54jv5pr
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Linux Man-Pages <linux-man@vger.kernel.org>
Cc: Bruno Haible <bruno@clisp.org>, 
	Brian Inglis <Brian.Inglis@systematicsw.ab.ca>, cygwin@cygwin.com
Subject: Re: acl man pages (Was: symbolic link curiosity in 3.6.0)
References: <Pine.BSF.4.63.2503250218240.74063@m0.truegem.net>
 <11037686.3WhfQktd6Z@nimes>
 <Z-fINO05FlFrTIUs@calimero.vinschen.de>
 <7892953.SKYDtnEIZr@nimes>
 <20b30d5f-2e2d-4abb-a391-5956d98345b8@SystematicSW.ab.ca>
 <jkbpzugorztmkphew4jwoybfwywje5e5xn6dfpbfk2lso6u45o@eezmf2m57vv2>
MIME-Version: 1.0
In-Reply-To: <jkbpzugorztmkphew4jwoybfwywje5e5xn6dfpbfk2lso6u45o@eezmf2m57vv2>

On Sat, Mar 29, 2025 at 07:45:27PM +0100, Alejandro Colomar wrote:
> Hi Bruno,

Oops, s/Bruno/Brian/  :)

>=20
> On Sat, Mar 29, 2025 at 12:28:52PM -0600, Brian Inglis wrote:
> > On 2025-03-29 05:43, Bruno Haible via Cygwin wrote:
> > > Regarding what acl_extended_file() does, there is the man page by
> > > Andreas Gr=C3=BCnbacher:
> > > https://www.kernel.org/doc/man-pages/online/pages/man3/acl_extended_f=
ile.3.html
> > > Gnulib is not the only user of acl_extended_file(); therefore I would
> > > suggest that Cygwin should follow that man page =E2=80=94 regardless =
of Gnulib.
> >=20
> > Hi Alex,
> >=20
> > I noticed that the online man-pages include the acl docs (above) but the
> > distributed man-pages do not!
>=20
> These pages are distributed as part of the act package.  On Debian,
> the package that provides these manual pages is 'libacl1-dev'.
>=20
> 	alx@devuan:~$ apt-file find acl_extended_file.3
> 	libacl1-dev: /usr/share/man/man3/acl_extended_file.3.gz
>=20
> > Would you please consider including the acl project man pages?
> >=20
> > 	https://git.savannah.nongnu.org/gitweb/?p=3Dacl.git;a=3Dtree;f=3Dman
>=20
> I think it's better to keep them within the acl project, unless they
> want us to take over.
>=20
>=20
> Have a lovely day!
> Alex
>=20
> --=20
> <https://www.alejandro-colomar.es/>



--=20
<https://www.alejandro-colomar.es/>

--cwleernzd54jv5pr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfoRTsACgkQ64mZXMKQ
wqlPFhAAlsql8c+KNaZWGs7xjOLarGpx7VG22fNgZfX1uHRm8uNgJWi+wHBUQjmM
jhvAYKcBRMRgcggY4DU84PSzckywsVQz0reWjXZLTmvBZExLW4x1CrFLYMlwHd5X
+D9j3S9qtjpIJu8sEXsj8fYc9FO4gbxxD1jEYcTKmIt5MqhSpRIQb5Rfd2WIvfeC
9gxJolrVtiULd1GwhGlFtJqOxRgJCQgmA2jCMBHd6pwFGSO634qnvtsGZBP84N0L
QXZAciwl8nsH+3mPPcjJrekvQWmeF/YdqS+uznebOyDYtQ7D6kbWZ9xAbzktBbzg
YmyE7CoPmose178xwb9yVlDaNO5Eemtw4jHZv2rRQvpyY966wSYdkSlrAmAEKyD2
i/sYwXlQMSA30M+iKBCn+CBECP3c84kiJBnQHiQUKqjF4rbZ1PEu43q1nnvC53WC
6A0XTI6lxhtWgc7ZZLTPq2ekH7Ih4uV9nr3Yn5xSnrSWH5YF9gYmVuGk47/upVZS
hzQZ5pCSBY/zSoERkHr9ngoi/wT1FQipW0POpgK0Oc5tLbap2GI7MYeWZVjyZzkd
TvTUJZDP9Gku8jpDKN31ruZeHXhoiV7vxR8bwLCO0KUfcSY6pTElvCmSJy8qsH1T
gNsQsj2dwugEfwkjstPCCI03u+0J76eHvLHxiCCtfU4sMgrJhvg=
=tRXD
-----END PGP SIGNATURE-----

--cwleernzd54jv5pr--

