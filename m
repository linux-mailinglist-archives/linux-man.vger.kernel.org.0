Return-Path: <linux-man+bounces-5275-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oLm4KVFFu2miiAIAu9opvQ
	(envelope-from <linux-man+bounces-5275-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 19 Mar 2026 01:37:37 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C7712C4228
	for <lists+linux-man@lfdr.de>; Thu, 19 Mar 2026 01:37:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9F43430172E7
	for <lists+linux-man@lfdr.de>; Thu, 19 Mar 2026 00:37:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A8E521B192;
	Thu, 19 Mar 2026 00:37:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SonAwcUi"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E1E41F03D9
	for <linux-man@vger.kernel.org>; Thu, 19 Mar 2026 00:37:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773880652; cv=none; b=RVQL/yV/kv+k6EkeCk8NgSMGLw5jSmNbaazYAxXR7Hd+1ImAPTJpNJj853a185IurzVDQutR9OANG1+L5D+6G0ylpW8PLxAWcUi9rr5ym9Lrg19du2n3KjHrFjemDaCPM7aUfUkAJ7R/21R0RIn7HRXv7WQpv+4PazGW9J3bXns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773880652; c=relaxed/simple;
	bh=9QY2N+IJZmUqOZWu7GwYMDwkzzJuiq3YO0S5lnv/nok=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SiZuh/8KyJCZtwl23G/wyo6bXpUlYRYrhkRewGU4I7bmc/m7xZBqTwTkJUwMkB8cm3HLXqRs4REGijPeRNGXhk1E1eKijJfWqMgmc3bEHBjbAKsP5m4MLeoqJAcQs79M5w0+lQaY5amjC6Bb2rxTyimLlmHS62GWcMdT/BzKZrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SonAwcUi; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 27C66C19421;
	Thu, 19 Mar 2026 00:37:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773880651;
	bh=9QY2N+IJZmUqOZWu7GwYMDwkzzJuiq3YO0S5lnv/nok=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SonAwcUihV2RUSxy86q8kQY9f/Rhfhzq8Nh93d9LF2JfketWLqS25NomQ1/Zv6Xas
	 zSmqi/sksGb38H3H7bjOGsm4aXHARmWZYq+3cMcKGEfyKyZiRkYDPxg4wmOLRHWmdI
	 aRuwhBrH5gD1vMJpk9dT7xqpKrrXdrM+mpRjTFHiMbsni+ZWtdQdTjbrnJKHZ3zKXW
	 lqeb+JZoYAbWcClzK163nMxlr0fY0HV62vijrl3vKGlFKleAXvJuYyQc95pXHV8fbe
	 EOJBMBrr26SUekfuhBuDYjis1G6hjA6g0RiaOFFPwxooX79seNk2jiavx/XBBwKmqH
	 GW86RYZOZzBBw==
Date: Thu, 19 Mar 2026 01:37:28 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Ben Kallus <benjamin.p.kallus.gr@dartmouth.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v3] man/man2/mmap.2: Document that MAP_GROWSDOWN doesn't
 affect mmap return value.
Message-ID: <abtFKra8mJv1XwcJ@devuan>
References: <20260317214652.2135374-1-benjamin.p.kallus.gr@dartmouth.edu>
 <20260318144937.2210447-1-benjamin.p.kallus.gr@dartmouth.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lf6d7oxyvduvksqd"
Content-Disposition: inline
In-Reply-To: <20260318144937.2210447-1-benjamin.p.kallus.gr@dartmouth.edu>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5275-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.992];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4C7712C4228
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--lf6d7oxyvduvksqd
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Ben Kallus <benjamin.p.kallus.gr@dartmouth.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v3] man/man2/mmap.2: Document that MAP_GROWSDOWN doesn't
 affect mmap return value.
Message-ID: <abtFKra8mJv1XwcJ@devuan>
References: <20260317214652.2135374-1-benjamin.p.kallus.gr@dartmouth.edu>
 <20260318144937.2210447-1-benjamin.p.kallus.gr@dartmouth.edu>
MIME-Version: 1.0
In-Reply-To: <20260318144937.2210447-1-benjamin.p.kallus.gr@dartmouth.edu>

Hi Ben,

On 2026-03-18T10:49:37-0400, Ben Kallus wrote:
> The man page states that the MAP_GROWSDOWN flag causes the kernel to retu=
rn an
> address one page lower than the mapping created.  This is not true; the k=
ernel
> returns the base address of the mapping created, just as it does when
> MAP_GROWSDOWN is not passed.  This can be confirmed by inspecting
> /proc/self/maps after making a gd mapping, and comparing it to the return=
ed
> value from mmap.
>=20
> You can confirm this by running this example program:
>=20
> int main(void) {
>   printf("mmap return value: %p\n",
>          mmap(nullptr, 1 /* rounds up to page */, PROT_READ | PROT_WRITE,
>               MAP_ANONYMOUS | MAP_PRIVATE | MAP_GROWSDOWN, -1, 0));
>   FILE *const f =3D fopen("/proc/self/maps", "r");
>   while (1) {
>     int const c =3D fgetc(f);
>     if (c < 0) {
>       break;
>     }
>     putchar(c);
>   }
> }
>=20
> ...and observing that the value returned from mmap is the base of a
> mapping in /proc/self/maps.
>=20
> Fixes: 176b1a76 (2016-11-21; "mmap.2: Add (much) more detail on MAP_GROWS=
DOWN")
> Signed-off-by: Ben Kallus <benjamin.p.kallus.gr@dartmouth.edu>

Thanks!  I've applied the patch.


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

--lf6d7oxyvduvksqd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmm7RUgACgkQ64mZXMKQ
wqnKixAAncCi/zjnpsR5NbymAuRVqklamhD4qaVdRHdaZEl16NqQoVNhS8sG5sC7
/hUlIP6HzAsxVOdIzyKkzt+mUvfhTCBS73FuSMinyfxxWhg/3NxJ29o87Y1GQCHn
169J7ijuPAoSNsVdgyA2t1sfZahqIXxLVpUZ/X2VGM/hI4a7/J4L4c0tCPDiEonq
9+Ld9Sz/L04aC0k0IIHfe+3d+oICE8Ia1xS2A+GvAUOOOV2GWFCTXWam2AVbGMIg
qMn/IpqHGSVxU0GBWstaWu8pYp0op1YkEHK7Mde2j39ZY5kmt+RQ4HlqCKTDxazd
WGng9GRl2MDaj91WDH2lPKd/DpG/uLksQ4VZImogt2n70UZGAVqcqyzJ9ogYY2ew
nF403gi1v3FOak7P1ExfWUkFLBMXuePkXXqNptGZjfqNyMDWGY4hSIoJksaZ+LBN
553k7RuqaIb0uk89rwqt0kHqVgUpwXvV9JaBReBiD35/IcbjR+HYZYjwdv/7CZ/u
hlGfgYzZmThERFbtQ3pCp2vHtBu0w+EGEVEAwovSj4wr9OrZRHhSFSYdy6N8wPWM
xwnbmR/g8q9GOgr1Ct7S2F9MicGLQ2mcpvhNg8AzA750ctWqdyQmFvMkPR/cXiyl
uIV1cvNrIsZIumWckAeJosBplFWD7I5bNxtQKL31T2XN4Hi42Bg=
=v5GO
-----END PGP SIGNATURE-----

--lf6d7oxyvduvksqd--

