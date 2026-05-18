Return-Path: <linux-man+bounces-5541-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +EUuAmmECmqv2AQAu9opvQ
	(envelope-from <linux-man+bounces-5541-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 18 May 2026 05:15:53 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B5B25655B2
	for <lists+linux-man@lfdr.de>; Mon, 18 May 2026 05:15:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4B051300E395
	for <lists+linux-man@lfdr.de>; Mon, 18 May 2026 03:15:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA12A37AA7D;
	Mon, 18 May 2026 03:15:50 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from layka.disroot.org (layka.disroot.org [178.21.23.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A9AD35E94F
	for <linux-man@vger.kernel.org>; Mon, 18 May 2026 03:15:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.21.23.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779074150; cv=none; b=F2+m/kSPeTYkM8LvqagvxdxvJDXNQTy7yVdhvFMEoQsvdPEvBOVjU37bRdNYIOCmS43bgSrXJQ0Mte8xcV4YauiXsCgqulk8Tkkq548RXZGp5MMfkfQWjlvLpq7a6cc5xx3uY8DXxMb0OxgqjM06qujYj6jqfSpJy8Bo+hHwvqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779074150; c=relaxed/simple;
	bh=7GnJUB9ZdZwFMsMmT6dofqmKqxRAqcgkqG+aQI9LU8M=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=pWMcTPq6MT7A2GyJiYpr+bA8Fya2bWOArvgPoCmJh039gMTVE0sJYaGRDsknVfY4yRZLj5Cl1QiHc6tcoBOUpIH3AlUBF3iCNXw03oaNG6UKT70ORZsdcU5RN6jT3PmSxhLMT09iBqNNkgAoU15iYB/fBKox0RgsyTtHQfDQTrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=proton.me; spf=pass smtp.mailfrom=disroot.org; arc=none smtp.client-ip=178.21.23.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=proton.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=disroot.org
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 81FC726E03;
	Mon, 18 May 2026 05:15:47 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X2QmO9p2NQ3x; Mon, 18 May 2026 05:15:47 +0200 (CEST)
Date: Mon, 18 May 2026 04:15:44 +0100
From: funsafemath <funsafemath@proton.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2 2/2] man/man2/seccomp.2: Document
 SECCOMP_FILTER_FLAG_WAIT_KILLABLE_RECV
Message-ID: <agqEQZ9QenxnEkqv@nix-mail>
X-Developer-Signature: v=1; a=openpgp-sha256; l=953; i=funsafemath@proton.me;
 h=from:subject; bh=xTXiXBkV3EMBYVbsf/Wlb1S3RsbJ+Cxs0L9cIcF11hY=;
 b=owGbwMvMwCV2QvA6L+scLT/G02pJDFlcFWfep13yU9DWe7VxeeK/5xMbdZ0mli3ySnlx6tPDo
 5POTjWd3VHKwiDGxSArpsgisfCOr5Su+mf7z6mqMHNYmUCGMHBxCsBEMtwYGTZNEpvq2adtFrrh
 2pPbGndVF4YkVzIeOvHpBm/WTfmEG5cYGdb+/2NnnfT+kNyjys2iPQsimdVOPzmfyc/NePpb4hL
 mTA4A
X-Developer-Key: i=funsafemath@proton.me; a=openpgp;
 fpr=B07EE98D22F23DFB077429C0DF66F4774CE714D5
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wsk2g7yvwphn3gg2"
Content-Disposition: inline
In-Reply-To: <agjZM97qL3w4JZBX@nix-mail>
X-Rspamd-Queue-Id: 8B5B25655B2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.56 / 15.00];
	SIGNED_PGP(-2.00)[];
	DMARC_POLICY_QUARANTINE(1.50)[proton.me : SPF not aligned (strict), No valid DKIM,quarantine];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5541-lists,linux-man=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[funsafemath@proton.me,linux-man@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[linux-man];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,proton.me:email]
X-Rspamd-Action: no action


--wsk2g7yvwphn3gg2
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [PATCH v2 2/2] man/man2/seccomp.2: Document
 SECCOMP_FILTER_FLAG_WAIT_KILLABLE_RECV
MIME-Version: 1.0

Document the SECCOMP_FILTER_FLAG_WAIT_KILLABLE_RECV flag,
which makes the process ignore non-fatal signals until the supervisor sends=
 a response

Relevant kernel documentation: <Documentation/userspace-api/seccomp_filter.=
rst>

Signed-off-by: funsafemath <funsafemath@proton.me>
---
 man/man2/seccomp.2 | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/man/man2/seccomp.2 b/man/man2/seccomp.2
index a2776aab7..d01a9eeaa 100644
--- a/man/man2/seccomp.2
+++ b/man/man2/seccomp.2
@@ -256,6 +256,14 @@ .SH DESCRIPTION
 .B SECCOMP_FILTER_FLAG_TSYNC
 flags together results in
 .BR EINVAL .
+.TP
+.BR SECCOMP_FILTER_FLAG_WAIT_KILLABLE_RECV " (since Linux 5.19)"
+.\" commit c2aa2dfef243efe213a480a1ee8566507a5152f4
+Ignore non-fatal signals until the supervisor sends a response.
+.IP
+The
+.B SECCOMP_FILTER_FLAG_NEW_LISTENER
+flag must be set.
 .RE
 .TP
 .BR SECCOMP_GET_ACTION_AVAIL " (since Linux 4.14)"
--=20
2.52.0


--wsk2g7yvwphn3gg2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQQYodxNGi0n8z/zZSXIEdcNBZwqTgUCagqEXgAKCRDIEdcNBZwq
ThWmAQCrTZP9XSJ+mCRPimzGQbCmW4jHN45YrBZ46XpPmGlBmwD+PUCQWujc7Cje
XWymUyDIumi2sq90cPSW6oI77G9V/ww=
=GwqF
-----END PGP SIGNATURE-----

--wsk2g7yvwphn3gg2--

