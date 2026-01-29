Return-Path: <linux-man+bounces-5004-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8A9jKad8e2kQFAIAu9opvQ
	(envelope-from <linux-man+bounces-5004-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 29 Jan 2026 16:28:39 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D425B171C
	for <lists+linux-man@lfdr.de>; Thu, 29 Jan 2026 16:28:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D7FBB300D5CF
	for <lists+linux-man@lfdr.de>; Thu, 29 Jan 2026 15:28:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECD9630B50F;
	Thu, 29 Jan 2026 15:28:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MM6q3ZYv"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC29427A45C
	for <linux-man@vger.kernel.org>; Thu, 29 Jan 2026 15:28:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769700512; cv=none; b=pfBBrJcTIyFu3Mcz5UljIPAJAC/+xPrc4W/91k2noQzQVhq0O6PGWY9yDfmZmT7TsIbIzRLAxBSIEaNnGpUs0T9mMq+kCqlP2EhcxSyvi6vNv4KuslzJCiRYQjO55q416l4GGmxFSUaOPHmBLG2AYkjGFq+RsvlmJ/o+VtZfH+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769700512; c=relaxed/simple;
	bh=wvvD8eU35eLJy1hrz/z1UyORZSKzFRwk0ne8/3R0Afo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GBqtEMR61nAO7rOT4dVsaMlwlreghSEs+XOlr+V+IZmSHRY9/tOGS55E4Qm1Gol2reNVN6VF+d6qmdYJaH+SQ7kR8WsJHYY1GPzZC5XxwGG/Wasv/1pW2D9hO9YGHXnKsriCBhkDxI6SzvOwYZyRAh3i01Aqi+fdPSDLV02tHuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MM6q3ZYv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B19A0C19422;
	Thu, 29 Jan 2026 15:28:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769700512;
	bh=wvvD8eU35eLJy1hrz/z1UyORZSKzFRwk0ne8/3R0Afo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MM6q3ZYvsMnXtPuySAMibTqUG7FRWdqXk0XDQk53SCl9g1UUhb85j+eH4nOBLbl8w
	 DAp29rsZ5usqyX7m4FYEl1cSsOikZgp+/iwzcUG2nNMujGb+VTn0QuodfFcvn697L4
	 Vu26RxJPNuf0og2j5Bo2uNxYeq5jX8lUkm9OlYBZEX8FQRgjRRjwuIBmA5n/TYKCnz
	 +tAU268Vj4cfVEhGSsR8Qgl+MErPese/rDgBN0SG1r1+N5IvtFmwOluvg5v/LSeqZI
	 +HhwRddRD2R/9KWaa509eH6YiPPCYQICItEQipj6nSKDAgjb/pd3HBalvNoAyuSSLe
	 wYwBc1TJR5buw==
Date: Thu, 29 Jan 2026 16:28:29 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Mark Harris <mark.hsj@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 1/2] man/man3/timespec_get.3: Refactor to prepare for
 new time bases
Message-ID: <aXt76inr6vGh4lod@devuan>
References: <1b8aea00296c530f2a3a79158a98d44a46a795e5.1769581372.git.mark.hsj@gmail.com>
 <79f235d4b360689a290d525c36c3a06a36e5164a.1769619403.git.mark.hsj@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qlwpuc5seeujm4s4"
Content-Disposition: inline
In-Reply-To: <79f235d4b360689a290d525c36c3a06a36e5164a.1769619403.git.mark.hsj@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	FREEMAIL_TO(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-5004-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: 4D425B171C
X-Rspamd-Action: no action


--qlwpuc5seeujm4s4
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Mark Harris <mark.hsj@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 1/2] man/man3/timespec_get.3: Refactor to prepare for
 new time bases
Message-ID: <aXt76inr6vGh4lod@devuan>
References: <1b8aea00296c530f2a3a79158a98d44a46a795e5.1769581372.git.mark.hsj@gmail.com>
 <79f235d4b360689a290d525c36c3a06a36e5164a.1769619403.git.mark.hsj@gmail.com>
MIME-Version: 1.0
In-Reply-To: <79f235d4b360689a290d525c36c3a06a36e5164a.1769619403.git.mark.hsj@gmail.com>

Hi Mark,

On 2026-01-28T09:33:03-0800, Mark Harris wrote:
> Add Feature Test Macro Requirements to document functions and macros
> that require ISO C11 or C23, and arrange supported time bases as a list.
>=20
> Signed-off-by: Mark Harris <mark.hsj@gmail.com>
> ---
> v2: Split into two patches, add time bases to History section
>=20
>  man/man3/timespec_get.3 | 32 ++++++++++++++++++++++++--------
>  1 file changed, 24 insertions(+), 8 deletions(-)

[...]
> @@ -78,18 +96,16 @@ .SH ATTRIBUTES
>  .SH STANDARDS
>  .TP
>  .BR timespec_get ()
> -.TQ
> +C23 (though ISO C doesn't specify the
>  .B TIME_UTC
> -C23 (though ISO C doesn't specify the time epoch),
> +epoch),
>  POSIX.1-2024.

How about this?:

	.TP
	.BR timespec_get ()
	C23, POSIX.1-2024.
	.TQ
	.B TIME_UTC
	C23 (though ISO C doesn't specify the time epoch),
	POSIX.1-2024.

>  .TP
>  .BR timespec_getres ()
>  C23.
>  .SH HISTORY
>  .TP
> -.BR timespec_get ()
> -.TQ
> -.B TIME_UTC
> +.BR timespec_get "(), " TIME_UTC

I prefer the format with TQ.  I wouldn't change anything in HISTORY.


Have a lovely day!
Alex

>  C11, POSIX.1-2024, glibc 2.16, musl 1.1.10.
>  .TP
>  .BR timespec_getres ()
> --=20
> 2.52.0
>=20

--=20
<https://www.alejandro-colomar.es>

--qlwpuc5seeujm4s4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAml7fJ0ACgkQ64mZXMKQ
wqmH/hAAmm6jIlHC+d20OLERYzDSuxl17/HkbHT2LGBbchyTgBkDv+VIAtCMEFq1
i/HWqHyZLx6tT6rpVqIEqSIzQPXDzzpPYGiFRRDgfMQEak3ThL92i79yuG2QNMif
JpupTch/v030TMQRgonV71o15XI/qzFAfPzz3FzYquOy2sBy/G2NctmG/faaA9Pz
I1VK8Pbb32CwCru7BN40O+qRRYNoE9+JFcjT0jJNn2uyPvrDmIK2vC/2wqbGSFov
nfPynP0HlrZIFC4fbxQ/Q0ibA/upVgQ4kjkiEX8QBKkkc0woVHh2y7BL8Wguvtzn
dqI+Sdqt98Ii1Q5CVFQwm2wy9DdEBGk7ACl/ijm5PlRpDFV/Izim+AulrVdKxz3N
52+MvZHeY1yYygj3ErLJqdNPaqucwj78nCbKsf1XNErkg09usvuV1ApTXx+sO8DM
nU+Jgq7Co4EhQkjz0QwL8qzwi6SHvP5rny054/BNQZ50ZQt5Av4exAs4iT+y52Iq
A3sa6HjJiC7gdS30vm33jgOb9rlcd2sN/7GjW7OSalTddUy+Os+ca3chpByCs66H
ADFffzAcVxoMshq11IjUHuvtz2nc+RzWqSWqvbxVwBBHMQYhcY1zF76HjzFocfLI
mrLPLNoNa7HQZypiAqS0bJiyq3TgzB5jPmuoSUeo+M7pvav5t+I=
=Cypm
-----END PGP SIGNATURE-----

--qlwpuc5seeujm4s4--

