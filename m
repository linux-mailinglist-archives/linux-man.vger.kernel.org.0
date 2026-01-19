Return-Path: <linux-man+bounces-4844-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 70F12D3A79C
	for <lists+linux-man@lfdr.de>; Mon, 19 Jan 2026 12:59:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 81D95303B7DD
	for <lists+linux-man@lfdr.de>; Mon, 19 Jan 2026 11:56:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 014DA31AA8D;
	Mon, 19 Jan 2026 11:56:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="f1h1vk4p"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-24417.protonmail.ch (mail-24417.protonmail.ch [109.224.244.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C7C431AABA
	for <linux-man@vger.kernel.org>; Mon, 19 Jan 2026 11:56:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=109.224.244.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768823817; cv=none; b=sRvZg8i2Ka45w9UeOreZTOFP+BSNcK+uRHvIXdZ5nKfqp1GhYAPyIhFFnZKlJfOXhRFrEnISsv00aJ67oEA5PyKijuwpbBW0H9+YY24IV4spvNb/IdnO6SjHj7D/ft+tcz/8Y0YPB9Gp08/RzP7frpO+k0Z94P47aXk8hk8HYFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768823817; c=relaxed/simple;
	bh=QHGILL+nMr0dyYSSg4G0H3BZCxvFM3G/YKk8TYWdhkE=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=hGisR+WB85OSLpu7E5uGgE3TRd/7CsnBLcOks39rgFcmnrfhYre0oZpgVNpWvgDXs5xgcKfVOZrvfRMb+L2zcu32t6ObN9xMybgCBXnqP29am5SbTUSarIqDtvDGnJJAK9wQEHb2bwpJwnxHuoQT6o7YMSa9BrGfG6+CcZMFPZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=f1h1vk4p; arc=none smtp.client-ip=109.224.244.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1768823814; x=1769083014;
	bh=ECCQHsdwxJRKCA6LS+CEVWJxZG2D2CMJ8KwWSUQ8dtU=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=f1h1vk4pcxLxLlu65/qifgrohyR4lPUfrvDxWXTzFA782WA0NYL0noVD9dXrwQiLt
	 tcb5qBvLlPF0CMDcB2zZFvjGBLlcKWSzN6SAmc88dD5pXI+BXdUe1dDFfFbpGeqlVP
	 a/OK9rk7XV/Yb6gIEMWoqgoL/KF/CDyCQhSNvKqyTDirQ8FdzO7Fw/niTJnaUdN/kd
	 P1hUYGmyoyHk3HqYq60/LIUFUOWMu02uhH5au0VeSags669la6xoVXzhitU7vDqP/B
	 giquNw0xeSO1hiWGqP4qVlvSa11AUINjuI6Yba7JdcgYTyo3lhSck9381uayfuNPcs
	 yX7JTh9Qp7tFQ==
Date: Mon, 19 Jan 2026 11:56:48 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: Seth McDonald <sethmcmail@pm.me>, linux-man@vger.kernel.org
Subject: [PATCH v1 10/19] man/man2/chmod.2: HISTORY: Update first POSIX appearance of chmod(2)
Message-ID: <de87aa2b3e28fe1ade21c7d119dd3968616fb25d.1768822707.git.sethmcmail@pm.me>
In-Reply-To: <cover.1768822707.git.sethmcmail@pm.me>
References: <cover.1768822707.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: b71ba38138d16b7a890d3e862efd5c14ec4a03cf
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------a096ac7114da56eb05a18c42f729413344ef1932757871aeb10f2bffd9adf62e"; charset=utf-8

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------a096ac7114da56eb05a18c42f729413344ef1932757871aeb10f2bffd9adf62e
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 10/19] man/man2/chmod.2: HISTORY: Update first POSIX appearance of chmod(2)
Date: Mon, 19 Jan 2026 21:51:54 +1000
Message-ID: <de87aa2b3e28fe1ade21c7d119dd3968616fb25d.1768822707.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1768822707.git.sethmcmail@pm.me>
References: <cover.1768822707.git.sethmcmail@pm.me>
MIME-Version: 1.0

chmod(2) first appeared in POSIX.1-1988.[1]

[1] IEEE Std 1003.1-1988, Section 5.6.4 "Change File Modes".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/chmod.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man/man2/chmod.2 b/man/man2/chmod.2
index 998869dc8097..d9e316747f98 100644
--- a/man/man2/chmod.2
+++ b/man/man2/chmod.2
@@ -345,8 +345,8 @@ .SH HISTORY
 .TP
 .BR chmod ()
 SVr4,
-4.4BSD,
-POSIX.1-2001.
+POSIX.1-1988,
+4.4BSD.
 .TP
 .BR fchmod ()
 SVr4,
--=20
2.47.3


--------a096ac7114da56eb05a18c42f729413344ef1932757871aeb10f2bffd9adf62e
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmluG/sJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmeg40Sk3Czzty+3HTN+cvAxFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAAHBIAP4mB4zjoadnfEq86Rs5pGVJMjvZq0xpeorDcoAL
Q+RpywD+JXYbTdCryZLdafN5K1OM31V+9UKC3b4IDyP8ABSD+As=
=83fl
-----END PGP SIGNATURE-----


--------a096ac7114da56eb05a18c42f729413344ef1932757871aeb10f2bffd9adf62e--


