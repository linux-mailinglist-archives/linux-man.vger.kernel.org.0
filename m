Return-Path: <linux-man+bounces-4965-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GKMmN+eDeGmqqgEAu9opvQ
	(envelope-from <linux-man+bounces-4965-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 27 Jan 2026 10:22:47 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 791D691A3C
	for <lists+linux-man@lfdr.de>; Tue, 27 Jan 2026 10:22:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 09768303BB19
	for <lists+linux-man@lfdr.de>; Tue, 27 Jan 2026 09:20:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 494632D8DDF;
	Tue, 27 Jan 2026 09:20:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="hXBn0MYl"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-24417.protonmail.ch (mail-24417.protonmail.ch [109.224.244.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B107A26CE39
	for <linux-man@vger.kernel.org>; Tue, 27 Jan 2026 09:20:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=109.224.244.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769505644; cv=none; b=af0Yr4tGDWwAdIc5fBjnaYJ0V2tFcFQybMG9Gq4enHxLDWbcwzCtR/XN5fPEp3gDjsS49VEipaLhlcYp1n9lly9z/qi1Wg4QeVzOAR0VH+bVxhGdjZPVvy9140zXafzyTilxzrTv47cE4XrzkTBKBCKo1gm37BCBY03q9YaWajg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769505644; c=relaxed/simple;
	bh=8IdwLQuZmwdE+h1C8jOj9+dQT1Hhx+QV6hLgGgkPEvc=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=JnxHnEI0OD3Zc8kX/4OOGHMVDRfsZKrXiM73ZWWHSdbVrHpChpQ4q7uaoBhShQfK9PfJ0HDifuW1yH5iHdXqpLu9BdiWPHeJaT4iLaGsQe18QDcyxGBtD7wg6Cp7FbnwB1uq6CYjXqscKpJOIuZpoXr9DC/k0fAO11oH7i3SPro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=hXBn0MYl; arc=none smtp.client-ip=109.224.244.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1769505640; x=1769764840;
	bh=R2Sw1aRejOLquQxbzOrkrTLWMDskL0iEq7AI4o8twx8=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=hXBn0MYlrkWpo7Kmj4HcXCxQI22ErHCdxK1BItAGPBnronaSA+57wcmx8OcNLgADc
	 /WRCrj4TQaLj+YizzY5ivxsFCHJeEeouqAiQGVej7PkaOkF0cdSRUr5wEBI1l5eTQf
	 gWnvfBUiIQ1uN/26FeRZcEmah+ivwmAeDFhgIZFFfmxKk4FQcJW73OLsBoEVTP7l9A
	 1pJsXFT6TYpLjD8Ah7YHw8jhAIs1qca2poM8beMN4lSTBD7i/4Y16Ul5nazuSBP+E8
	 gLAZufQCbVTat4jwCFfvkqQkBlo9s2Gv+k7ii1XmBphACXOxJ9+cQMXVW8FnRCdpFQ
	 TZMxpBiCx7yOA==
Date: Tue, 27 Jan 2026 09:20:36 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [RFC PATCH v1 2/2] man/man1/sman.1: Add man page
Message-ID: <e1849d315c9596e4be4f7a76fec60e3d4e46b370.1769497513.git.sethmcmail@pm.me>
In-Reply-To: <cover.1769497513.git.sethmcmail@pm.me>
References: <cover.1769497513.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 78e51dd0428d0c6f4b6082a6a22c9aad2d065225
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------d5aabcac7d9114cd7aa3fa428653df8be0c79222995369d937e3f538299305c5"; charset=utf-8
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
	TAGGED_FROM(0.00)[bounces-4965-lists,linux-man=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,pm.me:email,pm.me:dkim,pm.me:mid]
X-Rspamd-Queue-Id: 791D691A3C
X-Rspamd-Action: no action

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------d5aabcac7d9114cd7aa3fa428653df8be0c79222995369d937e3f538299305c5
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [RFC PATCH v1 2/2] man/man1/sman.1: Add man page
Date: Tue, 27 Jan 2026 19:20:18 +1000
Message-ID: <e1849d315c9596e4be4f7a76fec60e3d4e46b370.1769497513.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1769497513.git.sethmcmail@pm.me>
References: <cover.1769497513.git.sethmcmail@pm.me>
MIME-Version: 1.0

Add a man page for the sman(1) script.

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man1/sman.1 | 69 +++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 69 insertions(+)
 create mode 100644 man/man1/sman.1

diff --git a/man/man1/sman.1 b/man/man1/sman.1
new file mode 100644
index 000000000000..cd167c735615
--- /dev/null
+++ b/man/man1/sman.1
@@ -0,0 +1,69 @@
+.\" Copyright, the authors of the Linux man-pages project
+.\"
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
+.\"
+.TH sman 1 (date) "Linux man-pages (unreleased)"
+.SH NAME
+sman
+\-
+print select sections of manual pages
+.SH SYNOPSIS
+.SY sman
+.RI [ man-section ]
+.I man-page
+.IR page-section \~.\|.\|.
+.YS
+.SH DESCRIPTION
+The
+.B sman
+command prints the rendered
+.IR page-section s
+of
+.IR man-page ,
+in the order given.
+.I page-section
+is case insensitive.
+.P
+If any
+.I page-section
+is not present in the man page,
+it is silently ignored.
+If
+.I man-section
+is specified,
+and
+.I man-page
+is not a local file,
+only the given section number is considered
+when searching for the man page.
+.SH ENVIRONMENT
+See
+.BR man (1).
+.SH EXAMPLES
+.EX
+.RB $\~ "MAN_KEEP_FORMATTING=3D1 sman 2 nice synopsis standards" ;
+.B SYNOPSIS
+.RS 7
+.B #include <unistd.h>
+.P
+.BI "int nice(int " inc );
+.P
+.RS -4
+Feature Test Macro Requirements for glibc (see
+.BR feature_test_macros (7)):
+.RE
+.P
+.BR nice ():
+    _XOPEN_SOURCE
+        || /* Since glibc 2.19: */ _DEFAULT_SOURCE
+        || /* glibc <=3D 2.19: */ _BSD_SOURCE || _SVID_SOURCE
+.RE
+.P
+.B STANDARDS
+.RS 7
+POSIX.1-2024 XSI.
+.RE
+.EE
+.SH SEE ALSO
+.BR man (1),
+.BR mansect (1)
--=20
2.47.3


--------d5aabcac7d9114cd7aa3fa428653df8be0c79222995369d937e3f538299305c5
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0Fgml4g2QJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmfNiiOXXCYHk6NkN7YrOY12FiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAAOvAQCORmc9V1TwOAz2KlSiP9EalbNYRcTTyzb345XZ
Yj240gEAnwQB266/Lf/DyC6TKtsPJC2/3kl+O2fY2phxKXeL7AI=
=YqAe
-----END PGP SIGNATURE-----


--------d5aabcac7d9114cd7aa3fa428653df8be0c79222995369d937e3f538299305c5--


