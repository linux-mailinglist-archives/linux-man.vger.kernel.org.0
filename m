Return-Path: <linux-man+bounces-3233-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 70289AECB21
	for <lists+linux-man@lfdr.de>; Sun, 29 Jun 2025 05:06:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C3454175440
	for <lists+linux-man@lfdr.de>; Sun, 29 Jun 2025 03:06:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7072136351;
	Sun, 29 Jun 2025 03:06:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BEEDw8sS"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A541DEEAA
	for <linux-man@vger.kernel.org>; Sun, 29 Jun 2025 03:06:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751166404; cv=none; b=cuU14PDx9M2EWvKZ/ajSbMo2pRqRNIhtZO4KfDWa3yJayye9s+/6EtDQ905Xzq/25Jisfp8odF1pB/+Nsu2VCcnpMe90+M/DyNmwEWKh6TiP9Nz5HRJyxXb6f1jtfs+xVrIiX3YjZE9nhYUPvFbQP59Hbl4ihHa7mzk5TMcrbVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751166404; c=relaxed/simple;
	bh=D6TiCOpK/6LxaKNY/QvB36AJdguYrdesCdzWvTxmTxA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=A1xgNjosM+V3oY27JzyqW2n5zeYDeHwNuPjw5dwE2pces3YVc/xhWjwsi3WaR2pSZMD/B5qNXZFA17DIFWPrApjB89QHOH7JTRuZv+LPfl7tLxpjeGj83zKUpAvyoCHD8L5reS3we4rkBbpf8lTwY+p1GQLDHElsNsESNaDNHAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BEEDw8sS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E48BCC4CEED;
	Sun, 29 Jun 2025 03:06:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751166404;
	bh=D6TiCOpK/6LxaKNY/QvB36AJdguYrdesCdzWvTxmTxA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BEEDw8sS1EsI+C+KLUmhHDeDxuW6IF9PgvD9sj+KiEbBG5S8bseMZDE4jM9MJUbd4
	 n8STDmGNN1vl2FQHaW89mLIP2C42KIYsHWD1yZjKHIDCGfq3V6N4jMCmSXPYw9+Xmw
	 6FrKHcaSTDnhcetu5K9+VbSL88LN04kIQZPKEqqWVQue49SY4C3RfQuLmV4g3kAo/O
	 8pOq7o2gV26le9SUwvwJcB9RB6Yi8pD61M2BFzYbzl+Qtjz4JjnI20m+LVjxM2nPo/
	 NQMWOPpI9OH1rO18+TiJUENKCK6jv/kpQ/tus9nUURpc9HsK6v9LOjeOUuK7Ay8xWp
	 r0SJvESeiwx6g==
Date: Sun, 29 Jun 2025 05:06:36 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Alex Saveau <asaveau@uw.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: Missing futex_waitv syscall
Message-ID: <254ncd6zy5vo36yi7vxlaahhwurgn6zwehsyz4eaqasqvxhkyl@3343bg6n3blq>
References: <CACbFBcykNab1TgnFb709WmBSMXte9rxAJtX1+oHW+p-PJ5MvyA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="e4vna3qnbsbt2zvx"
Content-Disposition: inline
In-Reply-To: <CACbFBcykNab1TgnFb709WmBSMXte9rxAJtX1+oHW+p-PJ5MvyA@mail.gmail.com>


--e4vna3qnbsbt2zvx
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Alex Saveau <asaveau@uw.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: Missing futex_waitv syscall
References: <CACbFBcykNab1TgnFb709WmBSMXte9rxAJtX1+oHW+p-PJ5MvyA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CACbFBcykNab1TgnFb709WmBSMXte9rxAJtX1+oHW+p-PJ5MvyA@mail.gmail.com>

Hi Alex,

On Sat, Jun 28, 2025 at 09:38:34PM -0400, Alex Saveau wrote:
> Hi, it seems like the futex_waitv syscall is missing from the man pages.

Would you mind writing one?  :p


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--e4vna3qnbsbt2zvx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhgrbwACgkQ64mZXMKQ
wqnAPg/9GzwsUHBZ0CY9G2ueN48rLeY+FrB+TlYMNbQYv5xKEX27O71t/5Mb9oqD
dhFLZ8njA3RO6oJLZ7E8Choe/dLHH3WSKhpcGLlszL6WtHZ09eL/rJEEtAY5lctd
Xw2dJI8XP2cXpo0SJXdpdidx9aI6W5BVq66r8XjfqY2tjiGG76lbjp97WaXuyQgk
pzOomiLxTmYuUiXoLvuJHO007LvPP0wFgxxLCBQhc4c1bjOxuPUrZE3uLTIX3ngU
NWmUq6c8rEWkg/nBhteaBfi+VTaLmTOy/oTSxiEDmtA1RbwzqGyAboUJTj5IPy0Y
x74UHOTwa1ghEerw8LSMXAFN2woXae7nAHv5LXJdxjm2p16TF//AO579UEIo+vJQ
rjrNusQN3N17BjBGMr8l3e7tPKlYXXiBg8rKlOJPs9mtsR1RF6LbcLq3jqN/T/Az
K9YuUr8V6Uu29UFrfIrlSPecPDbexXcoupkQD3yTu7Alt0RHWtM+clFt0hTaxra7
XqbGhhscvP9N+iSEfge2z98z0J3bpwDoby0SCwsMp5Xxr1wdcV5+c5yqKVuB/wri
L4S5r8mIqO1b7HZCLcM3+a0eWSpHSorur7yit1Q2SVX8fq2+yxKUmdSsz16S4j6U
p4CibqpLt/ndjnQfadw/UMbJML0IiJZQ+mlaIXyQyHpxI7AEY7o=
=JU5k
-----END PGP SIGNATURE-----

--e4vna3qnbsbt2zvx--

