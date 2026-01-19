Return-Path: <linux-man+bounces-4853-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A72FBD3A7B1
	for <lists+linux-man@lfdr.de>; Mon, 19 Jan 2026 13:01:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0CFA2303F7A1
	for <lists+linux-man@lfdr.de>; Mon, 19 Jan 2026 11:58:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E91331D380;
	Mon, 19 Jan 2026 11:58:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="QoRC+m0g"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-10628.protonmail.ch (mail-10628.protonmail.ch [79.135.106.28])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE81D31D726
	for <linux-man@vger.kernel.org>; Mon, 19 Jan 2026 11:58:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=79.135.106.28
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768823928; cv=none; b=XjdI8Cf4Q9aOq3dGnTh0Onod+HeXBmi//9dy1LjmBxfOSOVcIbyDvRdja2vLOw/2L1MZb2RvgRbqBqECePj7IiWwzWeyjFy5m0aKZN2TMESZfH4piGaCezWtCeaje4Vld6r7AFBgCydrDiTmz5dWep2bVUkjAp7Ei5k2pNkr9l4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768823928; c=relaxed/simple;
	bh=eragYpbgBxaMs0gOsWmCsQz3df8xbU+5kvoqV8Uscuc=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=YS4VFCYuMCU+/MYLXhWQRNUs9gdhqma/mcYLIHSX9deU8IzEP8n+sD1RcJ5snn+/BcE9nbaJvim3MmORC4HLYfzBbhcit0Z3rP90068A5bUoq3Ebk73wzc4kcpzPb/Tsx0EbR10PHE7euGqC3V4ESnk/H4imqB2AkmGT+fhkbKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=QoRC+m0g; arc=none smtp.client-ip=79.135.106.28
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1768823918; x=1769083118;
	bh=2HRXcdL/57CST1XYocOjqO7G1uEQNketXueUXGkpapw=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=QoRC+m0gCqI8Xqr9M++LCV5ab7ZV4Wr8cR9/ktVR4sluee+aYuvZqedPalSJWUPr0
	 SdENQjVOUhh3/rh3kI98TjIPPVN0ZWL0hXVMy4dX/Gl2Kx1GmbAsiytFCW44CnnIq9
	 e1uUht1YfsabN+/eoPKrCk+dCH8IVNXlMOQfKhSfUljH5N6sBfYagmK83tPAjKKWIF
	 IIWG0YYSSJbFB3pRysqkjSnBtigePKLDvxlXmdrauYjr49wlE47iDjKdL2NSVcXMQP
	 nUNroBA70OO6h+AuE2JGt8vSZuR1ZinfAHAc8ISibu6YJm9P44Ut9M68ZkUEeq1XUo
	 tb79eZHGuGHTw==
Date: Mon, 19 Jan 2026 11:58:35 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: Seth McDonald <sethmcmail@pm.me>, linux-man@vger.kernel.org
Subject: [PATCH v1 19/19] man/man2/chroot.2: HISTORY: Update first SUS appearance of chroot(2)
Message-ID: <fd08b4cf0a5260ec25eb26cc1a5f0b81d935e0ba.1768822707.git.sethmcmail@pm.me>
In-Reply-To: <cover.1768822707.git.sethmcmail@pm.me>
References: <cover.1768822707.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 88df9c92948cf68ef8d70d25266f8f182bb155c5
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------d5bf066f7fe906ba934186bf32aa99924ea873f79ac646dd97bf845909ab87d0"; charset=utf-8

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------d5bf066f7fe906ba934186bf32aa99924ea873f79ac646dd97bf845909ab87d0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 19/19] man/man2/chroot.2: HISTORY: Update first SUS appearance of chroot(2)
Date: Mon, 19 Jan 2026 21:52:03 +1000
Message-ID: <fd08b4cf0a5260ec25eb26cc1a5f0b81d935e0ba.1768822707.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1768822707.git.sethmcmail@pm.me>
References: <cover.1768822707.git.sethmcmail@pm.me>
MIME-Version: 1.0

chroot(2) first appeared in SUSv1 with the 'TO BE WITHDRAWN' marking.[1]
It was given this marking because "[t]here is no portable use that an
application could make of this interface."

[1] X/Open CAE Specification, System Interfaces and Headers Issue 4,
Version 2, Chapter 3 "System Interfaces", pp. 88-89.

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/chroot.2 | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/man/man2/chroot.2 b/man/man2/chroot.2
index 090a88f0c397..bcb8da39a231 100644
--- a/man/man2/chroot.2
+++ b/man/man2/chroot.2
@@ -135,7 +135,10 @@ .SH ERRORS
 .SH STANDARDS
 None.
 .SH HISTORY
-SVr4, 4.4BSD, SUSv2 (marked LEGACY).
+SVr4,
+4.4BSD,
+SUSv1 (marked TO BE WITHDRAWN),
+SUSv2 (marked LEGACY).
 This function is not part of POSIX.1-2001.
 .\" SVr4 documents additional EINTR, ENOLINK and EMULTIHOP error condition=
s.
 .\" X/OPEN does not document EIO, ENOMEM or EFAULT error conditions.
--=20
2.47.3


--------d5bf066f7fe906ba934186bf32aa99924ea873f79ac646dd97bf845909ab87d0
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmluHGkJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcme1yjUcxYbahcsQftpdzC3xFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAABnuAP9PMoNbM3dk8+9k0kiRRnRuqy49ixEfopR2HTQG
chm/1wD+Nsi1WxIbVUzyUQieyVgUpuhOgueCeBc1NrXrWUc8cAo=
=EOBK
-----END PGP SIGNATURE-----


--------d5bf066f7fe906ba934186bf32aa99924ea873f79ac646dd97bf845909ab87d0--


