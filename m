Return-Path: <linux-man+bounces-4939-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IGq+JQBed2n8eQEAu9opvQ
	(envelope-from <linux-man+bounces-4939-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 13:28:48 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CC508838F
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 13:28:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9A1F2300611E
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 12:28:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F9C6335060;
	Mon, 26 Jan 2026 12:28:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="YpBfob5d"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-43103.protonmail.ch (mail-43103.protonmail.ch [185.70.43.103])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 651EA335067
	for <linux-man@vger.kernel.org>; Mon, 26 Jan 2026 12:28:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.103
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769430526; cv=none; b=Vxi0WtIYl0wNaU8OS3ISEOV/xkFV+F9Llwn71h8GjOKo8ONFHeVVV2/r24Vc6WmOBv3FJVXv3X3VjH2/laoLxZWNC9vajXbIGjG+sBNAmLlvUzl5RQG92r9J0aRjkY6zRG2DsWxShYd9FlB6T92KPUg+3DTe8T8Rir4XycMxlLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769430526; c=relaxed/simple;
	bh=qbcsaKa8rj/EnmEZl5u5dkfIzYP1bLI6Rd84Jr2kQwk=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=eOBmhXfc9Frq8LXI0DHCpguVmNbCJJ+Cr2F/GA9bH54hWIEaOEC19Jz2N9j1NvwGQRSe/eR73xDT+Dm1QnJziZ2DjZyeKnhvuOB0M1Pcdc0gsIG4vRP1R8peq+fWdd6DlBdEup9bT0KdtY8Hg+9SK/Z4OFcyeAuQzhsbmGfe0dA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=YpBfob5d; arc=none smtp.client-ip=185.70.43.103
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1769430516; x=1769689716;
	bh=5KjTfSm2fpruHxRyUt72N5dkt9mWKsU1/HH25LszKlk=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=YpBfob5d0vHP1zWNA0dQcCWlHzn0TE1EpVDg069sItwD5Y7R6D50xKqgcb8lUqkGT
	 N/pR86QeXM+bXtaEKkfJsRVgAwHSdGaQJ8UEoymObvdWoFxMQwUp7M7Aqt3cROY68A
	 hmS2159B7LBDqZdk5Ko0r0eQelAMCbC2x4UrEUlBbZDs/tdyhGhRSwU0kBZhDrk3sc
	 fmtCnOR3leGkbnOS/AkDzL8ptBMdeFnfWrBbqNHgA1tq3MSGtg1K6iMHxx89Ggw4a0
	 txP6qZogqDQlhVtZpblzS6H4WLUOR7iFMd0NHUqmRVRcAWLUM9DJ6Qe2G5ZZSQIbub
	 i5h5V7wNHL+sg==
Date: Mon, 26 Jan 2026 12:28:35 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 03/21] man/man2/link.2: HISTORY: Change order of linkat(2)
Message-ID: <17eacf0f2d3e4e9ec0faae8dc991d570e443dc5c.1769429341.git.sethmcmail@pm.me>
In-Reply-To: <cover.1769429341.git.sethmcmail@pm.me>
References: <cover.1769429341.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 26e997394a525c90644bb92abb236b098952f26f
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------3079c12f6185f1f24805e445a99b3d0150e46490e1cfdfac108dfa743b8b3f1d"; charset=utf-8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[pm.me,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[pm.me:s=protonmail3];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-4939-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,pm.me:email,pm.me:dkim,pm.me:mid,gnu.org:url,opengroup.org:url]
X-Rspamd-Queue-Id: 3CC508838F
X-Rspamd-Action: no action

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------3079c12f6185f1f24805e445a99b3d0150e46490e1cfdfac108dfa743b8b3f1d
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 03/21] man/man2/link.2: HISTORY: Change order of linkat(2)
Date: Mon, 26 Jan 2026 22:27:44 +1000
Message-ID: <17eacf0f2d3e4e9ec0faae8dc991d570e443dc5c.1769429341.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1769429341.git.sethmcmail@pm.me>
References: <cover.1769429341.git.sethmcmail@pm.me>
MIME-Version: 1.0

glibc 2.4 released on 2006-03-06.[1]  Linux 2.6.16 released on
2006-03-20.[2]  So chronologically list glibc before Linux.

POSIX.1-2008 released in 2008 (shocker!).  However, glibc's addition of
linkat(2) on 2005-12-16 declared the function in posix/unistd.h,[3]
implying it was known (or at least suspected) to have been proposed for
inclusion in POSIX.1-2008.[4]  So chronologically list POSIX before
glibc.

[1] McGrath, Roland (6 Mar 2006).  "GNU C Library version 2.4 release".
info-gnu (Mailing list).
<https://lists.gnu.org/archive/html/info-gnu/2006-03/msg00000.html>
[2] Linux Kernel Distribution System (20 Mar 2006).  "Linux kernel
2.6.16 released".  linux-kernel-announce (Mailing list).
<https://lore.kernel.org/linux-kernel-announce/200603200635.k2K6ZOsn003502@=
hera.kernel.org>
[3] Drepper, Ulrich (16 Dec 2005).  "*
sysdeps/unix/sysv/linux/renameat.c: Move errno setting code in".  GNU C
Library master sources (Git repository).
<https://sourceware.org/git/?p=3Dglibc.git;a=3Dcommit;h=3D5c46041a9c8e0431f=
0b329a94becfc5d576d12cb>
[4] IEEE Std 1003.1-2008, Volume 2, Chapter 3 "System Interfaces", pp.
1216-1220.
<https://pubs.opengroup.org/onlinepubs/9699919799.2008edition/functions/lin=
k.html>

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/link.2 | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/man/man2/link.2 b/man/man2/link.2
index 964f564d7043..dd8bc1bc2826 100644
--- a/man/man2/link.2
+++ b/man/man2/link.2
@@ -392,9 +392,9 @@ .SH HISTORY
 .\" X/OPEN does not document EFAULT, ENOMEM or EIO.
 .TP
 .BR linkat ()
-POSIX.1-2008.
-Linux 2.6.16,
-glibc 2.4.
+POSIX.1-2008,
+glibc 2.4,
+Linux 2.6.16.
 .SH NOTES
 Hard links, as created by
 .BR link (),
--=20
2.47.3


--------3079c12f6185f1f24805e445a99b3d0150e46490e1cfdfac108dfa743b8b3f1d
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0Fgml3XfIJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmfZ/YSUfSOH40D8n0cpelHHFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAOrKAQCt/p5ewyg6Xg7xz7MsG5dqA8S09qLbwghCVAzz
EVTu/gEAzy2cKRuFTlqnWlZQqeUceILC6ogUe1kG/XPNlclaSQI=
=1Nbh
-----END PGP SIGNATURE-----


--------3079c12f6185f1f24805e445a99b3d0150e46490e1cfdfac108dfa743b8b3f1d--


