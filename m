Return-Path: <linux-man+bounces-4605-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 95C84CED930
	for <lists+linux-man@lfdr.de>; Fri, 02 Jan 2026 01:24:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 91C49300A36A
	for <lists+linux-man@lfdr.de>; Fri,  2 Jan 2026 00:24:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8B3D14A60F;
	Fri,  2 Jan 2026 00:24:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dl02CwKX"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75B3C28DC4
	for <linux-man@vger.kernel.org>; Fri,  2 Jan 2026 00:24:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767313449; cv=none; b=jAdc0EPRu3nhRKa0KKeXcwbST5VfUhq9iWaVsraWsG3tGaei9cZQUf13wu9N40CV5+Q1KqZzPjkJ5euQ8r/85WrkzC/TMo7p4CSPk4OfoLFwBfrpMX7CQ9gyDHi81IAVrhe6m1IhHCcLupbWFgB89Hj9JraQgZBv9Ad6QruFLnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767313449; c=relaxed/simple;
	bh=ZSEnV2ziZ6TioOxRBnNnI/SSNrnLT/9zFdbOvjIidfg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DXnHUgNdDcRD0R21gTHMWXACqN/ncdI9QGRgl5eghXcgIbuVntewFwoQBp9AGs7eAWS8hOMwwcv3rg5fOHq7VgWKtw2qP8mjEBz0vmrLubDiUg73U8+x50ot3podxLZXrVFdazyR9mbyNTPOdhgfI4synT2wWolWkWpWFY/9RZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dl02CwKX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3073AC4CEF7;
	Fri,  2 Jan 2026 00:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767313449;
	bh=ZSEnV2ziZ6TioOxRBnNnI/SSNrnLT/9zFdbOvjIidfg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dl02CwKXRXtn8XEH3pxhYbxZIy9q0Qn4K3rTwNiu1M/qo655H79ipeN6Dr6HQ4Rp5
	 LZ1EFlVP+k6NIOXoWlfoWiJ/fufVPxaU2qlrxnJEZdIbJ2tO5aKR/oPdHCo1wg/0A+
	 EOJcb21HJJP8ia4YlablKrYfjHBsXe6fszB1Im9/ionBi2tHbdfOKRF1Rd9hrh41wm
	 DsfR70i2OmbIlKw/nMsWdT7h2QaVe/KvsTePBdXQIqigw9kJeh+96vuy57wpjfLLv0
	 yL793cP4/kJE4SW3uUeBjTPq0lz/PprUQaZPQMPmJPibXjUhvOYlf4aea8zJBi8MgF
	 H2aAjmnoCPOHw==
Date: Fri, 2 Jan 2026 01:24:05 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Seth McDonald <sethmcmail@pm.me>, 
	"linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: Undocumented systems/standards PWB and 32V
Message-ID: <aVcOqlDaflXT9HPJ@devuan>
References: <X3QWJqINtunXWTcIKK7kRI2gFd3BBPWYjv9huP8DxYmLvSiBqE1vpMvBLvkmJXYi3dzHsRhn1FxwWgwv6ZN_W6SX2o21xKsFAupnFV-i9ek=@pm.me>
 <20260101054632.pw4fyjijp2hmrerb@illithid>
 <aVZwLk0RWoyRjL8N@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5z4vego32247qrhp"
Content-Disposition: inline
In-Reply-To: <aVZwLk0RWoyRjL8N@devuan>


--5z4vego32247qrhp
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Seth McDonald <sethmcmail@pm.me>, 
	"linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: Undocumented systems/standards PWB and 32V
Message-ID: <aVcOqlDaflXT9HPJ@devuan>
References: <X3QWJqINtunXWTcIKK7kRI2gFd3BBPWYjv9huP8DxYmLvSiBqE1vpMvBLvkmJXYi3dzHsRhn1FxwWgwv6ZN_W6SX2o21xKsFAupnFV-i9ek=@pm.me>
 <20260101054632.pw4fyjijp2hmrerb@illithid>
 <aVZwLk0RWoyRjL8N@devuan>
MIME-Version: 1.0
In-Reply-To: <aVZwLk0RWoyRjL8N@devuan>

On Thu, Jan 01, 2026 at 02:17:38PM +0100, Alejandro Colomar wrote:
> In manual pages, I'd keep everything under STANDARDS.
>=20
> In standards(7), we could have subsections for Standard C, POSIX, and
> Unix systems.

Self-correction:

The only current formal standards are C23 and POSIX.1-2024, and those
are the only formal standards that should appear in STANDARDS.

I also consider standards GNU and the BSDs, and they appear in standards
for APIs not specified by either C23 nor POSIX.1-2024.

Old systems or standards, such as K&R C and V7 Unix belong in HISTORY.


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es>

--5z4vego32247qrhp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlXEB8ACgkQ64mZXMKQ
wqlnKA/+L09dc0gnlRkf22hk2Nd0rwp2OADINgiV50losQRBcyxr9e5l7bCejohb
rsSCXn2+lVUcvP3mSAT9W1K+Pni3aSLoL44HGJQQAUE/YaFyd51vbkWGoNzuNEXs
oF22N2BtcLtqHl+JbLi0LTUKlcr7TAyTvPD0St9LhgYJRFOpgCQ0VzhMBhXFpoQx
pYP3yw+I+omitt3T/UxlH8hf874zBZ+74eqJjxPk1WBPX8jI10fTLsO/jO/9V5Y5
+UnsKaACwntTLIZtvt9Ss96aOYMJ8TWHG7LL0kxSN9BLVvS2mkJpsp10qGYZbz29
MA81sbMBw9hnorWTyUeflYbspWFHW3aq4752oaYDB1YIqlxQyUEmT7HgYO2Wa99e
ZxkQZy84q8jhdXYkKIGKc9yeJpeH5S4RmwsRbiLn6EyCXn25FXEk0Zppb1PDepZo
5GjEAXx0k0sdskJf5tuKdStRqs8MaZrTTWIMAX20JIf7qeffJ32lvwcxqib3tA0b
8FSjUIBiHO/11s9tBKKzLoCNPFAviFwIgSNVbNFS1q6gaxkkzTisjSz7h6bBcdzC
QZHH7PeGtuMwKyaM15d3pIo/erBUUfzqTphUNtg3B38i3P02TC9M9KPj+oww2xYN
QvejlM7AAcLmi4JTpcgsT9EMTkTpoU0NbWm1MNA35Ysr2vk04ic=
=Ee7W
-----END PGP SIGNATURE-----

--5z4vego32247qrhp--

