Return-Path: <linux-man+bounces-4462-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A49DCD3488
	for <lists+linux-man@lfdr.de>; Sat, 20 Dec 2025 18:44:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 227A3300F8BD
	for <lists+linux-man@lfdr.de>; Sat, 20 Dec 2025 17:44:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33EBA2F1FE2;
	Sat, 20 Dec 2025 17:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GhiyVr+D"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4E4E2EA749
	for <linux-man@vger.kernel.org>; Sat, 20 Dec 2025 17:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766252694; cv=none; b=tp64JVDpXRRy5QbBSFidc15/l7vfrYIfESArJj11G/0rhFO8iBBlpI4jY6nk/t4TryGQRQi/5BwgA5im0w1ViRkWqLLN9X4CUHc48nXN9YJ/EELz/KgFxUSrVxTM1QMCHIdWETYTXHXmImccO10X4s9L9WemzmNElb+OQtyeqaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766252694; c=relaxed/simple;
	bh=JIJBKIvlCMIQ0QM5Nb64U0qLXYSgwaop4MPYyorQbOc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=exeQeoDJCiQL1wvOMGYLnzGG1S6YZd68Yc2F/Dvt+iCwNTyrAXM9HqANUF3nP1Hl00FBWWC1hwWZlogvvvrQNcBMos6T7GJy9FWQM9XgMfz4NVCy9BnCzjixkkhXo/1oPvk8JD5fsbnOXRh5oHhzHel2RbaVq2nfIXUGDobk+Mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GhiyVr+D; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E69E1C4CEF5;
	Sat, 20 Dec 2025 17:44:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766252693;
	bh=JIJBKIvlCMIQ0QM5Nb64U0qLXYSgwaop4MPYyorQbOc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GhiyVr+DtwkmjFma8Vrq5t80DIEmIpewdzzPNF+bDsVNWOXXfq/hj0YHz/EOL/tAa
	 vzLGAsYrlieLX6yaBrM5rFPHXWP8q7MG9JfRAm3ssW4Rd4T5NYTj9r6XoNBXCNfTzC
	 UGFJlyNqa2rgIaRh4uOh6hTEzxa4Y9E/iMn77raf6uIX0/mXCh4anfRvRpp8cfF+fM
	 BmjpPSYyjNR6UZBHK5lV9lfH4tbqZBHm/nitTpuvCgwo3HfxH0QsoJidgCnOxTU2ZI
	 WuBPJYv6wgzNULTeMyu+ANPtzDShWmix3PN70bA2KujFtw/1UtleL4D85r6oxK5ffo
	 GhHEs8HKqzLVg==
Date: Sat, 20 Dec 2025 18:44:50 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: Early POSIX versions seldom included in history sections
Message-ID: <aUbf39o2ce0WhJoA@devuan>
References: <Wd9QASP6rczMWW9o5HQVSOFmDMpmWqmUDTl5T1WrPshq-HU7DB41CGYaLMx7bHyEK5GOjtZ1EIV7GJgbXZlQyjS2DxLIuxWdMFYqPsoNJEI=@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mwilkn2qgg343aaq"
Content-Disposition: inline
In-Reply-To: <Wd9QASP6rczMWW9o5HQVSOFmDMpmWqmUDTl5T1WrPshq-HU7DB41CGYaLMx7bHyEK5GOjtZ1EIV7GJgbXZlQyjS2DxLIuxWdMFYqPsoNJEI=@pm.me>


--mwilkn2qgg343aaq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: Early POSIX versions seldom included in history sections
Message-ID: <aUbf39o2ce0WhJoA@devuan>
References: <Wd9QASP6rczMWW9o5HQVSOFmDMpmWqmUDTl5T1WrPshq-HU7DB41CGYaLMx7bHyEK5GOjtZ1EIV7GJgbXZlQyjS2DxLIuxWdMFYqPsoNJEI=@pm.me>
MIME-Version: 1.0
In-Reply-To: <Wd9QASP6rczMWW9o5HQVSOFmDMpmWqmUDTl5T1WrPshq-HU7DB41CGYaLMx7bHyEK5GOjtZ1EIV7GJgbXZlQyjS2DxLIuxWdMFYqPsoNJEI=@pm.me>

On Sat, Dec 20, 2025 at 04:17:44PM +0000, Seth McDonald wrote:
> Hello again!

Hi Seth!

> I've noticed that in almost all man pages for POSIX functions, the
> history section documents only as far back as POSIX.1-2001, even when
> the function appeared in prior POSIX versions. For example, the man
> pages for close(2), read(2), and malloc(3) all list POSIX.1-2001 as the
> functions' first appearance in POSIX, when all three were included in
> POSIX.1-1988 (though read(2) got its current function signature in
> POSIX.1-1990).
>=20
> But there are a few man pages that do actually go further back. By
> grep-ing the repo with
>=20
> $ grep -E -nr -e 'POSIX.1-19[0-9]{2}' man
>=20
> I get 28 matches, some of which are from functions' history sections,
> such as in the abs(3) and ctime(3) man pages. Which makes me think that
> either the history sections were intended to start at POSIX.1-2001 and
> these few exceptions were unintended/overlooked. Or the exact version of
> POSIX that most functions were introduced in was not known, while
> POSIX.1-2001 was freely available online as html to check.

It's the latter.  In the cases where we know old details, we've
documented them.  Otherwise, we've checked the standards that are easily
available (i.e., POSIX.1-2001 and later), and if we learn some API was
older, we can always go back and document it.

> If the reason is the latter, then I'd be happy to help here. I have
> access to POSIX.1-1988, POSIX.1-1990, and POSIX.1-1996, as well as SUS
> (1994) and SUSv2 (1997). So I can check each function and update their
> man page's history section with an earlier POSIX (or SUS) version if
> applicable. Though only if that's desirable for the man pages, of
> course; let me know if so.

Yup!  Thanks a lot!  That would be helpful.  :)


Have a lovely night!
Alex

>=20
> ----
> Seth McDonald.
> sethmcmail at pm dot me (mailing lists)
> 2336 E8D2 FEB1 5300 692C  62A9 5839 6AD8 9243 D369




--=20
<https://www.alejandro-colomar.es>

--mwilkn2qgg343aaq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlG4IsACgkQ64mZXMKQ
wqmRFA/8Ckdfzhah/0VXGm0vZza051NUXcychjokek8sYDvRH8qEbBq2zkJ5Fd5k
lMp3qvWWgqVswqw1lamtYqYkiwMRa3dI/acyVboClWlhaZMs+/yfBytEcwEfeANJ
/Kg/YPieuf5brcSYy5BB8EvzvJcN6c0eimGCZKXGlEBBXvw2btEZkx/MpCd3FExh
nJ+het1pxV2qs+YIXjmKY4L/2SS7cA6kQNiaz0614DA+a0ZMIk0QfW2fq+XRUGbA
j5mX7V8OA3ldZ96GiwW/tIh5KzEkgn4SAe/XOXQEDGoH9K9AP3ysi2rlIZj3rALQ
kR0abnWhAuEBeyFinYtEmQDDdps/t2szMvHXZ2ae2pdhQv86ZpPh2uyT0zMW8P7S
LpwZ0umbO9z5eML8l2e74PRIarZIrLnRPipYqifmk1oTjpPCtW6XfyOm18UQsJHb
TfKGBzSAJoxkBzSqpD6zVQWA0UGJ0nao6c6xOOpbQOFyNZsn7BJl7ev4aX5t1Aqh
49snpoZlrK2qYHwcICI7+o8xAUkRruQpr7io+/7XbxYogKeo51R3ojQcPr+MsBvB
BcAcZ0oGOjLJfmMfwRN0ufUzd/ysG0HyHZwG9hz4MzcTKtEr74RC5gfM1AXzKdub
uCwVntbZXBZFGclILlNh/bHHYRUcZVFCPBMeS0Gmd2Y9jzgZLac=
=Dhgd
-----END PGP SIGNATURE-----

--mwilkn2qgg343aaq--

