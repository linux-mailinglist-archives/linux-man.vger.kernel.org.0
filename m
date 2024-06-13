Return-Path: <linux-man+bounces-1170-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B0BA490681F
	for <lists+linux-man@lfdr.de>; Thu, 13 Jun 2024 11:07:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 632851F216EA
	for <lists+linux-man@lfdr.de>; Thu, 13 Jun 2024 09:07:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 165C513D276;
	Thu, 13 Jun 2024 09:07:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b9WghMLl"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6BF884D39
	for <linux-man@vger.kernel.org>; Thu, 13 Jun 2024 09:07:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718269665; cv=none; b=PnYrDFjA6b4nOqh69F4K2PQZekgiqGygPDScAY4BDPm/OPge/DtUCUJ8G5Yy7GfzBncMbK5lnqcaurRr/srWnCoyKpaIvCWeLzGGryIYgscTwbqyEnsKVDyUGwqKNyp1Xkr0DklIN8tg+YhdHQ9I3izHLd4voGzOhVZicJfgZ8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718269665; c=relaxed/simple;
	bh=qhKeXdwYuG+GhvcCcJBDr7OlR3yfL4VMMDXWXnPpgGc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=s+4R2nTNcUcwFJBEw+BJVWveMhaX+gpGixa/h2Wy8q5aOdLvYm6Aye8hszu3ZPy5RXoE2KVSJDudY41TTlHMGeeFH2n0AaRKED6W+iiVOnr/EbaFJbbMrAUgFQ6jUcL+gCEcQs/+SvEPwnfL0au65dx1sSsWVcATW1gw3mucDto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b9WghMLl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 99614C2BBFC;
	Thu, 13 Jun 2024 09:07:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718269665;
	bh=qhKeXdwYuG+GhvcCcJBDr7OlR3yfL4VMMDXWXnPpgGc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=b9WghMLlTeofjfN1wPR1h3GgqHyIeqaCPf9g2Wkvmb30zJRX7jyte8wrl+xh0dlWe
	 1+bfLr0xXREzVNiZDND1797MKI7WNWC6rHz4N9FRCHrSHOFFMhuXJ8c5OLMTtOQa5A
	 F3KeTc/fqDJZyZ7KBEjNtNvuvh8O2mdz/K9mDfYp+fw6DBFjWYYSI6y4xt34qmJc5L
	 uhd38H9sygMH+EkmaDhJLPpuYzUJeFlnyB3L1cCQXbFfsQVC8139ePwBc+o1rHFibJ
	 Mpfozyr9jd1SyidjBHY8PwX6wGAeqci3f+EZvgOGdhA5zy1mjWdJNesxJC2M8mSmYa
	 ggr3chZ4fTXug==
Date: Thu, 13 Jun 2024 11:07:42 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Jumps Are Op <jumpsareop@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: No mention of XSI in unistd.h.0p
Message-ID: <hrquria7phjbuil2pj4fuwwe6y4a34kxx5dnmxgpp2zap3ewlx@j4n3jhvf5zkm>
References: <D1YPIU3QWBL7.3VGQ7D2ZI5ADF@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yzpsrkrn6lriz6s7"
Content-Disposition: inline
In-Reply-To: <D1YPIU3QWBL7.3VGQ7D2ZI5ADF@gmail.com>


--yzpsrkrn6lriz6s7
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jumps Are Op <jumpsareop@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: No mention of XSI in unistd.h.0p
References: <D1YPIU3QWBL7.3VGQ7D2ZI5ADF@gmail.com>
MIME-Version: 1.0
In-Reply-To: <D1YPIU3QWBL7.3VGQ7D2ZI5ADF@gmail.com>

On Thu, Jun 13, 2024 at 10:22:30AM GMT, Jumps Are Op wrote:
> Hi everyone.

Hi jumper,

> I noticed that `<unistd.h>` doesn't define `sync`, `crypt`, and some other
> functions. Looked into the man page `unistd.h.0p` and sees nothing about
> XSI in the function declarations.
>=20
> Looked at the website, you can see the clear XSI refrences here^[1].
>=20
> Needed to define `_XOPEN_SOURCE` to make them work.
>=20
> This information should be avaliable to the man-page reader.
> But it was not included by the automatic manual generation.

Agree.  Since the POSIX roff(7) sources from which the script generated
the output are not public, I can't debug this.

I requested some Open group members if they could convince the owners
of the code to publish at least a tarball.

While that doesn't happen, you can consider the man-pages-posix project
to be unmaintained.  I'm not responsible for it, and no one else is.
While I'd like to maintain it, I'm not interested in doing so if the
POSIX roff(7) sources are not public.  I'm here for the free software,
not for the closed one (or if I do closed one, I like to get paid).

Please forward your concerns to the Austin group mailing list.

> The XSI requirement information was in the format (raw HTML):
>=20
> <sup>[<a href=3D"javascript:open_code('XSI')">XSI</a>]</sup>
> <img src=3D"../images/opt-start.gif" alt=3D"[Option Start]" border=3D"0">
> ...functions that needs XSI extenion support goes here...
> <img src=3D"../images/opt-end.gif" alt=3D"[Option End]" border=3D"0">
>=20
> Note that this can include more than one function at a time.
>=20
> The guys at IEEE suck designing anything.

And also at sharing anything.

Have a lovely day!
Alex

>=20
> - [1] https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/unistd.h.=
html#tag_13_77_03_06
>=20

--=20
<https://www.alejandro-colomar.es/>

--yzpsrkrn6lriz6s7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZqtt4ACgkQnowa+77/
2zJ73hAAgbBam1jOGF4sUiveLQS52LKGxBKqOkFg0E4RQaxkxy7Gag0XYKcjcwlb
dOPGH+erDUCf0LELnyk0tL9NHQWNcOYBp1c+jrddpFSJUMmi+4oOscUPE+g+IM37
By3ege3UHxNZo8fEGq9qR2igsdXhsfS3IMC7ZuQk0idFA0tGWv5y3NlMEzS8kFCH
tS2+oYuu4T+qP1rMhEPKfReF6p2bZCve1IoDNTs8ZsSrRny1mlsQmZqrvVoTMdv1
nFVvqCDFmwG7NoH3oZs6UJbyt1/K1YF+nfUxqN8EpgBHOQ2oeoEtQ362QaY4V1rZ
ioHRLJz2itNrM+Reuc1aNOalxSBnfl+R8uYLEI5UJZMXyvuj+nQf9lMSVQaPKfV4
tS+9EaLA0iGX//ScUGFpBF9Ubm2kkMM4BkU7sqCxPvVuDuwLGNqmqZcU6GjoYnQv
6g43HnrimEgZNOuA00KWlztRAUKPkOf6Upu7JzJCWSIJsUjWVYRDeKb/N7mXBgAE
9GvXUKHPrbTNKZ2W9HxpPd/O8pSIrA2njjCfg3YQrXHssZ/G5aEiniRKzptxcfzp
vQxowBoZ1RSe9aZ9CuHqq8WjCgIQjiFqcovcbeWZz8hI4MZ3wQ8khZ0K5QqVhHvJ
2ntYJrbvYF2TyOBRVXHvIqywYu95QifXQYwMK70ZVAhc/YnNjq0=
=cro8
-----END PGP SIGNATURE-----

--yzpsrkrn6lriz6s7--

