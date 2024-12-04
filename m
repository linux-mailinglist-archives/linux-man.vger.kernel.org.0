Return-Path: <linux-man+bounces-2107-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 04F4F9E4737
	for <lists+linux-man@lfdr.de>; Wed,  4 Dec 2024 22:50:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5C0E8B35BDE
	for <lists+linux-man@lfdr.de>; Wed,  4 Dec 2024 21:17:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8862618C903;
	Wed,  4 Dec 2024 21:17:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M8jf9T4a"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 482EA18B460
	for <linux-man@vger.kernel.org>; Wed,  4 Dec 2024 21:17:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733347028; cv=none; b=IRlXmyxQrueVVyBVSnPSclAq0Bd70yPuxz2PBKBZlYSGLP2ABZ8jmZDEHkc6LpWeJtuGJRV3Vuc/jP9ElHLPzjGV3x6W58vufC362PnoTtxW/Lu2C1a29vNYv0BSbXJRXsftwBnekY82xhFjiU8fd4nztiu/BLlOSxqtNgk+tUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733347028; c=relaxed/simple;
	bh=pffBILs5FeUCUih7yq4T4Rk/cd7GcbspCztQ36oFqTk=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=Qrk1MpXDjULQVBmTDzYgsfKKfDJSPMObhsg3lj/McJWAarq0avHYZPlAcA1rha1sZqKHIVbRmHabdr2aZN2QgZO71e3a91p2A+uAyY0/RJAMGWnwItfU2BILBmF8eB4m3ujvPQknmdaW7rAkB1gSLls7VCt19t0BeKt/9RAaiqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M8jf9T4a; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 79854C4CECD;
	Wed,  4 Dec 2024 21:17:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733347028;
	bh=pffBILs5FeUCUih7yq4T4Rk/cd7GcbspCztQ36oFqTk=;
	h=Date:From:To:Subject:From;
	b=M8jf9T4ahORxhdhnKdjy9BggUEbfJ4DXmPUd+GxSO/lA7nYRYEPEuRs5kRPAVnzYS
	 Y7bATvUDi9KhjlDzsQ1eO8tQDUWmHnAZaFmsUMy8JNeDGciI1vB1WYN6BV3MmZx+at
	 p81tNH5dYdjcumJyYJbev2D9u+sir4PaAqEl1OTq+xD6RbRgNesSFa1OGQ9ceWtYOE
	 WAsH3xumQQGHBbrLMYc9WLiHdbjAOapceylJDGiGXoZ3WiqK8DGZfNtnTyoc9P3teK
	 0OUnlB5wBTxsVhifim8KLGQnG3cpdDvA5Ehq7EVvLsNokzofjBY4jLtpHCBz/2XBE3
	 93hh9iPUFBFMA==
Date: Wed, 4 Dec 2024 22:17:05 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, douglas.mcilroy@dartmouth.edu
Subject: intro(1), pipes
Message-ID: <20241204211705.wjvbznlr45ztbn2o@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yfpvh5m3j2ixbbzr"
Content-Disposition: inline


--yfpvh5m3j2ixbbzr
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: intro(1), pipes
MIME-Version: 1.0

Hi Doug!

This week I showed the Linux man-pages PDF book (she was curious about
what I do in my job), and that prompted me to read the intro(1) page
more carefully.

To my surprise, it gives an overview of using Unix commands, but it
doesn't mention pipes at all.  We should address this.  Would you mind
doing the honours?  :-)

<https://www.alejandro-colomar.es/share/dist/man-pages/git/HEAD/man-pages-H=
EAD.pdf#intro%281%29>

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--yfpvh5m3j2ixbbzr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmdQxtEACgkQnowa+77/
2zK/6w//U5iTIFQHBPO+teFYiAuocCnyqdGoHy+aJeWTqaGILo2QmlwOdozK2947
x0xTxai8voaHpWdXRprlNhqhwio5H3YyNuhheuW3I1cbOoc2Hz2Ld1zv+l9rMCOu
g4yKA8CenPi/bhClvje+ealhymx0H94F8jmJQomh+fh0MBzLUjbiM8YdVx+iyisQ
7Bz5zt0fWkHqzn6MB4mMPayLkdZfPm/FuTTp9iIJXPeJhDRiLEZ1p/rSruQae+N+
bJZpfNNDFibMX9+AYwks9d9TTvjJjaSJM2CZjd5ef+lCmSwqcr+M0NE+IJfEmNYv
QbzveRjvM77MVZpDOnG7Gluiq2QeJzAueiXPz/AXwm182BhXfzXHylSMegWZdXrP
DCyklqM84wTBgNpK1G8OSNMnptPGmTwrvNEn0bMwns5YrmAQH6SZSBEZsVDTACgM
NNB909ADowJZtkl3iSRVwK8EiboRUDYZ1iFAkBhFjwYi2usOFQVWAxIgsN0+ADZk
jPuA6ZaYZ0f+GBs+N3rw0Icg42CQPpqs2ywoGcX2jaWuJOavHOl3Hapehj2WKFIy
ywd475ZZUCu0ZsR1CtbjI4Xo/SEoBTaEsNeUbKDcLRKXNo/wRkDzv7YLQhupnAQA
bn41PNgu2yNWEN1m0vTlG9qb+Twxhy567nqcnPecdFtCRIlItSc=
=/8C1
-----END PGP SIGNATURE-----

--yfpvh5m3j2ixbbzr--

