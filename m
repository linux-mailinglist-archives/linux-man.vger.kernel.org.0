Return-Path: <linux-man+bounces-592-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A08D87C102
	for <lists+linux-man@lfdr.de>; Thu, 14 Mar 2024 17:11:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 40AAF1F2337E
	for <lists+linux-man@lfdr.de>; Thu, 14 Mar 2024 16:11:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 283117319E;
	Thu, 14 Mar 2024 16:11:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UYVvfTvR"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC7956FE3D
	for <linux-man@vger.kernel.org>; Thu, 14 Mar 2024 16:11:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710432663; cv=none; b=OAhZfzwD18PQu/k7j4mQoK6QKkzrWNiRwyoM82FxYc4Efc3CTaQ5eGB8pUok9TeBvKLx1f76OJd4uCkuO1AcvmnCGAj7kPaB2aOMjXWsp/dD4KcderaharlyI6+Kx4pSYawqR91VtVzj7sM50o84fcbdHcom7+PtxlkW/Ms0MeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710432663; c=relaxed/simple;
	bh=tr5YxaZw736qI72yaG3m+yNCx7bjoeAEocTDPZ5/LCE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=h9utWGfHJ3YetsRUYUfnXG1Nh3RhWI/FXWI1EzpHhcs9Fg+74nze+CKQskauUXo8T7WYCglXmZNGGrpHp6h4KUaRjEaOwBlc/6czoEy/kcJlX7n0Gc9Ui+ZGTJ1yXZDNmw4fa6vEY3WwgAFemGLizbRY8+UNo9CJc4xo9tpjyJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UYVvfTvR; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D229BC433F1;
	Thu, 14 Mar 2024 16:11:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710432663;
	bh=tr5YxaZw736qI72yaG3m+yNCx7bjoeAEocTDPZ5/LCE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UYVvfTvRr7DChZCplo3INg9TfrkVpT2ZcKXwsPOIWN2ZVr5W6S+O90UBqAVUa1qb+
	 D1NcCGL7uAt1yhlxGoTdUPxZ89piJy7mbHxE2cQpR/kPe4AGyrB24JLb+oevCEkRYC
	 hSuiwJxe8zb7vJPSWK4c6Jmy1/eUKo7GXAVgv6NeapuiEWWTWHtcBkZjlNTlS0DSsI
	 wUpeI8D7CX+lQqguDifxzQODOmTtRu/QmyRzXgRTT4Oa0j2sn02bm/IpBQiRgarX/9
	 3LRj+M1ninC5ktUFHSwNtuQ0c8yC552Ykl+aeBj1tbL+sA3USRKOd6l7PUXcwGYCXo
	 R4WMS8WERwY3g==
Date: Thu, 14 Mar 2024 17:11:00 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>,
	linux-man@vger.kernel.org
Subject: Re: [PATCH] landlock_restrict_self.2: Fix max number of nested
 sandboxes
Message-ID: <ZfMhlJ59U3WfG-d6@debian>
References: <20240312151513.9718-1-mic@digikod.net>
 <ZfFt7VRWl1PBrXYQ@google.com>
 <ZfMg4rZRbjSP4mFn@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pY0WYKc7i2ot3f4g"
Content-Disposition: inline
In-Reply-To: <ZfMg4rZRbjSP4mFn@debian>


--pY0WYKc7i2ot3f4g
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 Mar 2024 17:11:00 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>,
	linux-man@vger.kernel.org
Subject: Re: [PATCH] landlock_restrict_self.2: Fix max number of nested
 sandboxes

Hi G=C3=BCnther, Micka=C3=ABl,

On Thu, Mar 14, 2024 at 05:08:02PM +0100, Alejandro Colomar wrote:
> > >  .TP
> > >  .B E2BIG
> > >  The maximum number of composed rulesets is reached for the calling t=
hread.
> > > -This limit is currently 64.
> > > +This limit is currently 16.

BTW, do you think this limit change is something relevant for HISTORY?
Or should we maybe not document the limit?  Or maybe should the kernel
provide a macro to name that limit (and thus let a user grep it in their
headers to learn their specific value)?  Or maybe a combination?

Cheers,
Alex


--=20
<https://www.alejandro-colomar.es/>

--pY0WYKc7i2ot3f4g
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXzIZQACgkQnowa+77/
2zIEkg/9HgpuLbMDUjXMCpogVl7Fw3yycpXlEBgR5sMq8mtd/p9ojkO+H+n3bR1h
Un/45npKm0Gj+dslvUXUDxmO/3lnrYZ31ghF5NGVLoxP8pu120iazsc2mcheufXO
dZW536m/M0p3qZk4yzot2eVe+9OTv/J4DDD5fehktRVhLPCWDcFuuC5hK9yYNK4Z
A+jqC3BPYYIJ3FhaNdyB1NpWJPJ0Bj1NFtKlZmGinpEQj+0KTMdXvFyCVNAlC9mk
MmZlFRnGt4KF0tVboDD5cskg8Ase9FvVwE9y7EeNPziKRGmGXUg8MysWmfgxsHME
YXmkGr1cpuw7Tb5rAsnLJ35/HVNkS5HuL21wSYasg8McveR0C4NtrVfYQrIr3vad
C4oCw+xQmm6e+EX3Dj/1BoDRDJ5IachMJ4KdQVmC/q7nmjhJAnF2PH8OJkD/CpW3
G1k2wwMNfIFG9/XcdZAYzYZP3BEwLu70aH/lNrfWxWBvO124CSojucGQIbc1AqUj
bZBVPgB/o8OJovkxz6FXnsc92wWFUWQ+21xV1NxzlE/juh/c6/mwyg7KN3i+eCIw
pKmenjOFQTn7oQ6GInrFm0knoSUixzm4abp6oA06TczTSynpj8MH2f1KgfXQK3mo
PcjPyKEK21FWab/WHW85qSgZ1bL/GREIbAi6P1cr30/2gHfy6wE=
=bPzv
-----END PGP SIGNATURE-----

--pY0WYKc7i2ot3f4g--

