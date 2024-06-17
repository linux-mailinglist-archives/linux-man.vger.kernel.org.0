Return-Path: <linux-man+bounces-1223-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0144990ADEA
	for <lists+linux-man@lfdr.de>; Mon, 17 Jun 2024 14:27:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 00C1E1C2122E
	for <lists+linux-man@lfdr.de>; Mon, 17 Jun 2024 12:27:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6AE0195806;
	Mon, 17 Jun 2024 12:27:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RLOflWLl"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86B12190052
	for <linux-man@vger.kernel.org>; Mon, 17 Jun 2024 12:27:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718627245; cv=none; b=UwCEWa2GJcoB3EmkStQSZS+JzEzD8yc8sS8F1v6HeQDGiHbVzbLuvW/07/ghQ0IdcI/Vl2q9vs3rG4jBUYHhTaBsfhYmK0VTyBoQpM7VbbXmYmawUQ8lj1dRB/3ivgm3iNwLc7IxlFn7hUZbBXz+MKtilmNpG4/AxUOLfgbZFr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718627245; c=relaxed/simple;
	bh=42WRAh0SGWAwovQNB+cB2SWxG/WluDS5+qJD/CP7nqg=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=RIlWuX0sfqcUywCDdRQ2icqL5EpJIAe8TgTpHd47RjfripOPiYMYkV4cqO6OTwjGD2lJ3mSrE6+U04UnckhSlHMjsCbGgXfJKgFffA7tZ5/CHw0PTM5WK6Xjdnrnr8ocRQRoSPEhrmFKXRr+opNV1c58zw5JSeochhgziLIKEoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RLOflWLl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6AE7BC2BD10;
	Mon, 17 Jun 2024 12:27:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718627245;
	bh=42WRAh0SGWAwovQNB+cB2SWxG/WluDS5+qJD/CP7nqg=;
	h=Date:From:To:Cc:Subject:From;
	b=RLOflWLlsiXegFH2b2PlCR6xFww3odUAlQ1IgCUTLyBimfztPtFEfVzmt6FK2DpzF
	 0DCGpn3DRGqoj/gey4lbGuN0ldjF340CCwjYu9GKW8ct7fme9HKLPfjY2hNEomNy9L
	 x2LMB9kWeNCJRZVRLlKI2TLudmRkqSYcjXbxdqR/2ATF8gkThx4tgvMZ9RupvdNvLL
	 4WkpuapOzKPu3wDvr62IPNN+Zoyeb/pvTC8972PZfDIiVM/CJGTDVm1Er4Ll2EO/BM
	 quqtC8kuMWaKbOJz91ruh3fRtRYCIENU/ou/mKjST6D0uihlPFdrUuTJZj/0G8TE+U
	 iSC2yPOYXl+lg==
Date: Mon, 17 Jun 2024 14:27:22 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Konstantin Ryabitsev <mricon@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: kup mailing list
Message-ID: <biughofuuvymabklkw2cuchpubk2mzeq3d7snxyrogyu3vqtku@dt6yofflbsxo>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="u7rbj4s7j6r2hxnv"
Content-Disposition: inline


--u7rbj4s7j6r2hxnv
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Konstantin Ryabitsev <mricon@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: kup mailing list
MIME-Version: 1.0

Hi K!

Do you have a mailing list for kup?  I'm triggering some fatal
condition (kup-server.c:617), and would like to investigate it.

<https://lore.kernel.org/linux-man/vqexqoi4imi6e4sm3ddz3vicqslxip24shu42ut3=
7ydanfqnlu@2hpc5rue2d6e/T/#m4f61f1814c26c576f21da88262577511cf891976>

You can find the same files that I'm trying to upload to <kernel.org> in
my own server:
<http://www.alejandro-colomar.es/share/dist/man-pages/6/6.9/6.9.1/>

I passed an http: link on purpose.  If you find issues with the SSL
cert, it's documented here: <http://www.alejandro-colomar.es/ssl>

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--u7rbj4s7j6r2hxnv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZwK6kACgkQnowa+77/
2zLIyhAApEBonpYWVQH+BFMuw0hftfg+7f8WUVHTEQcn9PhdFqX3Tox6yo/sTitN
ngDaGBF/YswuY+ZJzezU5FnGRSujb2lMafzaLxUofl0CLXd7QWDpjmdaODmolSK2
2iGJsR6LmJ6dZcGcPoSO9SyiphrIMGNdW2hSFtyuhL1sR0Wfug49U7lxziy9X5Xw
VAyTxzqZhSkjFheJGq2XFg7Od9jrau1AuV/kxUPIxKRrsBumHdLPfYau36nPCgfw
nEqsQYKOaG0ky6vpFB05zpvxyCCpH/FHGxvjowB8ib5bVC3X5wOLXrA5+Pm8NLvJ
p/aaTvz4UpwD855PlAkknleg8gjjfqSI5R1XdbNv7ysrwdRHGPx+OguPsthOfHTS
wU+fyLs4HITTlWIFVH6PRRB5TpF+CU7BYb/nDa2Wtn3AJn+aSOpv+k7NBlTHhQDW
AoqBGCS2b36DYxzca/39Dzgn0HVl3CRIV0JzGWulvZgZmAnnF/v93TAqII7LtjXH
slHlze+ohrxdHdFoOa42FehE9ujkMvUlRnRv5RcFaZFwwN/mPkE1hhZU7zTbA/Wb
UYwfgisQ4dOfkjJbXcWydVDdyoBahIT9s1D9jyomAnc7+5TYbfcNAZGuuK5WIfkJ
a0W/jzaVUy2JQA0iQSwPrSK2ItcPG2JQRyk/SqzAbLOln8A9X0U=
=2Uad
-----END PGP SIGNATURE-----

--u7rbj4s7j6r2hxnv--

