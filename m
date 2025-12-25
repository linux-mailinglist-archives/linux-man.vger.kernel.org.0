Return-Path: <linux-man+bounces-4537-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BF963CDD6B2
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 08:26:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 46ECF3007FC7
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 07:26:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABBB02F0C48;
	Thu, 25 Dec 2025 07:26:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="YiFW15Hq"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-244121.protonmail.ch (mail-244121.protonmail.ch [109.224.244.121])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2D36260592
	for <linux-man@vger.kernel.org>; Thu, 25 Dec 2025 07:26:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=109.224.244.121
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766647600; cv=none; b=pCupZHUmT3MPRFY/QRGGjrh8w+vzysoGjiKka6QeCLi+37OBn0QGKKQkEIyAGjuHpkOqXQvttN+DNG0jRueyKnc5L6E0EXdFO+X/tDTSdv9pr2/qk6p4SrpFsBFAmo6BIlgpScvwhrJ98WLDv4Hbki9y04rUYk8334NUJ5TRmhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766647600; c=relaxed/simple;
	bh=mNqxVXX5znr+fQvj73QJORP/wnv3BRTLcoDlnVNa/a4=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=gZOVTvmKlQV1V67K6htpw5vcevOgm2YVntrf9mMwIityZrz3HqgwgNoURuwE3w8X60Df4g9XxRiT3P3FN7LYwzsaCLxq5YWCvxvbRrEtt7CPftcVXALInBer50+6P8x+e7vTHK9/vWOZ9y/SrhtTjJAksI5nEy2rsG6kncBU14w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=YiFW15Hq; arc=none smtp.client-ip=109.224.244.121
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1766647589; x=1766906789;
	bh=+OgM+0/bAp1WI6z6jvSLxk7+GfExVEhrapwbWweY7wQ=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=YiFW15Hqf6as+QygILD3HbNQByLO4jx8ctduLq/pis00/Wa36mIDcFKQvEEqWJDmb
	 z28uMHPkHoD2DFlXp0ZieRzobExgMVKD3uZ+zxkOxGKIq+zGlOwhsq6xJ3fZPgz+Iu
	 DXnTTAhOvm1n5eX4PyaY+w2ncHxhoocmRV7hwUyznvZS1eqaZ5X3LshEzfQSBgzNBr
	 HyolCGXfs8J7wRLTmDc9+cxsJQRMoObXHUa0VDDZYS1PI6VX7sU0y21j86u8SpKk/Z
	 Z6fIK5C3Sbn/sMHzyxrRKiB/G2MAKaMsFruqCRxL3Re0D35sDBKPC+4ms7XdnZGTUN
	 9KQkHzJ0I83dA==
Date: Thu, 25 Dec 2025 07:26:25 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: Seth McDonald <sethmcmail@pm.me>, linux-man@vger.kernel.org
Subject: [PATCH v1 1/1] man/man2/semop.2: Rebrand VERSIONS as HISTORY
Message-ID: <86b4c2ec94334aadcc8abc9f17b34b60716d399b.1766641593.git.sethmcmail@pm.me>
In-Reply-To: <cover.1766641592.git.sethmcmail@pm.me>
References: <cover.1766641592.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 81c6f35a6b3e42f95ca46c7cc6c8773c827588a0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------ad70d5e86e934b7a3d48b92174bc37fea0ba0f5ba13bb6cd1b540f871bb17496"; charset=utf-8

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------ad70d5e86e934b7a3d48b92174bc37fea0ba0f5ba13bb6cd1b540f871bb17496
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 1/1] man/man2/semop.2: Rebrand VERSIONS as HISTORY
Date: Thu, 25 Dec 2025 17:24:50 +1000
Message-ID: <86b4c2ec94334aadcc8abc9f17b34b60716d399b.1766641593.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1766641592.git.sethmcmail@pm.me>
References: <cover.1766641592.git.sethmcmail@pm.me>
MIME-Version: 1.0

Rename the VERSIONS section to HISTORY, split semop(2) and semtimedop(2)
in this section, and move the previously listed standards/versions to
the corresponding functions.

The VERSIONS section is really a HISTORY section that seems to have
mixed up semop(2) and semtimedop(2).  The relevant commit (4131356cdab8)
removed some context specifying which standards/versions apply to
semtimedop(2) only, causing this mix-up.  The diff for this commit on
man/man2/semop.2 is given below.

    $ git diff -U1 4131356cdab8^! man2/semop.2
    diff --git a/man2/semop.2 b/man2/semop.2
    index 7a1416a26..fe2906be4 100644
    --- a/man2/semop.2
    +++ b/man2/semop.2
    @@ -357,11 +357,8 @@ .SH ERRORS
     .IR semval .
    -.SH VERSIONS
    -.BR semtimedop ()
    -first appeared in Linux 2.5.52,
    -and was subsequently backported into Linux 2.4.22.
    -glibc support for
    -.BR semtimedop ()
    -first appeared in Linux 2.3.3.
     .SH STANDARDS
    -POSIX.1-2001, POSIX.1
-2008, SVr4.
    +POSIX.1-2008.
    +.SH VERSIONS
    +Linux 2.5.52 (backported into Linux 2.4.22),
    +glibc 2.3.3.
    +POSIX.1-2001, SVr4.
     .\" SVr4 documents additional error conditions EINVAL, EFBIG, ENOSPC.

The removed information is restored on account of the semop(2) and
semtimedop(2) functions being described separately under HISTORY,
removing the mix-up.

Fixes: 4131356cdab8 (2023-03-17; "man*/, man-pages.7: VERSIONS, STANDARDS, HISTORY: Reorganize sections")
Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/semop.2 | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/man/man2/semop.2 b/man/man2/semop.2
index 1e8213cbc..1b45e8e35 100644
--- a/man/man2/semop.2
+++ b/man/man2/semop.2
@@ -349,10 +349,16 @@ .SH ERRORS
 .IR semval .
 .SH STANDARDS
 POSIX.1-2024.
-.SH VERSIONS
+.SH HISTORY
+.TP
+.BR semop ()
+SVr4,
+POSIX.1-2001.
+.TP
+.BR semtimedop ()
+SVr4,
 Linux 2.5.52 (backported into Linux 2.4.22)
,
 glibc 2.3.3.
-POSIX.1-2001, SVr4.
 .\" SVr4 documents additional error conditions EINVAL, EFBIG, ENOSPC.
 .SH NOTES
 The
-- 
2.47.3


--------ad70d5e86e934b7a3d48b92174bc37fea0ba0f5ba13bb6cd1b540f871bb17496
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmlM5yEJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmeAkiMZ7i2PpzxaJZyn5D2VFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAGY3AQCm9Gd6tcishXtC+fVt6J2r0FBfBk4LuVqVHnfP
ue1XLQD9EhTt3LULJ6UcluUdqOrCE6miOmCQ8tzEvx8Ra5byxAg=
=2VTx
-----END PGP SIGNATURE-----


--------ad70d5e86e934b7a3d48b92174bc37fea0ba0f5ba13bb6cd1b540f871bb17496--


