Return-Path: <linux-man+bounces-4952-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cE0wNVJed2n8eQEAu9opvQ
	(envelope-from <linux-man+bounces-4952-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 13:30:10 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 585D8883F9
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 13:30:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BFEE93006800
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 12:30:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DA303358C0;
	Mon, 26 Jan 2026 12:30:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="aYYoGMul"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-244121.protonmail.ch (mail-244121.protonmail.ch [109.224.244.121])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A6E5333729
	for <linux-man@vger.kernel.org>; Mon, 26 Jan 2026 12:30:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=109.224.244.121
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769430608; cv=none; b=cXW8g2/c8NHWDRcNNR7T/udnPfNTa030D0VMp0gazDugnHvpECapWp5Apy6bNiMHGHQ8nBAJH4lKYSm2WZ5kSDijtLPMA/aoB2vIP4jHEhNoVrWhsbJiEPnnFSKbOKKd2GzoSo/AeHWe+ayKpjMNhcUTUVbzX/VoHhhs6WUgpiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769430608; c=relaxed/simple;
	bh=NRjm3abQiJA6sBoyRRRpQna9gDfxqJxh8UkpIL0dB80=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ZbAq06qpGoBtnOTMgh7gxH1CjN3l8o8D4NLVAIFQkZbpWhYBK4puWEjyb5JE8EIyhBZ1smTXbirrRgsnC754eMEfTcPFZ+f43ooyDefnWPWA888opBIQC+dQz1pSKhDKQ+dU/ChOq+3wJJ0LDArtPB0Nuc5diXwVXK6daCPuSHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=aYYoGMul; arc=none smtp.client-ip=109.224.244.121
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1769430606; x=1769689806;
	bh=MLGy8g5otrOtr5sSjYGZgETIVZeszMX9NiPQpzxbNFc=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=aYYoGMulT/wnObU7YV6784Nk/FUWNzZz5iE4HvFrlEE3NTrKMdVGpiNq5YHEofHnT
	 pz/Q04azp1L6PQ6F2JC73PAT7BG7VomPbuZekIgh6wAeVQISdzILJ77xQ3o8+JB7YA
	 4dTz9SfC3JmGu+zLRF1CaqDWVuELzSPQwcRqC6oXNkrQUhdRWMcGyf5RrGuFl3Fyb6
	 voITRLTrBwMNcdI07CaAF5kVC7Yy/XphwTCRWT7g/2oa01lgpvdwJ6CKpxfneJgUTP
	 mn+O7q2PUcVnPTpBBQNO8jGDjQMqgG/K20AwUYy801c+GKR4p6ruTltkFEs03TkHpl
	 qdjJsD4w6fwAg==
Date: Mon, 26 Jan 2026 12:30:01 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 16/21] man/man2/{mount_setattr,move_mount}.2: HISTORY: ffix
Message-ID: <b8f4e6fa54e7ebb38fb933438982347aa101b1bb.1769429341.git.sethmcmail@pm.me>
In-Reply-To: <cover.1769429341.git.sethmcmail@pm.me>
References: <cover.1769429341.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: af40d6fc2e33e831ec380181fc7a2bca45d60c54
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------0075c90bfb46200d1ee0f60ac6fd4ef29b295dcf680f84ee7e453f3cbb0e84fa"; charset=utf-8
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
	TAGGED_FROM(0.00)[bounces-4952-lists,linux-man=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,pm.me:email,pm.me:dkim,pm.me:mid]
X-Rspamd-Queue-Id: 585D8883F9
X-Rspamd-Action: no action

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------0075c90bfb46200d1ee0f60ac6fd4ef29b295dcf680f84ee7e453f3cbb0e84fa
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 16/21] man/man2/{mount_setattr,move_mount}.2: HISTORY: ffix
Date: Mon, 26 Jan 2026 22:27:57 +1000
Message-ID: <b8f4e6fa54e7ebb38fb933438982347aa101b1bb.1769429341.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1769429341.git.sethmcmail@pm.me>
References: <cover.1769429341.git.sethmcmail@pm.me>
MIME-Version: 1.0

Commas are more consistent with other man pages.

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/mount_setattr.2 | 2 +-
 man/man2/move_mount.2    | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/man/man2/mount_setattr.2 b/man/man2/mount_setattr.2
index e02c84f43214..882ec031f504 100644
--- a/man/man2/mount_setattr.2
+++ b/man/man2/mount_setattr.2
@@ -572,7 +572,7 @@ .SH ERRORS
 .SH STANDARDS
 Linux.
 .SH HISTORY
-Linux 5.12.
+Linux 5.12,
 .\" commit 7d6beb71da3cc033649d641e1e608713b8220290
 .\" commit 2a1867219c7b27f928e2545782b86daaf9ad50bd
 .\" commit 9caccd41541a6f7d6279928d9f971f6642c361af
diff --git a/man/man2/move_mount.2 b/man/man2/move_mount.2
index 335f4ef548fd..b95191d5ba83 100644
--- a/man/man2/move_mount.2
+++ b/man/man2/move_mount.2
@@ -517,7 +517,7 @@ .SH ERRORS
 .SH STANDARDS
 Linux.
 .SH HISTORY
-Linux 5.2.
+Linux 5.2,
 .\" commit 2db154b3ea8e14b04fee23e3fdfd5e9d17fbc6ae
 .\" commit 400913252d09f9cfb8cce33daee43167921fc343
 glibc 2.36.
--=20
2.47.3


--------0075c90bfb46200d1ee0f60ac6fd4ef29b295dcf680f84ee7e453f3cbb0e84fa
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0Fgml3XkgJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmdIPYcThOCPrf6YSv9d7lAeFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAOBHAQCUIYN2ENo5bkTv4DyzB48zTmKlAfthfu7Es1YC
MRUqrAD9G9h3YmVBQ6SEFBoHZ5R88PyrGRH+tLIV8tj1rM3vGAY=
=jFAf
-----END PGP SIGNATURE-----


--------0075c90bfb46200d1ee0f60ac6fd4ef29b295dcf680f84ee7e453f3cbb0e84fa--


