Return-Path: <linux-man+bounces-4901-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2E9JAl+LcWkLJAAAu9opvQ
	(envelope-from <linux-man+bounces-4901-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 03:28:47 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EB8A60E57
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 03:28:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 04767388BD7
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 02:25:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F41135580E;
	Thu, 22 Jan 2026 02:24:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="lxBxJL7d"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-4316.protonmail.ch (mail-4316.protonmail.ch [185.70.43.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9A1B2F0C46
	for <linux-man@vger.kernel.org>; Thu, 22 Jan 2026 02:24:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.16
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769048681; cv=none; b=OrkU4v6Rkh+sE5/MIqUYUbEcFufWD1xwUPvdFlsDkCK9yLEAoAX/FOnJ4F5NiERWiOA3rKKJ2JkTgStjicjxf/XjRxYObGadcinAZaWoDUrAJGuPPYekd3hDYvnNBKRLkx0IbivNFcP5F9t8xSN4Jas2y5c2l2TuU4UUF31OkAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769048681; c=relaxed/simple;
	bh=RlKKFFbpFGNNlGoIyLZPmH8CB6jxruu3yI5LOkbA0uQ=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=B9g0qTAS9xTI1sGX4bmdmF7Y60VOnARlOcmHN878ESjV/Ujq910o4MLBJu0LYVck7VLhbf2iDShhDvZBLPsKk8YBUpPQH3a9ij7dz4JFX4HctMwEP9SjW9ejIKLcDLaWXl+tWhaX+tTvdV6vABEa/YvW7Z5Nv+C1kHGFIzH5XCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=lxBxJL7d; arc=none smtp.client-ip=185.70.43.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1769048669; x=1769307869;
	bh=oVUc89HGkBfaOjpT8UabAP8h15G5abtb3VO6x259h5E=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=lxBxJL7dCEMzjA8LOVl5iiAr2UHvyUgnl9FmIur4woNpGo2NTr6cqa0ueb38uL9mc
	 UysEvD47Z9vmNzDeqYMtlNONBxagAGEVUXO9xLnrtAOHuNhtkzaHaFpD6gCjWPV2Pw
	 8z5r0ITM6G0cHKUI5vwu0bRHB/M/v3+U5cwHUvrp14g/Rg3HyPG4KbW6IVExIJ1Y9y
	 6n+04Vf9iZTb0loExdqtdAxdjJEd4aWKMGgx7LZ7CfjxIacMTGFqe1PX4qShh7SgaT
	 i17Ur+XZu5bLu8zvL2QYcmGrdJ/r4FkHd3NtTG/nc/jA9Cfftglsj1UqLXOx+/TDgm
	 S8pkwfj8uk+Rw==
Date: Thu, 22 Jan 2026 02:24:28 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2 01/23] man/man2/clock_getres.2: HISTORY: Update first POSIX appearance of clock_* syscalls
Message-ID: <1a421b5ee130c1d5892791060b6fdf8d911d8362.1769047228.git.sethmcmail@pm.me>
In-Reply-To: <cover.1769047228.git.sethmcmail@pm.me>
References: <cover.1768995315.git.sethmcmail@pm.me> <cover.1769047228.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 3820acfc1aab54d2dd9e623e63815cbfbbe12808
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------ebe4ca4b727b277acd37e796ea66c8188926acf81a95783987ee6eb2812f0061"; charset=utf-8
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
	TAGGED_FROM(0.00)[bounces-4901-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:helo,ams.mirrors.kernel.org:rdns,pm.me:email,pm.me:dkim,pm.me:mid]
X-Rspamd-Queue-Id: 9EB8A60E57
X-Rspamd-Action: no action

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------ebe4ca4b727b277acd37e796ea66c8188926acf81a95783987ee6eb2812f0061
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2 01/23] man/man2/clock_getres.2: HISTORY: Update first POSIX appearance of clock_* syscalls
Date: Thu, 22 Jan 2026 12:23:53 +1000
Message-ID: <1a421b5ee130c1d5892791060b6fdf8d911d8362.1769047228.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1769047228.git.sethmcmail@pm.me>
References: <cover.1769047228.git.sethmcmail@pm.me>
MIME-Version: 1.0

clock_getres(2), clock_gettime(2), and clock_settime(2) first appeared
in POSIX.1-1996.[1]  SUSv2 incorporates POSIX.1-1996, so listing both is
redundant.

[1] ISO/IEC 9945-1:1996, Section 14.2.1 "Clocks".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/clock_getres.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man2/clock_getres.2 b/man/man2/clock_getres.2
index 5f8ed14f1555..1a486c886229 100644
--- a/man/man2/clock_getres.2
+++ b/man/man2/clock_getres.2
@@ -369,7 +369,7 @@ .SS C library/kernel differences
 .SH STANDARDS
 POSIX.1-2024.
 .SH HISTORY
-POSIX.1-2001, SUSv2.
+POSIX.1-1996,
 Linux 2.6.
 .P
 On POSIX systems on which these functions are available, the symbol
--=20
2.47.3


--------ebe4ca4b727b277acd37e796ea66c8188926acf81a95783987ee6eb2812f0061
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmlxilsJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcme4HtDgc9kNMUzQizgo9QC3FiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAANRtAP0V40LxGybvLhNgWoyAhdFlqKbv9PDeflXtfEGl
RrL5OwEAkg5FaIhVbozN+GrXjuOwB8TgiS3oirl0o+jIUruvAQw=
=7E5O
-----END PGP SIGNATURE-----


--------ebe4ca4b727b277acd37e796ea66c8188926acf81a95783987ee6eb2812f0061--


