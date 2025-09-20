Return-Path: <linux-man+bounces-3901-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 33DD3B8CD92
	for <lists+linux-man@lfdr.de>; Sat, 20 Sep 2025 19:04:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E7D026271DD
	for <lists+linux-man@lfdr.de>; Sat, 20 Sep 2025 17:04:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59DFA1EB5C2;
	Sat, 20 Sep 2025 17:04:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bwY9rtsa"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18EF31CD15
	for <linux-man@vger.kernel.org>; Sat, 20 Sep 2025 17:04:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758387857; cv=none; b=V5m2b+jpUUGNGw49G+eE90JM4KCHohbbn+yaIrpmlZFUyFcmT0WpqXqlQ/9lQyYYrr0MuwdrGPfDv0fqKB9XguUDsitT7qb8mt2XqsshfQAPyLqbHCRLEk9vnAw5DR1657554UOWBARIDNbV+b4aB/S/QL8ac84ZVA1YZAbLgBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758387857; c=relaxed/simple;
	bh=T7jAO90Z/y9tYuhP+QQ1MGCS4QkwiVpOl5QIAjYx9wo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fo4X+aff9QKT7eC2pI/dLjKhfCvVO+V9dO1bYWpdnvCpIIOkZf32l5IkE0Cc0msCJSVTDN4sxTTvOvLTuLPEL0USYkVsj+lIqzYkxZiOjKwXHwq+3GnO1/endHUx7YlOVM2IlNMRHGDMONCneFOMLemx3iiy9uylJcQkA8RDZ6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bwY9rtsa; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 030FBC4CEF0;
	Sat, 20 Sep 2025 17:04:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758387855;
	bh=T7jAO90Z/y9tYuhP+QQ1MGCS4QkwiVpOl5QIAjYx9wo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bwY9rtsagkxUvYaHWKFSdLv4nxqbh6JVcRZwZMNDdbEB7Uh2d4b0KXjp8E8RhOuM3
	 S1L4DnlIUP+9SQI9ODberqzsdZvMnmIvxHJK7b5ABmxxOYsqovMhyhhXvzAuaaxnuF
	 rTQi02VaQAVPGv+ia/hRLXza38VYzWzUWwyCQlEFJfSIDo1rKnrSWTvJb/fEFwDBEL
	 JPKeZPa4scmYWkFVNd83BX8PD6AsAFE/ntT7L4dTLiOa9N2UVvHk5621fFVK/JTrit
	 8nP4rzxGmNX87SBix4SHJDbG3XTKWfu5aPrCwZZ/55uEOr0NtymnsmiB+P9FEt7Cp7
	 Xh+LCkkuxY1IQ==
Date: Sat, 20 Sep 2025 19:04:10 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?P=C3=A1draig?= Brady <P@draigbrady.com>
Cc: coreutils@gnu.org, linux-man@vger.kernel.org
Subject: Re: Move GNU manual pages to the Linux man-pages project
Message-ID: <jcxx3nfilug5tfk7ktgr4n4sw3nsvympz7tslsblqlqxbm6ou3@hu34rdpdtajr>
References: <wqfzoyixsh4l3wg7tkz3c4bjejy4wlski2s5g2pwoqiy2wg3ty@lkqy5semt757>
 <e8152fd3-5095-4c5b-a52f-8451f67272de@draigBrady.com>
 <53jjjhuovjnbju4ex56hwoke2zz5rshxr6qjeqe3tidgcls4sw@zfnfbdktmtpb>
 <4e842b01-5251-495a-9a49-1ce59676acc9@draigBrady.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="acd5mcxjjznezpbj"
Content-Disposition: inline
In-Reply-To: <4e842b01-5251-495a-9a49-1ce59676acc9@draigBrady.com>


--acd5mcxjjznezpbj
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?P=C3=A1draig?= Brady <P@draigbrady.com>
Cc: coreutils@gnu.org, linux-man@vger.kernel.org
Subject: Re: Move GNU manual pages to the Linux man-pages project
Message-ID: <jcxx3nfilug5tfk7ktgr4n4sw3nsvympz7tslsblqlqxbm6ou3@hu34rdpdtajr>
References: <wqfzoyixsh4l3wg7tkz3c4bjejy4wlski2s5g2pwoqiy2wg3ty@lkqy5semt757>
 <e8152fd3-5095-4c5b-a52f-8451f67272de@draigBrady.com>
 <53jjjhuovjnbju4ex56hwoke2zz5rshxr6qjeqe3tidgcls4sw@zfnfbdktmtpb>
 <4e842b01-5251-495a-9a49-1ce59676acc9@draigBrady.com>
MIME-Version: 1.0
In-Reply-To: <4e842b01-5251-495a-9a49-1ce59676acc9@draigBrady.com>

Hi P=C3=A1draig,

On Sat, Sep 20, 2025 at 06:01:21PM +0100, P=C3=A1draig Brady wrote:
> > > All of the man pages have links to the info docs for full documentati=
on.
> >=20
> > I know.  However, many users don't enjoy the info docs.
>=20
> I my experience user don't enjoy the info _reader_, while the docs are fi=
ne.
> The full docs are on the web though and also linked from each man page.

Yeah, the info online docs are much nicer.  However, I (and others)
don't enjoy going online for documentation, when offline documentation
is available.


Cheers,
Alex

>=20
> cheers,
> Padraig

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--acd5mcxjjznezpbj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjO3ooACgkQ64mZXMKQ
wqmDBQ//bQOQGY1d9w6ZTSpiGEa5+kDhO3gjcszIU0c7ZeT/3wu8Cmb/0+RdKfPu
p+z9FRE3GMYPWr4nVm7jLmleqeaWaHMRfE0o/aEAIWpJ/WI/5sQ/wFqFmOyraTyc
ybRb17rEDXRl3ltjd0PFhU5Enk9lE7G5YsMzoC17591kenMVLJ2Tx6LmrnLWIf9m
lQpYi59/dPBCoK5sbJnMAYof5zbZeTpfGNXDliZgDFENiyBBf8SwydO33zcVAPWE
NFr/QZ62IMqfFu01kI8QEnTMqEfkjvrOsHMsPQ9lZRoWl2NH+g41kA1ROd4Dbzgx
kLiUICYQ5sCrfwL22ciUglnx/Jv7FEK7Ld7QlbOvY5uf8+mSeYhRKq3l/l98OIAC
UE4rbMeYBFSf3W3y5t6WU54vrnr2pYOfsdKzjT41FlzTW/dGnWO5gMefpFDEKqxc
5bLOi1n9VqgqHPCqTpGTkXSWRrcmOV1LUw+BNFuS8nvzutn+ccIAK63IhIJd3zb9
Q2zYohaYU5Ymdx+0+jnSSUIYUSztidQLNNBdhybX35lmDPlX+gAv7u0zuDF6dUEt
ES5pWUVcDSdec+pnluMzMRi9N6pk9SpAYiVGqcKqqgvyB+6E3Qy7LekYoAtosTum
mmJi3ps+cb4L3h5XFPWtYmtuvRQlwX6Q41hKsk8lWGHCmT1HLLQ=
=RG1n
-----END PGP SIGNATURE-----

--acd5mcxjjznezpbj--

