Return-Path: <linux-man+bounces-4553-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 757BBCDDD58
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 14:48:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DA38B3008CC4
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 13:48:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3A961E5B94;
	Thu, 25 Dec 2025 13:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iw+WHeot"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61E797E110
	for <linux-man@vger.kernel.org>; Thu, 25 Dec 2025 13:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766670496; cv=none; b=qHdmLRVeyytGOT+3+YhfoL54y1K3g3dzYi1SzsDC3WKRC6zGvt2ojsyvNZC/09EFxQnb5o4XAAjXlPrRDLLss08gNiGNQi71DjPLObM5QYYRuqMlevGRId0MR4u53ds0S/+VQzUGDpZKpElmTeAcCyfXjJWC21g26F4wFFa7aOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766670496; c=relaxed/simple;
	bh=WXrOsoXV71x09N0acgNXrzFnyPKfI7Bb0correTRAgw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Dh/WoFeF8MNWU18BdTrf4YzeLd20ftPbUQX6J7BpapGB9GREOwX59VpY4ZBABS/qHziCX6fnfJ3iJ6qUu8g0Rbq5f7KypoYyrLywfFblfwJ4j05MyX0c1TyYptO+lYjKaawtleDw818gvE6Kze8qpZRoJgKRRPkNhz+vFZnQ/c8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iw+WHeot; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1CD58C4CEF1;
	Thu, 25 Dec 2025 13:48:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766670495;
	bh=WXrOsoXV71x09N0acgNXrzFnyPKfI7Bb0correTRAgw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Iw+WHeotgUrCaBl+BhB8opUJ5Gmp3N9MDkcVBC20GBhBQ+vS4dWMtkQMwswYALr9Z
	 GXho9w27GwuVELcLtFDuFcO8DW3dKjC7kgWgi4FwddM++rlx8wfmlsh9L7kO/9F1wd
	 /wXZRWJsQ/NYpf+wZYK6+GI/LjUS5mD2qmAL8+UcUw8lI06lDAcolxA4TzgmjqcdtM
	 +wwKvj+s0v6lhU4qirLgUgmvUQTl95shqgS8N9dI9tXpY3RoP35So1uG7as0ndqBTF
	 0QM+YpV5vl1TxdKnbtKnWe2S0QNd8zNFQ2iBlAe28D2HkgNKVo7aO9/n23lfje76o6
	 C9ejdb/ebmOHg==
Date: Thu, 25 Dec 2025 14:48:13 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: your mail
Message-ID: <aU1AVrV5umYVs7CT@devuan>
References: <aUv635HpEQKac8rI@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="col7edbh3luevrmj"
Content-Disposition: inline
In-Reply-To: <aUv635HpEQKac8rI@meinfjell.helgefjelltest.de>


--col7edbh3luevrmj
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: your mail
Message-ID: <aU1AVrV5umYVs7CT@devuan>
References: <aUv635HpEQKac8rI@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aUv635HpEQKac8rI@meinfjell.helgefjelltest.de>

Hi Helge,

On Wed, Dec 24, 2025 at 02:38:23PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Man page: console_codes.4
> Issue:    Why hard word wraps?

This looks like an issue in the software that produces the files you're
reading.  The hard word wraps are not present in the source code, and
the manual page reads just fine when formatted.


Cheers,
Alex

>=20
> "Set palette, with parameter given in 7 hexadecimal digits\n"
> "I<nrrggbb>\n"
> "after the final P.\n"
> "Here\n"
> "I<n>\n"
> "is the color (0\\[en]15),\n"
> "and\n"
> "I<rrggbb>\n"
> "indicates\n"
> "the red/green/blue values (0\\[en]255)."
>=20
> "Set screen blank timeout to\n"
> "I<n>\n"
> "minutes."
>=20
> "Set icon name and window title to\n"
> "I<txt>."
>=20
> #. type: tbl table
> #: archlinux debian-unstable mageia-cauldron opensuse-tumbleweed
> #, no-wrap
> "Change log file to\n"
> "I<name>\n"
> "(normally disabled by a compile-time option)."
>=20
> "Cursor to lower left corner of screen (if enabled\n"
> "by\n"
> "B<xterm>(1)'s\n"
> "B<hpLowerleftBugCompat>\n"
> "resource)."

--=20
<https://www.alejandro-colomar.es>

--col7edbh3luevrmj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlNQJwACgkQ64mZXMKQ
wqnHjw/+IptgKetrxQRxvT6DEIswltiEDJdcEjhMrG3JGzsBEmYaS3NDrsZaHC5W
qBR/bFtsQOCx0MI0Y/bJaSayZXk/QvQ06lU4jgI5d8Plv1BLj3KRxL5UyqEdT52L
woC2oHP2teYUXbzav29AjDimbLPA1Cvw4FGLQROQeViL49eqcLhfgeQs8G8OYNeX
v+XopQUTYhhfm9MURLM+iOSQKwJgVTCDTSeXnxEVhoscJnMAjIQZ9oq4SVNdJMIj
NfkO2gYuVWSSeuR0TJccKQ0yxEdiNOTk2L1pdgu+z4yTvNiRXdSkEICX7dEhMd8b
4SFp7DFjVEZE9IqINp26cDD3JBInqRFCHimOtJd3xcGo+OKYMJ/VhNy9KAMvWgv8
1t8sbWWfZQvNptrdny6QNdnNLx7LPUpNHvSxvDWxIkcVX9N0/kMkmdZa/64/v7va
r41uingwjH1KC+STvFqR9UOiQJQ8o0wseo6BuOrLZ3X9lPFbxTfmGOuGjcWE4NVq
RHPF1fuZcM1VaDxqt0vmXdt1FZBeDusb56avQck7praSMbSe2qTrun9DfssYkl6Z
JyVutLbWWtRHXwJWxuGJdwFbNfN4NVSBaWx+frFZgz7Xa22qVyZMpT3xnaams4qm
lf3W/WYwjFB4895Q6KjrbzyKnTU+5MhxjPKrjzK4j0HU7bEZFk0=
=pgap
-----END PGP SIGNATURE-----

--col7edbh3luevrmj--

