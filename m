Return-Path: <linux-man+bounces-3804-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A806B3E5BC
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 15:42:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DEDD13BF709
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 13:41:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68EF4335BA1;
	Mon,  1 Sep 2025 13:41:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e3t1krNv"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2930B2327A3
	for <linux-man@vger.kernel.org>; Mon,  1 Sep 2025 13:41:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756734066; cv=none; b=CaPGm6DgtpjXjvveVmVYTloo0Kg6xWZvZIMPHy89QmXRX6gnSa/J85g5dBV3yLBHIBiAa0g8qOAvYw3Xzwb/fsLRF1CUS6W7H/ewhgoJLOlq8LvmvXa3NbrfqqG6qwY6DxyE607w5wUJqZoLDb5CYbSSgcQVFYhz2oA6a1ZIE+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756734066; c=relaxed/simple;
	bh=uZKhyGuUT31ntIEpBgwRfo2vPlihpINx5RjqGc/DRNQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZVtMVhzbmHUZQzEtqFhlitEsyxwKYxJdNnvPImUR4/ZhCC6nCG7/MemgtblRBgskatoGI5yygbnBjsRAl7VnrEPGs72l0r5c6lip5Xi4TlD5HkZaTl7UVha39Vs6N6nS/DlexcXy7fPZbmfrxJBFdVzlDLbySE8niiQCwAM6Rk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e3t1krNv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 46603C4CEF0;
	Mon,  1 Sep 2025 13:41:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756734065;
	bh=uZKhyGuUT31ntIEpBgwRfo2vPlihpINx5RjqGc/DRNQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=e3t1krNvyL8/eLtKHlu9xkjbtyJnQooDfGlzdAEwbpzpJxSe5RAZKw5Yf9xzxBgI6
	 n2Gzr6v2mBgDel4ekzbKsJ6NscQHWRBZA4vB0gPn/fVQ2l4+0PCyocS8As94ULCdb3
	 8mJpPZX4yTYlAkV9laKo71FZNs6tmPwDT7BRP/vreUfsFEzCXfFRZjTBlOoNsQRkdi
	 gcdiakMpNxiHJZ4TWSs1nW5ZTgzD4/ZAXk5PSQXCEzHMng1wFw9hX2C2Fwkozchxzb
	 7necjN3MhiwTfPxQnFmQLCIYkJzcDPE5g45+10NqqqBgEB4WneQtxd1VWg3TyjIlgr
	 BwVNH/eT2B5YQ==
Date: Mon, 1 Sep 2025 15:41:00 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page stdin.3
Message-ID: <g2mpgathv4762yykiel3ed2hsm4wop7jlvl6iihs7s4clrgpus@vmq6msxxhfcy>
References: <aKsmQV7L9VloZcrk@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qwigdxrwugzh2zcg"
Content-Disposition: inline
In-Reply-To: <aKsmQV7L9VloZcrk@meinfjell.helgefjelltest.de>


--qwigdxrwugzh2zcg
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page stdin.3
References: <aKsmQV7L9VloZcrk@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aKsmQV7L9VloZcrk@meinfjell.helgefjelltest.de>

On Sun, Aug 24, 2025 at 02:48:33PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    \"Redirection\" =E2=86=92 \"Redirections\"

Fixed; thanks!

>=20
> "Under normal circumstances every UNIX program has three streams opened f=
or "
> "it when it starts up, one for input, one for output, and one for printin=
g "
> "diagnostic or error messages.  These are typically attached to the user'=
s "
> "terminal (see B<tty>(4))  but might instead refer to files or other devi=
ces, "
> "depending on what the parent process chose to set up.  (See also the "
> "\"Redirection\" section of B<sh>(1).)"
>=20

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--qwigdxrwugzh2zcg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmi1omwACgkQ64mZXMKQ
wqld9hAAie0Aagl7OFSoyjJRCW03PU2OcOElzjZ6Txd0oOP67g3gbX4izpMKOmxR
GRBRR9C0012yBP+PD1aN3mOr0zXx3Lw9ABzqW3CBPGB4mDSpmArl1c9GXsCnx7ub
NvwtPrfRA7tYkib0+VWQWwbcMvADPb/7sO2uniPiVPPXHHwp4JuWtTVxsRIQzCps
Jj4nXSN07Jh7bgg2lfU4RwBlwJwF+6WLbZTY/mU3mmQ4gjutAabzlt6719vEXp8C
iFZ+E0zAMv7MYwHZQmdLRO6iLL6Zn2he1ozJlbk+KkXzy7cMRmj8imMlTEIAcCIz
kLyN/D88J4dD4o4+ZLGTTvLOWCoubyEdsm2iqVj9egAqqsKIKTqQwIg6dLiwnNzA
sqK7ltlEBkJ9PGUX6Rz75wTXWkVpiLr8vdOwdwlqKrAF+MgRco+Ma3Jx0W35VTIr
Bmuj+grob+YK4l4laL6L0Ks9shrUE82oa598muZHnKlIeW+2SUrAMk5my09qtf00
SqoXA1daRElvuD61rTT3Skh+6yhjI+R63J/UUnL3sih71sUkLcRdzRZwDih/t05k
sTmr7jWNOwewYM0/4pZnUOj3pP2ptl9VNLkfK3qyEafdVnXnUgOuJMLe5BYjpgML
GLd+IseJEQT7weVHgLiWBjR7wz/l0xyMcjUDLkKpJg2DIXcmZ/o=
=A6pd
-----END PGP SIGNATURE-----

--qwigdxrwugzh2zcg--

