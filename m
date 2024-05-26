Return-Path: <linux-man+bounces-998-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E4EA28CF3FB
	for <lists+linux-man@lfdr.de>; Sun, 26 May 2024 13:07:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 781481F21C51
	for <lists+linux-man@lfdr.de>; Sun, 26 May 2024 11:07:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7752AB664;
	Sun, 26 May 2024 11:07:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JMlc0yMD"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C7E8F6A
	for <linux-man@vger.kernel.org>; Sun, 26 May 2024 11:07:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716721645; cv=none; b=P4fKmv7nZEMq6+0ZrD0E2dap2SJ7ToPREQt8vzvlF58JO9FAIRk7/0thth4VceYSb2RDUdRY2IwF42ctIRWqHPlnbZuh6Y4oEz7nlzN4fdg0cIVzcbDTsx3YfV7jNtkYDGWFKmjwhSeENP7d13Pf3jyHtyUhBVDGr++e6Rdph5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716721645; c=relaxed/simple;
	bh=x4qDdzcLE9mTKHXvF4duF/5Bia8UTm7Drlg0Q+4uXaQ=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=M6KR391CU+FkEoaoUybuEhbw9N0yQISVlRnLKQi8f7zSGVRbJOdcPKb1UXDUnC+PZw3ou7QX9PKIm04eyD+PWb1qSnAyHBvi32xxua0Lpwr9och3th0GjvCHGMlnEcBJlgU3f7jJpZys2Ek5soWjm6r+VO4aBo4mIjrSmY/uk00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JMlc0yMD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4516FC2BD10
	for <linux-man@vger.kernel.org>; Sun, 26 May 2024 11:07:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716721644;
	bh=x4qDdzcLE9mTKHXvF4duF/5Bia8UTm7Drlg0Q+4uXaQ=;
	h=Date:From:To:Subject:From;
	b=JMlc0yMDexRD24YgkCGU/49OwNlRGcdEqOmKWmJ/S7TAa++ccNlPeSrxYoCscbI/U
	 zXSmHp3PmJNqqwje6T4fB+C3wllGHogbRxezqfwRt2sxdAQ1O18UZrcd/VpqXYTsG/
	 EMm1mAhnQ25n+hl2UYQER8gGYz/FJ9dZ+n35zdItu/2h/YjTksxnM5cVAQOWcuMHXh
	 mf5rOpm2IFwHastaOTVZJo4mQPGg45+0a/hlTJoWc5pzr1d15yflbaRz0WwUJgnLqV
	 sn3tkVxrZaI3dOamsRahGNDVQYaRsAQeCpniaVO52eD9QNHBFu8NppO/H9TW/TS9RO
	 tN81BFi5m9NBg==
Date: Sun, 26 May 2024 13:07:22 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Subject: Sashimi of prctl(2)
Message-ID: <eofw4itya3kwaznneoizgt3dspfa4h7ttrw6ehshfrksj3wmst@xwjxpi3iro6d>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="f2uesffvlprvwrak"
Content-Disposition: inline


--f2uesffvlprvwrak
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Subject: Sashimi of prctl(2)
MIME-Version: 1.0

Hi!

I'm considering making sashimi of prctl(2), similar to what I did
recently to proc(5).  Another precedent is in ioctl(2).

I'm still unsure about the naming scheme.  I've thought of the following
(using prctl(PR_CAP_AMBIENT, ...) for the example):

-  prctl_cap_ambient(2)
-  prctl_PR_CAP_AMBIENT(2)
-  prctl_CAT_AMBIENT(2)

The upper-/lower-case mix shouldn't be a problem, since man(1) is case-
insensitive (mostly).

Any opinions on this or other aspects of the split?

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--f2uesffvlprvwrak
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZTF+kACgkQnowa+77/
2zLpcQ/+MeTO5x9SjlszjzAQDWeYw+qA57HyRW2wfWDNx3GXvMfAzqreQnc2ZnGk
huYMKRxeDCt0hkEjakXUz0BncJKZgZnSveVgtjDW8J+KQoxDSmLcA9cpJALZZWEf
N54qXp5i6y4SAVDVHy3i9hY/KDy7AJ3DNZb6L87HDJne891PDghnHlFqyffNDA5C
gFKOkCens97mcR/lDP82d15RRePBdFv6NEl/lSwj2Y/03y6iqapCUgnRxgT+RCQS
9EgwIVgVoJQYvaYlxOEoZUkka4dpFy6PgfE42DS6nDZsVWSbZ8Cb8vHG2A3TCFv8
xBizR6gU1UaRIpQY2LEYTVTvW3F5LoBIYnTvtFtDVN2UM4RSnRTT5joI1jJ0dyDI
RgE/I/x/oxs1A1zdjsVldrxgfzwzWay3pf1LaUPBHqsyUVdTRPzTxs8pIP4aHeXi
AxyrFq1mFAVAwFTyKzpKD5rOFRDRaLItJaK1rWXH6cYkpQoxTeX5DuA0zrr4oZld
Oq6NclbZcub9z3vYf8ZKXNOHR0c95PcSDx/qPv1Tkc3oVJ8Mf+MTvccrKanxED+o
ijLoVSjQLkaCs40sSkyJdfbofXDRulxK3DzOxhEZP6TRjp6A4ewFkZ7g9q18QCVA
ZsnU2Dth4EEHhESfjkT1U7LThmLAn/0kRz6G9ZqfkJn1up0F4dc=
=P5sM
-----END PGP SIGNATURE-----

--f2uesffvlprvwrak--

