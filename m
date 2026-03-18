Return-Path: <linux-man+bounces-5268-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YCXyLYHzuWmVPwIAu9opvQ
	(envelope-from <linux-man+bounces-5268-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 18 Mar 2026 01:36:17 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 098972B4A74
	for <lists+linux-man@lfdr.de>; Wed, 18 Mar 2026 01:36:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 04A2B307E090
	for <lists+linux-man@lfdr.de>; Wed, 18 Mar 2026 00:36:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84E4A1FC7FB;
	Wed, 18 Mar 2026 00:36:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aaMmDgfP"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48A2F1A6826
	for <linux-man@vger.kernel.org>; Wed, 18 Mar 2026 00:36:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773794173; cv=none; b=lD6hM6A7b/VXJKHiWbKB65hjPogW3sj3gSWdQH0sZOqnOPACcui3iZq7eROgbZuLh6ptDl/bA7H4zWtS/RMbwOgP8rFzIfz5m23j7SMS87Y4d8/umRMDgNtAmqMBxNs1wxrHy07s+GVCG9egS25HEPunht57knNKJa7Uex6NHyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773794173; c=relaxed/simple;
	bh=aSMJ8MHGgoQTa0379P0ji/JX75p9Jb1uh8A7aYB6LpU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=J6sh0NogZS5B0ueZ/WjI1nGqH7vWQ2pzXZFnzMi3Yd2HEs4vX2EbwpJ5Y/iZICNd9vhWRQKux9pJzYhkfpogGd3zWqKtWmTyj3UeYhNiR1whGGUOfXKaKJsDt+M71IXgRtF76WK9a33zNTCvsFTRMH5dVsj9OWY8AiAKY+vpl9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aaMmDgfP; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DABEBC4CEF7;
	Wed, 18 Mar 2026 00:36:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773794172;
	bh=aSMJ8MHGgoQTa0379P0ji/JX75p9Jb1uh8A7aYB6LpU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aaMmDgfPNNrWVKJJEnAf190LBpx+wDBslS1AS4H6I72JiFVQrthAM+1Mv2CfRuh/X
	 z17xUG467OGTtlwML7gs7RGwW3aemN3ixKl+lwAMunynlyCu72K8yCwmv+RhRAZwEo
	 /tqXspsZVJT5iVewZoO00Z12L98sStpwaebHKXxVETiLGyBk6oLTpBGVE6+GDk5rLb
	 B3jsHHHKPvHC3rer3lXpkbodVmhOsZyiZyh99MFPZT9jRllWLT+KcWKqP0CtX8rzzT
	 3veydhDKw1p8KWffzmL5tpJaszsg35kaHhq5EKPI6uBCtMPIj1nwwZ5El8Cqt6OXri
	 NbBh1QSJK/u8g==
Date: Wed, 18 Mar 2026 01:36:09 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Ben Kallus <benjamin.p.kallus.gr@dartmouth.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/mmap.2: Document that MAP_GROWSDOWN doesn't
 affect mmap return value.
Message-ID: <abnyaq8-JD9oturR@devuan>
References: <20260317214652.2135374-1-benjamin.p.kallus.gr@dartmouth.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ko2rxcwq4tvhoche"
Content-Disposition: inline
In-Reply-To: <20260317214652.2135374-1-benjamin.p.kallus.gr@dartmouth.edu>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5268-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 098972B4A74
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--ko2rxcwq4tvhoche
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Ben Kallus <benjamin.p.kallus.gr@dartmouth.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/mmap.2: Document that MAP_GROWSDOWN doesn't
 affect mmap return value.
Message-ID: <abnyaq8-JD9oturR@devuan>
References: <20260317214652.2135374-1-benjamin.p.kallus.gr@dartmouth.edu>
MIME-Version: 1.0
In-Reply-To: <20260317214652.2135374-1-benjamin.p.kallus.gr@dartmouth.edu>

Hi Ben,

> Subject: Re: [PATCH] man/man2/mmap.2: Document that MAP_GROWSDOWN
> doesn't affect mmap return value.

Please include patch version in the [] prefix.  See
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIBUT=
ING.d/patches/subject#n37>.

Also, please send In-Reply-To previous iterations.  See
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIBUT=
ING.d/patches/sendmail#n17>

And ideally, include a range-diff that compares the patch against the
previous iteration.  See
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIBUT=
ING.d/patches/range-diff>.

On 2026-03-17T17:46:52-0400, Ben Kallus wrote:
> The man page states that the MAP_GROWSDOWN flag causes the kernel to retu=
rn an
> address one page lower than the mapping created. This is not true; the ke=
rnel

Please use two spaces after period.  See
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIBUT=
ING.d/patches/description#n44>.

> returns the base address of the mapping created, just as it does when
> MAP_GROWSDOWN is not passed. This can be confirmed by inspecting
> /proc/self/maps after making a gd mapping, and comparing it to the return=
ed
> value from mmap.

Please include in the commit message the example program you sent in the
previous thread about this patch.

> Fixes: 176b1a76 (2016-11-21; "mmap.2: Add (much) more detail on MAP_GROWS=
DOWN")
>=20
> Signed-off-by: Ben Kallus <benjamin.p.kallus.gr@dartmouth.edu>

Please no blank lines between Fixes and SoB.  The trailer should be a
single block.


Have a lovely night!
Alex

> ---
>  man/man2/mmap.2 | 2 --
>  1 file changed, 2 deletions(-)
>=20
> diff --git a/man/man2/mmap.2 b/man/man2/mmap.2
> index 09e7933d3..20b94c243 100644
> --- a/man/man2/mmap.2
> +++ b/man/man2/mmap.2
> @@ -276,8 +276,6 @@ should check the returned address against the request=
ed address.
>  This flag is used for stacks.
>  It indicates to the kernel virtual memory system that the mapping
>  should extend downward in memory.
> -The return address is one page lower than the memory area that is
> -actually created in the process's virtual address space.
>  Touching an address in the "guard" page below the mapping will cause
>  the mapping to grow by a page.
>  This growth can be repeated until the mapping grows to within a
> --=20
> 2.53.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es>

--ko2rxcwq4tvhoche
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmm583MACgkQ64mZXMKQ
wqm5+hAAo4bDi3xwyXK4QF/vPPY8ehCwbHX6LXvjv/iEnuQD2AnpXoLheUiyLLWn
rYShgbTxfe96BaOSQkpdFdXaLUTz56P99Z778QPm2SBH+KogmQdYgZ6ybsdnGR7C
yKFNANFZtu/oMaHmmQI9dsycb8XwAH1gyRjVjvUIaDnOSYiLdOv5wD2EtV4S7YZo
veD8TRazlaS8AR0FUeq0Kyw4Jshpjw5BzWGgIrAlwZtTOCdoEPkrAjxCd2OurJ1F
vesNQAfGNX7wIdlCiiPvgZvcMHK/xEIPN/1fH2a+XKnl48dz6Zg+yV0zNIAb4Xs9
IcoCaQ2r/nZ8996agQVvRsHNJZeQmxWQkE+Ds+C53jZbtpQ1EMgIDAw7twQrDwLv
b3EWrYRilV8Jebsvl1hXr0kbXqLQmkDnpgpo/CgPJ6HfO/gathn3+uQ7t5fPCQyv
qwUEyb3+2pN2ChRSwAp09VfFgMGXJZIbo8fXV3Fa3RcG9/cbauYfvHZ5gXxLeUgp
C5wvBFypR3+hBIbW8NIxupqkLPK4mRa/sbvKutr52GGMzSVFJeKrw9xhemSJgZJr
zRx0lYsYm4Gz1vJli0RfE8SArI6MGg8hRimYQ6NqFc7UIzSo92Jf54HSK74/NqYC
oY3K7Wcq7JdHnZ/5jEwJG9gPRIQyxm3FM9Gj3H+WrHz0m3evT74=
=/EAO
-----END PGP SIGNATURE-----

--ko2rxcwq4tvhoche--

