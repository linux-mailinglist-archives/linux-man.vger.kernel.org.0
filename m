Return-Path: <linux-man+bounces-239-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C3B80B481
	for <lists+linux-man@lfdr.de>; Sat,  9 Dec 2023 14:04:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 14045B20AF5
	for <lists+linux-man@lfdr.de>; Sat,  9 Dec 2023 13:04:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45F5E14A92;
	Sat,  9 Dec 2023 13:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DFJc9v7T"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0675513AE3
	for <linux-man@vger.kernel.org>; Sat,  9 Dec 2023 13:04:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A13C7C433C7;
	Sat,  9 Dec 2023 13:04:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702127062;
	bh=Hul+EEfKVn2anjnZJblG96jymg+SPsP9Oa5CpI4RUUY=;
	h=Date:From:To:Subject:From;
	b=DFJc9v7TDKXfaPJiv+Zgx/Fd5ErM6jykq1pGPJwXxI61xyrstf/wApi7uHuttj5IV
	 zHuTBHeDdF5PZ+NPTzpphlhzjISVxsGq8/duyCkx9YUDgEo/0b8/ZeETWg+dZwcwo7
	 TBLLiZrbsdDs4vToSfh+CMn4zsHVDsqZoYaC6XlmqNnxsVtvtoWG8/tA5xQik3uOe/
	 O2xKw6D3iDlkIo0PHEh8+jS/Mo208x/tkFhEgZGfoek3Y53PHr9VetNtoPcrDlhpKa
	 bEJ0oEKLK99MsQL3rmjfsL02dUG3lQPh2bpLKQKJvd1c6si5IdmGMlpcJW6X75ym/Q
	 RJObc4NBBYV5A==
Date: Sat, 9 Dec 2023 14:04:12 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Zack Weinberg <zack@owlfolio.org>, linux-man@vger.kernel.org
Subject: scanf(3), sscanf(3)
Message-ID: <ZXRl04BCb0YZJxkq@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="m/XwNtez0gkfYnML"
Content-Disposition: inline


--m/XwNtez0gkfYnML
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sat, 9 Dec 2023 14:04:12 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Zack Weinberg <zack@owlfolio.org>, linux-man@vger.kernel.org
Subject: scanf(3), sscanf(3)

Hi Zack,

I've applied the following patches to scanf(3) and sscanf(3):

-  <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=
=3D30cdb698f6f1af19f13b26c9a1b64bb67b45768a>
-  <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=
=3D4ea602c6ab2716c00d189d28199a9236180d2145>
-  <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=
=3D8c3bd620bca7de41c9d3e28d73f09ec88fd52a86>
-  <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=
=3Dbb4dbdb82f141f6394984aced67d65810ec7f747>
-  <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=
=3D239c4bdd83bb09293248b93a3a218efa2d4cf017>

And while at it, one for strtol(3):

-  <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=
=3D628d27c3c1d8362a7e73198460b8c6a739be4973>

We're still not saying anything about %s or %[] and buffer overflow.  Do
you still plan to send a patch for that?

Thanks,
Alex

--=20
<https://www.alejandro-colomar.es/>

--m/XwNtez0gkfYnML
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmV0ZcwACgkQnowa+77/
2zK9bw//QR6qTgRF0gEBEpSROWDRKbrOYDHKVYXXXHjGnVEG6kEdJ+/w07t5MxwS
KB201IsaMQ/uBo/QPljJ39n8BTKhtcOEbJ0sZLcQNgWjUlVYgJBWcjV3HOoK0oM4
SW5OhBIKU2k6Mna0ytwuZkYKgOi5mdTO7E7zgWv+W4ityDThC5EvHEYavn30yJPl
+dANVac4YRf2ES3cOTkvKJOwQKewIhAczPx+LWCqiZMcWabYdMNCLinKa3XyLuTn
DWDofm/iu1OOX97ilI4j+CSqs8kr1QppdQD0liDt+yG+eRhHyJiyb5QuwTye2Huy
E4ETx5axRUOVQearnVNjBKFp1xwPdO3yW7kEYUqDZHxo3bl8xjd1EOLz4/Z9r2YL
ZOT0J+tfrm/x6DbDd6Lz+FlAzmFxyaDBTQEROWOfp2ICUFegaV5bQQQDIBkPSzQG
sHe5qj4I639LlAhdWTIy7Gi2z+jQYUYxQT3hL4TMUY4rlThJ0r9MYfSlqZiKJlZf
zMuM0sRtMpgSsWbp4RyK4WukxyyQfATZ8gjBgQHnLcoSCGeQIkI5HC24TnGkoEyG
q4SY+TGu3ior3m9EEHdM0jqD1Gpb3eO1unC8HLPIbcErmMVXY4dLZWeUGtmkezWa
852CF1A0xO8bPSDYXZcWRUKNzhGjv7M/h0z3PxlUHARaZ68L76w=
=BL5v
-----END PGP SIGNATURE-----

--m/XwNtez0gkfYnML--

