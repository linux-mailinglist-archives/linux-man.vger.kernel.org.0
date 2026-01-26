Return-Path: <linux-man+bounces-4945-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oBrDNgVfd2n8eQEAu9opvQ
	(envelope-from <linux-man+bounces-4945-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 13:33:09 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 62F118849E
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 13:33:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2F738300F1BA
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 12:29:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF1C9334C09;
	Mon, 26 Jan 2026 12:29:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="jJ0XHESc"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-244121.protonmail.ch (mail-244121.protonmail.ch [109.224.244.121])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E50E333729
	for <linux-man@vger.kernel.org>; Mon, 26 Jan 2026 12:29:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=109.224.244.121
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769430577; cv=none; b=JcACKtkf+7ctfvRyD0SAYvzFV2rq5gs2++hNu+NGGj/oAskEAl8TDRZl8m57ybCfONVcE6GNOuQ3UDzIA1Omxt4AI+DcXZ8/T0X4p3FyuZw6XYHsaS84/OK6kV8OGm0nsh5a547bTkMX1POR/l7D/Tn3w9bNDgJFgT5yFuqi1UA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769430577; c=relaxed/simple;
	bh=Kuu4Sr94Vkjqx7f8VWSgPzduzjXDGmIkCw0C44wrRFQ=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=hTpPmTpX10JKOMRRlv/tSKp5P8z1bFbec6yIUprG0lDNM/kmakQCsrp7winLxTAM1h1GkvC16FoC1JoJK/wtVA2z5QKLRUP0RZtOw/qA8aZ0Eh4kz4ELHwhBWIowaarBI74vT9JNd2ldYb7pzgCU6pp4JA7PgrIfrK6xC5yA93M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=jJ0XHESc; arc=none smtp.client-ip=109.224.244.121
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1769430567; x=1769689767;
	bh=6l47zb/k03oNFpD6ezCGZ22orPEG7Fxp45s77SH0d1Q=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=jJ0XHEScj5wIG+UlMmkmiqpQ4gBVS4tkZIpF/QJSR1l7vY4DVZloPOE5zJOzBFygw
	 PoUEo0FchXTET03QFzqQNsJ7NU8+pKScfaP9MVfqqeFjhI9UTuS8ux58hN4XiMJDO6
	 gNxFVoqJoOVVmXL6AZeQ2/STcNftvtXbIAnMFRZSTtZBH9ju21S4shLo/wmgeU4C2e
	 Yc+u3K9HrzBxARSqxaW7ZzuRw5PMfU7GJ4+h0sBRGjmnQa2p1InIN1FgIKu6oenE3K
	 KZumHJRFpo8xfc8Q722dqxWD/nxwJ5U8w4zUsjsFaD4WfhBfM2XhqkPKdaRchPZdGv
	 Ftzam3TcRiG0g==
Date: Mon, 26 Jan 2026 12:29:24 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 09/21] man/man2/mkdir.2: HISTORY: Change order of mkdirat(2)
Message-ID: <8b25a256e60f221d8da2f71706a0af93cf0d5976.1769429341.git.sethmcmail@pm.me>
In-Reply-To: <cover.1769429341.git.sethmcmail@pm.me>
References: <cover.1769429341.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 6214e82b1908d0a9888dc073c47d1e9000db1438
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------697a55294a72c1fd14b9001eaa80b614febfa67f48a4eed038f5a9d83d4fcead"; charset=utf-8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[pm.me,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[pm.me:s=protonmail3];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-4945-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,gnu.org:url,opengroup.org:url,pm.me:email,pm.me:dkim,pm.me:mid,sourceware.org:url]
X-Rspamd-Queue-Id: 62F118849E
X-Rspamd-Action: no action

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------697a55294a72c1fd14b9001eaa80b614febfa67f48a4eed038f5a9d83d4fcead
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 09/21] man/man2/mkdir.2: HISTORY: Change order of mkdirat(2)
Date: Mon, 26 Jan 2026 22:27:50 +1000
Message-ID: <8b25a256e60f221d8da2f71706a0af93cf0d5976.1769429341.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1769429341.git.sethmcmail@pm.me>
References: <cover.1769429341.git.sethmcmail@pm.me>
MIME-Version: 1.0

glibc 2.4 released on 2006-03-06.[1]  Linux 2.6.16 released on
2006-03-20.[2]  So chronologically list glibc before Linux.

POSIX.1-2008 released in 2008, adding mkdirat(2) to the
specification.[3]  glibc added mkdirat(2) on 2005-12-03,[4] and the
mailing list discussion about its addition seems to suggest it was
considered before it was known that POSIX would add it.[5]  So
chronologically list glibc (and Linux) before POSIX.

[1] McGrath, Roland (6 Mar 2006).  "GNU C Library version 2.4 release".
info-gnu (Mailing list).
<https://lists.gnu.org/archive/html/info-gnu/2006-03/msg00000.html>
[2] Linux Kernel Distribution System (20 Mar 2006).  "Linux kernel
2.6.16 released".  linux-kernel-announce (Mailing list).
<https://lore.kernel.org/linux-kernel-announce/200603200635.k2K6ZOsn003502@=
hera.kernel.org>
[3] IEEE Std 1003.1-2008, Volume 2, Chapter 3 "System Interfaces", pp.
1289-1291.
<https://pubs.opengroup.org/onlinepubs/9699919799.2008edition/functions/mkd=
ir.html>
[4] Drepper, Ulrich (3 Dec 2005).  "* io/Makefile (routines): Add
mknodat, xmknodat, mkdirat, mkfifoat."  GNU C Library master sources
(Git repository).
<https://sourceware.org/git/?p=3Dglibc.git;a=3Dcommit;h=3De186c703dc073b8be=
95d0bf893bb8ebb127fe02b>
[5] Meyering, Jim (30 Nov 2005).  "FYI: new openat-like function:
mkdirat".  libc-alpha (Mailing list).
<https://sourceware.org/pipermail/libc-alpha/2005-November/019749.html>

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/mkdir.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man/man2/mkdir.2 b/man/man2/mkdir.2
index ac0d4405ecb8..263dee5c0556 100644
--- a/man/man2/mkdir.2
+++ b/man/man2/mkdir.2
@@ -234,9 +234,9 @@ .SH HISTORY
 .\" SVr4 documents additional EIO, EMULTIHOP
 .TP
 .BR mkdirat ()
-POSIX.1-2008.
+glibc 2.4,
 Linux 2.6.16,
-glibc 2.4.
+POSIX.1-2008.
 .SH NOTES
 There are many infelicities in the protocol underlying NFS.
 Some of these affect
--=20
2.47.3


--------697a55294a72c1fd14b9001eaa80b614febfa67f48a4eed038f5a9d83d4fcead
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0Fgml3XiMJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmeGdlUBrAg9qs5/96V+fI24FiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAGzsAQDJ/NH8OwbqbugUEZgSm7RAklWR8p35h3VhJNto
lUjBnwD/QbkdgQ4ahB0V9vdtJZ5Yc/XyFa4NuBX7blfg92LizQ0=
=5FGs
-----END PGP SIGNATURE-----


--------697a55294a72c1fd14b9001eaa80b614febfa67f48a4eed038f5a9d83d4fcead--


