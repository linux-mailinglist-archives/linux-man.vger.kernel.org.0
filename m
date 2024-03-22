Return-Path: <linux-man+bounces-682-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 978098871EC
	for <lists+linux-man@lfdr.de>; Fri, 22 Mar 2024 18:35:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 36E4FB21258
	for <lists+linux-man@lfdr.de>; Fri, 22 Mar 2024 17:35:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F5A75FBA8;
	Fri, 22 Mar 2024 17:35:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oYYmSTUv"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FC995F87F
	for <linux-man@vger.kernel.org>; Fri, 22 Mar 2024 17:35:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711128906; cv=none; b=Ud9rghtf2363CZYvMeCbghhXXkvLVDv2QLGg/c/7HEDsvimPN4QXsaUXe5cDaF3/W3b9dSbqU7gWxPvv8QTyf3DpsHb+lkw92Qh+dFHVCDTtQkuxNl4c5G/uvF3pY5UgWMqJhzFvqGGSFI5keHM4n0v2p82FoXeOP5lZdWxCtKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711128906; c=relaxed/simple;
	bh=TH8letmsQ3zjG5NtPJpF/L9xiqlSmo1hHiXRCRtqQRo=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=em57eVqQ0NUNIEV9dNpsS0c3UV/vWb8cISXX6dvGcRLDPBlMXemG47hkewM7vjPn8nQAVBYMlAcUwt/CaKg4SdBieLb77zOl9uF1UtA0LRe/K0b+TPaUywu2VW09Es97dEJaMITfOKq+L4H/1W/spPHfLTvXLL3kMjKqlzGxRjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oYYmSTUv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BF8B3C433F1;
	Fri, 22 Mar 2024 17:35:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711128905;
	bh=TH8letmsQ3zjG5NtPJpF/L9xiqlSmo1hHiXRCRtqQRo=;
	h=Date:From:To:Subject:From;
	b=oYYmSTUv1RsCoXm3ImvztpciHYcYnh9uqTXqqsCH+K3+2YEO6vu8NlVdoT+9Zcgzd
	 bAorXXQD6zIPmLlVZ+a9yM/A5PyiHR5cosJNGfRgAZUDaqQ49v/maCd/Z6uKgzGvOz
	 Vw+GmbkY1qYjiCBj2ruXJyNwuWkL+sXeQoQC2bGGVTJuvmgtrfSGx6NOLvKI2puGTS
	 2EeCVLG+fPNC4e+yFF/yUY44aKJhFuPRYpggr/qdefiqseFbPGNw99BvlJkDzB+u/i
	 CQnX3dJmDe7STNNib+CKx4/7kSaDdM7TbEIwZv40EHupzCjHnbvknDdBEDSi+tIeRL
	 L/65Dhoj36MDw==
Date: Fri, 22 Mar 2024 18:35:02 +0100
From: Alejandro Colomar <alx@kernel.org>
To: branden@debian.org, linux-man@vger.kernel.org,
	Deri James <deri@chuzzlewit.myzen.co.uk>
Subject: man-pages PDF book: fonts
Message-ID: <Zf3BRmfTFvADOIBG@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="EO6KoawF532RX0NI"
Content-Disposition: inline


--EO6KoawF532RX0NI
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 22 Mar 2024 18:35:02 +0100
From: Alejandro Colomar <alx@kernel.org>
To: branden@debian.org, linux-man@vger.kernel.org,
	Deri James <deri@chuzzlewit.myzen.co.uk>
Subject: man-pages PDF book: fonts

Hi Branden, Deri,

I see that Debian provides the Tinos font in some package:

$ apt-file find -x Tinos.*pf
texlive-fonts-extra: /usr/share/texlive/texmf-dist/fonts/type1/google/tinos=
/Tinos-Bold.pfb
texlive-fonts-extra: /usr/share/texlive/texmf-dist/fonts/type1/google/tinos=
/Tinos-BoldItalic.pfb
texlive-fonts-extra: /usr/share/texlive/texmf-dist/fonts/type1/google/tinos=
/Tinos-Italic.pfb
texlive-fonts-extra: /usr/share/texlive/texmf-dist/fonts/type1/google/tinos=
/Tinos.pfb

The above is .pfb, not .pfa, which I don't understand and may not be
usable for our purposes, but maybe it is, and we can drop the font from
our repository.  Is that package something we can use as a dependency?

Can we similarly get the Unifont for zh_CN PDFs?

Thanks,
Alex

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--EO6KoawF532RX0NI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmX9wUYACgkQnowa+77/
2zLc9A//fMkwauRs1L4bt7Ve39t2bjYgxFiFp2z8UjqTHhaUYJpqcmzVYi2lyN7K
MZJvaFVnRxyTkRh+x3oxsgoGmxwdhoO39cSy8PHKEip7JeywpojMTZ8XTckTTJqD
Qy+D8pj4G8fMBnwDL5DAEaqY6YZePooqnU4xkNBASZRC7xc86JONyjyunR8wAIgL
fFl/dg7bbsw8OQKfc4IQYGKIW1anMAWG+KEFfjwxAzinXZidI9aSlAMnVCY2cI7W
9uDwjSWcV9B0N4mNZ1p68J9YsJb8IedtNSSBorUyyPqHAp9qPpFnxHG4cqCH+ZAu
kEJPUS3eUf9pBq24C2HS+RmmT7eiOH8bt3el7DIkXqacD4Q7y++SDSSMPx0HQuqp
09/qyVYMnK9cqFJJvI+GgT5/lVhZAyViKepNwHy3alcxgJq8Hye6DjKtUV+FA2oy
femCXlnoAUOHvFQWJ70ol7ivZeyBoJ5tI+rT5Jp3SuA8mpWwUJvtbtOLyWzkGmBc
ndEgtITtukpjaEWJP93YQcqfTYg4M0bhZisPB1nNWh+CxWzFIxdNWzBmX4VZ8RxQ
qbhDb/msLtaY0S6UvoLANInH32wOO2hVVVuVkAhoXBLbbH9l4DkDq3K+Kpc2NBwH
sfrOMHaHm0vPOEYn6KvZKkShE+84k3Q5vC9ypQjHqd5kYD57XMk=
=7Y0+
-----END PGP SIGNATURE-----

--EO6KoawF532RX0NI--

