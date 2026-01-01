Return-Path: <linux-man+bounces-4601-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 17F90CECCF0
	for <lists+linux-man@lfdr.de>; Thu, 01 Jan 2026 05:45:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D538E300295C
	for <lists+linux-man@lfdr.de>; Thu,  1 Jan 2026 04:45:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E7F3FBF0;
	Thu,  1 Jan 2026 04:45:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="ZyASwDUk"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-10628.protonmail.ch (mail-10628.protonmail.ch [79.135.106.28])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3370B2C9D
	for <linux-man@vger.kernel.org>; Thu,  1 Jan 2026 04:45:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=79.135.106.28
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767242740; cv=none; b=RPmqII8OKw76JxM33cq61rgjLnkKun//0JDGStrcCyGlQRx8jDRdsIlaxF0/TnXzchb4Dvk33wSJTorRNECTkdCwC7MgeW+6pxmLUfAnKg9fmjLDE7KLWHZSxSVNMYithI2LKG1TelOghxnJaE/2ACFIbO3dTEQCf+FDAVAOfWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767242740; c=relaxed/simple;
	bh=ih19qqc13GXRATF6jZ3r/xp5MK4lWwA91dP2toBFMAw=;
	h=Date:To:From:Cc:Subject:Message-ID:MIME-Version:Content-Type; b=MbPUqitH5FMvFhY7SGZu9z5e6V4Nvw/Vr72PFbUzUmXEaBRqxvbMI0fobgUFDfn4JJJ/ancsMqqnEE+0207x/Qtmpya0RZO3/hGWRDD4NqWYFSj0osjHZcPV41xW/A+ZbCPvJr6OWz2NX+6dov+96ua68WAGhzBSC/XMJK9Ea3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=ZyASwDUk; arc=none smtp.client-ip=79.135.106.28
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1767242735; x=1767501935;
	bh=fcECCuj3i2CLw9RzEFGocVMtU2NvP+KPqbJ9yQSXJaI=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=ZyASwDUkI4Ya8YBvfcDFIsaAUJkRrFBi7Hu5bvNO6wJAElIvodSQwAS6tfbl8UFZV
	 DntKf1dKUZP10n8niSCeWh0LsQcEcYa6hswLWgBqlpfkQOp7md+/aGEZ2TROSEc2F2
	 BvTxcDVgA0qu5cFRfWwYOqyCwJ9FGduh04Iy6hov7zWz8jfYsEelo7rZ5/rHOipyVz
	 +5bMm0YPJnkAlU3IDnAkAIxMezg0aNxqty+jfiE+H1xzNFGspqnQyk4GPApzLEiDcg
	 3ihqBxK8DKFtJlM2lyOqgGv82jU6C5qKzcH2Ji02vHKZZkx1GvkewE6F8+H+Pz2jtl
	 johUGOW208wgw==
Date: Thu, 01 Jan 2026 04:45:28 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Undocumented systems/standards PWB and 32V
Message-ID: <X3QWJqINtunXWTcIKK7kRI2gFd3BBPWYjv9huP8DxYmLvSiBqE1vpMvBLvkmJXYi3dzHsRhn1FxwWgwv6ZN_W6SX2o21xKsFAupnFV-i9ek=@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 14632d149c37c5c381753dfb1ffe2d86d97648d7
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha512; boundary="------e4a27284dcd6ff6006e2cab6ff078e3678041d4c14a9b41a5ad4d84e17783c8d"; charset=utf-8

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------e4a27284dcd6ff6006e2cab6ff078e3678041d4c14a9b41a5ad4d84e17783c8d
Content-Type: multipart/mixed;boundary=---------------------63e7ae7764398026295597e63f3a6151

-----------------------63e7ae7764398026295597e63f3a6151
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;charset=utf-8

Happy 2026!

Starting the year off strong, here's a classic bug report.  The man page
for alloca(3) lists two systems/standards in its HISTORY: PWB and 32V.

$ man ./man3/alloca.3 | sed -n '/HISTORY/,/^$/p'
HISTORY
       PWB, 32V.


After some Googling, I assume these are referring to the PWB/UNIX and
UNIX/32V operating systems, respectively.  However, they aren't listed
in the standards(7) man page nor anywhere else in the docs.

$ grep -F -wr -e PWB -e 32V man
man/man3/alloca.3:PWB, 32V.

As such, the two systems should likely either be added to standards(7)
so they can be referenced, or be removed from the HISTORY of alloca(3)
and replaced with another system/standard.  I would think they should be
added to standards(7), but perhaps they're too old be notable enough.
Wikipedia says they were released in 1977 & 1979, while the oldest
standards listed in standards(7) are K&R C (1978) and V7 (1979).

----
Seth McDonald.
sethmcmail at pm dot me (mailing lists)
2336 E8D2 FEB1 5300 692C=C2=A0 62A9 5839 6AD8 9243 D369

-----------------------63e7ae7764398026295597e63f3a6151--

--------e4a27284dcd6ff6006e2cab6ff078e3678041d4c14a9b41a5ad4d84e17783c8d
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wrsEARYKAG0FgmlV++cJEFg5atiSQ9NpRRQAAAAAABwAIHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmdbTgeac1fhvDjzuzKwuiKVp5t78FLHfkSYiiop
gzo41BYhBCM26NL+sVMAaSxiqVg5atiSQ9NpAAAo0wD/RGXeHyVvc+heRgm5
0ByWjmZwM4dSmLv8uN5DcfbJda8A/0VHiDjbFi606zS3YsH92RjPMNrZfcqr
Yt3cHt50hs8H
=oKwr
-----END PGP SIGNATURE-----


--------e4a27284dcd6ff6006e2cab6ff078e3678041d4c14a9b41a5ad4d84e17783c8d--


