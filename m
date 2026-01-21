Return-Path: <linux-man+bounces-4879-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GKcILjrCcGnzZgAAu9opvQ
	(envelope-from <linux-man+bounces-4879-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 13:10:34 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 64BED568C5
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 13:10:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 6B8BA56B9C3
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 12:08:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 671703DA7F3;
	Wed, 21 Jan 2026 12:07:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="ZwSXX/Sr"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-43103.protonmail.ch (mail-43103.protonmail.ch [185.70.43.103])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BBCB3D668A
	for <linux-man@vger.kernel.org>; Wed, 21 Jan 2026 12:07:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.103
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768997277; cv=none; b=NLR0IvH4+w3n9LvJnucpAR3XxYOfik5e8uvdLGxuf/LxA0jsiGeNVWCv8IFpgnVuT5Ovksz0uFXBBey3LDwG6jlw06ThdAH/W0UcyOge9OkRHgA81nD6GicfRpc6VFmFOFJYK6hsFALb+GX8vEs58+PROSaak/2mlpOxSRBzA3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768997277; c=relaxed/simple;
	bh=wmyc08tHmkHcE0QdyTevKZlGOesiOhu/ci/xoqMk8yI=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=R0hbMx2iA67o3bEwsp8belwvhQ9DT732KBRgc5m0UyTvQhf4asXQXBc6ZYezqkkALRUwi8rgk66wF6X5a0D2aM+sHGYlXRPa/SlyfEa8L9NQzNAYXF5TVKM8fTKQVs84RYDP0Cga9Cp6j32OSIjWsvlq+LZkAZ6p13f/dqjXHM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=ZwSXX/Sr; arc=none smtp.client-ip=185.70.43.103
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1768997273; x=1769256473;
	bh=wmyc08tHmkHcE0QdyTevKZlGOesiOhu/ci/xoqMk8yI=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=ZwSXX/SrZAswh3jvc/6acXOqmPh0MyscjB7gphqUaeA9WJY97vvm1taKyyAV8o5uP
	 ol2HHgwAqx31aWWoU3woOYedLxoamd3gUpWpxc8TERcBKRm0iKHl60nCYnrLK5cD0l
	 eHL+LwzdS1tNlZzdM0syBWUyxdgcRyAewvXkICIsLSgJ3gr0Sb8jjalt/LLUeiAJ6z
	 ahPnszj5LTn5cHXDqe3ICKQADvKqC0oMr0YJSXGM9nDV1c8JFj4biMGqnDYvsAzMvh
	 FRm0Eg6nwr2SS2zSWiEemJJVj4vnS+hbrVZ4QSZWdkoa4r4nXV8cx7VdMZoifoi0Gz
	 u8UlGFiLsfdaQ==
Date: Wed, 21 Jan 2026 12:07:49 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 12/23] man/man2/get[gu]id.2: HISTORY: Update first POSIX appearance of get[e][gu]id(2)
Message-ID: <566fd21d97b0772037ec34a4715da60355524902.1768995315.git.sethmcmail@pm.me>
In-Reply-To: <cover.1768995315.git.sethmcmail@pm.me>
References: <cover.1768995315.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: a2432dfe625d1d36c92722fef520abe564f79d1d
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------931ca67023661078604efdc21091fee91fac5096679be46328bb747050bb58b0"; charset=utf-8
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
	TAGGED_FROM(0.00)[bounces-4879-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[pm.me:email,pm.me:dkim,pm.me:mid,ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: 64BED568C5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------931ca67023661078604efdc21091fee91fac5096679be46328bb747050bb58b0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1 12/23] man/man2/get[gu]id.2: HISTORY: Update first POSIX appearance of get[e][gu]id(2)
Date: Wed, 21 Jan 2026 22:05:47 +1000
Message-ID: <566fd21d97b0772037ec34a4715da60355524902.1768995315.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1768995315.git.sethmcmail@pm.me>
References: <cover.1768995315.git.sethmcmail@pm.me>
MIME-Version: 1.0

getgid(2), getegid(2), getuid(2), and geteuid(2) first appeared in
POSIX.1-1988.[1]

[1] IEEE Std 1003.1-1988, Section 4.2.1 "Get Real User, Effective User,
Real Group, and Effective Group IDs".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/getgid.2 | 3 ++-
 man/man2/getuid.2 | 3 ++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/man/man2/getgid.2 b/man/man2/getgid.2
index e56523ada75b..5929903da2be 100644
--- a/man/man2/getgid.2
+++ b/man/man2/getgid.2
@@ -46,7 +46,8 @@ .SH VERSIONS
 .SH STANDARDS
 POSIX.1-2024.
 .SH HISTORY
-POSIX.1-2001, 4.3BSD.
+4.3BSD,
+POSIX.1-1988.
 .P
 The original Linux
 .BR getgid ()
diff --git a/man/man2/getuid.2 b/man/man2/getuid.2
index a1dd320fcff5..bb8ac4894d6f 100644
--- a/man/man2/getuid.2
+++ b/man/man2/getuid.2
@@ -30,7 +30,8 @@ .SH ERRORS
 .SH STANDARDS
 POSIX.1-2024.
 .SH HISTORY
-POSIX.1-2001, 4.3BSD.
+4.3BSD,
+POSIX.1-1988.
 .P
 In UNIX\ V6 the
 .BR getuid ()
--=20
2.47.3


--------931ca67023661078604efdc21091fee91fac5096679be46328bb747050bb58b0
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmlwwZQJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmeQYD3qcmi4hp3uTT9lO9ExFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAALsbAP4lSetYebbc2BN5ltH0UGt+pWu5G9pGqUawRO+d
e06h0wD6A7LpwriSBSj5re8oGCvRYj20c4/yMIcBx3oL4gtFWwc=
=lKIY
-----END PGP SIGNATURE-----


--------931ca67023661078604efdc21091fee91fac5096679be46328bb747050bb58b0--


