Return-Path: <linux-man+bounces-600-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0558487C16C
	for <lists+linux-man@lfdr.de>; Thu, 14 Mar 2024 17:40:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AEDE51F22777
	for <lists+linux-man@lfdr.de>; Thu, 14 Mar 2024 16:40:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92CDD7319E;
	Thu, 14 Mar 2024 16:40:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h5MRYmbi"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51A3A1E529
	for <linux-man@vger.kernel.org>; Thu, 14 Mar 2024 16:40:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710434408; cv=none; b=XtGSEVOqgpDHcMoKznmvWR9FoixLe3sMGmDDr2NnV9z6hkLfFqLwyRmHaU5qfofHGb/uM6+z/eY7KcJc0ZWO269+VbgSkUyMAQr1Ub0oKweUJTacOWOuUlKB0ZgmHEaioHpwWiTgP2/eGDuEaZaCWXHWdM4xHyizXS87zkyk1jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710434408; c=relaxed/simple;
	bh=9iC5+FOFf7G6G9J9XWj4JajQ5TRhNxGPO7yqgD0ttgw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sqwaj3BX7ikJOG4RcroU45ZL6T/A2ZI3MlyhaaMizJE07JBM/zsx46bn7dinya+GCDaCzjlL84G75JmauakWB09Cpei8/klB6+HJ5i1+f34MobCvREtwGGfCBm9vlkFw2QI5GmKEzQgLaDlv6Q1LXuxq4sVPec8s61OdJz3c3a8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h5MRYmbi; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 48368C43390;
	Thu, 14 Mar 2024 16:40:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710434407;
	bh=9iC5+FOFf7G6G9J9XWj4JajQ5TRhNxGPO7yqgD0ttgw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=h5MRYmbip2vkq0fqccJAenm2Wc4rHTL/td6A4eKy9vhuUATVa09lr5B+UOk6wyIJ1
	 TMMiiocPDiAWx5Eb91YoRp1vWZE+woc5gP6L0TOQUO7keKjo2PTS4A49I0CvSWXwS+
	 JXHmUhk/lenShTgFIy4aGh8AKoJs6oCU7rQqVe6zpskqIY4/QT6p+3obR4EcbFXlzI
	 lFcPTW5wkPjXO14i1mekRV5rvR86fxGdkCvrRJeSJOpmXJR0zHr61Ua558PZaxFCCF
	 Q0YHYIsQUIBKpD9q7YcWBz2yEc1xY09HHp8WwrYaSwfSA1uKT2qCERtUELuGvgXmgA
	 3KNv0fbTmVC8A==
Date: Thu, 14 Mar 2024 17:40:04 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Samanta Navarro <ferivoz@riseup.net>
Cc: linux-man@vger.kernel.org
Subject: Re: [patch] utf-8.7: ffix
Message-ID: <ZfMoZRipHAxliO0u@debian>
References: <2i4ogysp365dz3vtoaotr3j4lohycye7j6osvgo26x3wu47oer@ftoniborqb7u>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Dre5jcraV6xJ2/aI"
Content-Disposition: inline
In-Reply-To: <2i4ogysp365dz3vtoaotr3j4lohycye7j6osvgo26x3wu47oer@ftoniborqb7u>


--Dre5jcraV6xJ2/aI
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 Mar 2024 17:40:04 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Samanta Navarro <ferivoz@riseup.net>
Cc: linux-man@vger.kernel.org
Subject: Re: [patch] utf-8.7: ffix

Hi Samanta,

On Thu, Mar 14, 2024 at 12:22:42PM +0000, Samanta Navarro wrote:
> diff --git a/man7/utf-8.7 b/man7/utf-8.7

Patch applied.  Thanks.

Have a lovely day!
Alex

> index 2ea14b2..bb3807a 100644
> --- a/man7/utf-8.7
> +++ b/man7/utf-8.7
> @@ -43,7 +43,7 @@ This means that files and strings which contain only
>  7-bit ASCII characters have the same encoding under both
>  ASCII
>  and
> -UTF-8 .
> +UTF-8.
>  .TP
>  *

BTW, I see I missed these in my recent formatting fixes to lists.

>  All UCS characters greater than 0x7f are encoded as a multibyte sequence

--=20
<https://www.alejandro-colomar.es/>

--Dre5jcraV6xJ2/aI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXzKGQACgkQnowa+77/
2zKbIw//YW6qJcSIQLwLC4R4d4kyXE2E+l25Npxp9OlKpuXMa+yRyOVtgmuAVHIH
AiLcZ4fnqLJwq27oo26K77Uic9jfRrYqWQBfW1u+949LtKuYX09VHLgqx9iF35Wo
2DBNoevo+riVYFSqNixfdxlIynzSy4DbuhtsEOUf+RiYGP5L4fBYCAdCpaKoQ9q/
aHmhVrU/8X9k95DkbXlcQ0Sxg92xqD3Y8Z4Lvlvi5kqdF9TTiyDrQkCvanqD7ufS
5yAIXd9VYJdi7W+Z7lxq6tY4jlLWKxAZsGyv6+pxhaLhz3a6EpwocnVI37eGDDLQ
YxSNt0hQyGOWHasOFhkznqK5QuduNDlvbMBzOAHTJxTpFLVuDgEt1B+/Z1WHodxf
HljJK4l8VatxTInMJ2pzIh7KE0KSy8XQnPTH7C022EoHstbu2G1fdq0whWdNurnn
8k6oWaD869QLjPjhAOhAoKImv6A647imPl3Lwr+zCF4foPdCQUydY1x9Zznyxwav
nyRccyP9USR4axHwoONZAcbmk1jx/osmdRPL9pOLpqo0X2IIUiHsgPKmRmECqrwl
aklgxtPWFmtTVzGwy0RTHTuCfhpSW+A2AcZH87nM4Y8XhcNxVH783A1GShm3pHdV
ZgrkoknxDSX49v87Iinab6gKpWeIbmz/VaSo/YVWNpRhhnAD4G8=
=pZ2G
-----END PGP SIGNATURE-----

--Dre5jcraV6xJ2/aI--

