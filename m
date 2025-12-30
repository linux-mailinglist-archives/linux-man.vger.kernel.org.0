Return-Path: <linux-man+bounces-4581-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D53ACE8C43
	for <lists+linux-man@lfdr.de>; Tue, 30 Dec 2025 07:10:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 67E6B300F598
	for <lists+linux-man@lfdr.de>; Tue, 30 Dec 2025 06:10:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B94B2DAFCB;
	Tue, 30 Dec 2025 06:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="pa4z2Wgy"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-4322.protonmail.ch (mail-4322.protonmail.ch [185.70.43.22])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 038AD29B8EF
	for <linux-man@vger.kernel.org>; Tue, 30 Dec 2025 06:10:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.22
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767075023; cv=none; b=HuQCAwmaWGDazcy22fqCh568F9RVT44xOXd62YSdeZAL/uV3LndATuXiPWFiwUg+aLbylGNQg2OvQUL4W2CACgyucQ6cDOv2FFTdHhRZaHEigyhz4LceIOEPdPcrnsmVhQRryc4X6wnFNWLV/1Kh5/39tvA4p4nvv5NAJ8OelPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767075023; c=relaxed/simple;
	bh=dJK+Jk0c0l0hAz6n26I/70tELAAPS9/lexti2UqeaxQ=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=r5GuYucqmJL7fWY/UhYBwyXGl0JmQgAPrWToSk+OHYxOUhWMNjjBmqAltjYgrphaVlxzrkutRj6hYMTwN6aoo9ESrWUivH1K9XPHb/lVbkRjC/9slrV5GJXtPQnnaGjCEMTA1RuCMfUuIUb3tLruPNqMbc6/YXlbGUhm2xs1abY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=pa4z2Wgy; arc=none smtp.client-ip=185.70.43.22
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1767075013; x=1767334213;
	bh=dJK+Jk0c0l0hAz6n26I/70tELAAPS9/lexti2UqeaxQ=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=pa4z2WgyLUGwoMaxtYagfkY0WapbNquLQciIEO0WsLvOI309yY3Qzdt2ONgFV9g/Y
	 M3dO93doVd3/12dMMcNHNCbKRu8wVC1mzpORtw6J29YoRj16PkimJxCYbj+h26l05z
	 fjMZCn0I+CzGAVE1J8TKVR39TZ3em6IJpuvMlnc8s3FKGpTyEw0HZn58YMxESWOrv5
	 wClH4NivunnMHkpt89oW41EbvCG8pS8eGkbFyutTkZh0U4oOhb1vS+YSbRSoWJFZr7
	 wHnY2xkkrzTlsHvAJLackUmLTrO36E0fMOR4tLXCQUCvJlRoXoXgyzzzz7uDU5m/GK
	 53Kmm5JA2Pjaw==
Date: Tue, 30 Dec 2025 06:10:07 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 0/1] man/man2/semop.2: Fix VERSIONS and HISTORY mix-up
Message-ID: <u33OQavsJAzFqMdjX1UUpw41OiiZ2HM-b2CQX02-lnKEQ4211ITmLq0Ou-ehYrj5mqRDrr-Vc7iWsM5miRJ05w9yR1pgEHu1N1eHcwYdNOQ=@pm.me>
In-Reply-To: <aU0gVLxNMAtp6HYh@devuan>
References: <cover.1766641592.git.sethmcmail@pm.me> <aU0gVLxNMAtp6HYh@devuan>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 5abedd2ecd1a3bccf3ef311f62eb99bfbed3180b
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha512; boundary="------96f900abb789b7159227f8b8fe1794751b012f27bdbc83f7455ca8fabf70c618"; charset=utf-8

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------96f900abb789b7159227f8b8fe1794751b012f27bdbc83f7455ca8fabf70c618
Content-Type: multipart/mixed;boundary=---------------------aec9a433a21ac3448193d8d5120bcb3d

-----------------------aec9a433a21ac3448193d8d5120bcb3d
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;charset=utf-8

Hi Alex,

On Thursday, 25 December 2025 at 21:36, Alejandro Colomar <alx@kernel.org>=
 wrote:
> Hi Seth,
> =


> [...]
> =


> Regarding git & email, the patch was corrupt. It has this:
> =


> Linux 2.5.52 (backported into Linux 2.4.22)
> ,
> =


> which was breaking a line from the patch. Thus, the patch didn't apply;
> but I fixed the patch manually, since it was easy. I guess protonmail
> did something bad to the mail. I wonder why it decided to break that
> line and only that one. :|

That is both curious and unfortunate. I had encountered reports of such
patch-breakage by Proton Mail when configuring git-send-email, but had
hoped that it was fixed by now. I'm not an email expert; I have no clue
what could be happening or how to fix it.

However, looking at git-send-email's docs, I may be able to prevent this
by formatting the patches and emails as usual, but actually sending them
with Gmail (via the --envelope-sender option). It's not exactly
desirable, but as a temporary fix it'll do.

I'll send a few minor patches soon to test if this will work.

----
Seth McDonald.
sethmcmail at pm dot me (mailing lists)
2336 E8D2 FEB1 5300 692C=C2=A0 62A9 5839 6AD8 9243 D369
-----------------------aec9a433a21ac3448193d8d5120bcb3d--

--------96f900abb789b7159227f8b8fe1794751b012f27bdbc83f7455ca8fabf70c618
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wrsEARYKAG0FgmlTbL4JEFg5atiSQ9NpRRQAAAAAABwAIHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmczOBatScE8SigIysZnb0TZ4ZLt+1VlBZi0UQal
UJGrGRYhBCM26NL+sVMAaSxiqVg5atiSQ9NpAACyqAD8D+nr8fY84Eh547xT
Jc6joO4qiz1izHCZwoxm5al+ar0BAMNiEtKs5SvGRK+uMus0/fJzH0JZ1wna
xMBoeD7f7xMD
=Z0P/
-----END PGP SIGNATURE-----


--------96f900abb789b7159227f8b8fe1794751b012f27bdbc83f7455ca8fabf70c618--


