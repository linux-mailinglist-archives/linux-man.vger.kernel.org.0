Return-Path: <linux-man+bounces-5501-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qJK/BaS3BWrGaAIAu9opvQ
	(envelope-from <linux-man+bounces-5501-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 14 May 2026 13:53:08 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 65E4A541402
	for <lists+linux-man@lfdr.de>; Thu, 14 May 2026 13:53:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EFE4C305C60E
	for <lists+linux-man@lfdr.de>; Thu, 14 May 2026 11:49:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14FA73B8D7E;
	Thu, 14 May 2026 11:49:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MzEQkEF5"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC264385530
	for <linux-man@vger.kernel.org>; Thu, 14 May 2026 11:49:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778759369; cv=none; b=S/ofTA+aXUf+qDPVQkynIzpqbN5pGdnrjVOuN4rf6cilhQ/K1QmruxBFF9OrjCzr0z3Uf3yWccR4fQQn+LWC30mRm8WPSU5kyiK/yRX1CLaKYAlYBoyiL6VMVZeqA4s75ZlU+2ergP9YU0/56LyckPMgvc7njVMZwJ1aRYu8GoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778759369; c=relaxed/simple;
	bh=5EhUsyOqfrGwM3VHkeeuXqyidLlDW2vPIahtHKy1hdI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=r+MDS32OmRi+nFVP7Id2k6SCe8CRUuMLQHnRf/SgLkEJsDT4gp9dicakJrJ3yJnxqGl1/p8EJy8hpKJjLNW627bq9FolPcG5bEdvBb3ciMdpEZhDXCYVdPkPayQUgXPZCAZgdW3Y2e5OudU/Kq3Rwk6deO1iGCIYuFM+q05wcdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MzEQkEF5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 629B4C2BCB3;
	Thu, 14 May 2026 11:49:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778759369;
	bh=5EhUsyOqfrGwM3VHkeeuXqyidLlDW2vPIahtHKy1hdI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MzEQkEF5wp3vcyPJAskQ0zCgHuHcqqt3+KIHZnhSCl912WaXWDE/qpHySJ6M/WWec
	 0z5DScOdtAe4U+9ogTvvdJmcFXllbc7oLqn32jQEmLyNjdtCu7mrU/jb/mSzdQq6ZL
	 kJeXBsDCTlSEuZgQSKNZVBOoEAwssHt9vv26hQsJ9jSkBxUO/ouTKt8VOYM0k+MBfj
	 wSGjld+jDPZIAsaxnfF3MJKfrnd9ImKzPO0MRd0URCQqRskcyxA5Qw2fkY6hJdihkg
	 Bg+X9QYvrp+Urv34WdanIypyimfEx7AINqx/1TaYkTVICkMaOr5Veh0/xYxri8FIGQ
	 +4G/811Xp2sQA==
Date: Thu, 14 May 2026 13:49:26 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Alban Crequy <alban.crequy@gmail.com>
Cc: linux-man@vger.kernel.org, David Hildenbrand <david@kernel.org>, 
	Alban Crequy <albancrequy@microsoft.com>
Subject: Re: [PATCH] process_vm_readv.2: correct partial transfer granularity
Message-ID: <agW2O9NRtH1dxew8@devuan>
References: <20260514083659.139971-1-alban.crequy@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xvgwjhsu6clux7wz"
Content-Disposition: inline
In-Reply-To: <20260514083659.139971-1-alban.crequy@gmail.com>
X-Rspamd-Queue-Id: 65E4A541402
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5501-lists,linux-man=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,alejandro-colomar.es:url]
X-Rspamd-Action: no action


--xvgwjhsu6clux7wz
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Alban Crequy <alban.crequy@gmail.com>
Cc: linux-man@vger.kernel.org, David Hildenbrand <david@kernel.org>, 
	Alban Crequy <albancrequy@microsoft.com>
Subject: Re: [PATCH] process_vm_readv.2: correct partial transfer granularity
Message-ID: <agW2O9NRtH1dxew8@devuan>
References: <20260514083659.139971-1-alban.crequy@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260514083659.139971-1-alban.crequy@gmail.com>

Hi Alban,

On 2026-05-14T10:36:59+0200, Alban Crequy wrote:
> From: Alban Crequy <albancrequy@microsoft.com>
>=20
> The man page claimed that partial transfers apply at the granularity
> of iovec elements and that these system calls won't split a single
> iovec element. This is correct for local iovecs (which are validated
> upfront) but incorrect for remote iovecs: the kernel processes remote
> memory at page granularity via pin_user_pages_remote(), so a partial
> transfer can occur within a single remote iovec element at a page
> boundary.
>=20
> For example, if a remote iovec spans two pages and the second page is
> unmapped, the syscall returns the number of bytes from the first page
> (a partial transfer within one iovec element), not -1/EFAULT.
>=20
> I verified this by testing process_vm_readv() and process_vm_writev()
> with a 2-page remote iovec where the second page was unmapped via
> munmap(). Both returned one page worth of bytes (a short read/write),
> confirming page-granularity partial transfers.
>=20
> I was prompted to check the current behaviour by the LKML review on
> my patch (not merged yet) on process_vm_readv adding new flags:
> https://lore.kernel.org/lkml/8b29da5b-e260-4b77-a640-8abb447291d1@kernel.=
org/
>=20
> The inaccurate text was introduced in commit 0b01869b0a59
> ("process_vm_readv.2: Cleanups after comments from Mike Frysinger
> and Christopher Yeoh", 2012-04-14), based on a misinterpretation of
> a review comment. The original man page text by Christopher Yeoh
> correctly described partial transfers without claiming iovec-element
> granularity.
>=20
> Note: process_vm_writev.2 is a .so redirect to process_vm_readv.2,
> so this fix applies to both pages.
>=20
> Fixes: 0b01869b0a59 ("process_vm_readv.2: Cleanups after comments from Mi=
ke Frysinger and Christopher Yeoh")
> Signed-off-by: Alban Crequy <albancrequy@microsoft.com>

Excellent commit message; thanks!  I've applied the patch, with some
minor tweaks in the commit message, and also addition of a comma and
a couple of line breaks in the source code.


Have a lovely day!
Alex

> ---
>  man/man2/process_vm_readv.2 | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
>=20
> diff --git a/man/man2/process_vm_readv.2 b/man/man2/process_vm_readv.2
> index 66554a2cf..2ccfe60d0 100644
> --- a/man/man2/process_vm_readv.2
> +++ b/man/man2/process_vm_readv.2
> @@ -192,10 +192,13 @@ returns the number of bytes read and
>  returns the number of bytes written.
>  This return value may be less than the total number of requested bytes,
>  if a partial read/write occurred.
> -(Partial transfers apply at the granularity of
> +(Partial transfers apply at the granularity of pages in the remote proce=
ss.
> +If a remote
>  .I iovec
> -elements.
> -These system calls won't perform a partial transfer that splits a single
> +element spans multiple pages and one of those pages is invalid
> +or not resident,
> +data may be transferred from/to the pages preceding the failing page,
> +resulting in a partial transfer that splits a single
>  .I iovec
>  element.)
>  The caller should check the return value to determine whether
> --=20
> 2.45.0
>=20

--=20
<https://www.alejandro-colomar.es>

--xvgwjhsu6clux7wz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmoFtsUACgkQ64mZXMKQ
wqlNww/+MHqdC/lIdSt0Mo31F8Q5oH/ByeBUjVGdh2Pql0XS1TVCIam21TTNyqjx
Y3x77P+5DeZLNCPAs1umoEUiuTUa5n3d7KTLYdCcUY8hUwSdnAR88gWe4ksRCBo2
J8Lx7nL7bCG2fFMui5Yd4SWx6DeVPUye9vVsD9mh6dGVgbRkiXlhE8Djck6tUUvQ
EiRxhbGbsfGw7Vwa0SmacZRoltbxyRTiodUSrsABdOfRmn072ZBXEZ9hrb0ZmbvR
tCGpq1lSnFeX3QIduhbkb6gtejpb5H3pnoKYkk3Ex6/EuCOe03VIi+AxLASaPT8h
60YMvSbZu/3p6rXPaMRdrNmlbzbEKhNSfltyJuYqWHM5BuM521EMv0E9jegVOPjr
q27FQzSWK9ksSTUZEUwpYli+7tQlndKm0bLtCXU/FXlE6vfDyG3QVEtPephLF0DS
ZZBrabGWMTLn8dg0KHQLiiL+4+H270RewTppQuls09OsjLIZ9ArCqMiNo+gQWoKh
cDXSG8kurKs7L+/APY3RoPLdtDVs0NFH61YxgqgepTcDkFIwc7CeGBSZuKbm1SuN
RbT/4PQO7lrwlvtX8Rg0BW7FUXW7CJiHS/Qg7oVVm0wS2k/UvgD+yfK2r+DijHQn
bMAuPBhUaSPFMa2qdgKPB+/moVfARtK2NC2D8oyvL9sr8a7dZCk=
=ph2A
-----END PGP SIGNATURE-----

--xvgwjhsu6clux7wz--

