Return-Path: <linux-man+bounces-4914-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WMhVL42LcWkLJAAAu9opvQ
	(envelope-from <linux-man+bounces-4914-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 03:29:33 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 451DC60EBF
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 03:29:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 905F9885940
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 02:25:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27C8334E771;
	Thu, 22 Jan 2026 02:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="PwBOdo1Y"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-10629.protonmail.ch (mail-10629.protonmail.ch [79.135.106.29])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E0FB83A14
	for <linux-man@vger.kernel.org>; Thu, 22 Jan 2026 02:25:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=79.135.106.29
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769048733; cv=none; b=iB9lXb1/krcqhK95sCzyX1hBw4Fr3hhU8O+9RRag8xv8e2BlxHg4PCA1SCWeI9/KBPeV0XoEJd/tnCijAtFiF5/wlmLgqYPjjrOdBwQKKeWfzYNdKruYwsPQL+spyQhXMk0pT2qSd44K2gH2OtoE0itKM8JxPEClrZnaqPRoo7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769048733; c=relaxed/simple;
	bh=y7Ilkt9HT/zaMbsH4DNAJee9hdnBgs7NB1w+riMiKD0=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=po7X9ym5eU2063Z1hkoRoKNYoWxmC21fl73s6z16NLf2UPYRlSP73HGlKikws9/pl5jzVEd8YxVCTla1PIWGCVwhgHAVVUZJWvHrl25U+UlMt6hL9MFPAfjTtw7V7qkjXC0+mTqUIFF3+ZFOQuiYPO0naEd+aVupNk3SPhRss8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=PwBOdo1Y; arc=none smtp.client-ip=79.135.106.29
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1769048730; x=1769307930;
	bh=y7Ilkt9HT/zaMbsH4DNAJee9hdnBgs7NB1w+riMiKD0=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=PwBOdo1Y+b2MS7LSvqaZSqmXEF8RrBtn16iOFcrFZfvzATMxEMcLdeciRW9U+hKzg
	 2BVlJfdLbFi/HcGn0V4GHWzxiobXmEMXzp9548TiKyh0mj0T9Ajg79frHm5SPg9O3K
	 EbpaXAqCzaPD3D6ZlUVVU4lYTV2dpfa8R7jf9z9HOPcZpfnSuCyByfZ/aJ53nguhx8
	 tWdXE5OZz1df2hUNQ1XCyyfN1uLQkcIOMsF95zKDMlulq6IDKTVDBNpxiMshTyKoPU
	 UodsjFizcWJ88yImuzgoKIcoGH7dp3DxrlX6UWuWZc0RjF07gPgOhnwSnji/sB3QvY
	 eq1FhIHlQl7qw==
Date: Thu, 22 Jan 2026 02:25:25 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2 14/23] man/man2/gethostname.2: HISTORY: Split gethostname(2) and sethostname(2)
Message-ID: <94b81d0f1c2b0d082b5b8510d86ba235c21a3069.1769047228.git.sethmcmail@pm.me>
In-Reply-To: <cover.1769047228.git.sethmcmail@pm.me>
References: <cover.1768995315.git.sethmcmail@pm.me> <cover.1769047228.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: a5905355e772f996f14f498d09cc43224a98d6a8
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------503046613e14b6d30b2e1c7f755017044a999d566a67b29abd45fb31dbdab5c9"; charset=utf-8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.06 / 15.00];
	SIGNED_PGP(-2.00)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[pm.me:s=protonmail3];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-4914-lists,linux-man=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[pm.me,quarantine];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_ATTACHMENT(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sethmcmail@pm.me,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[pm.me:+];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[pm.me:email,pm.me:dkim,pm.me:mid,dfw.mirrors.kernel.org:helo,dfw.mirrors.kernel.org:rdns,opengroup.org:url]
X-Rspamd-Queue-Id: 451DC60EBF
X-Rspamd-Action: no action

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------503046613e14b6d30b2e1c7f755017044a999d566a67b29abd45fb31dbdab5c9
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2 14/23] man/man2/gethostname.2: HISTORY: Split gethostname(2) and sethostname(2)
Date: Thu, 22 Jan 2026 12:24:06 +1000
Message-ID: <94b81d0f1c2b0d082b5b8510d86ba235c21a3069.1769047228.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1769047228.git.sethmcmail@pm.me>
References: <cover.1769047228.git.sethmcmail@pm.me>
MIME-Version: 1.0

gethostname(2) first appeared in POSIX.1-2001.[1]

[1] IEEE Std 1003.1-2001, Volume 2, Chapter 3 "System Interfaces", p.
516.
<https://pubs.opengroup.org/onlinepubs/009604499/functions/gethostname.html=
>

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/gethostname.2 | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/man/man2/gethostname.2 b/man/man2/gethostname.2
index d657bfd7fc0d..b5fbb9b2a012 100644
--- a/man/man2/gethostname.2
+++ b/man/man2/gethostname.2
@@ -145,11 +145,15 @@ .SH STANDARDS
 .BR sethostname ()
 None.
 .SH HISTORY
-SVr4, 4.4BSD (these interfaces first appeared in 4.2BSD).
-POSIX.1 specifies
+.TP
 .BR gethostname ()
-but not
-.BR sethostname ().
+4.2BSD,
+SVr4,
+POSIX.1-2001.
+.TP
+.BR sethostname ()
+4.2BSD,
+SVr4.
 .P
 Versions of glibc before glibc 2.2
 .\" At least glibc 2.0 and glibc 2.1, older versions not checked
--=20
2.47.3


--------503046613e14b6d30b2e1c7f755017044a999d566a67b29abd45fb31dbdab5c9
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmlxipQJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmc9JD59IquRWajdQ1SU0qLBFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAFYcAP0Rv2+PRWjYgwCPVBqT4d/0h0xw46iZJgJKqsBr
bWGbfAEAp5eVpgJ3+dwtmUFhcR2Jy6g4OUw/dCAFUfFzhLlHdQU=
=5O0F
-----END PGP SIGNATURE-----


--------503046613e14b6d30b2e1c7f755017044a999d566a67b29abd45fb31dbdab5c9--


