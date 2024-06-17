Return-Path: <linux-man+bounces-1225-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E0EF90B36C
	for <lists+linux-man@lfdr.de>; Mon, 17 Jun 2024 17:07:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AD0F9284BF2
	for <lists+linux-man@lfdr.de>; Mon, 17 Jun 2024 15:07:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04C4E14EC7B;
	Mon, 17 Jun 2024 14:21:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bFDaKPpu"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE97114EC78
	for <linux-man@vger.kernel.org>; Mon, 17 Jun 2024 14:21:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718634063; cv=none; b=m24E5rxuBTGeKhAJxgm5KxJQmIucaZ/qSMtgWL7GJMNAu+KD3d/OuK5pl6AVfOEpxRTBF1uCD1MFL8GxE2anBibsiSFCFTkPF8VK+qclDDMN927VOb1+fPjWsF2siEoMpiQHSurrbU5Kd7q8TDes7QR5hI0d69rVXKuQjpiovrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718634063; c=relaxed/simple;
	bh=YeH8ffa7AKuJEtprt4uw/vJL7GVRgShctxZs6n914NY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PLt2HLn9szCzVKbhSY5n4arSl0Tl18eL75HjqdBJw6jcWLwCpVygWYpfIlAEKRh5L3KBHlbGqXfGKIF5A5JY53CG8GBK++H87fUFlm+zpuVifgWWZyJmsoNKRiM/38jmjbL4DSJdw9H2RcN7kjJBusg8ugT3YC/bjcyGqyIgko4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bFDaKPpu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 82FD8C2BD10;
	Mon, 17 Jun 2024 14:21:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718634063;
	bh=YeH8ffa7AKuJEtprt4uw/vJL7GVRgShctxZs6n914NY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bFDaKPpu4OcYNk+sOrk1lpZqE8GXjcOjF7YMKOG9+Cl2P7b10yJ0jOJZc1XW3SBdA
	 d8jjAaCXygoPArfoX0mVRuCrCi6qyutmxgiLJfF06WeOFqygSeD9L4i8LdYSxBvvhh
	 3vQSlrFMFmuSG081wEs+mJZxr3d+0tHVprkxfS3Iol5XKH/rI6qd3httaNgOKI4H2n
	 E1YUXjRtARBYECrSHuOpQ0ypLrewavgLrQ45xOvJ4Rw3dDd4hScbbg3BMYRkN6EkR1
	 3/hge14d+WJNvvHY7mhQ56JJ5ITec3w8WJLsXbbcF33rI7OS3s2Vb4XvMzbwzIbA4m
	 Tk5T1LrRpsfMA==
Date: Mon, 17 Jun 2024 16:21:00 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Konstantin Ryabitsev <mricon@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: kup mailing list
Message-ID: <ZnBGTMjmoozDDFM1@devuan>
References: <biughofuuvymabklkw2cuchpubk2mzeq3d7snxyrogyu3vqtku@dt6yofflbsxo>
 <20240617-bull-of-glorious-dew-38b2f7@meerkat>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="aizMzW1IReuM1bNN"
Content-Disposition: inline
In-Reply-To: <20240617-bull-of-glorious-dew-38b2f7@meerkat>


--aizMzW1IReuM1bNN
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 17 Jun 2024 16:21:00 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Konstantin Ryabitsev <mricon@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: kup mailing list

Hi,

On Mon, Jun 17, 2024 at 09:47:39AM -0400, Konstantin Ryabitsev wrote:
> On Mon, Jun 17, 2024 at 02:27:22PM GMT, Alejandro Colomar wrote:
> > Hi K!
> >=20
> > Do you have a mailing list for kup?  I'm triggering some fatal
> > condition (kup-server.c:617), and would like to investigate it.
>=20
> Yes, please send to tools@kernel.org.

Thanks, I'll do!  Would you mind documenting that list in the README or
somewhere?  I couldn't find it.  (Or maybe it's documented elsewhere?)

Have a lovely day!
Alex

>=20
> -K

--=20
<https://www.alejandro-colomar.es/>

--aizMzW1IReuM1bNN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZwRkwACgkQnowa+77/
2zIJbxAAoRuHdyH4qucm41kEJV7nRcygNXlmDxW0SBo1tnZYFLNOrDZWROeJAgxe
fUcy52jL5ghd+xUjH03oOABBTdnMtROU7nUQN+t4v253uvSgWYVDjSbuHemDs0cg
29p+sqzdL+WGT6oca7ToIDxmB04JYh3/MxpZxOYqvw1HzDzLaAs3HGeo46pfjh/w
ky22KcttVPpKgFTSwSgV6leLQ6PAtJfPNIiXOccrxLLImX4iWO9NnqJh+tb2Xu28
erLLDv63H/9ReQtpzZgriSLgWBPRhO8G6Wnmgsh+0rv9HRO38Wym5jITTwbtRT7p
JmSBKwthEX/FdPAC2aoIokacQaJsrAe17AVimop45uSmAMBAUQX+lZMJaVzLcIqz
b3ATPkhKw0qtso47e6W5E3fcYYUzq7XbFvyqwDTgveBbXjDvWKXrM8PSp+oShVVo
1/GsNy4SrRL2r6b5nNe20MrMoxNoY/pDUhNhuoCtPCdjpkN9ELAFuYDbm+4UlqCs
QuLIMst9XyaQaSiAWk51lDj4oC1l++7DvFMdxMEE4bejvtMtT+EktUNV3fHmmBrt
5cakdGWrhKk54N1e1zZzGGcsWTy2h5c52FuxmeHFhAC8icTvwpKhlXmDiYvlXTdE
8e8H49IRB7ReIcEJQYRE6iz/1A9RsI8cqp1g41ZwSGafB0L2j+c=
=BBq0
-----END PGP SIGNATURE-----

--aizMzW1IReuM1bNN--

