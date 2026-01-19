Return-Path: <linux-man+bounces-4852-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 10187D3A78F
	for <lists+linux-man@lfdr.de>; Mon, 19 Jan 2026 12:58:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D4750300766B
	for <lists+linux-man@lfdr.de>; Mon, 19 Jan 2026 11:58:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04B1E31D375;
	Mon, 19 Jan 2026 11:58:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="fBtHwjLb"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-43103.protonmail.ch (mail-43103.protonmail.ch [185.70.43.103])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 665E631D366
	for <linux-man@vger.kernel.org>; Mon, 19 Jan 2026 11:58:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.103
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768823916; cv=none; b=UbcAukrY0uEmDj6yheqb0TE96JKPSWewzA1nb3SzJ85lcFXaEDmeRIZsH67cElrY4nUFPKprhJcJxi7QDG8xU0tr2TihNdwdBfhqjiBLaAqBfhqyWUF+jLVEPXSE9Xq9PtGw1GOqjS+7qtKX3bNUTZlQfEVMBKHOwSftsdBmP1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768823916; c=relaxed/simple;
	bh=neXXRAAcMOZjvEUV6es8IAXHSQEqKQqwaWT6+HsQWXo=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=NHAVmayK1WeE65w1sI9fyH2Srf5XlT6D+ybAAJ+S8jFrg7Sei1byZGS5Pu3pgq7MFT5a+tGIV0t9e7x8K55jmx+KIMcI6WxDV6gaDqPU6EOiEbOFrct5F2S2c5nnVk2V5JrBCvopfKyXcui/HXZpW+35jLXER0LIIaB7dqAGK8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=fBtHwjLb; arc=none smtp.client-ip=185.70.43.103
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1768823907; x=1769083107;
	bh=YaHsed0BsLrAFpVCaTcaptWijdFBoQojfz+o+jxPmlI=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=fBtHwjLbkx/uOOqBsHDAHYw2TPPokMqWr+swqgMLYmhRTzkDkEhY7MIHYXfkRZCdi
	 YS/PU/nVUvHl7DmgwAwvGelryDMOjri4SoAQFwZyhpBmsS+As/wIpoeRkc4Ql4+D0i
	 y6PGNgDj5pBp3+/R7FPoJ/J1LxCwo7SD1OtBR9RrzxQJX0N72yJ5IsuQ69mSSZ+W4p
	 2WrKGxlVewBy4awtLoHNS17Oeiva8vJvAChRHn0/AadpCa/snlpvl4Doo5H/mhyGOC
	 T9QuESP05fH1r9be2oDp/q3qrVOcNojalgapZA1PI3dAXxcGICuJrFokxywFEipe+b
	 gvBISz9V8NWyg==
Date: Mon, 19 Jan 2026 11:58:25 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: Seth McDonald <sethmcmail@pm.me>, linux-man@vger.kernel.org
Subject: [PATCH v1 18/19] man/man2/chown.2: HISTORY: Update first POSIX appearance of lchown(2)
Message-ID: <5abf94a520b58bd603fa93817c2422406be9cb21.1768822707.git.sethmcmail@pm.me>
In-Reply-To: <cover.1768822707.git.sethmcmail@pm.me>
References: <cover.1768822707.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 3deec3eb51f156ff3a5c2d78066c60cecb48deee
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------ec5456ff1fcbcf63eb63153a9c4b5fa5059cc76cc6e1fb205a5ba3bdcbc909e2"; charset=utf-8

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------ec5456ff1fcbcf63eb63153a9c4b5fa5059cc76cc6e1fb205a5ba3bdcbc909e2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 18/19] man/man2/chown.2: HISTORY: Update first POSIX appearance of lchown(2)
Date: Mon, 19 Jan 2026 21:52:02 +1000
Message-ID: <5abf94a520b58bd603fa93817c2422406be9cb21.1768822707.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1768822707.git.sethmcmail@pm.me>
References: <cover.1768822707.git.sethmcmail@pm.me>
MIME-Version: 1.0

lchown(2) first appeared in SUSv1.[1]  The function was added to
POSIX.1-2001 when POSIX and SUS merged, but as an XSI extension (still
SUS-only).[2]  Then POSIX.1-2008 added it to the base specification.[3]

[1] X/Open CAE Specification, System Interfaces and Headers Issue 4,
Version 2, Chapter 3 "System Interfaces", p. 349.
[2] IEEE Std 1003.1-2001, Volume 2, Chapter 3 "System Interfaces", p.
671.
<https://pubs.opengroup.org/onlinepubs/009604499/functions/lchown.html>
[3] IEEE Std 1003.1-2008, Volume 2, Chapter 3 "System Interfaces", pp.
1206-1208.
<https://pubs.opengroup.org/onlinepubs/9699919799.2008edition/functions/lch=
own.html>

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/chown.2 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man/man2/chown.2 b/man/man2/chown.2
index 0e0c6f170fb7..55de93efae72 100644
--- a/man/man2/chown.2
+++ b/man/man2/chown.2
@@ -292,7 +292,9 @@ .SH HISTORY
 .BR lchown ()
 SVr4,
 4.4BSD,
-POSIX.1-2001.
+SUSv1,
+POSIX.1-2001 XSI,
+POSIX.1-2008.
 .TP
 .BR fchownat ()
 POSIX.1-2008.
--=20
2.47.3


--------ec5456ff1fcbcf63eb63153a9c4b5fa5059cc76cc6e1fb205a5ba3bdcbc909e2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmluHGAJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmcJGA8ZKPrxEhAnC5sTTvVgFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAElIAQCubISvvlKM8D1clnDv6LyW9XCTobg2O32KSHOT
pXI7/AD9F3Uu5pyPs2bqWBmr6cMKM0P1YfDKFloR5jCLUoWV8go=
=et9X
-----END PGP SIGNATURE-----


--------ec5456ff1fcbcf63eb63153a9c4b5fa5059cc76cc6e1fb205a5ba3bdcbc909e2--


