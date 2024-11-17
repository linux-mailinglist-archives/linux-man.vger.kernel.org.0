Return-Path: <linux-man+bounces-1980-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BEAF9D034D
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 12:38:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8C9F3B24270
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:38:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47913149C4F;
	Sun, 17 Nov 2024 11:38:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iuSJwLii"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 093D313CFAD
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 11:38:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731843507; cv=none; b=n472G3G6tlNP9ezGhjP72pPIgIedMpJm/qsa4Qi8pu13/GwVjt/b977/iphapE6xz/68MTbXI8a4o/XW0bzmN8jNLFPxsYc9PGdT7C468Nbz4drNyYBKmXF3nSxwj+AOCS1r/zw1vpvfZgt42eBvO+DFrg44OHazSViyiUZJKEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731843507; c=relaxed/simple;
	bh=eZWMRjv8ut3b5Zl0O+rFLgIAneCYeOaVScpJk26Ah+k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=e9OIboqr177WsHcf3qenKQAWwWQvfEQ8Z0FaSfOhy4jPXqlI2hEq/hRiUMlgPtkrhKwWZR2EnDY0GdgX/82vxA+NLtvnoFXdVLpSoz5nFy3u6XM6Kz1T71/KE+Jcqyy2r2YtjYnZ/rLFma2Vh+5mB4bBGqvM8ttBQQorbOa30Ww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iuSJwLii; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D075C4CECD;
	Sun, 17 Nov 2024 11:38:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731843506;
	bh=eZWMRjv8ut3b5Zl0O+rFLgIAneCYeOaVScpJk26Ah+k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iuSJwLiitkV1CEF6Z45AfQcxYmD7ZkhrwSPli5hAt4aKmTDjMjfCvUybrZMrdJnli
	 gtIJg6cKOO6OAvDGPsI8ymFWn/h91agW9NEALJrUa/L0wSSuuNeLxMCCjTXAbkJTVi
	 ohSMot3KNMDaj8+Mz2WJKWsMtRm5Re3dAtEASj16JhFJe4pCABCkHTCk8uzvXVFlQN
	 DqumUJ2SkPVI72+mCNeXn7tRPYLZ6FisyPa+gGba7ykELKXm1NGVuxyuw2Kx0Uaqep
	 xjC57yHBlx2wxYfdgncoyx2KsPYl3wOcwkQ0epmUFEYyL20mSXq6buaVwm7uSUDz66
	 SV7cSLhekBR1w==
Date: Sun, 17 Nov 2024 12:38:24 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page remquo.3
Message-ID: <vxkhytkjj6tacxxn52vjw3acxd2nui3yut4hy52ipmz7lomhsg@r3mciiohdixq>
References: <ZznJf900B2F5LgrV@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kokap55zyoqv4ua3"
Content-Disposition: inline
In-Reply-To: <ZznJf900B2F5LgrV@meinfjell.helgefjelltest.de>


--kokap55zyoqv4ua3
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page remquo.3
References: <ZznJf900B2F5LgrV@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <ZznJf900B2F5LgrV@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Nov 17, 2024 at 10:46:23AM GMT, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    Why is this no-wrap?

Are you asking about the behavior of the function?

The function performs a division x/y and stores the quotient in *quo.
If the division is either inf/y, or x/0, it's not possible to wrap
anything.  There's no quotient.

Cheers,
Alex

>=20
> "Domain error: I<x> is an infinity or I<y> is 0, and the other argument i=
s not a NaN"

--=20
<https://www.alejandro-colomar.es/>

--kokap55zyoqv4ua3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc51a8ACgkQnowa+77/
2zKEDQ//TihjF47indZwBBjZqVqT84oueMlbCPpeJxrs7DkLQQaeJ3N8GmSqWrWr
tFMoNdybuuCVAHp1LdvY0OQPDKXAszLBBdwgDppPtkEHfjOg9HE4HOjGsOx4bZ8S
JhdDhWRK1hpiolt0YdJNJ8i2Lxn4a9S/jLUVFls8yPF1cn2wuu7EXEE4z5q3Eoqm
TRYXIgG/cZ3I4wo6p5gmBCk8wbmpcAh5GfLzYyiWrqngHZwBNI1ewLGszSVcRNk4
KFgrUbCBwVALtsl8gH2R1mSKmauBPU5SKc2kCer0XNmFeCiUjN/JWyACJSFzY/wB
BbenkkFffm9skRUZODYosD4y8F/ZPCY5Kf9GMIK4Q2iCnlSGfJkjdIfLnQEnw6Sd
hoJh67bwYuTg+TsyXMiQqletST2hJcOwF3s1SO1pKXDy2SHHnw/woc7SUxHk4J5v
FOhQyW6F/+xsfiAoBYm2dmxWKBb5NEntaXNBf7nWT5MzbJvMiNjY0qd0C3z7Knzp
Aa1IH5Pq07p6dH2tg8FQzxcFBlkwunHsUU8jqv9N2MbXZW81s/vh50lmUXkf93qT
jmmUUbpEQqUryg3uRG4h+hfsYJpCr9BXHFCJAoaSqrBb9SILyrMyE9x+3/7MSHuO
CJW7zRdJVYWhcKiPZKTK/TX37LMHILjFjp6OVZGVhJqxr4Koe+w=
=xdef
-----END PGP SIGNATURE-----

--kokap55zyoqv4ua3--

