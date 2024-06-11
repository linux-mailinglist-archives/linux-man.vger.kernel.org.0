Return-Path: <linux-man+bounces-1118-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F6B890413B
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 18:26:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A18CD1F25AD2
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 16:26:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4E6F40862;
	Tue, 11 Jun 2024 16:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="svKERgWK"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A432440849
	for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 16:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718123133; cv=none; b=Ha3o2N/FPHt25RxNXrcFXMe3YUHf7DLUT9KAFXjtNM23+6jT/ddofpjTh5nle6JqGk4UAJObsJhk/8uy2P3GPhDiRMNcJyCb1YlvFAKsU7OnWTS244OTlv7KcjLeL8h6faM/8YfCIsw2QlwYSB6DgaMRpM33nhdF9hXug60isnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718123133; c=relaxed/simple;
	bh=B5UqxfE/jwsNjTyyeTC+2DQ61CdAIiqJlHKD4RoSaXM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=U3A9jpC8q3pZo2RtLTFcHQCUbdZXI5mrvmgpbCj19KcvoUCJ6PQPCrPrM8JJfKU7sXvae+A0QHl4aXR0HbTXOlMrXcZPa73+ePy2EJzXvDCIl0IZGlQEnixym+MpckNDSmLU3YnJaeq1xwprTHXridnRerYAVIim66pobS/tVtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=svKERgWK; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D84DC2BD10;
	Tue, 11 Jun 2024 16:25:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718123133;
	bh=B5UqxfE/jwsNjTyyeTC+2DQ61CdAIiqJlHKD4RoSaXM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=svKERgWK4R/g35S4BkINaIY1u0pScFoHbXH10DCQVV5MjGx7zbd89FwObKvA/JQ4g
	 AwUt/ZiL2MS7ThO4LI1pMAxOG0MUJyIrW0yCYY0FPACVR5sI7RfhGSok1dEZ5U2xmT
	 UvvxIUMJGP87oJF+Dl4QokQY0LLYY9tCUYcTzpqfTtxAYH3Uo3oEyBNx6V/YsEzCEj
	 GqyCUuElZbA6fHG+loHLTd8GIKz6I2gGRZgw7RRlUZQ1myjw9t/t19bvlx1MvvjSdp
	 58jsxNVDnFXF9DLW3iD6+4GgEg4sr1XO/gL9o5yOrMfmnm+x2NjsPtHrc2+Zj2cxuJ
	 ZAXa1VNfYZglQ==
Date: Tue, 11 Jun 2024 18:25:30 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 09/12] tzset: update STANDARDS, HISTORY
Message-ID: <ffoptahg44keiagybgev3bcllobdcbev3i3pasrv4lqlsxdlwr@ufl66nu2unwc>
References: <d054fc63-6ea4-425b-94ce-14402d448ccf@cs.ucla.edu>
 <20240611153005.3066-9-eggert@cs.ucla.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ihpcms6m3uh2ssow"
Content-Disposition: inline
In-Reply-To: <20240611153005.3066-9-eggert@cs.ucla.edu>


--ihpcms6m3uh2ssow
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 09/12] tzset: update STANDARDS, HISTORY
References: <d054fc63-6ea4-425b-94ce-14402d448ccf@cs.ucla.edu>
 <20240611153005.3066-9-eggert@cs.ucla.edu>
MIME-Version: 1.0
In-Reply-To: <20240611153005.3066-9-eggert@cs.ucla.edu>

Hi Paul,

On Tue, Jun 11, 2024 at 08:29:12AM GMT, Paul Eggert wrote:
> The current standards are C23 and POSIX.1-2024.

Is C23 also public already?

Can you send a link to any public document that confirms this?

Have a lovely day!
Alex

> This stuff was first standardized in C89 and POSIX.1-1988.
> ---
>  man/man3type/tm.3type | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/man/man3type/tm.3type b/man/man3type/tm.3type
> index 5d5b28658..1628e0c1f 100644
> --- a/man/man3type/tm.3type
> +++ b/man/man3type/tm.3type
> @@ -90,9 +90,9 @@ points to static storage and may be overridden on subse=
quent calls to
>  .BR localtime (3)
>  and similar functions (however, this never happens under glibc).
>  .SH STANDARDS
> -C11, POSIX.1-2008.
> +C23, POSIX.1-2024.
>  .SH HISTORY
> -C89, POSIX.1-2001.
> +C89, POSIX.1-1988.
>  .P
>  .I tm_gmtoff
>  and
> --=20
> 2.45.2
>=20

--=20
<https://www.alejandro-colomar.es/>

--ihpcms6m3uh2ssow
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZoenQACgkQnowa+77/
2zJG9g/9HDZOiOLk8sI1ahSPw3jAVAHw0KZC4/+DDXoifdhjYZYJeryQog34x5Bd
2XNI8/BR6TbjGQj+tN0RZyUCgiKUddtWLaaX/AC+xBLTaY2sdcYV83NwTK6Jw3wr
r4vXta0cXBUhlPPz5El74paY+n/bpifA19pigMpEVLwhOPInMah83iK6LYK+8r4d
o+Mt9XpohpbynYsjvPlEAn2O8QLEBSkl/G1/3pzHXYn/R8x5GN6V7h/h1fmwCapU
8Lv9XCOF5yvemjKzVUlyA4foqZ9UX4OoDJg8vRhc7j76e+Yp8jRZ8mJQUiL6N1Kw
Z+fmf3+LlS4thkfEVcPSRqkHlh2nTacgslZmGLHIg55a/s+0KJrxls8vxBtoRVaE
s2hDvA8MFYDYxvYuaXc7ZMkfbNZzs9RBr3ZAmb5YGIU0xECw6WLMVaAVAX1/aS8e
toJtGMMMfo7spGCUsQ8B3VH164E7kSFrx2FucNfkonDBwqeu3sEPf9icHa5RIrLJ
j281CtCxvy1y43B3PA17vB2MDoxBU8l0tra65GkdyZWN6vMC+Fk8fk4Mz412p+wU
aw8cxI1PeZTBGSYc6slZsmdu+en5kDjfE+fHFPXexs8Ruen9kk7lgU9k49z4n5x1
LDDOCISEKPB2gHsSmw43AC7quLw7iS5bbVfgM0Mc8hZOrFlc9Nw=
=R3AS
-----END PGP SIGNATURE-----

--ihpcms6m3uh2ssow--

