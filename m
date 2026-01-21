Return-Path: <linux-man+bounces-4878-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iI53CNbDcGkNZwAAu9opvQ
	(envelope-from <linux-man+bounces-4878-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 13:17:26 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C6893569F2
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 13:17:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 8AB5A98A57B
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 12:08:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7AF13E95A9;
	Wed, 21 Jan 2026 12:07:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="SW3j04q2"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-244123.protonmail.ch (mail-244123.protonmail.ch [109.224.244.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3D80342C8B
	for <linux-man@vger.kernel.org>; Wed, 21 Jan 2026 12:07:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=109.224.244.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768997271; cv=none; b=cRrztF6R7GwMwIQAIWZD97aeRlFfH4Kcd42RvfBW5cPAAWchPodPqjy+QWBcpLY/yfncysvfM/LdKYG9E7A4KGgerjpLEsls1NrGK5XWphGh2JXO6K7kYxiNmb2H5diOfL2qDxE8LNIs/9XVi8Ccap95/G20hhXaZ5zQURir3Ig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768997271; c=relaxed/simple;
	bh=uUCAahAYF8OtrIr0by/55wZw/c0542nGMfSmV9lsmXI=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=NBgJWs/Iwmzgve1CL19kakB9vs52/481xgryd47LhPZTp4XEASI+8fV5LQfSQxh3YNz8yfB0UXn9b1sn7cys3HMxxEcqYEVX0tRljx+b7/ZC4Hix1GRlL7hhjXnBPsEhvwC8NKanPkh+eIhU1rcBYQjaC8AVOUcJ2EUdWFL63RQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=SW3j04q2; arc=none smtp.client-ip=109.224.244.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1768997266; x=1769256466;
	bh=uUCAahAYF8OtrIr0by/55wZw/c0542nGMfSmV9lsmXI=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=SW3j04q2Coh0mNtkKHNIkTidBwDcpRwPKcu3uJMEEBz2gNWpje5p/ZUI5vEyF2Jry
	 msGTd214VqbZmPOaevk8hEEybssEpZa3vJ7siLLVH7Hr/YqKSKb43pnMRSxRR95tUB
	 cQJv8K2RETgayTbifHIgkGaQMZGYKH4gFUJeNvr0F//4ST4lOGoi4JWR/xzQf5wljf
	 V1qrxJnj7tWYhgK9JwWjuX9VLYVvty3yQok0AXOj0ijXbTId4V4ic+ZPYgkBXaBaOn
	 DilnFsGgx9YOJ2jbhaOJIc2LAPWTLXOyPx6OuZ493ge2UnzRBbGq3fRFLc18Gro6dO
	 5NQYksniT/vgQ==
Date: Wed, 21 Jan 2026 12:07:44 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 11/23] man/man2/fsync.2: HISTORY: Update first POSIX appearance of fdatasync(2)
Message-ID: <a968c006c2183ec99bbba32085c23eaff07b12e8.1768995315.git.sethmcmail@pm.me>
In-Reply-To: <cover.1768995315.git.sethmcmail@pm.me>
References: <cover.1768995315.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 54fc651ebe8bafef695d07eaa6bd757aa089710e
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------f50a331cf8264227006c5096ef0524e98881ec65afe6ff34795945a9af501142"; charset=utf-8
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
	TAGGED_FROM(0.00)[bounces-4878-lists,linux-man=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,pm.me:email,pm.me:dkim,pm.me:mid]
X-Rspamd-Queue-Id: C6893569F2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------f50a331cf8264227006c5096ef0524e98881ec65afe6ff34795945a9af501142
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 11/23] man/man2/fsync.2: HISTORY: Update first POSIX appearance of fdatasync(2)
Date: Wed, 21 Jan 2026 22:05:46 +1000
Message-ID: <a968c006c2183ec99bbba32085c23eaff07b12e8.1768995315.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1768995315.git.sethmcmail@pm.me>
References: <cover.1768995315.git.sethmcmail@pm.me>
MIME-Version: 1.0

fdatasync(2) first appeared in POSIX.1-1996.[1]

[1] ISO/IEC 9945-1:1996, Section 6.6.2 "Synchronize the Data of a File".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/fsync.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man2/fsync.2 b/man/man2/fsync.2
index b7787ac17aeb..b81448d33d97 100644
--- a/man/man2/fsync.2
+++ b/man/man2/fsync.2
@@ -159,7 +159,7 @@ .SH HISTORY
 .TP
 .BR fdatasync ()
 4.2BSD,
-POSIX.1-2001.
+POSIX.1-1996.
 .P
 In Linux 2.2 and earlier,
 .BR fdatasync ()
--=20
2.47.3


--------f50a331cf8264227006c5096ef0524e98881ec65afe6ff34795945a9af501142
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmlwwY8JkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmfL3gBH0PabQm2VHVSZIHYFFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAI2AAQDobk2XsIOvtvAYhEnYIGnuqNgrWZuBU8+dgz1x
rEHnjwEA+RxSD+RAl7YgVLmXsaI09mK6mt556wxJx/FOAoKRTQY=
=kJr6
-----END PGP SIGNATURE-----


--------f50a331cf8264227006c5096ef0524e98881ec65afe6ff34795945a9af501142--


