Return-Path: <linux-man+bounces-5540-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AGDdFz2ECmqv2AQAu9opvQ
	(envelope-from <linux-man+bounces-5540-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 18 May 2026 05:15:09 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DE945655A4
	for <lists+linux-man@lfdr.de>; Mon, 18 May 2026 05:15:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 68FCA3001A59
	for <lists+linux-man@lfdr.de>; Mon, 18 May 2026 03:15:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 988F737E2F5;
	Mon, 18 May 2026 03:15:04 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from layka.disroot.org (layka.disroot.org [178.21.23.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A514337D10F
	for <linux-man@vger.kernel.org>; Mon, 18 May 2026 03:15:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.21.23.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779074104; cv=none; b=YmVSGQwqchgrW0iithaMtABtnm+mANp5HsI583YQH6yJdtXfmD3twLu6boQkXi+rlKxgWAQ1iw8YDPcJz/5b9BbgaMv7E4f51zv5HJOSjXhTvJzDBoMy7lEBs9GocJ8ojSsH5xc70xMCMhXIWtehJRoBkbUpD8/cIyuVnhVOfBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779074104; c=relaxed/simple;
	bh=nUy79T6QrEEKAat+vjbxenIIUfGg9BHhkFryWxRmN0M=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=VuIQzA5ZkpeUQQgGxj+Euv1SaCFPtqO1o2G3wLYstxBzBYCu2MDRGGdkTxIrCnyAe9C1X0EcELNaKPKzblrcqzGZdtoV+O0e7UentinwH/RF4WAG0nSjaKzsC4YTDC7GPeZPiy/esX7iTiquGMHy2KdycxeaMkgf5+a9vQJl6dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=proton.me; spf=pass smtp.mailfrom=disroot.org; arc=none smtp.client-ip=178.21.23.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=proton.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=disroot.org
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 04C3E270FA;
	Mon, 18 May 2026 05:15:01 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NGdj9L9_Ivb6; Mon, 18 May 2026 05:15:00 +0200 (CEST)
Date: Mon, 18 May 2026 04:14:57 +0100
From: funsafemath <funsafemath@proton.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2 1/2] man/man2/seccomp.2: Document
 SECCOMP_FILTER_FLAG_TSYNC_ESRCH
Message-ID: <agqEJhEejusooE5s@nix-mail>
X-Developer-Signature: v=1; a=openpgp-sha256; l=1228;
 i=funsafemath@proton.me; h=from:subject;
 bh=+mnUvsm4vTmHRYIZJggr62Y5raHfCNnYZi0jC3y1jPA=;
 b=owGbwMvMwCV2QvA6L+scLT/G02pJDFlcFSeX9J512/hw6/SjO2fuPP7vs33VCtaLqzUtX22ZF
 8O9a+cfm45SFgYxLgZZMUUWiYV3fKV01T/bf05VhZnDygQyhIGLUwAm8sKI4X+O26mOqy/awoOK
 hFZELe21Zoy2WsykX5n969Heh7KyKrcY/kol3F253yVgyrWZ6drv7SYdCrjVfIknJFz9m96KZA/
 TAzwA
X-Developer-Key: i=funsafemath@proton.me; a=openpgp;
 fpr=B07EE98D22F23DFB077429C0DF66F4774CE714D5
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yuqccnzxtcaaoceo"
Content-Disposition: inline
In-Reply-To: <agjZM97qL3w4JZBX@nix-mail>
X-Rspamd-Queue-Id: 5DE945655A4
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.56 / 15.00];
	SIGNED_PGP(-2.00)[];
	DMARC_POLICY_QUARANTINE(1.50)[proton.me : SPF not aligned (strict), No valid DKIM,quarantine];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5540-lists,linux-man=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[funsafemath@proton.me,linux-man@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.994];
	TAGGED_RCPT(0.00)[linux-man];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,proton.me:email]
X-Rspamd-Action: no action


--yuqccnzxtcaaoceo
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [PATCH v2 1/2] man/man2/seccomp.2: Document
 SECCOMP_FILTER_FLAG_TSYNC_ESRCH
MIME-Version: 1.0

Document SECCOMP_FILTER_FLAG_TSYNC_ESRCH flag, which allows to
use SECCOMP_FILTER_FLAG_TSYNC and SECCOMP_FILTER_FLAG_NEW_LISTENER
flags together by returning ESRCH on synchronization error instead
of the thread ID.

<https://lore.kernel.org/r/20200304180517.23867-1-tycho@tycho.ws>

Signed-off-by: funsafemath <funsafemath@proton.me>
---
 man/man2/seccomp.2 | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/man/man2/seccomp.2 b/man/man2/seccomp.2
index 75c7b2d58..a2776aab7 100644
--- a/man/man2/seccomp.2
+++ b/man/man2/seccomp.2
@@ -241,6 +241,21 @@ .SH DESCRIPTION
 .B SECCOMP_MODE_STRICT
 or if it has attached new seccomp filters to itself,
 diverging from the calling thread's filter tree.
+.TP
+.BR SECCOMP_FILTER_FLAG_TSYNC_ESRCH " (since Linux 5.7)"
+.\" commit 51891498f2da78ee64dfad88fa53c9e85fb50abf
+Fail with
+.B ESRCH
+instead of returning the thread ID on synchronization failure if
+.B SECCOMP_FILTER_FLAG_TSYNC
+was specified.
+.IP
+If this flag is not set, using
+.B SECCOMP_FILTER_FLAG_NEW_LISTENER
+and
+.B SECCOMP_FILTER_FLAG_TSYNC
+flags together results in
+.BR EINVAL .
 .RE
 .TP
 .BR SECCOMP_GET_ACTION_AVAIL " (since Linux 4.14)"
--=20
2.52.0


--yuqccnzxtcaaoceo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQQYodxNGi0n8z/zZSXIEdcNBZwqTgUCagqELwAKCRDIEdcNBZwq
Tl2SAQCC7yK0TMoK+8pGm4hCJXNKay1a6ptwGySPbf863KRPTAEAwJVaT08Bm/Hj
9NK/KcXqdai8jQusD0KglfydRVMggAM=
=1K5Y
-----END PGP SIGNATURE-----

--yuqccnzxtcaaoceo--

