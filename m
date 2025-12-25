Return-Path: <linux-man+bounces-4564-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DA378CDE194
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 21:58:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9FC453008EB0
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 20:58:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3B0328C864;
	Thu, 25 Dec 2025 20:58:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m5gHYyXE"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A20072BAF7
	for <linux-man@vger.kernel.org>; Thu, 25 Dec 2025 20:58:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766696284; cv=none; b=GFhOrxdx4TK+6MaSMmd+25dpJ94t42Mnz7gpyi194IW/ZpGDlKbwHMIiKIBftQiEmXP4N3VtjVII7MwLSXsErnZ7Yep1W7WRh4AaZicQh2we9FNoPPmTrzdk6JBYwgS+ehR8d5mRLvR9lfUHZUss3fxby6tLGsgNO+u+2gXFD+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766696284; c=relaxed/simple;
	bh=ybuE3l7YfC73GV3vDwO6Td74B3j1FCzl3EkoLl9XxpI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EjlaER6y9fxjV//P8Gq47iE76e1qKiiK9QT2AUW63sdL06Gyiv7ciuSNFJbkr89IoUhk/LlpkKX/sBYborC13q5YB4/I7Ci0znswi+GYxFdcODk06hzLWHaqNBTF9bUfn03rC+QKW37iaWutx43QV3mGMCd+9IsC4BbxHSAjUvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m5gHYyXE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 627E3C4CEF1;
	Thu, 25 Dec 2025 20:58:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766696284;
	bh=ybuE3l7YfC73GV3vDwO6Td74B3j1FCzl3EkoLl9XxpI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=m5gHYyXEtaHjNqbcOIltKqS35RKFY3PbNVLJTMXrwoDoQXOSmYDscN0dPvfJDVZGk
	 U/+x02cxV8tpgX9mSe6p71GIpBtiXBYfDu0jjn7CS4zVDxH4aj2gNP4F8rfbSjWU1g
	 bSMnUrIlgB7fVeNPreLu/It+z6LOCBC4IB8byZ9kKv7AmRL7VzCjyPv2TG7aN3CXSP
	 /YJJ5YRO5djK2Oj5e8H7IE8MwLeX36gLino7rID4JvL4uNbff6dG+AaiF5lIocpyaq
	 iy4mPQY+aoUzfrtV5RzU0nsCp5Tqm9U+8m2+VMLGTorF/Y/AtsHFwXypQ9kMLHasJ4
	 czfXcAKrAYHzw==
Date: Thu, 25 Dec 2025 21:58:01 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page  PR_SET_FPEXC.2const
Message-ID: <aU2lJNrTjvAPGF7c@devuan>
References: <aUv633JB452XrwIU@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7hjbazxluvd7pvuc"
Content-Disposition: inline
In-Reply-To: <aUv633JB452XrwIU@meinfjell.helgefjelltest.de>


--7hjbazxluvd7pvuc
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page  PR_SET_FPEXC.2const
Message-ID: <aU2lJNrTjvAPGF7c@devuan>
References: <aUv633JB452XrwIU@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aUv633JB452XrwIU@meinfjell.helgefjelltest.de>

Hi Helge,

On Wed, Dec 24, 2025 at 02:38:23PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:     "enables" sounds strange here? Maybe activation?
>=20
> "Use FPEXC for FP exception enables."

I don't know what it wants to mean.

If anyone knows about FP and is reading this, please let us know what
this meant, so that we can reword it.


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es>

--7hjbazxluvd7pvuc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlNpVgACgkQ64mZXMKQ
wqlbgQ/+OWocawi1gzuvJuhzLzWpIOl1awsSJR9e3BQ9XevfjQllH3AX/sQeo6cZ
3nyW/JP35JjK0IW9kvz6B18I88h2+N+njCczw138vCO7ZYXhTQxKEhjoZ5Yd2JO+
7RrKwyeKzjOuVIQXDs4JHdZUQNvxfE+rmUAGv2fulD2xpSblreiNee2SCYczRQGd
eiTq83WiwKNjU6O9ZZuylswX31dCDXxr+gzwtG3w4wdVbsUCMrZQ4xK+WcQPaPDB
domIf0UXKkoeHbrB9eErj9xcZyXgfANwlcBo8R3C/x0YFEvoTglIP8A/MpxHik1h
OEPAR1VSIJlLM05t+3VzU/0yyr7kaZTh/tH+DgbPdF5TD96qsxJ1YIUJMGqt5av0
9fLsjJDwYMNKTzNsidIOKjTOxoke6b0YGu181dnEjiqxoqUWYZZPIfIqNnqGH2RX
ghrzPNNM0eptXGOzUqwM8FQzV3RT6ce7sbeHqCrHQUwjybge2/qtRN8Ka6oMaD7q
MJI86XigGaJZhQusZQr5HJur/ndt10gub/heoGIbYGUNLesqf80VYTFkP0Uf/TC8
bRhPvd3cAMJn2UVZJufHFvjqFcgf7+WtfQWKMLUXgRxj3YQIhzEg56Fn0zNUQVa5
AkV5/JS8tUHtsbbsfr/m35ZmKACn+g9ewod4dWlOoKYPqknUz7s=
=egJP
-----END PGP SIGNATURE-----

--7hjbazxluvd7pvuc--

