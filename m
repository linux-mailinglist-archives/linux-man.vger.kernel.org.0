Return-Path: <linux-man+bounces-2041-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C68B9D115C
	for <lists+linux-man@lfdr.de>; Mon, 18 Nov 2024 14:06:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 42B972842AB
	for <lists+linux-man@lfdr.de>; Mon, 18 Nov 2024 13:06:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B617F1ACE12;
	Mon, 18 Nov 2024 13:03:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XUR8XVm9"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B9131AC428
	for <linux-man@vger.kernel.org>; Mon, 18 Nov 2024 13:03:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731935001; cv=none; b=N5H2CxUcw7udazGjzUmhdcSMnw1gCQjSYeAb8Z4TFBeAK5F/pcdQC+8/j4nzTajW6/LzZeTxOyOWlThJRi/oz0zA4gu9lNSmUhWcuhha90cNooh7Xq781FO7ZhmE3ixIORh/O8nbF1tHDOHxXA/eKg/X/Vizu+ClE5IC30aXGcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731935001; c=relaxed/simple;
	bh=LFVA8sa+2UwIgVVx4apdZ4YDUh4F/oB9btyGuMgztqY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XJPyOJCiXpT/UGdP9uheEkq+3AgJ2nfx/+/IC7ZTcwas9GUOgpmGUMLrFwdUlyh8ceIjTdwfFyNu0jfudET31Rlr7KSDDMHtrnrXSTJdTkOyn7v88hlm/SaMzI8MWvrePHszMD2jtQ2HHIaHrc7/uS5+9xiD/bdGwAT+yTiWECk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XUR8XVm9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EC0DBC4CED0;
	Mon, 18 Nov 2024 13:03:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731935001;
	bh=LFVA8sa+2UwIgVVx4apdZ4YDUh4F/oB9btyGuMgztqY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XUR8XVm9YDhXVy/irYbqBXidra/CGadQ3rGFEeqchueackGzxlQ2qXbcwPZjk5EbW
	 MT0gnBOJrAI92gojJuJEmo1YPmr8B+VV0JCakt/CaQpgrDnelxip+mVpnCNLaVA1Xe
	 Bxb0UuaNLsJomtqUiILBdB6S657H0rKZBNHrF79z6kGUsAyZ7mA5hRReEeY2nWBVO3
	 YvN4eXG4RsTNqEcEk5W19tn7+2Qdxpj4ObNRmyCigXbpCBKNxWyMppQbk3LDwFeA4q
	 +y/UQw3SSCRWYMKfhe5PYUiNy+ZvcCGn38WUe21EeNGSCMIAD1Sxwy/pPRL7pFMdYb
	 EBzYCHBsv8jDw==
Date: Mon, 18 Nov 2024 14:03:17 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Helge Kreutzmann <debian@helgefjell.de>, mario.blaettermann@gmail.com,
	linux-man@vger.kernel.org
Subject: Re: Issue in man page time.1
Message-ID: <20241118130317.5oy4gxrm7yfg2mra@devuan>
References: <ZznJgOKJFHMRJteu@meinfjell.helgefjelltest.de>
 <gkvmpksnb2e7c5r6apwqmipx3gnzh7zf7gle7v26jukrnbt4uu@ijabu2zug2ib>
 <20241117160841.73um2wny7437i74x@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="w3j2pvc2xtwean33"
Content-Disposition: inline
In-Reply-To: <20241117160841.73um2wny7437i74x@illithid>


--w3j2pvc2xtwean33
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Issue in man page time.1
MIME-Version: 1.0

Hi Branden,

On Sun, Nov 17, 2024 at 10:08:41AM -0600, G. Branden Robinson wrote:
> At 2024-11-17T13:01:38+0100, Alejandro Colomar wrote:
> > Branden, since this may affect your long-awaited patches, please let
> > me know if you want me to amend the commit with a different approach.
>=20
> Now a moot point, but it wouldn't have been a problem, I don't think.
>=20
> > Also, how about sending your MR.sed patches before I break more stuff?
>=20
> Since all that remains are sed scripts, I don't expect much trouble.

Yeah, but I was wondering if some of the sed scripts that we've already
applied should be re-applied.  Maybe the remaining sed scripts need some
pre-requisites?  Anyway, we'll see.

>=20
> But thanks for the reminder.  My plans for the groff 1.24 schedule just
> suffered a setback

What happened?

> so I may be pivoting to other projects for a little
> while.  This would be one of them.

Nice.  :-)

Cheers,
Alex

>=20
> Regards,
> Branden



--=20
<https://www.alejandro-colomar.es/>

--w3j2pvc2xtwean33
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc7OxUACgkQnowa+77/
2zLkiw/+JVXppUybkMMD2LPni+563fBt8Wuu6L1rdtPI+vVbh5r2UG5lL4UGSN8b
kXo15KeHo45kB2ZH8l9nEB6brmGDqCljt0+z3cSU6/xIHm470ONvJ5Sd2LzrAauJ
wltD9hD/gDowsmmJUcfT5oLKNjpGtPwwZJlBHEOMJL43+409I5ljYllAqSCj//d5
polItVqQwLTpXUeXw3h8tZnPmbXh46mOhtTFw6na0OA7u8PNj5zY5IXo7CqCFW4w
o8+ktYaPUPJvKRTIvKr4CNAtqeW9Z1F8pJW2L/MyjYruG6a6ga+BuljG2saN3/LK
HV07obsSH8T5weec5nFzGiL8YKeUZrjnwbqWBDU3/U8Rv7PnQbRPo1VkRUFHaJFe
fXd8nMKNxGBAvhJTSVpoCvnto13pyxSiqkIRnfJyjvD7ZKXgNYIy7B32iCV0jCt6
LTB9mHWWP9A2FBzg2kwPvNL/BjAP78CmrFTDxUakvczHCz68poLhWySDlWZy1on2
gFq7YKywRe+UT4q6HzwhCKNVjkOItaRTG6A+TmB5NJ+h5JPf7IgVkA1Qr1SUa6Ua
QBlpoQsTBbxm0ZoA6yfc1L43DjS4IjwpkTsFN1NITHOLVYYqjFVhiL5TBKBXR+qd
dijelt025Zd/5cV6fPIDM9v37tA0441RrTcXQ4/SeDWiTRyPqHc=
=4BOb
-----END PGP SIGNATURE-----

--w3j2pvc2xtwean33--

