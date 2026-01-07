Return-Path: <linux-man+bounces-4702-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 23DD0CFBA95
	for <lists+linux-man@lfdr.de>; Wed, 07 Jan 2026 03:10:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 44503303C9D1
	for <lists+linux-man@lfdr.de>; Wed,  7 Jan 2026 02:08:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B547B1E3DCD;
	Wed,  7 Jan 2026 02:08:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="gZF4jtHK"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-4322.protonmail.ch (mail-4322.protonmail.ch [185.70.43.22])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DFB079CD
	for <linux-man@vger.kernel.org>; Wed,  7 Jan 2026 02:08:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.22
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767751732; cv=none; b=GucDg1JQskq/KgZCV6Idgyc0Y8SyKMDYNTbMySOIl4h8kscdF6yekPBsFSQ226yyg7wkaGZ8IE064qcwzOzGFpIhsPbpg8UHMdNKkGE5bW7/6+J1+FAx9zAb/QFRqAszQOVLCNXElqVCneE9nI9s+I/t8tuQeikHvVbtRbiylIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767751732; c=relaxed/simple;
	bh=Aeai3dyRcxArpp1A9vZpCZhVRoE6Mgdvg3uVRPPtm8Q=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=c0q14dL+Mp+OPXRA7gFQDPk0UTOy4es/Fq8qGFzXRGqPAOUjs04cFEi2GFueIL/l6ul/dPlbNTffv5V7m5Ba911b9S6DV/U4wsUXAWkOIrm+U24fjyYNqaIO2Wg+BLn/fuhbr8yH8wD3In9l5QFKvly0QOj3Z1nd1ORv8djN3Ds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=gZF4jtHK; arc=none smtp.client-ip=185.70.43.22
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1767751721; x=1768010921;
	bh=+DdTOMzCWSL6Jx4nHKBrSRBsQkyb6rYnpn8X+WfcEhs=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=gZF4jtHKZaEEz9FptlPKwnDrgaz36sS21EZcU98UDUan7UppzASxUN3TUfw3nzZml
	 VBekEZMxZIZSNed/Z0tUnm3zZMAge1SsUfPEssuHLH1yB2/BNF/fz2xaMY6qgTNuLT
	 pTprXTqtsWWmzyCt3Qp1FSzeKirx0ehTpAejsN0CY1FLHYTSiesJGQ/RlQASHF+Sy6
	 RYBqf7VKkrKLMdQEyOAzFjkaFaue6NR77CrfaHqeaQrxUSoATRKOua+cuJGHEuc1yI
	 fqMVxQkU4LgNHTFv+aiOsUZ19G0xkckN8vmC9IlqMeDFy1mqIIYyiZ6cTAzIrHoGRv
	 yzfPA/ULyubuA==
Date: Wed, 07 Jan 2026 02:08:38 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 12/15] man/man3type/id_t.3type: HISTORY: Mention change in datatypes of [pug]id_t(3type)
Message-ID: <gHyhP1AZqkBsRi0hv6l8PDU6sBL-xpDdUXlo7Wc7CdcG51IQsX0yIsJttySsSRfLoZZDMpKZALvQ4tCQIMnLEFoWtSyuSB1OOcQor4cIfuQ=@pm.me>
In-Reply-To: <aV0XZSgwGCE5G65j@devuan>
References: <cover.1767675322.git.sethmcmail@pm.me> <00eec0f9aa43bd9337490c1150976223aa753754.1767675322.git.sethmcmail@pm.me> <aV0XZSgwGCE5G65j@devuan>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 44f99f521e5992b2e0d9fb1b415a1c1e113490b1
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha512; boundary="------fac095a9fe3fba25ba982b1e3fea8e0d3142719c6939217504365eb7210a226d"; charset=utf-8

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------fac095a9fe3fba25ba982b1e3fea8e0d3142719c6939217504365eb7210a226d
Content-Type: multipart/mixed;boundary=---------------------0f8fdb52cf5dfeefb93d6dd43ea84634

-----------------------0f8fdb52cf5dfeefb93d6dd43ea84634
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;charset=utf-8

On Wednesday, 7 January 2026 at 00:13, Alejandro Colomar <alx@kernel.org> =
wrote:
> Hi Seth,
>
> On Tue, Jan 06, 2026 at 05:08:01PM +1000, Seth McDonald wrote:
> > pid_t(3type), uid_t(3type), and gid_t(3type) were initially not
> > specified as integer types, but as arithmetic types:
> >
> > "All of the types listed in Table 2-1 shall be arithmetic types; pid_t
> > shall be a signed arithmetic type."[1]
> >
> > This technically means the types could be floating-point arithmetic
> > types in systems conforming to early versions of POSIX.1.
>
> But did any implementations do this? As far as I know, there were none,
> which turns this into something that was only true in paper, and can be
> entirely ignored.

While I'm not the most knowledgeable on past implementations, I too
can't think of any that used non-integer values for these types.  The
rationale for them doesn't mention floating-point types,[1] which does
suggest there weren't any such implementations to consider.

The purpose of this patch was mainly to document a quirk in the language
of early specifications, rather than to imply that such quirky
implementations exist and should be accounted for.  However, if this
isn't appropriate and no such implementations can be found, then I'd
agree the paragraph probably shouldn't be added.

----
[1] IEEE Std 1003.1-2024, Volume 4, Appendix B.2.11.1 "Defined Types",
p. 3838.
<https://pubs.opengroup.org/onlinepubs/9799919799/xrat/V4_xsh_chap01.html>

----
Seth McDonald.
sethmcmail at pm dot me (mailing lists)
2336 E8D2 FEB1 5300 692C=C2=A0 62A9 5839 6AD8 9243 D369
-----------------------0f8fdb52cf5dfeefb93d6dd43ea84634--

--------fac095a9fe3fba25ba982b1e3fea8e0d3142719c6939217504365eb7210a226d
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wrsEARYKAG0FgmldwCUJEFg5atiSQ9NpRRQAAAAAABwAIHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmdxf1PmxoTSPQ8xiDQI0Qiu9d+cgf/KwmQ0NfiW
1mWffRYhBCM26NL+sVMAaSxiqVg5atiSQ9NpAADkvAD+N+rsug8slQRMHDYv
Omhkyaw8iDc2l9KnHqYn16MdaHYBAJiSPlgXAYzLmAyJIojOn+bIFbAoG4zs
e/G1Dv7/TI4O
=RhfI
-----END PGP SIGNATURE-----


--------fac095a9fe3fba25ba982b1e3fea8e0d3142719c6939217504365eb7210a226d--


