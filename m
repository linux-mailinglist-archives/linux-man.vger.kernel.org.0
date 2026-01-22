Return-Path: <linux-man+bounces-4902-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OAwgLU6LcWkLJAAAu9opvQ
	(envelope-from <linux-man+bounces-4902-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 03:28:30 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FE4B60E48
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 03:28:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id BDC338688C7
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 02:25:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7153422A7E4;
	Thu, 22 Jan 2026 02:24:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="Q2ZZWLwt"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-106120.protonmail.ch (mail-106120.protonmail.ch [79.135.106.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA0DD350D63
	for <linux-man@vger.kernel.org>; Thu, 22 Jan 2026 02:24:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=79.135.106.120
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769048685; cv=none; b=fyCT7mBkYCpRm4yNVnpSfRD1bAPuiUqs8B1mkFWnsLY2AUZlEFzUX/EbrTkNSNQ1VwcmXPcwYlZa5E4MMGGjYxdlPqJ3kuScqRT3v8i8th2QlUn6h9DPVXqXT20bclO6pgtJIgb/OhKXkzWQ4EnPlc0zervTk72aPsxhX+mlE7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769048685; c=relaxed/simple;
	bh=qvnMXY7NNGfG7hoq9rPjy7bqmVnjRhLYwEW1kM5y7Xw=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=A7D3GWf8HOyo1OV2ObdgkPLWShK5vhGlAAAt7o0GILu2QQ3vv2qdOwHUCJAn1WKkF2SA2YLoMWpDC30ZBHGRp+Pf1FKajIOHGXm2vP9ususjoE1TNEB9eC1TJALOcSTmqQOIQRlnRhoWUDzSwxAt2oFXJC6Ln6gCF/D6vDxhLDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=Q2ZZWLwt; arc=none smtp.client-ip=79.135.106.120
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1769048676; x=1769307876;
	bh=qvnMXY7NNGfG7hoq9rPjy7bqmVnjRhLYwEW1kM5y7Xw=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=Q2ZZWLwtALXpn7xwYio7aytSlcLnJVvegZEbNFEIppyTNT4DIILaO4qTMdonIv/A6
	 WRZY1dfeJXgsD7VDU5PPqgmyAruCT2HtcUC07jOkgFn4WYWMuMXiOBEVjRd9/Cc3uC
	 B8OErBMcgmNfFtZKqqw2rQ3GvEalq62SpqozhjOHzxO2CIG058iEDEWcE3PrNeN/+h
	 Z7Y5Sh//6sXe1nEppbrLpnBSywnMN5MkhPJSClBsk35OAB4rR2w103Z1jUgyY4yLj7
	 vWHalO5TTYvnn79Mh3CP72wxoRXcGbMqJnGb5OKrtCVwYp+wfxaQa4dKN9rYzdIugV
	 GdEkeMLYNzMJA==
Date: Thu, 22 Jan 2026 02:24:32 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2 02/23] man/man2/close.2: HISTORY: Update first POSIX appearance of close(2)
Message-ID: <5327747ac3c39457d3cf527ff19afa1c49150d89.1769047228.git.sethmcmail@pm.me>
In-Reply-To: <cover.1769047228.git.sethmcmail@pm.me>
References: <cover.1768995315.git.sethmcmail@pm.me> <cover.1769047228.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 7653a47e1bc2c3351a8af03171e1272ab16dcd20
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------8cc56419396e782d51bd534747edcfe9c3b538ee3817bd878b64f2ebdca3c6dd"; charset=utf-8
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
	TAGGED_FROM(0.00)[bounces-4902-lists,linux-man=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:helo,dfw.mirrors.kernel.org:rdns]
X-Rspamd-Queue-Id: 4FE4B60E48
X-Rspamd-Action: no action

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------8cc56419396e782d51bd534747edcfe9c3b538ee3817bd878b64f2ebdca3c6dd
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2 02/23] man/man2/close.2: HISTORY: Update first POSIX appearance of close(2)
Date: Thu, 22 Jan 2026 12:23:54 +1000
Message-ID: <5327747ac3c39457d3cf527ff19afa1c49150d89.1769047228.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1769047228.git.sethmcmail@pm.me>
References: <cover.1769047228.git.sethmcmail@pm.me>
MIME-Version: 1.0

close(2) first appeared in POSIX.1-1988.[1]

[1] IEEE Std 1003.1-1988, Section 6.3.1 "Close a File".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/close.2 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man/man2/close.2 b/man/man2/close.2
index 56a3caaafd41..60f1f5fb1a92 100644
--- a/man/man2/close.2
+++ b/man/man2/close.2
@@ -81,7 +81,9 @@ .SH ERRORS
 .SH STANDARDS
 POSIX.1-2008.
 .SH HISTORY
-POSIX.1-2001, SVr4, 4.3BSD.
+4.3BSD,
+SVr4,
+POSIX.1-1988.
 .\" SVr4 documents an additional ENOLINK error condition.
 .SH NOTES
 The close-on-exec file descriptor flag can be used to ensure
--=20
2.47.3


--------8cc56419396e782d51bd534747edcfe9c3b538ee3817bd878b64f2ebdca3c6dd
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0Fgmlxil8JkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmdwxeV0DrBQaMsnUoyOWV5GFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAJmDAP9Pya7VHdiiFgZFmcIgOugS5im2wLt4wnxY1y07
wQi+ZQEAscdEq5VpzrNgC9l1UM0xfRD3M/vNTTZ9VsgB2dKHdwU=
=g1/i
-----END PGP SIGNATURE-----


--------8cc56419396e782d51bd534747edcfe9c3b538ee3817bd878b64f2ebdca3c6dd--


