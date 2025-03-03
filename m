Return-Path: <linux-man+bounces-2575-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BB81BA4CB1E
	for <lists+linux-man@lfdr.de>; Mon,  3 Mar 2025 19:41:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E48E4175910
	for <lists+linux-man@lfdr.de>; Mon,  3 Mar 2025 18:41:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4ACDF21638E;
	Mon,  3 Mar 2025 18:41:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O9Ucl92R"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B23A2135B2
	for <linux-man@vger.kernel.org>; Mon,  3 Mar 2025 18:41:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741027269; cv=none; b=JJscRId0QYQuHxnWKFkVHV2FK9a+AXT6Z3Tzj4KlNpPyzKd5B9FoTsaAJqvUp3ZxNhL8n7paQhk3sun9wYb4dMLgepJ8yp7PXbsV62YZMSHvbYfil5vrLjhatWUAR3YfHrtqSCFBeQkfmpEKSqHppaZa6UEHF1Wjr2bZq0dBcow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741027269; c=relaxed/simple;
	bh=wTV3E+oueBi1yc23POiZLq89fVqauicx+rwtTzg/L1k=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=HyNbxvABowCEu63sxIA0wq342f98jH39TbYuWcXSojM8iC1zdeypJgnO1WumVFwO00YVAmCffoXlSrF5sNVzk3p/5eFgUoK/pBZdzVc4ZMVJ6qUAXBdfOJ48LSaTSkGs/gbl7Z3z6Z+eTuRgmuDIQQLu4DA/MCG9RIwtRsJ86I4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O9Ucl92R; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8EEFAC4CED6;
	Mon,  3 Mar 2025 18:41:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741027268;
	bh=wTV3E+oueBi1yc23POiZLq89fVqauicx+rwtTzg/L1k=;
	h=Date:From:To:Cc:Subject:From;
	b=O9Ucl92RMFde0T6/SJx5afWM1OntyNX2ocVY37WJKFUeyXwR2zIQKV3Ha3yJJiQFq
	 PUVc9jdKfzycXN7CwpVe2Be7Iwp1kBz3S5J++7SkL3YFNY39yn2YvBHayUoAytboPA
	 ePvjs/x15t0x+HiZfMVEk5P4c5BYMGAsG6cAT50jyqe/MlQjCaFN4V6vrEnWc8VvDE
	 NWrJUrEL8NWJrgJZtgoM5BRpdlNGiHGCy31SmbvPcZbmem5POxJx3D2jQKpdC6tTQR
	 nOqeUSiaDyzSiVb2cyVqGHJy1fm9SLLBbOr2EpUBKU5NYPjpt4IfeE3dtYdbwJmBlZ
	 mMlN2Z+g4k4wQ==
Date: Mon, 3 Mar 2025 19:41:04 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Konstantin Ryabitsev <mricon@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: man-pages-posix.git
Message-ID: <vnfyvsdn22gik4gfjownodrnfzsju52rhk6tt4po47yqb5azjr@7eyng2tgpiem>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xqydiwyguccdhvlh"
Content-Disposition: inline


--xqydiwyguccdhvlh
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Konstantin Ryabitsev <mricon@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: man-pages-posix.git
MIME-Version: 1.0

Hi Konstantin,

I notice that the man-pages-posix.git repository is now not visible in
<web.git.kernel.org>.  The git repository still exists (I have cloned it
right now, both via SSH and HTTPS), but it's not visible in the website.
Is that okay?

It may be due to not having pushes in a long time.  I just wanted to
confirm if all is okay.

Thanks!


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--xqydiwyguccdhvlh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfF98AACgkQ64mZXMKQ
wqk3LA//RxlUKIEBhv+tNBuhFsBQGdN6U/IfHaPvEp0lzSGFDGgORDNAfvH4MfYL
qH5rukvwGUt1oJipfIi7rtX3xkeHkeQTb7orvlcy8MF4jRoa7Yu85kjVBzID40fO
3QyPG+YtkIuZxOhHxSzr8hbTR9QP7FLozBd+wXR6VWFzMifuBiZ9AC4tYwwDQF+d
NNQHTrdKLAtFFNgUPd1rgS/0W6SjdcYiLkHneAU+F+UIwm0ClAE0dexClQv41vOa
Yroy5Ynbpmrx2KZVeUY7meSzPMedJDewM9yBnjHWKAnH+lk6usFH7S+NzKqxDaya
kzKWKT2T0sqVtTZXoQEKgB7q3qJty62IpV3dT1hwNxBOMTgY2ueDq/As5d9c8AUI
LCBEjLOMo5gJl6M2Bet+UqJBOMFQ0EhHRfEfhneEtKJrqU4ntH3WI7m45nIkkc6M
zuSXRHkp9o6FghiqvgysNSkdSA0L7Uk+vmJBYAiQyWmf9Des09wpH4RGTRFehSX4
65bjBCWHRNJh7EEw7DzUpZOBO2OlEIwcr51Z/cDJzLSKRB3TXrHgo1nToqMf63Bc
lls8ULMsbdLTVEZRE3tvwSjGNcdz7xvKdtSx7X53g/Oiv4aevEPylI5H7H0WUH1K
5GvFsAOLOPCdWNMYgBf5oxZPH0fGb//Ev32avGq+rLhJmgiHwzE=
=xda3
-----END PGP SIGNATURE-----

--xqydiwyguccdhvlh--

