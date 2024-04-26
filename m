Return-Path: <linux-man+bounces-826-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD418B4210
	for <lists+linux-man@lfdr.de>; Sat, 27 Apr 2024 00:12:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 03476283152
	for <lists+linux-man@lfdr.de>; Fri, 26 Apr 2024 22:12:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BC1C376E7;
	Fri, 26 Apr 2024 22:12:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QH/IfzMa"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CCBA376E6
	for <linux-man@vger.kernel.org>; Fri, 26 Apr 2024 22:12:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714169571; cv=none; b=p6mgduZ2UvzzjuE/ONKfZ4l7SEQ1fcBEGP83VXIRMjgo+aC8Rt37zBJ3aYSrZr9jB3BUt2aT0jmgxlzHheteEs0f12gFYSsYsCImW3lDFCJ6Ub5a5MUyr0CxgQ30b2FxXBNnea31O/bhU7gtguwS1ijh+I9CoHXWoluVlJxozm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714169571; c=relaxed/simple;
	bh=mgBMjrIX6RBxHE73zjT00wKVTXuc5AfPPa1V05sRdDQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dR5/3j9SNgJkcf1Mxs8BMKeONzEM7I9w7jF9xFoZhkITxr2LMfyuHSdXge3r1iIrq2YuDqDAV13joYSDV0uokq55KlJpiFK+C2FkNQ9ycZ2+2hkfuvF18G4SnfY5WjCiwYPG0TQpjuxkoJdMrz/sK393OaeoY+vZBqhdQhQcrtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QH/IfzMa; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 86CD6C113CD;
	Fri, 26 Apr 2024 22:12:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714169571;
	bh=mgBMjrIX6RBxHE73zjT00wKVTXuc5AfPPa1V05sRdDQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QH/IfzMa+SnJFP/9NVCQ0lyna5qMyx5iNOK/0ySURoYxN7dNenfzFVxQ9P1xW5JwR
	 /Cnj289rSarlSZ6EKKWE7xt1Bi1wZ5JyYvMy8z5rfvCUhb1q/qIkb4gZN9/tdajdda
	 zoJb03Z3lMurSJ/OJwH27ZbkJ8W8qO1y1DQUqt6/7fjIMtzFhzbWnpamjBlPvzOHmL
	 pHfCOpklALSj0vgM2K9rUQ6s1jzSyFCM2xRhNBTPuowZ5BG/aKpeHC0uEzvs06gN6H
	 Hl5j2HpGhOkiUBt7vv3xft1en6DB79QbzzrbMfs1GNUexev/aIw5hewJbjfVCiMrgu
	 072+KwWbaz2PA==
Date: Sat, 27 Apr 2024 00:12:48 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 3/3] man2/syscalls.2: srcfix
Message-ID: <Ziwm4MlaUT7LNjFt@debian>
References: <20240415223953.dab5dgguja4ezeo6@illithid>
 <Zh-gDFAi5uqljz2L@debian>
 <20240426214102.6pioaplkwkbch6iw@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="GknLEfQzc3k9mdS1"
Content-Disposition: inline
In-Reply-To: <20240426214102.6pioaplkwkbch6iw@illithid>


--GknLEfQzc3k9mdS1
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sat, 27 Apr 2024 00:12:48 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 3/3] man2/syscalls.2: srcfix

Hi Branden,

On Fri, Apr 26, 2024 at 04:41:02PM -0500, G. Branden Robinson wrote:
> The intermediate steps are not useful.  For example, after the first sed
> script, we have changes like this:
>=20
> diff --git a/man2/syscalls.2 b/man2/syscalls.2
> index 7a7d6d730..979dba538 100644
> --- a/man2/syscalls.2
> +++ b/man2/syscalls.2
> @@ -187,7 +187,8 @@ .SS System call list
>  \fBchdir\fP(2)	1.0
>  \fBchmod\fP(2)	1.0
>  \fBchown\fP(2)	2.2	T{
> -See \fBchown\fP(2) for
> +See .BR chown (2)
> +for
>  version details
>  T}
>  \fBchown32\fP(2)	2.4
>=20
> Having ".BR chown (2)" sitting out there as unformatted text (because
> macro calls have to _start_ an input line) is obviously not useful.
>=20
> However, I did discover that the second script was a no-op!  So I'm
> dropping that (actually, replacing it) and will submit a v2.

Good.  :-)

Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--GknLEfQzc3k9mdS1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYsJuAACgkQnowa+77/
2zIFjg//dYMGLiTJJGkVNlemEce1HXgTQeUI2/3zjF1V98KlmAyCPsKWMsuEKonr
G1eY+8s+3sFcxCCGGiPLY7JIParTsMDhiqNXoGj4cu0ht0mapgg+PGspW/qRMteg
GKOCdsokF55jlF+QIDpHbBh0vP2vHkKVsNi95jmKqNxoPRCUf2YbShQO3r/va5bp
MRaXXRgPQQPiwAifz+KksiwNhqaX/pr8QqhcoUeGPZf7niHNClAWXLzUyFUntPA9
lILtdsDrhFyHQ3qnNHLZmLqhMFlnHChDZ+kMRpg9ic3wT2ufRApvA+7/CQQWro8z
wkFk42LFdynaJZSxzU+sknBYSRL6nWr/mSSFrs34AsbnbZfpdkslXeMMvYKIJjnE
bVe60Sh6/GeF7043ak7mYouABthJd9EYEFkf/Ggz8i5ODPzEn7t/HP722oc17QA+
BVrNiuurKEwzNOcs8Hg6N5tdAwm+imMGK2a1M/RBC83sOmCv2pyN+1ryLauNzFsb
oknaZLV1Zupt5vFzqUq+Z/QDnyEFdy9LNTXAjnAAfZLeZvUqFthFy6c1XUdpoYdG
Zx/D7OexSh41TGY8SFT3lLmPomYykbkbbz5YOR5mxSSXvjWRqjRajV9wNaIjuLMA
hpKf4NFQ7BaX8iauCYX169RwhiO42LQ3erMZPupCPYgTKLyHS5A=
=1puj
-----END PGP SIGNATURE-----

--GknLEfQzc3k9mdS1--

