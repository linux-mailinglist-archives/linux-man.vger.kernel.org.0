Return-Path: <linux-man+bounces-5491-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id fafuBpRjBGruHwIAu9opvQ
	(envelope-from <linux-man+bounces-5491-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 13 May 2026 13:42:12 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B871532719
	for <lists+linux-man@lfdr.de>; Wed, 13 May 2026 13:42:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3C4FB30BE608
	for <lists+linux-man@lfdr.de>; Wed, 13 May 2026 11:40:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEBAA3FE379;
	Wed, 13 May 2026 11:40:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RVmaBBxY"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A150D3FA5D8
	for <linux-man@vger.kernel.org>; Wed, 13 May 2026 11:40:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778672442; cv=none; b=raFuZrUzcwnavznsGa8098csioP16lkCffoayGpcd+iYw/jEn4cz2EPsHzyIXoQjN5X1PqAvx5dOhV3dRXNphDIZ91tM5TmK04zr/zRR5DJtvAa81BhFQNl6j/Gv41EA2fD33ePC9dBFKiF/taZN2WPiXa3CfU5wGNKz/D0YQNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778672442; c=relaxed/simple;
	bh=58ZTDZ4gpXs0vGdeIGYZ0HexfFKB5JZ3zVLtVWDHxyY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=k2mPrzI6UghUnLIiDKuIwVyj/ZOhIYKS/7w7bbErZq/7BlujtmYMbQqgkT/x/J15OVtC2LlttrncRLsNaqRWBIKH/fDW+OJr3xt5aId66nbJj48Lax/s3zynUqXgDsdMNRFN0iN/W3UWV4RhUX5zbQOy4I3wXx+HvK5jTsNlm/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RVmaBBxY; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F28EC2BCB7;
	Wed, 13 May 2026 11:40:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778672442;
	bh=58ZTDZ4gpXs0vGdeIGYZ0HexfFKB5JZ3zVLtVWDHxyY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RVmaBBxYhpq14Nb43FEegVOAyi1doDqpMhrIaVA/FXs8UONzF+zweNSQqZjTMT+uT
	 EnWMVQsQZ/ZCaSzOrJdiQC7edL1OoPWq7Fmv5Pl/nrk37Zln2mOFJEpkbQbrrYS/iR
	 r1iJtIJqiZ2ziNnr4+dPniQJ5yLAVg/IdazEvChcI7VGzWmtw0SPxjv8+wqQcTuWwU
	 6wu2LqzDTvjIWdjXUmYWAgN/SoTNpClfQrdDFk+mS28c8yYTXYM3d0qXynZ5w8FdwB
	 MWqkoi2TKkbhq4GSHbx+VRSbAqCXXcfkJkwBCuV3gUnrWIBV8zRICit2YhLUmN5kFi
	 N2YV688T5IPZw==
Date: Wed, 13 May 2026 13:40:39 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Matthieu Buffet <matthieu@buffet.re>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v3 1/2] man/man7/pid_namespaces.7: Fix requirements on
 namespace+process trees
Message-ID: <agRi-dosgYg5EK8h@devuan>
References: <75614ec3-0def-4cdd-b45c-17d21cf8357b@buffet.re>
 <20260513083339.27911-1-matthieu@buffet.re>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wxenms3u6tqugegj"
Content-Disposition: inline
In-Reply-To: <20260513083339.27911-1-matthieu@buffet.re>
X-Rspamd-Queue-Id: 7B871532719
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5491-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[alejandro-colomar.es:url,buffet.re:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Action: no action


--wxenms3u6tqugegj
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Matthieu Buffet <matthieu@buffet.re>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v3 1/2] man/man7/pid_namespaces.7: Fix requirements on
 namespace+process trees
Message-ID: <agRi-dosgYg5EK8h@devuan>
References: <75614ec3-0def-4cdd-b45c-17d21cf8357b@buffet.re>
 <20260513083339.27911-1-matthieu@buffet.re>
MIME-Version: 1.0
In-Reply-To: <20260513083339.27911-1-matthieu@buffet.re>

Hi Matthieu,

[CC +=3D linux-man@]

(You forgot to CC the list.)

On 2026-05-13T10:33:38+0200, Matthieu Buffet wrote:
> Creating processes in non-direct-child PID namespaces has been possible
> since the addition of setns() support for PID namespaces in commit
> 57e8391d3276 (2012-11-19; "pidns: Add setns support"). The tree check in
> pidns_install() in kernel/pid_namespace.c has always allowed
> non-direct-child PID namespaces, but was written inline instead of the
> more readable current pidns_is_ancestor() helper (possibly explaining
> the confusion).
>=20
> Fixes: 6e377abf9 (2014-09-13; "pid_namespaces.7: Parent process relations=
hips mirror parent PID namespace relationships")
> Signed-off-by: Matthieu Buffet <matthieu@buffet.re>

Thanks!  I've applied the patch.


Cheers,
Alex

> ---
>  man/man7/pid_namespaces.7 | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>=20
> diff --git a/man/man7/pid_namespaces.7 b/man/man7/pid_namespaces.7
> index 1068d5be5..b19afd505 100644
> --- a/man/man7/pid_namespaces.7
> +++ b/man/man7/pid_namespaces.7
> @@ -214,11 +214,12 @@ and cannot be changed thereafter.
>  Among other things,
>  this means that
>  the parental relationship between processes
> -mirrors
> +loosely mirrors
>  the parental relationship between PID namespaces:
>  the parent of a process
>  is either in the same namespace
> -or resides in the immediate parent PID namespace.
> +or resides in an ancestor PID namespace
> +(immediate parent or not).
>  .P
>  A process may call
>  .BR unshare (2)
>=20
> base-commit: 9afc5a7cfa9ecd91db055abb875e3b83d086f6b5
> --=20
> 2.47.3
>=20

--=20
<https://www.alejandro-colomar.es>

--wxenms3u6tqugegj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmoEYzYACgkQ64mZXMKQ
wqlgNw/9EGxZiZeAYEriBqlQg2WV1qD7y4L4stLzCxSsdeZF27GrNLHSkiDZsF6W
u9MgPheF74CWn7Y7ZOfLhpDN6s0OFbEICmo6WLkGOK9ETueJ6Vz8VVHMnoYUwemG
sBghn9La2B4+ricSzGvb9+OkgONXwatU1R8ehcpnM66JbZcvTDABk0AfxLRZlCFP
aYBsoW0vwZltJNh/nLr425adF8ouLK6bB18oAItLw4nV3V+FubZMFDDcI895ojwj
Z71hnoxLok5o0NskEZk8TsCRugOMvW96b93yguzHKe616gspk+9OacIP8Q+jPVEG
Q2rOHJ6sqU5hCT6C18ZE3v6T8iYTuN9/teUayEhrFF8Ds4wO4PJIHX8xtLXefeTc
PkUL1vn+3wamo3Mcb5m6LiLqk78bhDW+sWPIX9hU7qDQrr/DwP0nxDHe6rVz3Mjz
pmErg+760LOPxLqYSJi5glXTohr6DDrzV9M4Nz39YELh7U7CEe0iTie8qZtvic5h
CAtPK3sfuJNdKWsbIFQAfJ+Z3TgE7mZqUZRVCrImtnsXxnlMWT5OsIdOlCBBffkz
hCXTYR/t2WctsHjkDzWFfv+a+Iojpu4RapLKS9h9zuX2r1fHAmB6W0msLAzYpMJF
jDkOuZ3sCzSPNoa7WS93bSNj5cx7474/E7cWzh0el/qXc3p1FIE=
=I3+c
-----END PGP SIGNATURE-----

--wxenms3u6tqugegj--

