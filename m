Return-Path: <linux-man+bounces-5201-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wDS3C4Z0m2lkzwMAu9opvQ
	(envelope-from <linux-man+bounces-5201-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 22:26:30 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4470C1706DA
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 22:26:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9868C30091DC
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 21:26:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BE8F23BF83;
	Sun, 22 Feb 2026 21:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="neGtcO6X"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3AC21A2C04
	for <linux-man@vger.kernel.org>; Sun, 22 Feb 2026 21:26:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771795582; cv=none; b=fPCI9eCYEK1GFwK5wrep80ETixXUUPTZrM4sR6vsnbp9OOQlyQgyxKuZB3vyLl3fJUSponqXmtgYt50deBasX10iQzFcJ9/C9fYKmp19+reajUipxHT7f5S3AmG9nip6GRp31d+nN/NPB9YAC2vgKqH/vV03jo2QfvMb2wfGBHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771795582; c=relaxed/simple;
	bh=lVh5MU1vFbsCKDImpZJ7jriGfzQyVA5qm7PBzQKqRSA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Z5nqKGK8Ksuj88ppMeX1q+SvskHG7qK4OvFT74iMcPuRn8K6fe48c9xMaVyaTgFxVy806xjkwgbHnsi2ORalCJe0MJUGJBGBleFhjLOz0azTp4EtJwc3L0I/Sm/bYuoQkdzpqDwOmcivk0PzuSS6WzOFHi8VWPgZ8p+4/PCN1OE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=neGtcO6X; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C2EFFC116D0;
	Sun, 22 Feb 2026 21:26:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771795582;
	bh=lVh5MU1vFbsCKDImpZJ7jriGfzQyVA5qm7PBzQKqRSA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=neGtcO6XLoUW2oPYgwRPNN866Xfh7LrHK9kkoPLt3GKaTXYVW/EZWu5ovsdzbrTru
	 wT/9rOWL24pH0Oy3cI7phI8DyH7h7gl/d6nlamupgiXAxHtWxP6H6CoQuD5LmOSrJR
	 xQBIcRfxKQjPf8SN9OH9J0zg+F8rIB3w8+ZkJqd+ayXr+Ii6U5apWH4gzgtEcyFAml
	 EjOoLtgC8L4ie73OXC4pvw2Op3Cj7g7OlME0Cp3V3ojvJ89QmCUrTQO894ylDeM963
	 LeUZYwrLrqqWQakS5xvNgCmDAW9wdp+ztgQR6YaiScyu9J3f/oEg8IoDbm6kSfx9Ie
	 GLhUlgXA2sY2A==
Date: Sun, 22 Feb 2026 22:26:19 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <dev@sethm.id.au>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 0/5] man/man2/*: Miscellaneous fixes
Message-ID: <aZt0aDVJB3KnaXfe@devuan>
References: <cover.1771750388.git.dev@sethm.id.au>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3kr2llvchnuhmjwh"
Content-Disposition: inline
In-Reply-To: <cover.1771750388.git.dev@sethm.id.au>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5201-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[alejandro-colomar.es:url]
X-Rspamd-Queue-Id: 4470C1706DA
X-Rspamd-Action: no action


--3kr2llvchnuhmjwh
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <dev@sethm.id.au>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 0/5] man/man2/*: Miscellaneous fixes
Message-ID: <aZt0aDVJB3KnaXfe@devuan>
References: <cover.1771750388.git.dev@sethm.id.au>
MIME-Version: 1.0
In-Reply-To: <cover.1771750388.git.dev@sethm.id.au>

Hi Seth,

On 2026-02-22T20:12:10+1000, Seth McDonald wrote:
> Hi Alex,
>=20
> This is just a handful of minor fixes I came across, mainly for making
> some formatting more consistent.
>=20
> Btw, could you let me know if these patches' *PGP signatures are valid?
> I've written a script to help with signing outgoing patches and want to
> make sure it's working correctly.
>=20
> Seth McDonald (5):
>   man/man2/open_tree.2: HISTORY: ffix
>   man/man2/perfmonctl.2: HISTORY: wfix
>   man/man2/process_madvise.2: HISTORY: ffix
>   man/man2/readv.2: HISTORY: ffix
>   man/man2/s390_guarded_storage.2: HISTORY: ffix

I've applied all the patches; thanks!


Cheers,
Alex

>=20
>  man/man2/open_tree.2            |  8 +++++---
>  man/man2/perfmonctl.2           |  6 +++---
>  man/man2/process_madvise.2      |  2 +-
>  man/man2/readv.2                | 12 ++++++++----
>  man/man2/s390_guarded_storage.2 |  2 +-
>  5 files changed, 18 insertions(+), 12 deletions(-)
>=20
> Range-diff:
> -:  ------------ > 1:  3b27c0e095e3 man/man2/open_tree.2: HISTORY: ffix
> -:  ------------ > 2:  5be05e964e14 man/man2/perfmonctl.2: HISTORY: wfix
> -:  ------------ > 3:  e0ecd2307cf9 man/man2/process_madvise.2: HISTORY: =
ffix
> -:  ------------ > 4:  f336517a9084 man/man2/readv.2: HISTORY: ffix
> -:  ------------ > 5:  464d2acd9d62 man/man2/s390_guarded_storage.2: HIST=
ORY: ffix
>=20
> base-commit: 8f299601fb600d305279acc03a92437a8378d0b6
> --=20
> 2.53.0.1



--=20
<https://www.alejandro-colomar.es>

--3kr2llvchnuhmjwh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmbdHoACgkQ64mZXMKQ
wqknZhAAkvgQjFQKQyRC8FpomJiP0J9Vr52m33vQEg4OVcXB5SMWZgw0XxI9vE7l
RWbuBLyjoh78KFjV6ulspJUo4LJeEb1tX479BEdAcHuf3/ju6cmEcF/JVSEEPp2H
WCqAc1m3HAmi4XcB0UQxm4k6S61wjpsj2T41SWQ4PfZjbi7iJNS969jR31DJbFB6
GnwOyP3pvZa1WVfKdhbxaN4VEgu0OUKFH9UlaNROwTF/NrKgafUJJ6GEHinXtMqv
xz9P+Xjwb5kEtCdljyf+38aJmRPlDor4OcQWSYhP/+gCKyjrZRqP9BwkT0N1JIvh
bd2/o61cIvVWhukpVKfai/RGtGSImUiep7n074Rwjwg8CZCqI79ynBeRAngVTyc1
dTqclgnph8F4BAiUPAH8O2+EhgQIsIoKpGhPcFv0yp3YBS02R5RGFF+GgGzaXAIE
R5SxcMHAs2LaUBBgDkQIa3bor5A7w35igLOl09CY2pSBEZD1yIeocWXAmfEOYf1n
AwA6crIFOsa5/OcWcQ1FD+ZHbVL2i68d0oS4UpdcuoEp6JzXs/pPXYcKT7aOKR8O
60INhGuiV7lKK6yRysanV95F4CKqH6VDNVIStXtruXP9Az62BnOht39JDwXeOa37
MN+Mzm/MLOoEbJ1EEScoG6/LMzHZUJ0J0c9H00W12qPpGMk68Lo=
=GdFY
-----END PGP SIGNATURE-----

--3kr2llvchnuhmjwh--

