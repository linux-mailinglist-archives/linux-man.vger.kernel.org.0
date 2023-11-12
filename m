Return-Path: <linux-man+bounces-41-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AA8D47E8F4A
	for <lists+linux-man@lfdr.de>; Sun, 12 Nov 2023 10:18:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 63A2E1F20F76
	for <lists+linux-man@lfdr.de>; Sun, 12 Nov 2023 09:18:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D432D5228;
	Sun, 12 Nov 2023 09:18:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c8tDXVJ2"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F4917461
	for <linux-man@vger.kernel.org>; Sun, 12 Nov 2023 09:18:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37040C433C8;
	Sun, 12 Nov 2023 09:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699780680;
	bh=K9ZUGCWhB2IFIS3rkqm33yaClfpMPJLJH6tsdrf26Zo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=c8tDXVJ26qmaUUNuxZSQBe7kldTOj/nJaMf0KtTpnPihh3M3Owu8XAu5GV3lhoQhS
	 /1tiCPOwQ4W5tnEGOgg7F+KHyx3qhCbR/IyvQT58nS07njN3EYRChVbKBss4IipSvF
	 zNpJxMms2P+V1uGqKdgh39Lk1aZEkaxPpB2BsHm6pLRDx2FlySqfsg3IWq2+hIor39
	 YYHhWoQp3DjJpv9q2pX0ATnzBQkBNvUAd3SN5ztPdK2yNxmnqbO+0SeEOZ8EbPUHjX
	 oP7wP1eG9qiMghPTqcZYFNmmOD6kqm82ZFg2Rq8pMp1urypAkYoCvlKtSLajdMpMyg
	 5SBShJOI+oBkw==
Date: Sun, 12 Nov 2023 10:17:57 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, libc-alpha@sourceware.org
Subject: [PATCH 0/2] Expand BUGS section of string_copying(7).
Message-ID: <20231112091748.6906-2-alx@kernel.org>
References: <cfbd8674-fe6a-4430-95f1-ec8bde7da32e@jguk.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="so54BGJ2/fhFsa3F"
Content-Disposition: inline
In-Reply-To: <cfbd8674-fe6a-4430-95f1-ec8bde7da32e@jguk.org>
X-Mailer: git-send-email 2.42.0


--so54BGJ2/fhFsa3F
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 12 Nov 2023 10:17:57 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, libc-alpha@sourceware.org
Subject: [PATCH 0/2] Expand BUGS section of string_copying(7).

Hi,

After Paul showing important problems of strlcpy(3) (and strlcat(3)),
I've written something in string_copying(7)'s BUGS to warn against them.

Cheers,
Alex

Alejandro Colomar (2):
  string_copying.7: BUGS: *cat(3) functions aren't always bad
  string_copying.7: BUGS: Document strl{cpy,cat}(3)'s performance
    problems

 man7/string_copying.7 | 24 +++++++++++++++++++++++-
 1 file changed, 23 insertions(+), 1 deletion(-)

--=20
2.42.0


--so54BGJ2/fhFsa3F
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVQmEUACgkQnowa+77/
2zJ3LA//QlBjp2gyZxkTiJuY61W31Aq5Jyu+ABvIE+8eTOA1rzmqReij9QHxKiIJ
JqldDvXEuNFc+A0jYsc1MffBqzLm8mOm1bu1n4u/v9tgcx/QPSoLRtsRiGOsUKrU
Yp3jWR50G4F9ZPhFgjLuUWVnP/eWFVsf5iTUriTr5+04pMjQhbBYlbvN/i1it0/1
F4hRjyrvjmhzqxyVKmBJcfvO6nFeqindt0D7OIKN/4tOQvwvFTYmAuPK/iVjzMPK
5A/UuuGDOPdDkk41C4wR6aY3Fzy21VFoknMYkz+2PrCcTA+o7VxSBmqMxVqRI9EZ
DGInlp1tK4Q9mixivaya5FbDDbVmz5dX9HG0KP0X+4/oGG5IvF/f9lpt1uZalPl1
C7zMPMq3d8OeNF/GWOYPUKNIGXt3hc/5Rwn2sXSXFlmGI9CmT8C+u98MEhHw/vXW
9V/nCqjRTqftKCAB071iOGYL9MjLGskYGPYA05+qSB10oolnRGE68vpUIYOOMgUQ
GLldfx+q7WhE9p3/HxxtHDqhyRwwmKJ2Orp0YCfUqpmW5Dn5g0843ENR3+64p6ek
YVWs/toZdG3xZNIPg3rCscimWEgomm5m07EXdFkqUuRV4EGpXw1hmHkGSKEMMNJm
mV9UKW9Mp+dvx/9mRijI/kxj4iMcaSGTkknhbSk3UUO860G98eE=
=sxTr
-----END PGP SIGNATURE-----

--so54BGJ2/fhFsa3F--

