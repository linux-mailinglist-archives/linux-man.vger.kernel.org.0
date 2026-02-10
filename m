Return-Path: <linux-man+bounces-5105-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MM0bAFvEi2mEagAAu9opvQ
	(envelope-from <linux-man+bounces-5105-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 11 Feb 2026 00:50:51 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A46B1202F0
	for <lists+linux-man@lfdr.de>; Wed, 11 Feb 2026 00:50:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 41C943046F23
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 23:50:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94D50329C77;
	Tue, 10 Feb 2026 23:50:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YrMqWoVU"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5882A3191C8
	for <linux-man@vger.kernel.org>; Tue, 10 Feb 2026 23:50:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770767446; cv=none; b=X1AnF6z9hQAuoBJYMbqsf77Il0/KhykRE2Sjr71zUOEdJb1I36TeLJwW9MS512NLcI9CmxvCfnSqC+dm0xyjV7BU+GG/yVfNTTT1228Nk0tpBZ4Crr74Cc52tQxPl1E3mtza5/y/SSTYtcFE+XJ7n04h9YFm65Joz8sIkhVe+6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770767446; c=relaxed/simple;
	bh=ZAfX8w4i7LtJTVm4M4JRLrQOWjCrpqtBRjB/xToJPC4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XJEi07s8EeGJmvXk9rxQJRCTDBGSAererKcDbYZLzZF65hxxXNXtipca4y28G8CmqVqtlPB0uOQGqo1kAwNWmLIuKX/iGmAERtYHBgMODt3sqoTTDHSslxw5lpizDn0bEKI8VoZ5ugsruprUNvyM/ATS/CuIuO7zrkC9des57bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YrMqWoVU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A3BEC116C6;
	Tue, 10 Feb 2026 23:50:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770767446;
	bh=ZAfX8w4i7LtJTVm4M4JRLrQOWjCrpqtBRjB/xToJPC4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YrMqWoVUM9DdLna1/gZiteUkXAmjJ6iLu1Ig/LaeQUnQiq8NzQnohwpS/0uG3FjWW
	 6q2iRZXtZrVGA1lg0VtTkjZvvHqayw6hZRO2PlRlPHXanoSeIlo3zqqHYzwkJ9/Xa4
	 /V080gbLATy7raft9HmBX54DQBpTj3VF2LqjU35u59WL6YFdOyjacnWKtn8e/Sb7P/
	 JYkcXJObJU83gd8EYPfGOcLTKgJjS1eKvrKVoZFvKmRWQ/l0WqdmcdZkoevffpKsPN
	 mXVx61Dyev4K3Wx8tsatVnb0wyiY9KJrnPPXtwFfj4pf845keV45szxeUE/df9O6q0
	 NXs31/BEGwTBw==
Date: Wed, 11 Feb 2026 00:50:41 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 08/21] man/man2/mincore.2: HISTORY: Update appearances
 of mincore(2)
Message-ID: <aYvD7NCbo2n0PJHT@devuan>
References: <cover.1769429341.git.sethmcmail@pm.me>
 <817af323707ec44ec1b78dedbb07a7c09ab0104d.1769429341.git.sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6fcrzjwcbk6u77fv"
Content-Disposition: inline
In-Reply-To: <817af323707ec44ec1b78dedbb07a7c09ab0104d.1769429341.git.sethmcmail@pm.me>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5105-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,alejandro-colomar.es:url,pm.me:email]
X-Rspamd-Queue-Id: 6A46B1202F0
X-Rspamd-Action: no action


--6fcrzjwcbk6u77fv
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 08/21] man/man2/mincore.2: HISTORY: Update appearances
 of mincore(2)
Message-ID: <aYvD7NCbo2n0PJHT@devuan>
References: <cover.1769429341.git.sethmcmail@pm.me>
 <817af323707ec44ec1b78dedbb07a7c09ab0104d.1769429341.git.sethmcmail@pm.me>
MIME-Version: 1.0
In-Reply-To: <817af323707ec44ec1b78dedbb07a7c09ab0104d.1769429341.git.sethmcmail@pm.me>

Hi Seth,

On 2026-01-26T12:29:17+0000, Seth McDonald wrote:
> mincore(2) was implemented in FreeBSD on 1995-10-21,[1] which was first
> included in the FreeBSD 2.2 release on 1997-03.[2]

Sorry for taking so much time to respond.  I was busy with a meeting of
the C Committee.  I'm back.  I've merged already patches 01..07.

This patch seems to be corrupt.

	warning: quoted CRLF detected
	Applying: man/man2/mincore.2: HISTORY: Update appearances of mincore(2)
	error: patch failed: man/man2/mincore.2:112
	error: man/man2/mincore.2: patch does not apply
	Patch failed at 0001 man/man2/mincore.2: HISTORY: Update appearances of mi=
ncore(2)
	hint: Use 'git am --show-current-patch=3Ddiff' to see the failed patch
	hint: When you have resolved this problem, run "git am --continue".
	hint: If you prefer to skip this patch, run "git am --skip" instead.
	hint: To restore the original branch and stop patching, run "git am --abor=
t".
	hint: Disable this message with "git config set advice.mergeConflict false"
	Press any key to continue...

I could manually apply it, but it's probably worth checking why this is
happening.  Probably another issue with protonmail, I guess.


Have a lovely night!
Alex

>=20
> It was implemented in NetBSD on 1999-06-15,[3] which was first included
> in the NetBSD 1.5 release on 2000-12-06,[4] (despite the commit message
> stating its intended inclusion in NetBSD 1.4.1).
>=20
> It was implemented in OpenBSD on 2001-03-09,[5] which was first included
> in the OpenBSD 2.9 release on 2001-06-01.[6]
>=20
> All other listed systems are taken at face value and rearranged in
> chronological-ish order.
>=20
> [1] Dyson, John (21 Oct 1995).  "Implement mincore system call."
> FreeBSD source tree (Git repository).
> <https://cgit.freebsd.org/src/commit/?id=3D02c04a2f6c83ee28ed637d120296d0=
4da8f03372>
> [2] The FreeBSD Project (29 Nov 2025).  "Prior Releases =E2=80=93 EOL".
> <https://www.freebsd.org/releases>
> [3] Thorpe, Jason (15 Jun 1999).  "Several changes, developed and tested
> concurrently:".  NetBSD src (CVS repository).
> <https://cvsweb.netbsd.org/bsdweb.cgi/src/sys/uvm/uvm_mmap.c?rev=3D1.22>
> [4] The NetBSD Foundation (2026).  "History of NetBSD releases".
> <https://www.netbsd.org/releases/formal.html>
> [5] art (9 Mar 2001).  "More syncing to NetBSD."  OpenBSD src (CVS
> repository).
> <https://cvsweb.openbsd.org/src/sys/uvm/uvm_mmap.c?rev=3D1.7&content-type=
=3Dtext/x-cvsweb-markup>
> [6] de Raadt, Theo (1 Jun 2001).  "OpenBSD 2.9".
> <https://www.openbsd.org/29.html>
>=20
> Signed-off-by: Seth McDonald <sethmcmail@pm.me>
> ---
>  man/man2/mincore.2 | 13 ++++++++-----
>  1 file changed, 8 insertions(+), 5 deletions(-)
>=20
> diff --git a/man/man2/mincore.2 b/man/man2/mincore.2
> index 8574ed1922d9..a9a1974466a6 100644
> --- a/man/man2/mincore.2
> +++ b/man/man2/mincore.2
> @@ -112,13 +112,16 @@ .SH ERRORS
>  .SH STANDARDS
>  None.
>  .SH HISTORY
> +SunOS 4.1,
> +4.4BSD,
> +FreeBSD 2.2,
> +Solaris 8,
>  Linux 2.3.99pre1,
> -glibc 2.2.
> +glibc 2.2,
> +NetBSD 1.5,
> +OpenBSD 2.9,
> +AIX 5.1.
>  .P
> -First appeared in 4.4BSD.
> -.P
> -NetBSD, FreeBSD, OpenBSD, Solaris 8,
> -AIX 5.1, SunOS 4.1.
>  .SH BUGS
>  Before Linux 2.6.21,
>  .BR mincore ()
> --=20
> 2.47.3
>=20



--=20
<https://www.alejandro-colomar.es>

--6fcrzjwcbk6u77fv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmLxFEACgkQ64mZXMKQ
wqk9RQ/7BPSfdPhO7OXeUbJKqmwVHqquIoDYOB7PudW3ddij2ZSP7nqQ+iqHW5wZ
/T6BpxS6siYxcQ/5Vvbf0xcvE5f+l8g8V74BFe1P5uzKBVbCRPOSizq4n9uhGC58
nlBb84R+Y9lAbzrTMrJFPNXxq0rZnVc9magR9Qr1mQZbMbN31t5AiXrclQB9q93b
LGOYd5YJmr5KGiuEsdzIa/W9vRlruV54j+/SygFJ4pnyx3nTqKbJfBzOQHqtJIJN
K3XCH9CqsTQAwHmWBxR4H4AjXxvtAemVmYK9KmVArUC/eQR+ppe5ClVm1NzZjYWC
NlNCvJ1vUgqRFKHk7buEpr7ML88sSMmRSy5q1PvJedY/AYYSHg/kwZXRF1uY4k7S
IYj9oI2pekaXAG1NgRA+LkyYy5tO2FRHS5oQaG9m3vyn4sSUO0Koxw6ZKn5H2WV9
L5IGOnw8ymaurtUIFaAq+mpfQPxyL7boY63ldFvPB+q2O8Ox7nUA6a3DII/ETCTH
PvZacrOVNXJq5xz0r8KYy8fJAUsW6OHsFNHgmY669nL9XMejGRRPSXTMoEsqkCZl
DwrEIC6uAFKe3PXg/KmzqE59cP0GJPf7o0r0riddcG0jXl2BJZlUXajg8iXRH6jv
ghntfSlt7emcu8OoBRDdCuBbKYfynbu2sWR67KsT/ctteI1Kl5o=
=4O4X
-----END PGP SIGNATURE-----

--6fcrzjwcbk6u77fv--

