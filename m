Return-Path: <linux-man+bounces-4839-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 20B3AD3A779
	for <lists+linux-man@lfdr.de>; Mon, 19 Jan 2026 12:55:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 805303006470
	for <lists+linux-man@lfdr.de>; Mon, 19 Jan 2026 11:55:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE760314D03;
	Mon, 19 Jan 2026 11:55:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="sXG7pwTF"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-4316.protonmail.ch (mail-4316.protonmail.ch [185.70.43.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31EE330F94D
	for <linux-man@vger.kernel.org>; Mon, 19 Jan 2026 11:55:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.16
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768823751; cv=none; b=dUGNzo+cK/HK0MsFLuSFAjJGU2TRCjQR59k7M2cAJ5CMZI1AZ5w58qFk5SSB79f0tniXlo/EEw6T+rNP9qQALQAU6iN+g2h0WB73Zbdo8MLEggEv9Oa7w+B64OV1990uS+yQVoBg+BDXBAEGyXZHuwF0lr3t2t3e9wGzjswzZ3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768823751; c=relaxed/simple;
	bh=ndhYFg2sMcLg4JUB3gi0BzDYk1jefrbACeWahg15+eo=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=nbUnD3YA8bMvyBMCwb9fwc8sfiuau8tcCtm9x6/3Y94KDDJL9VlJVPOiZ/+IXJKoJE1KtJFTFfVzYknvic4+jcA4ZiL4vaa/I87IC06uSOIOh5c1BUHXDBgJ4ZzOIWAro6d54JxAVALqryCVi9HKpImJonvIthSW+Wn+128qG2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=sXG7pwTF; arc=none smtp.client-ip=185.70.43.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1768823748; x=1769082948;
	bh=urJTsyr5wxPQEWyGiwnsr6aqzsgjEPtg1CE68BRgCO0=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=sXG7pwTFWSV+S1UXghGpBcMoKEE9UwJNa/Y7zqR5WYRNk83tugdG8Y8zkW0x9+Owk
	 zJaMyUdZBvBMGOndvrEH08EIROUqy2rX2lTKBzuhElC7zJ3e3QNC8lvLxCPZdcNER9
	 t7omEar+xi5oQs73dVosXK1Nfk1Z2DDc4fiRk5vVE8vKiKYiL+r1PbrlKQLe33ONN7
	 08E9s2+C3u9y4gwgDxtJ1DkwL5AExj7g2BzXURrYrmE1ySXXQOCUCuvwzleUNplZme
	 E8EXYX0YEbD8l0tv8pr8iOV53CXF040DmwXCD8b0Tuvc7+10Yu37fatc7pQIbsocrh
	 mED8OghbNRqjg==
Date: Mon, 19 Jan 2026 11:55:43 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: Seth McDonald <sethmcmail@pm.me>, linux-man@vger.kernel.org
Subject: [PATCH v1 05/19] man/man2/chdir.2: HISTORY: Split chdir(2) and fchdir(2)
Message-ID: <c6961e073ad14367690a789b234474fcaf27c70c.1768822707.git.sethmcmail@pm.me>
In-Reply-To: <cover.1768822707.git.sethmcmail@pm.me>
References: <cover.1768822707.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 37666870392c696af70fc9d1100dd8f84392ff20
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------082210d7e3ff574fb2509d1be6b9064d2d788981f5d314285f281c605b5e7a8c"; charset=utf-8

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------082210d7e3ff574fb2509d1be6b9064d2d788981f5d314285f281c605b5e7a8c
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 05/19] man/man2/chdir.2: HISTORY: Split chdir(2) and fchdir(2)
Date: Mon, 19 Jan 2026 21:51:49 +1000
Message-ID: <c6961e073ad14367690a789b234474fcaf27c70c.1768822707.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1768822707.git.sethmcmail@pm.me>
References: <cover.1768822707.git.sethmcmail@pm.me>
MIME-Version: 1.0

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/chdir.2 | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/man/man2/chdir.2 b/man/man2/chdir.2
index 83702d2af3c4..d8d274d7114b 100644
--- a/man/man2/chdir.2
+++ b/man/man2/chdir.2
@@ -103,7 +103,16 @@ .SH ERRORS
 .SH STANDARDS
 POSIX.1-2024.
 .SH HISTORY
-POSIX.1-2001, SVr4, 4.4BSD.
+.TP
+.BR chdir ()
+SVr4,
+4.4BSD,
+POSIX.1-2001.
+.TP
+.BR fchdir ()
+SVr4,
+4.4BSD,
+POSIX.1-2001.
 .SH NOTES
 The current working directory is the starting point for interpreting
 relative pathnames (those not starting with \[aq]/\[aq]).
--=20
2.47.3


--------082210d7e3ff574fb2509d1be6b9064d2d788981f5d314285f281c605b5e7a8c
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmluG74JkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmdD7NK5ZyPWfNCZqRgWqSb6FiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAP4aAPwIM1THgDR6G2PyIx7WuL1zqXm3SXRyBU+2kknd
2j+PSwEAzBHNXuZNryUvcoMJqcQFEobadE1zLkpuXh4Y7H6bQAc=
=Hqms
-----END PGP SIGNATURE-----


--------082210d7e3ff574fb2509d1be6b9064d2d788981f5d314285f281c605b5e7a8c--


