Return-Path: <linux-man+bounces-4588-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D21F0CE8E11
	for <lists+linux-man@lfdr.de>; Tue, 30 Dec 2025 08:19:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4B6C43010CF7
	for <lists+linux-man@lfdr.de>; Tue, 30 Dec 2025 07:19:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2A2C23ABA1;
	Tue, 30 Dec 2025 07:19:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="akizweqf"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-106121.protonmail.ch (mail-106121.protonmail.ch [79.135.106.121])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E87C22701D1
	for <linux-man@vger.kernel.org>; Tue, 30 Dec 2025 07:19:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=79.135.106.121
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767079146; cv=none; b=AX8N71kMp/dHqtisRGKZwh83HvrMiql1LOk5aMVwkcnpwvT6lbWnv7VzD8OArdDbawtvcQbcakBR3dsCTElfNKrMEg60FuIg89JvFcSJoCxtJ3lpQUNR0NePcKmQBJeN8uo5NCIoutCLh1LIGSvditMUvneNu+rMIUOavuZKjmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767079146; c=relaxed/simple;
	bh=TcK6oWRu+ND38q8pO2I9QEl2F3cklVLmbYFoCuZrqCk=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=qJGDkz7el/HWmh0UDxSj7nMA310TwRndYOHzytjJZJvmi9tCF84G3skchcMdLtorzWxkmJSVNqzIh5Gb7/HSuGiFgsocVyOA98dvmqiUrfLwT71LHGkSXM6N6jshEYFcx5/9zrQnEaeKxUr15dPBm6ggUwGRYjYddvTBlWIYneo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=akizweqf; arc=none smtp.client-ip=79.135.106.121
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1767079135; x=1767338335;
	bh=TcK6oWRu+ND38q8pO2I9QEl2F3cklVLmbYFoCuZrqCk=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=akizweqfvmCpJ2Ckyf8b2aV8WwegbP9INQtuH0F99HpUHFBoRfXGKshVT8hpvFwKa
	 wLck2BZnHXn2NYTr4JuFZV0qS7XjxpL6BEo5+y3HBT7lblqJkHZfQCn2bdffvnSnoM
	 eVx+AJa4JtZrouNQbDqhPXJy9QSsv5ZbuGZwBHSfsLJ+AWQmGI0BUABOznmM6rM3oj
	 gflfGMwrzVn+WVnUCi5fFjSZ+xbQAZnVwJEg1J8B2+CdGXRtkq2wfhf4mgoyB/YyAo
	 DVfHSut/0cXKSQm7soprY49Lqi50uNWJliSsJYQ09wJ2iWB26IYMkaqTZktTTifu9D
	 h6+jG3PR4Nf7g==
Date: Tue, 30 Dec 2025 07:18:50 +0000
To: Collin Funk <collin.funk1@gmail.com>
From: Seth McDonald <sethmcmail@pm.me>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Subject: Re: [PATCH v1 2/4] sys/man2/sysctl.2: HISTORY: wfix
Message-ID: <pRpaTIVuHE4orVJSipNl_EnJbZVLMfPRMvPMLl2gRCXKXvpLA9uK1nqZaeQE7NfWySjyQqs1yBMjZpW9bJOToFOl81F2Bz_-koNMWm90qbo=@pm.me>
In-Reply-To: <87zf70xxog.fsf@gmail.com>
References: <cover.1767072049.git.sethmcmail@pm.me> <1477de655f76e1e6e85c12cb03c068b120704511.1767072049.git.sethmcmail@pm.me> <87zf70xxog.fsf@gmail.com>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: db30c05623d8a6936f3f656a8bff6b49527b48ce
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha512; boundary="------1324e89e9478969565189e6f6674fa3f6c8e8eec3ca513f44b5d215ee7cd73be"; charset=utf-8

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------1324e89e9478969565189e6f6674fa3f6c8e8eec3ca513f44b5d215ee7cd73be
Content-Type: multipart/mixed;boundary=---------------------e00207ec6a7c9d7322956cc08521d5f9

-----------------------e00207ec6a7c9d7322956cc08521d5f9
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;charset=utf-8

On Tuesday, 30 December 2025 at 16:59, Collin Funk <collin.funk1@gmail.com=
> wrote:
> seth.i.mcdonald@gmail.com writes:
>
> > From: Seth McDonald <sethmcmail@pm.me>
> >
> > Include 4.4BSD in the initial list in HISTORY, rather than stating the
> > function's origin in 4.4BSD as a full sentence. This is more concise a=
nd
> > consistent with other man pages.
> >
> > Signed-off-by: Seth McDonald <sethmcmail@pm.me>
> > ---
> > man/man2/sysctl.2 | 3 +--
> > 1 file changed, 1 insertion(+), 2 deletions(-)
[...]
>
> It actually existed before 4.4BSD. It existed in 2.11BSD at least [1].
>
> Collin
>
> [1] https://www.tuhs.org/cgi-bin/utree.pl?file=3D2.11BSD/src/man/man3/sy=
sctl.3

That would be good to include, though we may need to first modify
standards(7) since 2.11BSD currently isn't listed there (the earliest
mentioned is 3BSD).

----
Seth McDonald.
sethmcmail at pm dot me (mailing lists)
2336 E8D2 FEB1 5300 692C=C2=A0 62A9 5839 6AD8 9243 D369

-----------------------e00207ec6a7c9d7322956cc08521d5f9--

--------1324e89e9478969565189e6f6674fa3f6c8e8eec3ca513f44b5d215ee7cd73be
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wrsEARYKAG0FgmlTfNgJEFg5atiSQ9NpRRQAAAAAABwAIHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmf7eCnBdI1BbwzfDOYVvLjLg3XXrOja/IHbKBXx
J1vCARYhBCM26NL+sVMAaSxiqVg5atiSQ9NpAAD7MwEA1IcnLG0AYr7yCH+U
t6fPgwrOUJImULLJwwv0OscpOlMA/Ro3duU/K3ivzzqAg7s2c6wvc5Xcqh1b
nTQ5rzIZZQQJ
=cP0B
-----END PGP SIGNATURE-----


--------1324e89e9478969565189e6f6674fa3f6c8e8eec3ca513f44b5d215ee7cd73be--


