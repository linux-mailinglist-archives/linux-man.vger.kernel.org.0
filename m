Return-Path: <linux-man+bounces-3975-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BBC5B9EEEF
	for <lists+linux-man@lfdr.de>; Thu, 25 Sep 2025 13:35:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E72704C35A5
	for <lists+linux-man@lfdr.de>; Thu, 25 Sep 2025 11:35:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A8482FB976;
	Thu, 25 Sep 2025 11:35:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OxrOHZoT"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 594EF2FB973
	for <linux-man@vger.kernel.org>; Thu, 25 Sep 2025 11:35:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758800142; cv=none; b=NvNc1Dx/s2k14Es4KAp/MUmSTpKgKWFr/Yx9qXAbLZBvgif1stYc+yozm9y+1QR0qenc/hv5RVDreAw3LCQ6GBIT2ozH0szhOjAR9BhwAKBxRzTr04K/xXVaSqrFHbdSrnp60WoT06YZA+5fw3HWfax8d2g9Q5GMVhcS51BQsGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758800142; c=relaxed/simple;
	bh=ecNHARYzLGWgWrGAK1WVhP9PSQXzZoAm758J6ocT0Js=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KROyvzb30aDHsKdhiMmUdiL+NUQ1xEd5ujkW2P55SZkZadG7N/C7Z+W/Qhm1zOvzRFv9nYnzPBdMcFa6JB8kwB6rmATLxMy0FIp5+OFUQeWDiv077U/uYPdItxDwcoJDlJtfIr6unQbK6Z5IFfxMo2br7prrXNf28D4S5xYS9Zc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OxrOHZoT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 571DAC4CEF0;
	Thu, 25 Sep 2025 11:35:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758800142;
	bh=ecNHARYzLGWgWrGAK1WVhP9PSQXzZoAm758J6ocT0Js=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OxrOHZoTx0PrIPQeM4jqwI8qewxUt/AEeSZA9ccYtCgDJvd8dToUjDVS+oYdRZcmg
	 dDJFmjtEJ5/2/KhEA9ZVjk9i6ZCvAR8XXD8nWKbQ5DTcTzdRVYuIL7UDIlIc76ahRg
	 UlXb4WEnMvflkBb9CSFI+cFg8J3WCJLsVwr/nUSL3R9xG0HU2Hn5jbMXCn8YbseDk/
	 3E2UQJKk6y5w6PFKwuia70KVuyO/GOBiVSLQUSbFx7RyJvnUVbiuaEeovXB1TOTkjC
	 pXDhAmaO0qW73n+X+RbqlAHNNRPxwchkkjJTW4bNkhBPtyWO4nG6Qs25d57wnqKWBy
	 Bb9G+zSInSh+Q==
Date: Thu, 25 Sep 2025 13:35:37 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Jonathon Reinhart <jrreinhart@google.com>
Cc: linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>, 
	Rishi Sikka <rishisikka@google.com>
Subject: Re: [PATCH] capabilities.7: Expand CAP_SYS_PTRACE to include /proc
Message-ID: <ssplut22iy7ipmbfkm57hfrzjq6ii3hjffvixddxs3yc3dui66@hhvb4lckwbzs>
References: <20250924152313.1902586-1-jrreinhart@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zktfe67ft7hcnx6j"
Content-Disposition: inline
In-Reply-To: <20250924152313.1902586-1-jrreinhart@google.com>


--zktfe67ft7hcnx6j
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jonathon Reinhart <jrreinhart@google.com>
Cc: linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>, 
	Rishi Sikka <rishisikka@google.com>
Subject: Re: [PATCH] capabilities.7: Expand CAP_SYS_PTRACE to include /proc
Message-ID: <ssplut22iy7ipmbfkm57hfrzjq6ii3hjffvixddxs3yc3dui66@hhvb4lckwbzs>
References: <20250924152313.1902586-1-jrreinhart@google.com>
MIME-Version: 1.0
In-Reply-To: <20250924152313.1902586-1-jrreinhart@google.com>

Hi Jonathon,

On Wed, Sep 24, 2025 at 03:23:13PM +0000, Jonathon Reinhart wrote:
> CAP_SYS_PTRACE is required (via ptrace_may_access) for accessing various
> things in /proc, so include it in the CAP_SYS_PTRACE bullet list.

Was it always needed?  Or when did this change?  Could you please
provide links to the relevant commits or source code (or any other
useful source of information)?


Have a lovely day!
Alex

>=20
> Also, add a hint that other things throughout the kernel may check this
> via ptrace_may_access().
>=20
> Signed-off-by: Jonathon Reinhart <jrreinhart@google.com>
> ---
>  man/man7/capabilities.7 | 16 +++++++++++++++-
>  1 file changed, 15 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man7/capabilities.7 b/man/man7/capabilities.7
> index f8b389f1e..f9b9bee23 100644
> --- a/man/man7/capabilities.7
> +++ b/man/man7/capabilities.7
> @@ -625,6 +625,15 @@ Use
>  Trace arbitrary processes using
>  .BR ptrace (2);
>  .IP \[bu]
> +inspect sensitive information of other processes via
> +.IR /proc
> +(e.g., reading
> +.IR /proc/ pid /maps ,
> +.IR /proc/ pid /mem ,
> +or reading symbolic links
> +.IR /proc/ pid /exe ,
> +.IR /proc/ pid /fd/* );
> +.IP \[bu]
>  apply
>  .BR get_robust_list (2)
>  to arbitrary processes;
> @@ -635,7 +644,12 @@ and
>  .BR process_vm_writev (2);
>  .IP \[bu]
>  inspect processes using
> -.BR kcmp (2).
> +.BR kcmp (2);
> +.IP \[bu]
> +perform other privileged process-inspection and debugging operations.
> +(See uses of the
> +.IR ptrace_may_access()
> +kernel function.)
>  .RE
>  .PD
>  .TP
> --=20
> 2.51.0.534.gc79095c0ca-goog
>=20
>=20

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--zktfe67ft7hcnx6j
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjVKQkACgkQ64mZXMKQ
wqmpcg/8DsuZF+EtdxUgDJ3qAgtvowXwKL6hFTeypBnCQcQ/piPi/OwHNTkMsxkZ
anU7tBssU2/ecsdT0DmIJS8NavbXmAt1+387SwwTMtmgPiDx0IAp+KCvtJgPhIBE
quvYR+ZmZZXXtgVq6uB6WMkzot2TiAIcmpwidWKW4RrUMNEVpOMhin2TqevmR8+G
IhRu5/xYP0HVJVomhgr23gKxvkylgqtGULYspTKsWpZVGvCzI6TU2iqZE+AQJjGJ
tXKQGcTyMhfW3qhYJZ5bpzt+JBYYklzvKfJUMfruzKmi4TZv/kgEb1wnr0s9Drwk
OyWcxWQ7SMzVnAlVvC9qNB5XCZCa0W2va1DexMyfdvLc4KtGiiG+uZrF0fiSKao9
Zn4erfN1eQ53dXzndRp50DeZOULAQlV/gHA5P6NqCtK/Vt4HHoXVRJ9636vGTjo5
2eEsztDrt2YKN+2Gjf2m4zBNeN7VO8zdKsq6wNPsmT2Al+NlepPqIF4xLwb2eyCB
SJAqLQqsoLl0h81BMu2UYArwdItf7uRsMOqr0UPiCI5DcJafY+QvUd5tucspZYDF
AcetSM/wvCL/Bz2ThIR5yqVLnol1OvIMG8Jmp1LzZyk3ynzEZ9TLE5geY7JMDFWF
lPypW8wS4/K2jSmPBTjLEP8Bc1bobq+67XszpqHl8KQ1bULmPV0=
=ahvE
-----END PGP SIGNATURE-----

--zktfe67ft7hcnx6j--

