Return-Path: <linux-man+bounces-5492-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cLHxGYJjBGq6HgIAu9opvQ
	(envelope-from <linux-man+bounces-5492-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 13 May 2026 13:41:54 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B2FE532711
	for <lists+linux-man@lfdr.de>; Wed, 13 May 2026 13:41:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id CCDEA303D037
	for <lists+linux-man@lfdr.de>; Wed, 13 May 2026 11:41:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 052953D525B;
	Wed, 13 May 2026 11:41:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vf1soxjD"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8B143FE342
	for <linux-man@vger.kernel.org>; Wed, 13 May 2026 11:41:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778672510; cv=none; b=SanpXKVdHsJC+jbJqTRmGXAe6WFyjZiFPOHKICb2Kc8KJWVL3VjzDxvyV0GhjznEMs6hNj/ed/0m/Gj5JqJlIVrjwejudenIvUdO7oYLqIwdgNGvddggc8XHU9Lv2+N2xA6a3327mG+NJ+C4zcqeNTAYXoJvMb5r3IMBLtJaUMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778672510; c=relaxed/simple;
	bh=iGDUAhs4hUDDJB0OO+pOjb61D+3AHfRls4W53ktTGTQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EFPQJnAroRWzG17F7FGYoIPO0W+MOby21hT4Lqro2ecR/n7EoISSvvu2Rz1WRmXQztZPmWynknV+FcNzG753ehaQwPhjINmlAuzkwwdPlyz9LQXyzN7dBgdHEGcyOK5CZUi12ECtamivYQvEF3DFHkKLDxLxeDe3hjg+Xz8m0Ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vf1soxjD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7060AC2BCB7;
	Wed, 13 May 2026 11:41:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778672510;
	bh=iGDUAhs4hUDDJB0OO+pOjb61D+3AHfRls4W53ktTGTQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Vf1soxjDjOIqM/drU0yUrwl2FBDgL16aPGdFDx7EosFVt2k00pjP6iiIvhkxz395H
	 hQ99TWIQK+nSV5CkgeUr5klya56/c1yqjNCnM4bscvC7m/aoWQhzuy8SV0dJKaVcsM
	 6EbquwyMOybEvk+8q/J0jiCzNZCCq5Whb+qHMgMJox86kSMPwz1DonpKw6SKE4u3uh
	 q49r3KTnVIzqHVpHt8/QzLe+hhOsQu+2gHMyHWBFKdM4DEHWCac/hdhaYgDpDk4+Ng
	 jHzT5UU5gPgUV2InRfgBy/dkKyvVP2Z5k6mBy/+ZD8J1b/GNzrUeoAh8uqTVMYB2bQ
	 AjiqBH2UCysaQ==
Date: Wed, 13 May 2026 13:41:46 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Matthieu Buffet <matthieu@buffet.re>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v3 2/2] man/man7/pid_namespaces.7: Add setns restriction
 and reasoning
Message-ID: <agRjUNiEyfvDxRl0@devuan>
References: <75614ec3-0def-4cdd-b45c-17d21cf8357b@buffet.re>
 <20260513083339.27911-1-matthieu@buffet.re>
 <20260513083339.27911-2-matthieu@buffet.re>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uftser3ci3vqjigd"
Content-Disposition: inline
In-Reply-To: <20260513083339.27911-2-matthieu@buffet.re>
X-Rspamd-Queue-Id: 0B2FE532711
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5492-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,alejandro-colomar.es:url,buffet.re:email]
X-Rspamd-Action: no action


--uftser3ci3vqjigd
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Matthieu Buffet <matthieu@buffet.re>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v3 2/2] man/man7/pid_namespaces.7: Add setns restriction
 and reasoning
Message-ID: <agRjUNiEyfvDxRl0@devuan>
References: <75614ec3-0def-4cdd-b45c-17d21cf8357b@buffet.re>
 <20260513083339.27911-1-matthieu@buffet.re>
 <20260513083339.27911-2-matthieu@buffet.re>
MIME-Version: 1.0
In-Reply-To: <20260513083339.27911-2-matthieu@buffet.re>

[CC +=3D linux-man@]

Hi Matthieu,

(You forgot to CC the list.)

On 2026-05-13T10:33:39+0200, Matthieu Buffet wrote:
> The logical implication between PID namespaces being readonly after
> process creation and process trees needing to loosely mirror PID
> namespaces is not trivial to follow. Part of that implication is
> implicit: since PID namespace membership is readonly, one has to use
> fork() or one of its variants to "change" PID namespace, and these APIs
> need to return a valid child PID in the parent namespace. The
> consequence could also be made more explicit (setns() will fail on
> non-descendant PID namespaces) while explaining how this is implemented.
>=20
> Signed-off-by: Matthieu Buffet <matthieu@buffet.re>

I've applied the patch.  Thanks!


Cheers,
Alex

> ---
>  man/man7/pid_namespaces.7 | 17 +++++++++++++++--
>  1 file changed, 15 insertions(+), 2 deletions(-)
>=20
> diff --git a/man/man7/pid_namespaces.7 b/man/man7/pid_namespaces.7
> index b19afd505..c4a4a2723 100644
> --- a/man/man7/pid_namespaces.7
> +++ b/man/man7/pid_namespaces.7
> @@ -211,8 +211,12 @@ which would break many applications and libraries.
>  To put things another way:
>  a process's PID namespace membership is determined when the process is c=
reated
>  and cannot be changed thereafter.
> -Among other things,
> -this means that
> +.P
> +Because of this,
> +and because system calls to create a process
> +in another namespace
> +need to return a meaningful new PID
> +in the namespace of their caller,
>  the parental relationship between processes
>  loosely mirrors
>  the parental relationship between PID namespaces:
> @@ -220,6 +224,15 @@ the parent of a process
>  is either in the same namespace
>  or resides in an ancestor PID namespace
>  (immediate parent or not).
> +This is enforced by the design of
> +.BR clone (2)
> +and
> +.BR unshare (2),
> +while
> +.BR setns (2)
> +is restricted to only accept
> +the current PID namespace
> +and its descendants.
>  .P
>  A process may call
>  .BR unshare (2)
> --=20
> 2.47.3
>=20

--=20
<https://www.alejandro-colomar.es>

--uftser3ci3vqjigd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmoEY3kACgkQ64mZXMKQ
wqnImhAAgMGUKCUBYSDinEAxeZx5g29KXCq4jnbGs6kchYnKpeN2qTmcQojg1wUI
mMe3uNfF4MX/UKlUQJZZvMUX9Mb6V2Jtu5y40NSd3BJxcGO+O5nhjLuunlDnHGEo
OBO65sLIx+lln6kiNrqKmTdhMQVZxjOimIjVNicS/IvK0Lxswo55yQKfyxEdJTNP
0w8/bjberpbaYdHk6Ct0UWgRF0GDxjscNgjhEypuNyUgK0+kPlGcN3ta0gv8zr1N
xMzT6s+07OySQnakM9zLsyvDQrScPJXVnzzTgTIK0miNT4sYyF2plUfzm2kdhTwk
yigvdH053qOfc2l/7wtymtNPuhlJGLrY7iWJ3EuWdRVX15kVofb5BQFlKliwKxVL
aXnEaJ7SP+LxiMzpVOnAXymwa+d4OrQadgyLM2cFmCVKvAbTIDh2nQiL45vMjMyb
9gEgaSgMB035HBHzYoWlcbrFW7nc7IdTceZ7exh6z1UvjkT73+wGMLZoZp3V8tX5
N56Zn9m59TwWCJGG8anD5nSYzkgftzxfBNcUHgaw+QVzeoQpNWgz/HAdpFpgPXw7
FORmJwpzY7ccZMKXgOnZmAefrV7AJ+fc+wt5fgpDIFNqXIYSqJwmPLQud+g2rroX
hxl+bwudfz/c2mOY9B4Kiw0q0l5+70ybiXt3NfD0jJaK+EseZoM=
=tPwq
-----END PGP SIGNATURE-----

--uftser3ci3vqjigd--

