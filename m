Return-Path: <linux-man+bounces-739-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CCCE28A3688
	for <lists+linux-man@lfdr.de>; Fri, 12 Apr 2024 21:52:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 80C5A1F25510
	for <lists+linux-man@lfdr.de>; Fri, 12 Apr 2024 19:52:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0A6F150995;
	Fri, 12 Apr 2024 19:51:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MGnDCr2g"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2EA6150981
	for <linux-man@vger.kernel.org>; Fri, 12 Apr 2024 19:51:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712951519; cv=none; b=jyEgabV7tMzn2QkvK8QDDllwmMXZ9AnYKqZasSsx3gjQUf9l9ccTHp7TbZDZageF+uYK6kWDMeXJUMaAgibumQbzkpR6dLPL+FFgYvDJXhvBV4V/eO7wicGnVQGNsKe6ceItT80gdanyNz5AZVFzBuG/8I8EIZauJgLFv37ects=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712951519; c=relaxed/simple;
	bh=cGwOscE4zVLkXXMJoXwKcGGjH2lLp7nzi/tIER687qU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uZxDuZY0eo4/7Osh5xiuy0IHybxm96eLmdbl75dvW01M79MFnWkJVrqK1imXcIwKuBZYFECqeMjx2+8VmJrTCoZV2UneI76myhJkxTyVLWq1OuEWipvpFVhZKHPH9nuDaENJWvTxzN+k8Q+R9alb8Czq3PDI+t62m6WJJwY5/8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MGnDCr2g; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A66D2C113CC;
	Fri, 12 Apr 2024 19:51:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712951519;
	bh=cGwOscE4zVLkXXMJoXwKcGGjH2lLp7nzi/tIER687qU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MGnDCr2grXD0E3gJVhYrzsoS4fXOJogzlJnq3aM3mMNZNvC+bfhXEuFZGswleucBd
	 xeh7XkLY0fqovA1nBaAOeL5m9NIJ/JoQS/YPyJhlcOJgd0QhzA04IrjZOhoJH6gZBz
	 UiL8LlkvXH5re0bTZ+UO965jiSPQPuwNhllKldIEmRcpJTSQ+wVOhLiAF5Ac6vCxrD
	 TD7fy4U/Uyi1PqQxYUaZwRmYe7N55LCFSRhtz9ojE8O3SA5PslxWX0BHlGpjIPDVJA
	 urOoXI/XTKklSpVekqJqLPNeXA6tFuWUIfzc6mQuvWSojTMBZ5wtGLZtIFXBxsIAmn
	 MzbcnBY78k69A==
Date: Fri, 12 Apr 2024 21:51:56 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Salvatore Bonaccorso <carnil@debian.org>
Cc: linux-man@vger.kernel.org
Subject: Re: proc.5: Still refers to "described in more detail below" for
 splitted out manpages
Message-ID: <ZhmQ3JCTAKN61h_K@debian>
References: <Zhlth9wCHbxoNkMi@eldamar.lan>
 <ZhlzmymKd3XBq9Yh@debian>
 <Zhl_ZOqOGkJizieb@eldamar.lan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="TCpMwsPXS5B4c8TD"
Content-Disposition: inline
In-Reply-To: <Zhl_ZOqOGkJizieb@eldamar.lan>


--TCpMwsPXS5B4c8TD
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 12 Apr 2024 21:51:56 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Salvatore Bonaccorso <carnil@debian.org>
Cc: linux-man@vger.kernel.org
Subject: Re: proc.5: Still refers to "described in more detail below" for
 splitted out manpages

Hi Salvatore,

On Fri, Apr 12, 2024 at 08:37:24PM +0200, Salvatore Bonaccorso wrote:
> Thanks for the quick feedback. So please find attached the proposed
> change. Let me know if you want something changed.

You're welcome!

> From 07bf84cbb2e78595b4514fe820ae5574bba8d0ec Mon Sep 17 00:00:00 2001
> From: Salvatore Bonaccorso <carnil@debian.org>
> Date: Fri, 12 Apr 2024 20:29:06 +0200
> Subject: [PATCH] proc.5: Refer to split out manpages for detailed descrip=
tion
>=20
> Back in August 2023 various parts of proc(5) were split out int separate
> manpages. The final cleanup in 92cdcec79df0 ("proc.5: Clean up after
> making sashimi of this page") missed to as well refer to the split out
> manpages and retained the wording that details are found further below
> in the manpages for the various files.
>=20
> Fixes: 92cdcec79df0 ("proc.5: Clean up after making sashimi of this page")
> Signed-off-by: Salvatore Bonaccorso <carnil@debian.org>
> ---
>  man5/proc.5 | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>=20
> diff --git a/man5/proc.5 b/man5/proc.5
> index bdc47456bdce..4c20920e1e3c 100644
> --- a/man5/proc.5
> +++ b/man5/proc.5
> @@ -176,7 +176,10 @@ Various other files and subdirectories under
>  .I /proc
>  expose system-wide information.
>  .P
> -All of the above are described in more detail below.
> +All of the above are described in more detail in separate manpages
> +prefixed with

Maybe I'd reword to say "whose name starts with".

> +.BR proc_.

This would need a space before the '.'.

> +.TP

Why TP?

Have a lovely night!
Alex

>  .\"
>  .\" .SH FILES
>  .\" FIXME Describe /proc/[pid]/sessionid
> --=20
> 2.43.0
>=20


--=20
<https://www.alejandro-colomar.es/>

--TCpMwsPXS5B4c8TD
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYZkNwACgkQnowa+77/
2zKldw//boUcxuntMzCKbaEGtR1tlrsSrM1547wf5JqvQWKM5dFvSzggtWAxDC/q
qndIJxQd+2cWbRF3r7Lk+eWIv5BMv/NC3+otAc7cto/EBDWEX4+bQJRqpOZ/teYM
BlQ5p5rXFwd9woCD9kqUSeavo2y0UVxe0GSsM8lCXvg/qvql1/q2e83mabpfSRJW
2g73Lb0XvkM9y7Vn608KG5gfJlMsgRx6DADhK56i68sa6rb2FUVlqO/kcZri8hFq
n/k06HQj3jKK+jsmO/z3fVUrGbbQl2cNx6pKg17RAaDtfoGIavkTRazGM9ADpslM
OIhefR8siUP96V/B9Flp7gqIZr6sS96QSeupHvJFRpABoLzOcqiNbbN+bvgqTNLO
KvfeTkeDfP3Uxk98boetsfz14BKcmOPiefNJeVAsTmJDR7aGn2eNofkQZWTW3zBO
QbdNSmYYo8ku3tprKnLW9cXpDva1oEQVvUFiTDI/ViL8UyAcL1mhuemxHWbh3mz+
Xzg7LzY5ibVGHwwfe7QEINF+jgEtIRPRSUpf2zLi5v9rdUaEDorr2kqyg2fIRSSz
vycmDyzVShLlC7DYLRRy5rJHN8fK5K7qesusPbWSEtVdfqOmiZ7rYx2gKOQpXwnM
XUtpC7AdERifzX8XncAF4d9UjqvB11HCFeQAKnENOGkTg3qHECc=
=vx1T
-----END PGP SIGNATURE-----

--TCpMwsPXS5B4c8TD--

