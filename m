Return-Path: <linux-man+bounces-375-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E3CF882F15E
	for <lists+linux-man@lfdr.de>; Tue, 16 Jan 2024 16:22:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9BEB2285F33
	for <lists+linux-man@lfdr.de>; Tue, 16 Jan 2024 15:22:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A03CE1C29E;
	Tue, 16 Jan 2024 15:22:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GgiV72Gg"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AA531C298
	for <linux-man@vger.kernel.org>; Tue, 16 Jan 2024 15:22:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3458CC433F1;
	Tue, 16 Jan 2024 15:22:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705418521;
	bh=kHwpsBQQ+r4B6AqB711GTBdNUhaHn5DLUQy+AIm/bHY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GgiV72Gg2qhOJLPjrLJZZLIr+/qz4atvbAe81LYqVgCAuS4RGINFnzfTRoZ9wEBme
	 o6yS7A5yh2zLDWl9zlnnQ+ngP1W6YaaBmWs7KBim+nGd5Fcg68C/E0chEtMWSkO9j0
	 Me81VK+DcxeHINYlsv0uuj2yjXacggqMpJLgnfp7o6WYMTLtIXnxi92tyaH3VpEgRw
	 FlGBLIbN8/HusmMlF4BSq2yJRM2T2XFCyNRRVy0YtD8NRCzwhv/9z+BBT+mTEcZXxn
	 Ge9My5i1b8vayCIG2OFBmP8RjZqIPIRMBnvgmcO2o22zZkFbhklP01tw+pZnw40dV5
	 ZubrjLWnv2++A==
Date: Tue, 16 Jan 2024 16:21:58 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/4] fts.3, div_t.3type: ffix
Message-ID: <ZaafFkmn2sJUmUZb@debian>
References: <20240116133940.jsgccc7ifzvlu2ol@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6s/JGKaJ1sbz1mcN"
Content-Disposition: inline
In-Reply-To: <20240116133940.jsgccc7ifzvlu2ol@illithid>


--6s/JGKaJ1sbz1mcN
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 16 Jan 2024 16:21:58 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/4] fts.3, div_t.3type: ffix

Hi Branden,

On Tue, Jan 16, 2024 at 07:39:40AM -0600, G. Branden Robinson wrote:
> Break lines containing a parametric prefix to a man page name into two
> lines, using distinct font alternation macros and the `\c` escape
> sequence to "connect" the output.  This prepares for adoption of the
> `MR` man(7) macro in groff 1.23.0.
>=20
> The style seen here assumes that the typeface used for man page names is
> bold, which is ahistorical and which the `MR` feature makes
> configurable.  It might be better to recast this shorthand into English.
>=20
> Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>

I've applied patches 1, 2, and 4 from this set.

Have a lovely day,
Alex

> ---
>  man3/fts.3           | 12 ++++++++----
>  man3type/div_t.3type |  3 ++-
>  2 files changed, 10 insertions(+), 5 deletions(-)
>=20
> diff --git a/man3/fts.3 b/man3/fts.3
> index ae2fdfcbc..d2c520450 100644
> --- a/man3/fts.3
> +++ b/man3/fts.3
> @@ -187,7 +187,8 @@ .SH DESCRIPTION
>  .TP
>  .B FTS_NS
>  A file for which no
> -.RB [ l ] stat (2)
> +.RB [ l ]\c
> +.BR stat (2)
>  information was available.
>  The contents of the
>  .I fts_statp
> @@ -198,7 +199,8 @@ .SH DESCRIPTION
>  .TP
>  .B FTS_NSOK
>  A file for which no
> -.RB [ l ] stat (2)
> +.RB [ l ]\c
> +.BR stat (2)
>  information was requested.
>  The contents of the
>  .I fts_statp
> @@ -329,7 +331,8 @@ .SH DESCRIPTION
>  .TP
>  .I fts_statp
>  A pointer to
> -.RB [ l ] stat (2)
> +.RB [ l ]\c
> +.BR stat (2)
>  information for the file.
>  .\" .El
>  .P
> @@ -754,7 +757,8 @@ .SH ERRORS
>  .BR opendir (3),
>  .BR readdir (3),
>  and
> -.RB [ l ] stat (2).
> +.RB [ l ]\c
> +.BR stat (2).
>  .P
>  In addition,
>  .BR fts_children (),
> diff --git a/man3type/div_t.3type b/man3type/div_t.3type
> index 857dae17e..7abbb7616 100644
> --- a/man3type/div_t.3type
> +++ b/man3type/div_t.3type
> @@ -40,7 +40,8 @@ .SH SYNOPSIS
>  .SH DESCRIPTION
>  .RI [[ l ] l ] div_t
>  is the type of the value returned by the
> -.RB [[ l ] l ] div (3)
> +.RB [[ l ] l ]\c
> +.BR div (3)
>  function.
>  .P
>  .I imaxdiv_t
> --=20
> 2.30.2
>=20



--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--6s/JGKaJ1sbz1mcN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmWmnxYACgkQnowa+77/
2zIOQRAAjZjTiGoemKByA8CEjbLTEDBbnyBhnU4E761vVAdkUp8+YqM4JOBwkuM+
9TB+j06pNdDXnoYyPfKzjg1cNo/9wWZbjkjFW6Qq/RyWvCm9l86y2S6sanJoLZQA
b4lNzwtOBBkzXJYXXfHAjkXcAWRT3Lj8YNejKSFz3XPxa/oKB7LwhV8FKskd7iS+
Ek8xrJzBhJ+dMiNajsN9gaCyHTFJeMvhusTyI2KQoR/A2urqyD39ZzEUhbfBOpP1
Rh6b/0T+TvH/ubwv6Z1c8vXtEU63w6LEU0jbUUlFzH61NTpfVwyaRD+Y3fYHlat2
w7TdM38EYRM1ZaI9joG+TzhLJhMvnmVIKnZ4KULeXyUeZk9Jd7Y3LiU3hekEd+U5
DLy2QZiAOtMamY52H9ZflYFMUSqG5wW3k0SbDT+IDfpJC8fCBlInTmoyzxrJYajJ
ZdvDvA6seqKOKf9vsML3TyHDPLFGWJyajwYRrT31A9WOh0H1bPkijoLbsgx7GaYY
YbklP34bjX5Zek4okrDOp+YjPfiV1+0TPLvG1AMhN+RvyYCPo6pcKJSnu3aK0y7M
9Ap+j1N6SrZ8J5jsPfM+sNEMbLw2OLY7U9DxpAqeSWGnyv3rkJFp5iHwTta0IcpF
NmA1zIlA16lsR3Ta287XNr38K5kIrPoyxZhsd/P6/psiXcm3kVo=
=XsqL
-----END PGP SIGNATURE-----

--6s/JGKaJ1sbz1mcN--

