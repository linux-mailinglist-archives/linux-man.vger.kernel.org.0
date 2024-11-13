Return-Path: <linux-man+bounces-1904-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 405A29C6D79
	for <lists+linux-man@lfdr.de>; Wed, 13 Nov 2024 12:12:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C20EFB22C7B
	for <lists+linux-man@lfdr.de>; Wed, 13 Nov 2024 11:11:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43AB51FEFA4;
	Wed, 13 Nov 2024 11:11:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MGNKmxJL"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03440320F
	for <linux-man@vger.kernel.org>; Wed, 13 Nov 2024 11:11:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731496305; cv=none; b=AD7rPLmIvTrW8ksBn+s/+O7jxVkMDxnqYJQsoDibdCbPJEmAIzhFUrUmmBIW+GQJtkLzSi7HFQMj1ZHXjGKT1m8eyTNBZZrYPJqS7kwltHLuELKYqghPKBZU3hi29ir2rYNRPd02w66lDila/73GeSwwOybXzrI0Zb/p6okS9rk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731496305; c=relaxed/simple;
	bh=uu347VqpUE4BAmO02U/6yCosE34oHB7/yKGtJNNTZgE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GuXJnpyXZgf4ofVMHrjSutOuvv4coTHKiAjTfoMxFhApIuDavhSUzXzedez2XojASlf8XDQNnGx9jo7PnKzPpL9dBYBueyZvUXpQbukSQoIc86R26dQ47XF7UpcBQ04f6jmk5EjjbmzHXaGb4aUukHMMlG7WHdSROTsD8snrrRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MGNKmxJL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED480C4CED0;
	Wed, 13 Nov 2024 11:11:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731496304;
	bh=uu347VqpUE4BAmO02U/6yCosE34oHB7/yKGtJNNTZgE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MGNKmxJLJ5XQQlnpbvlYHea9fK8j7++cVqV+DOQDVyVv9lC1Vn8jBqLZUjc4liCYB
	 b9VB4lDJYUsuqBMciecx0szXEm3iDqt8ubZjekekT6wEmoNJHkstlUwC6mYSCvzssB
	 ZzyQzIcjWE8Dj8NBxpG5XVuK/vNPzn3cf4xddzXupVRfW6EXMiZS3zsAAmr3OHJFri
	 1pLb13RZEiTdJ88B8KKxoJM/dWCP1ULDD5AUE49QT8U5M1yjsa+jZM1d60RKf8UmgZ
	 Hm3BF7eyQ0GXyELesXnhym1I6PkHq2+zGBFfuUjcdKHAFsdHWgbh1UIYWM57Hjc3if
	 Fm6BN6LBjDEOg==
Date: Wed, 13 Nov 2024 12:11:41 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Antti Antinoja <antti@c1.fi>
Cc: linux-man@vger.kernel.org
Subject: Re: /usr/share/man/man3/pthread_cond_init.3.bz2
Message-ID: <idqtqceyg7f6qac5rwj74qvbcbc5lezwswsofbzq2pnvmilass@ir4kylme6chd>
References: <20241113140418.3d48283b@cube257.dans.c1.fi>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5gp3nlcw7fmuk432"
Content-Disposition: inline
In-Reply-To: <20241113140418.3d48283b@cube257.dans.c1.fi>


--5gp3nlcw7fmuk432
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Antti Antinoja <antti@c1.fi>
Cc: linux-man@vger.kernel.org
Subject: Re: /usr/share/man/man3/pthread_cond_init.3.bz2
References: <20241113140418.3d48283b@cube257.dans.c1.fi>
MIME-Version: 1.0
In-Reply-To: <20241113140418.3d48283b@cube257.dans.c1.fi>

Hi Antti!

On Wed, Nov 13, 2024 at 02:04:18PM GMT, Antti Antinoja wrote:
> Hi Alejandro!

You should sent email to both me and the mailing list:

           To: Alejandro Colomar <alx@kernel.org>
           Cc: <linux-man@vger.kernel.org>

Please check the contributing guidelines:

<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIBUT=
ING>

> I think there's a typo on this man page.=20
>=20
> Version information:
>=20
> # equery/usr/share/man/man3/pthread_cond_init.3.bz2bz2
>  * Searching for /usr/share/man/man3/pthread_cond_init.3.bz2 ...=20
> sys-apps/man-pages-6.06 (/usr/share/man/man3/pthread_cond_init.3.bz2)
>=20
> Under "DESCRIPTION" - 7th text block:
>=20
> Wrong: (as per pthread_lock_mutex)
> Correct: (as per pthread_mutex_lock)
>=20
> Could you check this? At least the current function name for acquiring a =
mutex lock is pthread_mutex_lock(). (action last)

It's looks like a typo; yep.  I've pushed a patch with a fix:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Dec557d3c54622da3139f30a8eaf7b5bcab7eb61e>

Have a lovely day!
Alex

>=20
> Cheers,
> Antti

--=20
<https://www.alejandro-colomar.es/>

--5gp3nlcw7fmuk432
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc0iW0ACgkQnowa+77/
2zLEgw/+Mc0pU+CzKV5Nm0ZFnUOetxxyNleWl4f+7nw8IX6yrJ29R77zl5b+lR9I
zSMyldYnBY3BXgPb+yl81iSld4b1WovE7LbufkxLDahOE0TW3tmeiJztebRcLowM
6Ehvu/0Q5RL6fXl6cwWpz4ybV202vok73Ji+p5p+QdjgCoRNP4F/kOv42Q5ec+Js
dvTacpbaP/e888e5f4V7mX0Gu57vVkZ2Jwy7HNMZ/S71YjL+06mtmml0Q3Ba38Zb
VxdaBxOpsN712Z+8TE5dlEyFxrV2vQ17b/SQS1MBZIqdeq+EUhGlLr6pbtL7PzLx
qrGV56Frvwg7pzKLQuWYkr/6ySTgfk8rooHSG65+7aYkfOeEEzstFhDtITov6Dvn
ju88EfW6TTs17mXalDIzPRPeH3VU3A6sRG5xjVTm7NKWvvQgXQkWyLYKnRCbX+p1
5J1xfaVHrBZkKQhofuYOig4VaG0yHX1ico/l4C1R4hebwPJ8Br9HXWPNgPHe3OpD
nfQXfPZlZ2woj09e51E2u0JDvsBGrL5WokfUlsTzw2syesD6UbigB7RxWiz4vpVD
GpGJVNL2/i1/A/MzKEhwSUaVfk8n66WVjXJ3OL/fdIoaaxZUcDFXkyaOdWQtUpAe
13JqbZTQyVIm03dyWkaQh5KsjexZGbHdlWLytisuYPAShATzHQs=
=c0p/
-----END PGP SIGNATURE-----

--5gp3nlcw7fmuk432--

