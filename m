Return-Path: <linux-man+bounces-2413-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D6208A330DC
	for <lists+linux-man@lfdr.de>; Wed, 12 Feb 2025 21:34:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7DD1F166F68
	for <lists+linux-man@lfdr.de>; Wed, 12 Feb 2025 20:34:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9A2C1FBC96;
	Wed, 12 Feb 2025 20:34:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PcbAWOHg"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7CC0134A8
	for <linux-man@vger.kernel.org>; Wed, 12 Feb 2025 20:34:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739392446; cv=none; b=ucZML3SYx/zmiQbsLhwdGYmtSvblwJA3gMk2nMut+Ux+4HDP5iFkMw59hYAVnmkBvwJGijVkh1ouX2I0bQ5jjgb72j5XbUt631s3J1MmvUIKGZ81085YTrqXsF1yKZRVS98mxcZMNugLy44VfakXsWqLD6BMbucjPWEdikn0IaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739392446; c=relaxed/simple;
	bh=+nIeT/H1MYPMhiKCLYUO7aa3SeqCK/m7iwS83/o/8bc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GchSAc7vfEUilhDp36IgU5CEIPWG9/M7aDaXFG/Bblus6jTWsPMc1z3pkpEcJmwcynQAXhl5c50s2E77r4DAFVp5RIoT04dWTMaDki3wK+7QR4X1A0nD8x0g+a21mr+juu4ucrMOooKXdjR6oRaIcxaRUFMPxjc2rA2w4893HQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PcbAWOHg; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 741BDC4CEDF;
	Wed, 12 Feb 2025 20:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739392446;
	bh=+nIeT/H1MYPMhiKCLYUO7aa3SeqCK/m7iwS83/o/8bc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PcbAWOHg4rh3sNAgB7Wb8yrjjfZZj0YikXiKFNR2A9Ln4bFqzVJwWRa8RsnuvIg2w
	 GsL2id5BV32iowrVhvqNQrfxSYLwbq5u456A5Q24ghKnqzyvtTxALN7ap5PDzdQbam
	 b5DmvOI8SSC/Dk/MDP7m696Dl0RRcXEUDlHBb2+qH3nIJte/xrXPwyg5eVRX54G3Il
	 CAP3T5uJ0D+sD6N8p1oO4wgKZtpZc6UXOVOD3sseplCt48RZiYBa/QYe1jl+VNM7+n
	 S6oL/ZBvqELNmqBjeauLZr4oazEhEVYxKO+98+DcW8R/oWDKD+1rTGya2bV7iY5Ur0
	 QDyaeuL05knJg==
Date: Wed, 12 Feb 2025 21:34:43 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Amit Pinhas <amitpinhass@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] [PATCH v1] man/man2/kill.2: Wording issue in kill(2)
 with sig=0
Message-ID: <q4tajm5tsp6ai6grsozec42si6jiukyygnacw2goaaazmtb3bz@npxtz3jdw5mg>
References: <0cd62e37c65a6872080f39cdd21d2e4f111488f6.1739386814.git.amitpinhass@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="u5o6uveapdmiuun3"
Content-Disposition: inline
In-Reply-To: <0cd62e37c65a6872080f39cdd21d2e4f111488f6.1739386814.git.amitpinhass@gmail.com>


--u5o6uveapdmiuun3
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Amit Pinhas <amitpinhass@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] [PATCH v1] man/man2/kill.2: Wording issue in kill(2)
 with sig=0
References: <0cd62e37c65a6872080f39cdd21d2e4f111488f6.1739386814.git.amitpinhass@gmail.com>
MIME-Version: 1.0
In-Reply-To: <0cd62e37c65a6872080f39cdd21d2e4f111488f6.1739386814.git.amitpinhass@gmail.com>

Hi Amit,

> Subject: Re: [PATCH] [PATCH v1] man/man2/kill.2: Wording issue in kill(2)=
 with sig=3D0

The first [PATCH] tag is redundant.  Probably this was some accident
using the tools (I guess you wrote manually one of them and then the
tool added the other?).  Nothing important; I'll just ignore it.  Just
keep it in mind for the next patch you send.

On Wed, Feb 12, 2025 at 09:00:42PM +0200, Amit Pinhas wrote:
> The fix was found from the relevant man page itself, as it had a wording
> issue regarding the return value when sig=3D0.
>=20
> Reported-by: Amit Pinhas
> Acked-by: Alejandro Colomar

Good.  You should use emails there too, but that's a minor detail.

> Signed-off-by: Amit Pinhas <amitpinhass@gmail.com>
> ---
>  man/man2/kill.2 | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man2/kill.2 b/man/man2/kill.2
> index 96468622e..8bb75545b 100644
> --- a/man/man2/kill.2
> +++ b/man/man2/kill.2
> @@ -79,7 +79,8 @@ .SH DESCRIPTION
>  processes belong to the same session.
>  (Historically, the rules were different; see HISTORY.)
>  .SH RETURN VALUE
> -On success (at least one signal was sent), zero is returned.
> +On success, zero is returned.  If signals were sent to a process

Please use semantic newlines.  We have a man(7) source code style guide
in the man-pages(7) manual page.  I recommend having a look at that
page.

For this case, here's the relevant paragraph:

$ MANWIDTH=3D72 man man-pages | sed -n '/Use semantic newlines/,/^$/p'
   Use semantic newlines
     In the source of a manual page, new sentences should be started on
     new  lines,  long  sentences  should be split into lines at clause
     breaks (commas, semicolons, colons, and so on), and  long  clauses
     should  be split at phrase boundaries.  This convention, sometimes
     known as "semantic newlines", makes it easier to see the effect of
     patches, which often operate at the level of individual sentences,
     clauses, or phrases.

> +group, success means that at least one signal was delivered.

Other than that, the patch looks good.  Thanks!  Please send v2
addressing the comment above.  (It's simple enough, that I could just do
the amends myself, but that way you learn it better.  ;)


Cheers,
Alex

>  On error, \-1 is returned, and
>  .I errno
>  is set to indicate the error.
> --=20
> 2.43.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--u5o6uveapdmiuun3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmetBeMACgkQnowa+77/
2zIkgRAAj4VYRVwgXrCEy5s0DxEFBEPC/Q7CKHaDE2LH/qjuUaTqepZfu0E1QesG
MqmxAwI4gHfb+SjrT1wvd1d20kIVfiTLGHjltkoXGSYDTSZuvvmjSxpIucCSdxGW
LC7EBgh+t9DEqsQrbyWBD/qyz3777azN+kk2ed9vk6OtwkT1h/ycIrtcyN/x57T/
SscxXz87mIdwBzxhFDipWRgSzFVBv6A6fVokRSXMk9P/JBdy1nZnyylLVvs4rzEM
nmnJ69bBD7cudTByvx7/CVy2yD9DT19ms3R37rhJ/FenPiKFtFOPWZAArOPpHWLR
BJ9wfV5yxUmZ+S0IrkXjV0K3Py4PNTVURlOSsRc98Mg1vaoXsUnDmTShxQ+cBcQ8
Qy3dchpHW0sjY5toxKAMvW5narsct1VoS1dTIA6fmH+8qxVC/5gA5uWJKOE/+t7u
KSH25B/LlHj8ZTgxkJJM5XKCyhk3CRAyb6oFLpvoP1E2W1SiJCeFIP4bLRGNgeBz
0FTuUVCaGh0WIb3wuR/CF5e5QSTR0tsZQzUIeLZrLd+RAgw0ioDCGXVbfyWUQqRJ
vH1YSuknOB4PGYhWeuUayKl2tyswGjXUCe1iBu+KYHk6AxDa1yN3a+bnf3qNRD79
OsHrqQRKGhTck4N0P8VPuVX0jxWJo50t8Bh/UJJt/80upPiBAYo=
=Gkj2
-----END PGP SIGNATURE-----

--u5o6uveapdmiuun3--

