Return-Path: <linux-man+bounces-4472-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FA16CD80C3
	for <lists+linux-man@lfdr.de>; Tue, 23 Dec 2025 05:24:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DD2C33010A92
	for <lists+linux-man@lfdr.de>; Tue, 23 Dec 2025 04:24:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB7372D9EE2;
	Tue, 23 Dec 2025 04:23:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="SlaAsPcT"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-24418.protonmail.ch (mail-24418.protonmail.ch [109.224.244.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47D072D5C68
	for <linux-man@vger.kernel.org>; Tue, 23 Dec 2025 04:23:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=109.224.244.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766463839; cv=none; b=uNM7A6apxBT2sTM3kZw/3BM5QdXBoN00ZRzqM7bX8f8cS1pBiXukluPJ2zsMkbIVM1Tk+ZVrGNW9i1UkNBeOe9bcR3SSEn0JJDIxnNl+UG1hqx6jh2/heTl90/MfFvNPwQxeNup+J8R9wLIx/yz5kjzPkdi6HfLhArFJoZQTZfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766463839; c=relaxed/simple;
	bh=3MddYPttA/rh5KJ781O2EOG3za9/kZU949COdT8GvK4=;
	h=Date:To:From:Cc:Subject:Message-ID:MIME-Version:Content-Type; b=JJ0GTC7ly4dH5wxw9GL1h8Kz0CddRkJU0k5Yh8C35HWVm2h9m+L5AMEvLrmRwPHc8eqJj51UE41nrxd4ZreInMSRWQClJL6ff5K8NJo31v3IXMiOpMyQOHnXKzTqsKue9X5rH8Xt/iFPr+wnlSNIpEGEg5gJk/GXTFYaPorI5zQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=SlaAsPcT; arc=none smtp.client-ip=109.224.244.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1766463830; x=1766723030;
	bh=3MddYPttA/rh5KJ781O2EOG3za9/kZU949COdT8GvK4=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=SlaAsPcT6lXNCPnVjeAGNxtP3gdbJ83bBye4f54SptB9KCkXwcWJD+xVfGaMYMcD1
	 OrwjQ8AmNZ09aGd8QZiFLu3aRgL8HZgg1lN3BSdFczHWDHcBQ5f5j9S8iXXxNmehuf
	 Q7d0N3xkG8W7qEY2z75v4zy0mVqsCZy2LEdMfLLIU3UCEvKtl9ECOcCTjIqmzNfx94
	 Nd2sWDhR/fOCuOoEKpzBACKqJbNs+PdpRJF+kTrX8VqY6PF1IopQmmwtgBA8GKPbY8
	 eYxpOxgh4nqDIJ4XZAsNIwaDagrZdcKUDXg8GkQIbegJCmwmE1BoEy4zQbj+rxcwG+
	 21WcEAvxcW9wg==
Date: Tue, 23 Dec 2025 04:23:45 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>, "collin.funk1@gmail.com" <collin.funk1@gmail.com>
Subject: Outdated standards(7) page
Message-ID: <I8K8HXS7TxdvIdzhsS5M03Fz5hnQp28BkAR-9d82UTEMdcPpNA767OxJ0_VRN3dHo8GBgGnprip2EsvlRAAKWC8NAzTn6A-ZMD2Eeci24ls=@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 56dffbbcda8797cb8bb0c50362af3984745daae8
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha512; boundary="------583a8baaba8e04ef3159749b15b6cb44ba2403f5980c54fc0984e13ed3e4bf3c"; charset=utf-8

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------583a8baaba8e04ef3159749b15b6cb44ba2403f5980c54fc0984e13ed3e4bf3c
Content-Type: multipart/mixed;boundary=---------------------e69186903d2e8c591c5eebfbac470fa8

-----------------------e69186903d2e8c591c5eebfbac470fa8
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;charset=utf-8

Hi Alex,

After reading Collin's reply, I realised the standards(7) man page does
not yet include the C17, C23, POSIX.1-2024, or SUSv5 standards. And
given that the man pages are currently being updated to specify
conformance to these newer standards, they should certainly be included
in standards(7) for reference.

I'm busy going through the functions' history sections, so just consider
this a bug report for standards(7). I've also CC'd Collin since they
prompted this find.

----
Seth McDonald.
sethmcmail at pm dot me (mailing lists)
2336 E8D2 FEB1 5300 692C=C2=A0 62A9 5839 6AD8 9243 D369
-----------------------e69186903d2e8c591c5eebfbac470fa8--

--------583a8baaba8e04ef3159749b15b6cb44ba2403f5980c54fc0984e13ed3e4bf3c
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wrsEARYKAG0FgmlKGVEJEFg5atiSQ9NpRRQAAAAAABwAIHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmchXKz9487Pn30NZ5MJ54SUoEpINS8g/FQIuwFk
GL+lUhYhBCM26NL+sVMAaSxiqVg5atiSQ9NpAADcpQEAue96vlhZqn5Zratx
XpzHYEwkxm4hUGuHUe4ncz0yWB0BAL70v3f4OiUH/G6pyO/OnFQHSsFLYnmf
UP/O0q8dACMB
=fWSr
-----END PGP SIGNATURE-----


--------583a8baaba8e04ef3159749b15b6cb44ba2403f5980c54fc0984e13ed3e4bf3c--


