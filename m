Return-Path: <linux-man+bounces-4356-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 72D1EC99A0C
	for <lists+linux-man@lfdr.de>; Tue, 02 Dec 2025 00:51:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2FA263A3FF7
	for <lists+linux-man@lfdr.de>; Mon,  1 Dec 2025 23:51:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77E571CD2C;
	Mon,  1 Dec 2025 23:51:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cb+wuICw"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3460536D4EA
	for <linux-man@vger.kernel.org>; Mon,  1 Dec 2025 23:51:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764633078; cv=none; b=U7Zf7qJkatbTI5OsqnOLRFOwCRBrfx2ZvoeckDDqailPYYJxpZuuUZfxirQMl5HF2aFnDrdPl96DKBb439ioy8f+2J906O/WWnpOkRC9w57i3h5qbauN/byBddHh6hDbfgqPbhLj9Adt1HhcPjJov4lV6IWy7bv7Olp6M8pp1L8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764633078; c=relaxed/simple;
	bh=OSJRaJUVp1b45DnhIbQaas/A340PBkKUCAsZvpyrrzQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qA3DuLHGTgmndH60M3HT+6Q+URfWyJtjZ6PIx0ZyBwldmmJHW0xDYOr/OuTDwQsuoX+hwBYdxnwqEVa3z3h6A5ATMB6vshEpBn0jBKXFdtf8FNG31bTo9NCCyV78owxH72qockhvchQ/P8A+srT5FC/qsHletEEhVUN2uKt42ms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cb+wuICw; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1915BC4CEF1;
	Mon,  1 Dec 2025 23:51:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764633077;
	bh=OSJRaJUVp1b45DnhIbQaas/A340PBkKUCAsZvpyrrzQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Cb+wuICw9d0gMTz73K7eNehe+z0wuTE/XQtdKae3vixen4QbZwyUMDZqpPOnNHhZx
	 eU3jOKyVUeaRyFP2qfs9W2sTiCqNhWfAkbBtDGP2w0fwZSlEhfn4rkUKkQZI212jTV
	 +rpURucbwsicbvyz3WB6axHLy7gS8HapVwqq/fmytYCX5OioRChSIaOymGwJ3zYket
	 CwG72NXNG4rut3getrV5SuEtFunJwn5aonsgYr5pjmt37EyYMJ24p+wTFnUe5bJ737
	 y5doVEuG87JPBxAlP+sAGElXdfAHvUgXChERnmJgoLjdaEgsGVAkH1XumZfoBAIxWo
	 DG67ZWGrPVxow==
Date: Tue, 2 Dec 2025 00:51:14 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: Downstream Fedora user request for additional see-also in "man 5
 proc"
Message-ID: <7bxe6tliic2ofagysxqjoezrf5lbhnvmm2boqlzcp5ct7bmc4v@hwykucnbxeqe>
References: <b28be8a6-0026-4911-80ea-e39d56cf2234@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="us2nodkgfvhe32u4"
Content-Disposition: inline
In-Reply-To: <b28be8a6-0026-4911-80ea-e39d56cf2234@redhat.com>


--us2nodkgfvhe32u4
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: Downstream Fedora user request for additional see-also in "man 5
 proc"
Message-ID: <7bxe6tliic2ofagysxqjoezrf5lbhnvmm2boqlzcp5ct7bmc4v@hwykucnbxeqe>
References: <b28be8a6-0026-4911-80ea-e39d56cf2234@redhat.com>
MIME-Version: 1.0
In-Reply-To: <b28be8a6-0026-4911-80ea-e39d56cf2234@redhat.com>

Hi Carlos,

On Mon, Dec 01, 2025 at 06:40:57PM -0500, Carlos O'Donell wrote:
> Alejandro,
>=20
> Forwarding here for discussion.
>=20
> After the split-up of the proc information into various pages
> we fielded a downstream Fedora question about where the
> information went.
>=20
> You can see the request here:
> https://bugzilla.redhat.com/show_bug.cgi?id=3D2405343
>=20
> The request for enhancement is basically that the "see also"
> should reference all the pages that were split and moved.

Hmm, thanks for mentioning this.  Michael had asked me about this too,
but I had forgotten about which page it was about.

>=20
> Thoughts?

I have plans to do this, although I won't put it in the SEE ALSO.
Instead, I'll put the links in the DESCRIPTION, in a more organized way.

I'll do this when I finish splitting ipv6(7) (maybe in a few days or
a week).


Have a lovely night!
Alex

>=20
> --=20
> Cheers,
> Carlos.
>=20

--=20
<https://www.alejandro-colomar.es>

--us2nodkgfvhe32u4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmkuKfIACgkQ64mZXMKQ
wqnIDhAAuhDM2/lhA314mcVw6Ow3xC6mqFqfapb4YGFst2qdPNlOGce+OutLkYxB
7vqo2zkXMgGzEqJ4f15pIAJvqKoI4grBeXwTeSidHVKUIFZb36dftivbIy620Q0r
z/AjKqIE4MbbrEiNXJETWT0CcQF3b6dxLZm/p8cXM7ZnL/n0FWRQ2LFqRRQ3nzF9
8VkBb034V6ydmd8B3sNfmK8LGjj5lAShftOesdMEAZfd34agDIY4kX3hLqyy5TQU
s4u6XmWIiAli/9klJl3qQcvrG8y2nRCg/EUPYtGjbf6byx7y8baVIRTdO59w89MC
jWmRJY385BLaXnK2p+BKOWlRVRCUw2ERYQpNnJ46BYuGXtzOuwpC4wc8jS3P1TQO
tq3X5wgBZs6i3edGAo/L+Nj1045vnu6ngDcyPa992e9J/n7wKNuLChnaDcPc+c6n
1TxLbStwFnCpHnLEmEm/eAO3n9jz83YUTjxXIWDsUx66s9ybakmXFb5IK/YXSHB0
XpNOYjDNcmZJYQcXxmlMCN94qCv/4SLLgmPHAE7GwQffjZ6ctgT3ohNk4Wbr2k5r
grX1PghTQ4y4oCNhLjEeB43lOJ6GfAxDsQhQUfgx14XvpwcpZ5HZaNpm8NAtlXqJ
hQ+4IhAbQ0lCjpO5pCn+PtriSzQscVwqXl0W8WDJlzKLOHKC31Y=
=CDrQ
-----END PGP SIGNATURE-----

--us2nodkgfvhe32u4--

