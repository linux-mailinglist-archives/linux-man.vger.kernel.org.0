Return-Path: <linux-man+bounces-2796-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 036EBA9579B
	for <lists+linux-man@lfdr.de>; Mon, 21 Apr 2025 22:54:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E776018943A0
	for <lists+linux-man@lfdr.de>; Mon, 21 Apr 2025 20:54:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A4A51EF0AA;
	Mon, 21 Apr 2025 20:54:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OwVEdfyy"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AFA71E04BD
	for <linux-man@vger.kernel.org>; Mon, 21 Apr 2025 20:54:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745268859; cv=none; b=TRC2eDs38rjma1jD6UQVAgUL5JwGHFEjjIoQkyQzQ4l4r7HOWA+e5SkYve9uq8wghvUP7TKCHs9Wo/HMK69i+0GNcWEi0gA6sNKmfIMrTGHJeXo8TQyh8JQtt18o+Jj8+Z1VMhDyelybxU0PgaKkgrCInEoM4UBgpEO/RubljRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745268859; c=relaxed/simple;
	bh=cx5Dtp7jRnqnmezGXoWRHvZMQBSfs3Bo4aUP3l9vOQ0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BN21TTxliPIfOt16u4R7eUaJggKWGe1SaZcd7zdfFLi+LbPM61Sj2AYAGPGyB1CpYvNGNuSZtaVnmC9x2NuV4N+wlJrJ1ZGboRS6hszh+OXHvDghM8Hx7VGC/vPvLQGphkvQXou+Jx0c3vDH35hYRwTnjf48y9gw0ydxKC2Oz8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OwVEdfyy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6CA97C4CEE4;
	Mon, 21 Apr 2025 20:54:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745268857;
	bh=cx5Dtp7jRnqnmezGXoWRHvZMQBSfs3Bo4aUP3l9vOQ0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OwVEdfyyFaR7NUzZGxHiZGReCPR7mkbBw6F+v/Yk2GVH1r1tAKhI0nlxmqvXzeYjC
	 BNTUOryXJ2nVxLnzDolppJPRsff7YvyzvIsYifwlNjt6QpiP1JbGpb/h8llk7oz8x7
	 PXqmPuv2+WmR9Z8UNjz8mBrn/FJEjJ0uY4I475fCl6W8q26IcxdiUiAGGDC7jcy/Ni
	 7yedTuvDoFCEyuHIypZjc0eFlXvPI9IobZSKQa1jyKxZGnwUB64CfPfxogME/TF7K8
	 1thZu8LA38wfNv6pcfNrf3TEDjHWDZ0S92aAUQDMTtmwI53mEo5zaSil9kp9mS3M2L
	 niFd5EAFWrnXQ==
Date: Mon, 21 Apr 2025 22:54:13 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: libc-alpha@sourceware.org, linux-man@vger.kernel.org
Subject: Re: dup3(2) now specified by POSIX.1-2024
Message-ID: <icgdrxiwnfsryohn3nkvz4qbgbgznoisejxkya5updl7c2puzq@4l5s5mt5pyxo>
References: <edcoajvvdnxi6e2rwbz2zfhj7lysbrhy4rafkew7wu2e3s36gv@rw2jkot3eqvh>
 <87ldrtdz5h.fsf@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="22cn2narkrxikgpa"
Content-Disposition: inline
In-Reply-To: <87ldrtdz5h.fsf@gmail.com>


--22cn2narkrxikgpa
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: libc-alpha@sourceware.org, linux-man@vger.kernel.org
Subject: Re: dup3(2) now specified by POSIX.1-2024
References: <edcoajvvdnxi6e2rwbz2zfhj7lysbrhy4rafkew7wu2e3s36gv@rw2jkot3eqvh>
 <87ldrtdz5h.fsf@gmail.com>
MIME-Version: 1.0
In-Reply-To: <87ldrtdz5h.fsf@gmail.com>

Hi Collin,

On Mon, Apr 21, 2025 at 01:42:50PM -0700, Collin Funk wrote:
> Alejandro Colomar <alx@kernel.org> writes:
>=20
> > dup3(2) is now specified by POSIX.1-2024.  It should be provided when
> > the POSIX feature test macros are used.  Are there any POSIX.1-2024
> > macros yet, or is there any ongoing work for that?
>=20
> I started working on conform tests for ISO C23 [1]. It is my goal to
> work on updating conform for C23 and then moving to POSIX.1-2024.
>=20
> That will involve updating the feature macros like __USE_GNU to use new
> ones defined under _POSIX_C_SOURCE=3D=3D202405L || _XOPEN_SOURCE=3D=3D800.

Thanks!  Please let me know when you're done with C23; we should
document that in the manual pages.


Have a lovely night!
Alex

>=20
> Collin
>=20
> [1] https://public-inbox.org/libc-alpha/20250413231200.549774-1-collin.fu=
nk1@gmail.com/T/#t

--=20
<https://www.alejandro-colomar.es/>

--22cn2narkrxikgpa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgGsG4ACgkQ64mZXMKQ
wqlbag/+KqboU3i5oZYHksnuTb3saQTOdRV1jtV5SOkfMjtLaxWoN0jukJD+ZZxk
ZAtS1t+574T0aMyHZMqmUhULd/c+1ljtZ+xwoIbBAiPKCwfVGqjjyliLA1WmuBsH
QhlBK1CZDYVx1BIAUnJ1fSY1C/PFTz+yE6t5Cy/SOEg035beQewdHocvkiwSQpa2
xI7WJU4rkoz/nnmGnpM/fUfp5ZzdWYAGyMHJpcUZHwdRAMaam3f+i2M0Ya34uzht
0JU3gjRkq055ygSVrM37OK1ubfI04Aj4dEWrB4D/FwLZNTLgB4Z2p+k5llxExjUQ
F9DtXxNPqjIni+FuEF1IBBlqL4FF2b5evG8bgrhL+/KdpsXWrH8abjogdXUJcv3U
8QZwCwgVf9BS3omAvGp+XRGUg56RanQl8NhmOeilRCYJsS1c4Xl0+Lq+mpEbdAAz
JpQai1IjkpCkspjaKB0NiSA/h+r6f5S1l9XkG++VAbfeJEiAoIxmAtx0IvRunsXf
du+SfZ/ux9nRKPQbBFrrZFyAXlURxzlstGYFMKLrqRe3s9AF6oQ27zbzIOddjK7n
/9idKjS51x1Yn6Y6X2Z02e7D8WtUfCjyJQ7mZjnyCIy9sz3FoXDF58WNws6HdQxm
ZIo1ruLuK/Az3Y0nAYOJyk7lJqfTgiA4BQiMwyKspEvu3y0IAN0=
=adVy
-----END PGP SIGNATURE-----

--22cn2narkrxikgpa--

