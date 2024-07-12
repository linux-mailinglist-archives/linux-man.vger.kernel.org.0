Return-Path: <linux-man+bounces-1442-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B2B392FA55
	for <lists+linux-man@lfdr.de>; Fri, 12 Jul 2024 14:33:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4B0A61C21E69
	for <lists+linux-man@lfdr.de>; Fri, 12 Jul 2024 12:33:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8390916EC1A;
	Fri, 12 Jul 2024 12:33:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cfiCY8d1"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C1416EC05
	for <linux-man@vger.kernel.org>; Fri, 12 Jul 2024 12:33:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720787621; cv=none; b=PTq6BGKdprFDK9otk8RGUJg7w3EaKnrWJQECJT9FJqKBrflRnxV5/A/FgH9jXRmeqjbNa4uzdrphQV6Vcg0xhF9Id+G2iygqr6lPs8b8TqibPPmyNf7PN6Jn1V0H1Mz+7PXozRs2NijVlNH9nqZOuxGzDC1MXMFPTExd7cH/yH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720787621; c=relaxed/simple;
	bh=+h0UKyHRptgznivDxbQBdMXichbIjIyuFTXaGWir3kA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bjK7bhi144bwIyUI+RSeUEw5pJuHp/ZJpUeC3Iz07mKbobYO9iN4y4dybQIpezJDLb4xQgpd8seHZ/V1Hp3vHi2BqagIGif4Yh0qn+Inv+f3FQqagAXbbLQ6e2sJZMvX+sTtWBaOQB8IXLyByK7Rj0CS7bvz05ejHmGjhjKoLoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cfiCY8d1; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 77B9AC4AF0B;
	Fri, 12 Jul 2024 12:33:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720787621;
	bh=+h0UKyHRptgznivDxbQBdMXichbIjIyuFTXaGWir3kA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cfiCY8d1wTL7sG4i7EEtpRieynOGmMlkt6qYkbLWwtMekw6nOoi7l+AJoSY5FcDtV
	 D1+OuxJNKxOuLrFTQLF4IoosGR2HDJ/iZm3Ltr2jwDaQj/V5rZTy3zmAX9v/QTy+Ep
	 0EYG9yQm1zKlqCqLBLYWBeYfhhTMQX3EnlSJG9M/FK0thXXsMVUrhtel3bcAqXUQGo
	 wc9qGBaFOf1YeKjYmxSTW2flMRuZH137yjrHn/7dP/DaNLboXfMiCAjm4JQuqgL3uA
	 pC/CS72JD5Ygd9DetmKQZKKquiCalTs6mjgMj6+p9v+CyWT8RIpTYND6SQnBD8vyJn
	 xjldiW3K3mfSA==
Date: Fri, 12 Jul 2024 14:33:38 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] fnmatch.3: update FNM_CASEFOLD availability,
 FNM_IGNORECASE alias
Message-ID: <g5gokt26n2vu3epajxzgbtbsmkubv3kxg7smtaewmycvubndhj@vahuixd5endm>
References: <2i6wslh3ahpjbspxhx5tuiwpthzvksy7iuval2fkjoy63uoxdh@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vindlmvpi6bj5syz"
Content-Disposition: inline
In-Reply-To: <2i6wslh3ahpjbspxhx5tuiwpthzvksy7iuval2fkjoy63uoxdh@tarta.nabijaczleweli.xyz>


--vindlmvpi6bj5syz
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] fnmatch.3: update FNM_CASEFOLD availability,
 FNM_IGNORECASE alias
References: <2i6wslh3ahpjbspxhx5tuiwpthzvksy7iuval2fkjoy63uoxdh@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
In-Reply-To: <2i6wslh3ahpjbspxhx5tuiwpthzvksy7iuval2fkjoy63uoxdh@tarta.nabijaczleweli.xyz>

Hi =D0=BD=D0=B0=D0=B1,

On Fri, Jul 12, 2024 at 02:21:35PM GMT, =D0=BD=D0=B0=D0=B1 wrote:
> Every system I looked at already had FNM_CASEFOLD,
> so calling it "GNU" is misleading at best;
> Solaris (and the illumos gate) call it FNM_IGNORECASE
> but also provide FNM_CASEFOLD as an alias.
>=20
> POSIX defines them as being the same,
> I think the F_C =3D=3D F_I syntax does this perfect justice
> without being really wordy for no good reason.
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xy=
z>
> ---
>  man/man3/fnmatch.3 | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
>=20
> diff --git a/man/man3/fnmatch.3 b/man/man3/fnmatch.3
> index 978163a..0501914 100644
> --- a/man/man3/fnmatch.3
> +++ b/man/man3/fnmatch.3
> @@ -68,8 +68,8 @@ .SH DESCRIPTION
>  This flag is mainly for the internal
>  use of glibc and is implemented only in certain cases.
>  .TP
> -.B FNM_CASEFOLD
> -If this flag (a GNU extension) is set, the pattern is matched
> +.BR FNM_CASEFOLD " =3D=3D " FNM_IGNORECASE

This might be confusing.  A reader may be lead to think that it needs to
compare those or something.

How about TP + TQ?  (and then some parenthesis saying that they are
different names for the same thing)?

> +If this flag is set, the pattern is matched
>  case-insensitively.
>  .TP
>  .B FNM_EXTMATCH
> @@ -123,11 +123,15 @@ .SH STANDARDS
>  .BR fnmatch ()
>  POSIX.1-2008.
>  .TP
> +.BR FNM_CASEFOLD ", " FNM_IGNORECASE
> +POSIX.1-2024.

I prefer TP + TQ instead of a CSV:

=2ETP
=2EB T_C
=2ETQ
=2EB T_I

> +Many systems have shipped
> +.B FNM_CASEFOLD
> +prior.

This part looks like it should go into HISTORY.  If you can and want to
make it more precise, feel free to do so.

> +.TP
>  .B FNM_FILE_NAME
>  .TQ
>  .B FNM_LEADING_DIR
> -.TQ
> -.B FNM_CASEFOLD
>  GNU.

Have a lovely day!
Alex

>  .SH HISTORY
>  .TP
> --=20
> 2.39.2



--=20
<https://www.alejandro-colomar.es/>

--vindlmvpi6bj5syz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaRIqIACgkQnowa+77/
2zKdBg//dSHlht/MRIIOZ6DlReiasFUSMvdpcMSvNgUcfAR+oOxmt6KmCiPo0Ks5
hEn1d4+EYczQpwZwLvfI0PEynKZjfOmoJ7IW881MSFFZRn6CdQXdK0KXhQPW7g6I
2sml02KjRVnEv3NV0Q1cdDkQYc8xamEfane9jSepa9ebstXFT2EmW/32PM6G+MwA
Wyu97j/rQwqcjaJRctHRZfSstnTnIpres/dBbmudqUKltrTkYdSdzGWR2Url7dUD
HD6k9/ceqT85755skPp/NZcCCCz8OvX/4Nolk5WWMlZ2Gk/gfj09XyatCGTxn3eM
j5HRnJwS6PsTxoXWp0sMUcHHe30Xpu0DtO9ouRNjb9+AWhMp03xiJxviLu6hFNjC
6OHav1YLNT4pNVz3xgujTaPY26ZjilR8CIKLt570Mw4XZDNP2WV1VThpEEnYdL2m
fL7rO/DxAeWGpTkKzt5zL96wTmtFdUg/GvCTi9JpTIKxh6tk2omSfV8naPKSiCXS
RyKbct1NEOSfAVaantIa8OMNpHktDYZpdRS5JX9wmczaQ28jfLDVNh/xzmQLKf0n
IBulosV/93/qNJKFCS3wxnQa63Ez9lnBF/Swdia7UsD4MSHBLLI6pg4XncCM3/Ec
5B5tnT1mlEb9nOa9SsFliZvaYI1LaZWm/9aB32po+9z0tQ+qHTU=
=tQqk
-----END PGP SIGNATURE-----

--vindlmvpi6bj5syz--

