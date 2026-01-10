Return-Path: <linux-man+bounces-4783-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 62982D0D3C7
	for <lists+linux-man@lfdr.de>; Sat, 10 Jan 2026 10:09:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BF51430090C7
	for <lists+linux-man@lfdr.de>; Sat, 10 Jan 2026 09:09:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A223F1F4C8E;
	Sat, 10 Jan 2026 09:09:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="WHZnKkoW"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-05.mail-europe.com (mail-05.mail-europe.com [85.9.206.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C35D500969
	for <linux-man@vger.kernel.org>; Sat, 10 Jan 2026 09:09:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.9.206.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768036150; cv=none; b=f6IlRR1APnA+Edj/6+AE00ZwrfLKErOJKwZeiuRywELF7o/fmAFLXoDxomlEpfXBngqv1W09LlE3u0hz2btcy0sePGvh9w6plgnhTejs1SX4IjG+aCFT2mFmZ72mzVSVVPoiTPDzYQLL8QH2khyTA8olz3YjHuoGSzkQIDbUn0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768036150; c=relaxed/simple;
	bh=jL134MlAYZJi7rEPQGp0TPUEVAgb8bqCeyB+7IUyiO0=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=bWqpgRE2DrRPbON6GkATHE2Rt7ANceIiqqfN0wJwDpugnpIppMhrxWnfS+/T05w9rpl3+IKpZyHpiosia1IUXLvMo8vWElmIVt2A5goJCjvgyrjhyBsg9NIxZZyq6Ckz48v7X+db1WUpH1bryNaW39hVJFYD3QlCDOv72e4+opM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=WHZnKkoW; arc=none smtp.client-ip=85.9.206.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1768036134; x=1768295334;
	bh=SiC67XOIZvWELYu4QkR+yOgJypYWk+bNBdcu4t/T2Zc=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=WHZnKkoWv1xn/eKJpdsypo++L29uwlIQD0z234SEM/2cIypwqDoHDg3HLX6UU39yZ
	 73/zaWFtaHM3ZIzv04j+wcAOC63EQNPcrKrYt+KvSKILndP2bGTKEk28J8gxhGti4s
	 rajIptIsKG3Z6vmqZ/mVgeglBD6w3dSE/NQFq5nQYTai3TC+MBJ8GMjaMn4SgMS8Wl
	 Iv651qW1E/fzGg/FS1S1n91/MWR/SlKnRjjIyqHma6AdgUb/bSlfQJHh8td6nPF4vu
	 FT/f7Kx4dm4y9xN961LhbEZZLFunoZLusXMQkyxkEGGxPUont84jxLogd1qBT2Rq9i
	 1HRtBedfvZ49A==
Date: Sat, 10 Jan 2026 09:08:49 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 21/25] man/man3type/wchar_t.3type: HISTORY: Update first SUS appearance of wchar_t(3type)
Message-ID: <h4reW7ecM6XLHLIdrP5SKys4XwrtBO5ZoRHij7d30gTkw9a3W6zEALzJEpjfU_NoGp5Q3pEIQ0nIx2HN-AEBBSj_QNaR0Ca5Qn4lTwyZ3Sc=@pm.me>
In-Reply-To: <aWDZ5EM-knrbOb_t@devuan>
References: <cover.1767939178.git.sethmcmail@pm.me> <a7d237cd5287cf35982d26f5289b1b9daaeb0be1.1767939178.git.sethmcmail@pm.me> <aWDZ5EM-knrbOb_t@devuan>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: b00cbd787b358eb2f7aa3a583ac0718942356e33
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha512; boundary="------354b4be03104f024d41b933009a64b8e7b32e4c0d13612231caae19131aa955a"; charset=utf-8

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------354b4be03104f024d41b933009a64b8e7b32e4c0d13612231caae19131aa955a
Content-Type: multipart/mixed;boundary=---------------------de6ace6e80288d6861b844bf235a42f5

-----------------------de6ace6e80288d6861b844bf235a42f5
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;charset=utf-8

Hi Alex,

On Friday, 9 January 2026 at 20:37, Alejandro Colomar <alx@kernel.org> wro=
te:
> Hi Seth,
[...]
> I've recently learned that wchar_t and related APIs were introduced to
> ISO C in C95.  If you are interested in them, you could check the C95
> draft (there's a link in standards(7) --I added it a few weeks ago--).
> Otherwise, I'll have a look at it myself.  Let me know.

I can include this in later patches, as long as citing the draft is
sufficient justification.  I personally tend to have a more 'final
standard only' mindset, but if you're okay with the draft, then I'm
all good to use it.

For the 3type section I've already covered, it'd probably be easier if
you could patch up the few types that first appeared in C95.  I'd rather
not keep going back to refine previous patches, as I've found (from
general experience) this mindset tends to cause me to *constantly* find
new ways to polish what I've already done, preventing me from making
much progress.

----
Seth McDonald.
sethmcmail at pm dot me (mailing lists)
2336 E8D2 FEB1 5300 692C=C2=A0 62A9 5839 6AD8 9243 D369
-----------------------de6ace6e80288d6861b844bf235a42f5--

--------354b4be03104f024d41b933009a64b8e7b32e4c0d13612231caae19131aa955a
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wrsEARYKAG0FgmliFyAJEFg5atiSQ9NpRRQAAAAAABwAIHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmclg8RDmhY6En2+942aZlcQm1BzFflwFYS12/sf
YNnmuhYhBCM26NL+sVMAaSxiqVg5atiSQ9NpAACMqQEAmTRcNimqlx/EANy8
kooW3VLdovBijYSlWZgvFT2rTHAA/0+h3lCfiCL8goORwUjsBGJX9CXpfdYu
vQICrbU3HAQF
=yYsn
-----END PGP SIGNATURE-----


--------354b4be03104f024d41b933009a64b8e7b32e4c0d13612231caae19131aa955a--


