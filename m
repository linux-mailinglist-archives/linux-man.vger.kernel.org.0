Return-Path: <linux-man+bounces-4942-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AGISHV5fd2n8eQEAu9opvQ
	(envelope-from <linux-man+bounces-4942-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 13:34:38 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C79FB88535
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 13:34:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AE196304CCFE
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 12:29:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0328A334695;
	Mon, 26 Jan 2026 12:29:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="d67pOh0+"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-244122.protonmail.ch (mail-244122.protonmail.ch [109.224.244.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98E92334C09
	for <linux-man@vger.kernel.org>; Mon, 26 Jan 2026 12:29:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=109.224.244.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769430556; cv=none; b=FfqEfb4ZKExBB9YgX6JBJw5OQFFZnasApqJA4iHofC30aZnakbxhs9yDgf8HicztwNE7u1b6jBolLJoh0xKLDyBwE/O92MNOHFbATzApY/u7q5LOL18QVOSJ/vqSVfJFxajPHjphjODhm7/c8jpV4qsqqWlhAOtxF50xHd3OO4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769430556; c=relaxed/simple;
	bh=WVgCt60bphmnNJE9AyiJJf/tLeeqSnPUi40GolapVGk=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=QWcATUHwJKroqgTjVbK9GF11x8dpGNcxYS1e/iAP3gSc1gBiYhzADNYBvh8O303u+Il2HEMREylAKkH6Jgttx4R8KoF2jcPJjjpe3v9bBN2fNUDCHcvk/6+z4QCufZeEW1CX5MjvdgWuWljdfOsOo3q3f9ICJ+vILIb6i4j0u5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=d67pOh0+; arc=none smtp.client-ip=109.224.244.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1769430549; x=1769689749;
	bh=HD1i6aBJwVeVJbCnDg4jKaMTUhhUeN+Qf+9JZUVtoO4=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=d67pOh0+PNwxkjPizC4SsrpS8hGBLbJbrPoHYEcYTvf9yM1pWMDae4eS78i9r8WAT
	 k6jbq1jYkz+13hVRq3GDmJAH07FhvcyFIafpTv2R0HcSt+jy5ylZ10sr2pHM8Bmjka
	 E8pjTah3PF6cSmJm15KTsynizna+xH0qQi2bKiuqQt0SZ3c6mZVyT0Bsd1ob8vuvCa
	 DoC0njHGSV3otiVKCe6OPJwtWPn+17Sun7wIQ/Q/nxf2DvPz++hAdKL80TqxHJYBtL
	 K+TF1eYvnVebXnV784Ag48lIGEKu6DU2RurHsaBz5n+CC0gzorDNp4VRxzrN1sRJdQ
	 6PiMDKy7COZHg==
Date: Mon, 26 Jan 2026 12:28:59 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 06/21] man/man2/lseek.2: HISTORY: Update appearances of SEEK_{DATA,HOLE}
Message-ID: <bcf9f5113f3c88ec1a3fa2bd9ec7a397b603f7c0.1769429341.git.sethmcmail@pm.me>
In-Reply-To: <cover.1769429341.git.sethmcmail@pm.me>
References: <cover.1769429341.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 049e47baefa0f25ac09bf4443585a3cb9d0d96e7
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------a5b1a8e74fb995167141071f9d683093e435b3b4cfbda1827dc8e57bbf8affa6"; charset=utf-8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[pm.me,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[pm.me:s=protonmail3];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-4942-lists,linux-man=lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_ATTACHMENT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sethmcmail@pm.me,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[pm.me:+];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[pm.me:email,pm.me:dkim,pm.me:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oracle.com:url]
X-Rspamd-Queue-Id: C79FB88535
X-Rspamd-Action: no action

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------a5b1a8e74fb995167141071f9d683093e435b3b4cfbda1827dc8e57bbf8affa6
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 06/21] man/man2/lseek.2: HISTORY: Update appearances of SEEK_{DATA,HOLE}
Date: Mon, 26 Jan 2026 22:27:47 +1000
Message-ID: <bcf9f5113f3c88ec1a3fa2bd9ec7a397b603f7c0.1769429341.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1769429341.git.sethmcmail@pm.me>
References: <cover.1769429341.git.sethmcmail@pm.me>
MIME-Version: 1.0

SEEK_DATA and SEEK_HOLE appeared in Solaris no later than 2005-12-12,
when a ZFS developer stated in a blog post that "[a]t this [time of]
writing, SEEK_HOLE and SEEK_DATA are Solaris-specific."[1]  The release
notes for Solaris 10 are dated to 2005-12.[2]  So the constants were
likely added in Solaris 10.

They were added to FreeBSD on 2007-04-05,[3] before being released in
FreeBSD 7.0 - the release notes stating that "[s]upport for Sun's ZFS
has been added" for amd64, i386, and pc98.[4]

They were also added to DragonFly BSD on 2009-04-07,[5] before being
released in DragonFly BSD 2.3.1 (which strangely seems to have no
release notes).[6]

The commit adding the constants to DragonFly BSD states that the commit
contents were obtained from FreeBSD.[5]  So chronologically FreeBSD is
listed before DragonFly BSD.  And the commit adding them to FreeBSD
references their implementation in OpenSolaris.[3]  So chronologically
Solaris is listed before FreeBSD.

POSIX.1-2024 is also moved to the end of the list, since it was released
decades after any system discussed here.

[1] Bonwick, Jeff (12 Dec 2005).  "SEEK_HOLE and SEEK_DATA for sparse
files".  Jeff Bonwick's Weblog.  Archived on 25 Oct 2006.
<https://web.archive.org/web/20061025161241/http://blogs.sun.com/bonwick/en=
try/seek_hole_and_seek_data>
[2] Oracle (Dec 2005).  "Solaris 10 Release Notes".
<https://docs.oracle.com/cd/E19253-01/html/817-0552/index.html>
[3] Dawidek, Pawel Jakub (5 Apr 2007).  "Implement SEEK_DATA and
SEEK_HOLE extensions to lseek(2) as found in".  FreeBSD source tree (Git
repository).
<https://cgit.freebsd.org/src/commit/?id=3Df6521d1c31810b096dd15afff12cf194=
d1989a0a>
[4] The FreeBSD Project (15 May 2021).  "FreeBSD 7.0-RELEASE Release
Notes".  Section 2.2.5 "File Systems".
<https://www.freebsd.org/releases/7.0R/relnotes>
[5] Avalos, Peter (7 Apr 2009).  "Clean up sysconf and associated
headers".  DragonFly Project Source (Git repository).
<https://gitweb.dragonflybsd.org/dragonfly.git/commit/9d66746cf7a1da0544550=
266a1c5cb53e776aa01>
[6] Schubert, Simon (7 May 2009).  "Roll DragonFly 2.3.1".  DragonFly
Project Source (Git repository).
<https://gitweb.dragonflybsd.org/dragonfly.git/commit/33a70342dc4e7f9a4ad7c=
120a827234a33153ca4>

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/lseek.2 | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/man/man2/lseek.2 b/man/man2/lseek.2
index 7d6fe98a3869..d42e39e887db 100644
--- a/man/man2/lseek.2
+++ b/man/man2/lseek.2
@@ -210,8 +210,10 @@ .SH HISTORY
 .B SEEK_DATA
 .TQ
 .B SEEK_HOLE
-POSIX.1-2024;
-Solaris, FreeBSD, DragonFly BSD.
+Solaris 10,
+FreeBSD 7.0,
+DragonFly BSD 2.3.1,
+POSIX.1-2024.
 .SH NOTES
 See
 .BR open (2)
--=20
2.47.3


--------a5b1a8e74fb995167141071f9d683093e435b3b4cfbda1827dc8e57bbf8affa6
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0Fgml3XgoJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmeSDzOlV7xklXQ9NiHBPtpQFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAIUjAP4qixybUu4cLw+N095lSFrHWiVp3jZ7YEWaijRv
h/YmIQD9HFAv08kAZZfMF75An+Qo/Lp3x4mRB4zaxui6cJFpbgI=
=5cq2
-----END PGP SIGNATURE-----


--------a5b1a8e74fb995167141071f9d683093e435b3b4cfbda1827dc8e57bbf8affa6--


