Return-Path: <linux-man+bounces-2124-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9749D9E60E6
	for <lists+linux-man@lfdr.de>; Thu,  5 Dec 2024 23:53:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7BFCA1671EF
	for <lists+linux-man@lfdr.de>; Thu,  5 Dec 2024 22:53:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C1EA1CC89D;
	Thu,  5 Dec 2024 22:53:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bPyyDlTB"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD5BD1E522
	for <linux-man@vger.kernel.org>; Thu,  5 Dec 2024 22:53:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733439186; cv=none; b=emO7+4GyBvdpLuNid83isK2opTWN+mLYXwBTlIr+xmZKfein20Av3JF6eRbmDNm5tbpnAD1S24Qa6Sz5Y5JzwupALtpwEi31oATddHS8FmwMOZMLQq+T5mQOibxA7PCTvrJdH1lIS080La6O1tTcqLduneesX2p+CcBlTTSgdkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733439186; c=relaxed/simple;
	bh=UeTNaKYQTCGj06NANo28ZVbRwV1dp4yOncB7MJidQ+o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NonnSvXWccld0jQIH5l8SAy/MNBaiXyspr05hPjfixrk5QTIyEAlpacC6xC7hplVMqSU+RQ8xoJbRS+MCwklZiaKuoTo9xawK2+152DDp9VXKmSQS+sumkMYsNyyBYSiZn0OLTT1CQqC8VMulNqmOP1T2ruAA2H3Ab0R2KrKf5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bPyyDlTB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4995C4CED1;
	Thu,  5 Dec 2024 22:53:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733439186;
	bh=UeTNaKYQTCGj06NANo28ZVbRwV1dp4yOncB7MJidQ+o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bPyyDlTBNW46Z9OcmWSNOd2piZ5+u8HolsdBAm+uh0czWWNY+Vd9IF73mpQHl3Y6d
	 Ji/oj5pdNS81AXDiOujBBOQa4cz/WnZg+KYM/7WcjUN1x4yLqyMsUKskIEEaMOVXnE
	 n44AZHkq6JO5ys/i68qq/7Vd59uqlKoJ55PeEgwxf174RBoZdMZ/irYYvcXGIReIWG
	 FazsVs7WkxgkPRNYHJjRghhcu7V3EN2O0ObHJpjJHlixVg+tVD20gGwC3WZ5oU1v2d
	 kEg6z/O+DncMIM7zV/ASC77awvbrKlqV2ExjP+1BXvzuw1QVVqDFEjlhkXtL4WAVDl
	 UVzcdGLlHiVBw==
Date: Thu, 5 Dec 2024 23:53:02 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Vlastimil Babka <vbabka@suse.cz>
Cc: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, linux-man@vger.kernel.org,
	Suren Baghdasaryan <surenb@google.com>,
	"Liam R . Howlett" <Liam.Howlett@oracle.com>,
	Matthew Wilcox <willy@infradead.org>, Jann Horn <jannh@google.com>,
	linux-mm@kvack.org
Subject: Re: [PATCH man-pages v4] madvise.2: add MADV_GUARD_INSTALL,
 MADV_GUARD_REMOVE description
Message-ID: <20241205225302.xbvfws6y37zlt5ba@devuan>
References: <20241205104125.67518-1-lorenzo.stoakes@oracle.com>
 <b9f4f985-771e-4f09-a87f-d56f898e8d39@suse.cz>
 <e71ad8a2-3dc7-44bd-97e5-fed6eaa30d55@lucifer.local>
 <01514d6a-5b8f-4a38-8c08-7cacede47f67@suse.cz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="oqmtpzt2nuofbvj2"
Content-Disposition: inline
In-Reply-To: <01514d6a-5b8f-4a38-8c08-7cacede47f67@suse.cz>


--oqmtpzt2nuofbvj2
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH man-pages v4] madvise.2: add MADV_GUARD_INSTALL,
 MADV_GUARD_REMOVE description
MIME-Version: 1.0

Hi Vlastimil, Lorenzo,

On Thu, Dec 05, 2024 at 09:43:09PM +0100, Vlastimil Babka wrote:
> >> > +If the region maps memory pages they will be cleared as part of the=
 operation,
> >> > +though if
> >>
> >> Hm this reads a bit ambiguous. One could read it as the memory pages a=
re
> >> being cleared, but it's the page tables.
> >=20
> > This was really hard to word, because you don't want to say unmapped, a=
nd saying
> > 'clearing page tables' or 'zapping' is clear to us but not necessarily =
to a
> > reader. 'Clearing mapping' makes it ambiguous vs. munmap(), etc. etc.
>=20
> Maybe saying "removed" instead of "cleared" would be better?
>=20
> Anyway, I don't want to cause bikeshedding, so in any case:

I would actually like you to bikeshed.  :-)
These wording issues tend to be important, and finding the right wording
is worth the bikeshedding.

On the other hand, sometimes we just don't have ideas, and merging and
later fixing is also okay.

>=20
> Reviewed-by: Vlastimil Babka <vbabka@suse.cz>

Thanks!

Have a lovely night!
Alex

>=20
> > But you want to make it clear (no pun intended) that anon pages, if the=
re's any
> > data, it's probably lost. So I think this is a distinction that doesn't=
 matter.
> >=20
> > Will revisit once we support file-backed mappings.
> >=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--oqmtpzt2nuofbvj2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmdSLs4ACgkQnowa+77/
2zLKRg//eDsMPRcFjE7ZQpdSuWIYCmV5sWDJU5LGp5vvKhigfC1p2S33HiGsoHit
f+vIWouLg9DgXUBKLQPkyUjhNw55Ue5qJLmiO2PNKaHivLqNqlffRI5aWiYIu779
fZhgwQvphy03/JwYYEs5UhFgpHPfigsjVbU0S420IQfq9jJBgWX3o2UuKYndrySa
cd+zSHDEfcjY+eev69xooiE7PolwsTEYk49fR4eg0kbO5Tb2uI1NXanbBh2JFDpr
iGYVI3jrrYmCWlPKhLAwl75edBP6wFhK+TackPRojDqNvvKH5L04iYWK4vamDiYU
J9rl79iE4Oa4T1S/vnbwXNM05la2EMaXNFAbAwya8C23qyvNUvrD5TzIgP1bkWCw
H8anSri0Z6nGjMKbzJC5FTZ/aIQvS6SgF1h1YpbyEGYnuhWtSEaxrR1K2MnHGJIo
e1hURAzE1IL1rj2RQvWQW2qCicVERmCzxgPb85/b18j6k+NkF9oZttPMs/amMS4E
DsAXDy8LhrejErxmL01Js5bxLhr0hC/ugjFqlrH5N/W+80gyAHrZesEsfUX1hmko
Gx+Y4nnTZeyYVWplseCi6MjEYJ/kf7OOplqOuZbfdH9ARPwMB/eB8DzhE4k3Ocgk
L01qqORsqC1tS0jOSdxTEZgXqpJR1OJOHaAGFhcFg24UITNH1cM=
=r7ra
-----END PGP SIGNATURE-----

--oqmtpzt2nuofbvj2--

