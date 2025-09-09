Return-Path: <linux-man+bounces-3851-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A31FBB505B9
	for <lists+linux-man@lfdr.de>; Tue,  9 Sep 2025 20:59:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 13F4A5E2A4D
	for <lists+linux-man@lfdr.de>; Tue,  9 Sep 2025 18:59:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06BB835E4DD;
	Tue,  9 Sep 2025 18:58:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N/8srXP6"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B995B32BF42
	for <linux-man@vger.kernel.org>; Tue,  9 Sep 2025 18:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757444314; cv=none; b=KESZXgaZ36z9unJ9Hd4tu3LVG+8zJskekM05mfoSwamibemrb/VAaWSSc7Ap0GIz9b6g3wQ21UqfcNNFOrAOOs9KtZi4XBeEb8XHHk8/WoBoEORja+7cYNlkmbRZcpVCCPwWf4cuRHOmyHANrPngBSgx5yKYBmf8cJZtf6osfHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757444314; c=relaxed/simple;
	bh=IJpRybl6wZkXSYJV4SH32imyyijpchacbDEO/H44TuY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=u5IBo22gyqAMoSsMVWjxnUZgrNvbNIQEV3506z+6t9TBvyNWywuGiOKutUhQai64aDuT3D1iQLnYGW+AFENxHKyPIVgn9jnBAqWcxfXrPDNrJueXrg6djuyDFTcZZeZwWAtlxgopiETXjmvzR5kanf5mvCfWhBJ8rMZ9s2UUOso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N/8srXP6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA80BC4CEF4;
	Tue,  9 Sep 2025 18:58:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757444314;
	bh=IJpRybl6wZkXSYJV4SH32imyyijpchacbDEO/H44TuY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=N/8srXP68tWpQlLSmnLOAlU4trL0J3o2OBkMxrwvGzygQXz6FMDlDC/TkQdOJwEXw
	 aJ15MYexNRq/DisF8TEA7bEMlB+UlyumMr/M+FEN6NtIbbm3QcN9w4cp4VTmLFGURV
	 RkSwAntJxg7lJI2wigvs554SUvnsRct31NW/CTU51f9r9Hjidlud3qqYooYUqZavNz
	 Hy0vkneK7hyTnuxoaHxYk10tiFYCh3Sji3Uvz5BMgyR0iy42c5inXNklskAXFG5MGB
	 +XuBA1oa9iKzdGC4X2F/pbX1L8DFD0qfAaefoC7/TEE/Yk9aSrPAs4gs3PokhZzxV6
	 tSY11gx/Y1Baw==
Date: Tue, 9 Sep 2025 20:58:29 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: Thiago Jung Bauermann <thiago.bauermann@linaro.org>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/sigaction.2: Update si_code list with Linux
 v6.16
Message-ID: <jjyin6xofibfjxs46dkhb7jg274tmhpyf37nu77fcuutglv63j@2l6bbcqdyjih>
References: <20250828210752.619435-1-thiago.bauermann@linaro.org>
 <66a84774-0c5b-4dc1-af25-1e6d35e3e5ef@redhat.com>
 <87h5xkgrly.fsf@linaro.org>
 <1131d940-b487-4ce4-8316-533cffbdc173@redhat.com>
 <87plc071y7.fsf@linaro.org>
 <pb4yns6tmw5x25tvflkgnyqwfkusthtrnd66il7e22adisk5in@4qzbdyda3ro2>
 <e42e4ca6-6e3e-4b5a-9028-0ccf578a2d66@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qajjirw77sgapfdh"
Content-Disposition: inline
In-Reply-To: <e42e4ca6-6e3e-4b5a-9028-0ccf578a2d66@redhat.com>


--qajjirw77sgapfdh
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: Thiago Jung Bauermann <thiago.bauermann@linaro.org>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/sigaction.2: Update si_code list with Linux
 v6.16
References: <20250828210752.619435-1-thiago.bauermann@linaro.org>
 <66a84774-0c5b-4dc1-af25-1e6d35e3e5ef@redhat.com>
 <87h5xkgrly.fsf@linaro.org>
 <1131d940-b487-4ce4-8316-533cffbdc173@redhat.com>
 <87plc071y7.fsf@linaro.org>
 <pb4yns6tmw5x25tvflkgnyqwfkusthtrnd66il7e22adisk5in@4qzbdyda3ro2>
 <e42e4ca6-6e3e-4b5a-9028-0ccf578a2d66@redhat.com>
MIME-Version: 1.0
In-Reply-To: <e42e4ca6-6e3e-4b5a-9028-0ccf578a2d66@redhat.com>

Hi Carlos,

On Tue, Sep 09, 2025 at 02:26:10PM -0400, Carlos O'Donell wrote:
> > So, all the things that Carlos said weren't in glibc are now in glibc?
>=20
> Yes. https://sourceware.org/cgit/glibc/commit/?id=3D6f120faf649f03a261e3e=
64d5b5991030383c1b3

Thanks!

> > Would you mind adding "(since glibc X.Y)" to them in the patch?
>=20
> You could write "(since glibc 2.43)" though it won't be released until 20=
26-02-01.

Yep, that will work.  We can fix the page if the final version number
ends up being different.


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--qajjirw77sgapfdh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjAeNUACgkQ64mZXMKQ
wqmqCQ//VGfCDE4198pxUFhPovdB0tZyHWAEqhQKN6Lrw1r4CaC72WE3EYWhmqhg
PgTCG63HnGRtmY2diGFI3ugDTaKCNh937Q9UVtiCFebgHOU00I3vaZQvqJNPC/aS
SvPlnzu9WmvJcqs1ev0p0bsQpdwPc/ZuTmHJfF7LYlfFRQpnE6ztzCMYUi7+MzO3
dhP/rNfzi//45BvwGLz5H579F4LxC3brBXmtB3spENgOyy3tHoI04YkSYG03s++1
9g2TKq4mOUAHcDhWuE8sXd2TgPvDeFMgPjqPHE/otLnboiar/Jko+cgcovuc6xmV
G+Ox8DXxYjFsy7YV0xs4l9A9gYArIghQZFkx++XB881r9rtZEWq3g3VuziPZVcXX
HMRgE7Cbi69Zn8uh4oYM45512q2s/NQVBTFuiDsTvFaYWHwBNWv8H1i+fh4W34Uu
OevZwggqp7gYC121RitMvBWuPc/oRlDaTVI2WaZdENXstQuSkz213fr8iHe9v1tf
3O09rrfIiUVSUnVnaNyB3DccYoL4LHevilfonZM29ieizNUo1wAZU4fo6N1gumUd
S94K/Yplqumy+Dh7d2wBmIwJNWu5tVJCNQDnWQ6MwrmMPrA670Ct683GumN1a23z
Or1iWX6s6FNQ71UnMirqWzJ9kum9mtXCHBX124B75AZD0IPDYM8=
=NxeZ
-----END PGP SIGNATURE-----

--qajjirw77sgapfdh--

