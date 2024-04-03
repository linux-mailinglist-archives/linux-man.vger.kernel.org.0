Return-Path: <linux-man+bounces-715-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 482E6896A07
	for <lists+linux-man@lfdr.de>; Wed,  3 Apr 2024 11:09:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 330A2B25CF1
	for <lists+linux-man@lfdr.de>; Wed,  3 Apr 2024 09:07:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D76D6EB5A;
	Wed,  3 Apr 2024 09:07:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AHAga9FR"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EC0B69302
	for <linux-man@vger.kernel.org>; Wed,  3 Apr 2024 09:07:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712135271; cv=none; b=Q87hwUmxSGmJfUH+QrwIdnMJ14xnCSEUQgQ4aASzZfPf4AfdrnLoM+3aqKsYn5/cPaCDPIbeR42mBy8zyqNiooEoP/VdLJyUDGS6JzZ5aTHUssiN4mR1ELPKAE4cghmWP4n0ESHigx1ihm/3ZfY0VxR3fyiOl+SEGZ5jdCemheQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712135271; c=relaxed/simple;
	bh=8uYJK8s2LXT3cbQbpvUHi8qYfos1sUtdcX4Zd53tBLQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kuMQBHXf3vQWuX3I8jw+sPadW+4HjtzXDZfC+VmBXB7JPGT+e2Sm6wZZ58XHFYcPz4Sm3ZUoP/edPMNFNmQsj/Th9Y3PglM920cIv4sj4d9FVD5YExnBBghYhImjP6jTt9d4/sT/pijfuUkhRQJ9vamUCiMdFJpOtsB/NEL4Nh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AHAga9FR; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 004A8C433C7;
	Wed,  3 Apr 2024 09:07:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712135270;
	bh=8uYJK8s2LXT3cbQbpvUHi8qYfos1sUtdcX4Zd53tBLQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AHAga9FRlVEz2ibLXQ7ANX9L5L0GNc1ROkT1c6EzYrnEA4A1cXXnHDdaq7CvSmevt
	 YWc3Wqz0fDV5ADeC+zzmJaLisethK7LKJt+a+2PFD1sG1K60h82aqt/yV3Lte9froa
	 8XFZLNgKCddkOoKT3xIuHHFQUIJGur+mea+in/ldVTV9lp2V0ktx4iDEZAAtVQ/A5Z
	 ZybfQRSgBPuUcpEMb71Bs1erhh6EGHH1ulxZtEuWLF1/tEFynDsnnFutemmdxdLbWi
	 hvFfqDgRE1tHlHJZjioUSht+BBIh81UAVvhFW/6Buy6NcFeptGyql7/FODtnigG6+J
	 R5uQWAX1aqPkg==
Date: Wed, 3 Apr 2024 11:07:45 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Michael =?utf-8?B?V2Vpw58=?= <michael.weiss@aisec.fraunhofer.de>
Cc: linux-man@vger.kernel.org, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Stephen Boyd <swboyd@chromium.org>
Subject: Re: [PATCH] init_module.2: Document MODULE_INIT_COMPRESS_FILE flag
Message-ID: <Zg0Ve0E5aEG7HdEk@devuan>
References: <20240329124137.630521-1-michael.weiss@aisec.fraunhofer.de>
 <ZgiaxG6RKwWslu7J@debian>
 <be8b4949-a304-49a4-9b88-6f02b4f556ef@aisec.fraunhofer.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="PutfCSSLrpnfGSid"
Content-Disposition: inline
In-Reply-To: <be8b4949-a304-49a4-9b88-6f02b4f556ef@aisec.fraunhofer.de>


--PutfCSSLrpnfGSid
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 3 Apr 2024 11:07:45 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Michael =?utf-8?B?V2Vpw58=?= <michael.weiss@aisec.fraunhofer.de>
Cc: linux-man@vger.kernel.org, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Stephen Boyd <swboyd@chromium.org>
Subject: Re: [PATCH] init_module.2: Document MODULE_INIT_COMPRESS_FILE flag

Hi Michael,

On Tue, Apr 02, 2024 at 01:07:12PM +0200, Michael Wei=C3=9F wrote:
> >>  .TP
> >>  .B EINVAL
> >>  .I flags
> >> -is invalid.
> >> +is invalid or the decompressor sanity checks failed while loading
> >> +a compressed module with flag
> >> +.BR CONFIG_MODULE_DECOMPRESS
> >=20
> > This should use B, not BR.  (It uses Bold, not Bold/Roman alternating.)
> >
> I spotted another error here, too. Should be:=20
>=20
> 	.B MODULE_INIT_COMPRESSED_FILE
>=20
> I'll fix that in v2.

Also, the two conditions seem different enough that I would split them
into two EINVAL entries.

> =20
> >> +set.
> >>  .TP
> >>  .B ENOEXEC
> >>  .I fd
> >>  does not refer to an open file.
> >>  .TP
> >> +.BR EOPNOTSUPP " (since Linux 5.17)"
> >> +This error is return if the kernel was configured without
> >=20
> > The first words seems redundant.  I'd use:
> >=20
> > 	The kernel was configured without CONFIG_MODULE_DECOMPRESS.
> >=20
> > Which seems incomplete.  I guess if the module is not compressed, then
> > it won't report this error.
> >=20
> > 	The module is compressed, and the kernel was built without ...
>=20
> True. But I would write:
>=20
> 	The flag
> 	.B MODULE_INIT_COMPRESSED_FILE
> 	is set to load a compressed module,
> 	and the kernel was built without
> 	.BR CONFIG_MODULE_DECOMPRESS .
>=20
> Since the error directly dependents on a check of the flag.

Agree.

Have a lovely day!
Alex


--=20
<https://www.alejandro-colomar.es/>

--PutfCSSLrpnfGSid
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYNHGEACgkQnowa+77/
2zJ7NQ//ch17xCfkByvpK5x5n4evBU0dSc+r8qU2POAWFKmg8Fr3VHsx1uOKJrie
qu5jxqIrUtF/7lcRJ/c/6sj5yOjjRHLHpdaj+dgDiy2QHqanOFbP/jo9CL59PUNJ
qqKlLqw/GbVWkBnwrv/8vVtq7MtNooKDOh612wsPORCyB8vw8jG+VVEXI0N4GoJO
E4ZScmoF7UIJ4UzT5mwXjkFll39NHb5BleNhdWoeAco7A+yD8+GgaNuXPnap8IlQ
2uuNrHdwBUl5bbnXchMJBCaSxquloAxBwapNazBlj0MVYQ2IrcoY/kEC2/3uZazN
jXseHdmeHBVwHP7PvvHUzhzDBDn2JFEkIiMyjc2cTXbEe8Xajq1W5GuUpglhxJw4
on2SiMvhAtvigInqLmLFmPxCtqh0huz/bHywunpYpilQb7YpnB3XPWWqP4DfHlvJ
rH0lQ8BMt8oRGk8wWPUXP3lvCxWBSARQMhGjs9qkMOncMQZsC/KNe3YQzM6FHCfE
RNxOe2AM37aJ4Tcn0FYDN1529JJmEurNEYLOR7xWyQRHlacWdwOWBQZOG4fnADQ3
FFTyietcc7COauJVArM8TcxF5weUQ75PyYUyRnbxKjS+KTXtXWNPlfEZ7gVYY8Gf
VTbpW6tWbgwuOP/1Ta4RWTmlr6PnkwcnAy2syVk703gJY40l36U=
=yw4Z
-----END PGP SIGNATURE-----

--PutfCSSLrpnfGSid--

