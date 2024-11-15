Return-Path: <linux-man+bounces-1923-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A39B9CDD36
	for <lists+linux-man@lfdr.de>; Fri, 15 Nov 2024 12:04:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A63781F214EC
	for <lists+linux-man@lfdr.de>; Fri, 15 Nov 2024 11:04:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1884619004D;
	Fri, 15 Nov 2024 11:04:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JIYe2ufX"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD2EB154C00
	for <linux-man@vger.kernel.org>; Fri, 15 Nov 2024 11:04:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731668644; cv=none; b=d2o34KBtuBPrwpDUwUubaXunAtJUv1xEwyHy22rf1khUAmWkittWjWkcB4ZOWgg0xOCEPx2gE4Kq3ihZYnU+lxWWQ6uRBImS9BIwmTcTjxCq3Z8fXDk40AvbagAvrH/I9m/cAgZTiFbcfWP5VfBawPD53lHlkq1YnNehwF9kOI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731668644; c=relaxed/simple;
	bh=aPULIVG4tKor2ZvWgKPzFxQnIOVV8jOj5Rc6mcbuMgA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Dlj72z5k4bd6Oz7/mLfvL+cADWfzyEKg8btY61WweYpaJCQisQeVAqe37o00dbRNZVF2QmHqli6hVjV1pk5ltub9AoSS6cc0/ENoVHdRAuRkcHPOn1XePqOWOjRtX6/1KUMAO9gXbfAFoD2DfV9QPSMsZ8RePPMrtsVQYEy+Cr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JIYe2ufX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A5271C4CECF;
	Fri, 15 Nov 2024 11:04:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731668644;
	bh=aPULIVG4tKor2ZvWgKPzFxQnIOVV8jOj5Rc6mcbuMgA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JIYe2ufXCdyryfSxpx46aqfBG+NQRcuyTPGJrYCR7eYNSm5DeteRIm972yixRIEYr
	 AgqSYmjvlqpuLmFX3zhvXUTvIuygt8neZucE/hh0QASsqzXSTc4Aj2CvE6DJNqHHoR
	 utld9wkcQsP43pupmem0aVxeSeAJdG8MJ9x+ASx1KsNq45olpFSLHAOyWnD1MU11H9
	 ik46WtS+zVMGAHIfJjrEQhgYFjxcPD5wEjtlvR6H5kWp2cDC38oMI0a7fnoeV1GmuC
	 4LYmZD8m+/F2GUmMFL2QyjUWK4YuuzaLE25mCaUkJG3jain/h3PnMFbdwHc8b3Xqzv
	 FIEpky1sR9Qdw==
Date: Fri, 15 Nov 2024 12:04:01 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Ken Pizzini <ken@gnu.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] printf(3): improve terminology in %a description
Message-ID: <4btqtluesqglcbwdanool2bikd36zfwtpvgphtbcuaieb2diyk@2morr4ufs75p>
References: <306bc8df-d75f-40fc-b1df-1a34cca0b4fa@vagg4fs7.msa.explicate.org>
 <hoxou4yctztlze24w2usfvknrnbs5h4hspzsg6q4zy3hfm2p6k@6erj3vhl5rcm>
 <63799ebb-bcc4-45a6-82eb-27520d760191@vagg4fs7.msa.explicate.org>
 <db91cc6f-93cc-4e99-806c-7a8b86232848@vagg4fs7.msa.explicate.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3m3utu722qnsysx6"
Content-Disposition: inline
In-Reply-To: <db91cc6f-93cc-4e99-806c-7a8b86232848@vagg4fs7.msa.explicate.org>


--3m3utu722qnsysx6
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Ken Pizzini <ken@gnu.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] printf(3): improve terminology in %a description
References: <306bc8df-d75f-40fc-b1df-1a34cca0b4fa@vagg4fs7.msa.explicate.org>
 <hoxou4yctztlze24w2usfvknrnbs5h4hspzsg6q4zy3hfm2p6k@6erj3vhl5rcm>
 <63799ebb-bcc4-45a6-82eb-27520d760191@vagg4fs7.msa.explicate.org>
 <db91cc6f-93cc-4e99-806c-7a8b86232848@vagg4fs7.msa.explicate.org>
MIME-Version: 1.0
In-Reply-To: <db91cc6f-93cc-4e99-806c-7a8b86232848@vagg4fs7.msa.explicate.org>

On Fri, Nov 15, 2024 at 12:23:05AM GMT, Ken Pizzini wrote:
> The term "decimal point" does not technically apply when using bases
> other than 10; the more generic term is "radix point".  Update the
> description of the a/A conversion specifier (i.e., for hexadecimal
> floating point output) in printf(3) to use this terminology.
>=20
> I do note that POSIX.1-2024 [1] does use the term "decimal-point
> character" here, but I still maintain that using "radix point" is a
> better term for that object in the %a description.  (Confusingly, POSIX
> does refer to "radix character" in the descriptions of %f and %e, where
> reference to "decimal" instead of "radix" would actually make sense.)
>=20
> [1] <https://pubs.opengroup.org/onlinepubs/9799919799/functions/printf.ht=
ml>
>=20
> Signed-off-by: Ken Pizzini <ken@gnu.org>

Hi Ken,

I've applied this patch.  Thanks!

<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Dfa80aedf4aed0b92ba3b329f0a003922eb960337>

Have a lovely day!
Alex

> ---
>  man/man3/printf.3 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/man/man3/printf.3 b/man/man3/printf.3
> index 3bc731f6e..7a96ec9c7 100644
> --- a/man/man3/printf.3
> +++ b/man/man3/printf.3
> @@ -759,13 +759,13 @@ .SS Conversion specifiers
>  the letters ABCDEF, and the exponent separator
>  .B P
>  is used.
> -There is one hexadecimal digit before the decimal point,
> +There is one hexadecimal digit before the radix point,
>  and the number of digits after it is equal to the precision.
>  The default precision suffices for an exact representation of the value
>  if an exact representation in base 2 exists
>  and otherwise is sufficiently large to distinguish values of type
>  .IR double .
> -The digit before the decimal point is unspecified for nonnormalized
> +The digit before the radix point is unspecified for nonnormalized
>  numbers, and nonzero but otherwise unspecified for normalized numbers.
>  The exponent always contains at least one
>  digit; if the value is zero, the exponent is 0.
> --=20
> 2.47.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--3m3utu722qnsysx6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc3KqEACgkQnowa+77/
2zKLlQ/+ObZ+UIHJ1pCf69g1gb2KQjhTxlKwlQehj1ZeJ4/qqrUwXXLM7lR/Peys
6fCgIviZ1zZVtiuOMYoNKF6sm7pz61wGvwuLTOnVA1grar6ABr5oKa+xzI0j/agc
jKCidwqaXq0K0T8AAlK2zaBRr4ERTRlrjGZlJGcz1FgZOrt5W2qAQTzxQt0xajEj
QysDtPIIql22atjbXbfzt3xh24xnrF4/54asPuHiDEB/jagiUGFqVGNiE76yJoZm
kZNL7kjwzTh/mpGpJe1u3n9oSUKqWgIRiYFv6YBntW8B5t3GblnJeJfsLJQJGHqN
q5vd60OaHbWh3ZbBapvcdGXL7zo6lrG2EgYa1vd7cbD+31xjPvxTM00lfyUmN2zy
84LSziTxHLf+DDJvsWyWbo50arkhklWiw+ydCeZApBmpNHWDwQL21AUkX06BaLOd
EhaKNUPNAqzIdjoAKRRK/BapKLAfiuXd2EUaFZUGFbZ9vGvDegWnuvGzEcpnxoDE
08tzXIxYh4t5jNyMMUYPqBo2aLPMutM8Mbpe1gHhXsXT1YCwTk8Q/luAo0V26aqi
04OnpE+TqJIljgzx57cRlje6ksso4pvWoAYSaYtm8RI8IpXvyOETyi6mIY2xKGM8
BFooMz0Z1aFipepLEtYa9hl6/ihvgG1IJwQkRK+rty95/3KYEUU=
=PeUh
-----END PGP SIGNATURE-----

--3m3utu722qnsysx6--

