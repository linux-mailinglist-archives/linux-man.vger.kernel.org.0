Return-Path: <linux-man+bounces-5143-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SGfRFUgjk2kX1wEAu9opvQ
	(envelope-from <linux-man+bounces-5143-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 16 Feb 2026 15:01:44 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B01D1445C7
	for <lists+linux-man@lfdr.de>; Mon, 16 Feb 2026 15:01:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 052F13015480
	for <lists+linux-man@lfdr.de>; Mon, 16 Feb 2026 13:57:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA0852FFDD5;
	Mon, 16 Feb 2026 13:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JhGZx+xL"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE5782C0F8E
	for <linux-man@vger.kernel.org>; Mon, 16 Feb 2026 13:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771250229; cv=none; b=fe0ycl5VgSwXO2ROnSF4b4bK3D9GdiPlmRyJuLlx/oilcNlHOdkgxa1cGq5tyIukXuh8Ky9wrZATb+Xk1kWZEtjmWKf7GKmUjUXuIBSgseRSJ6Eoi5UyNl+BeS8I0CEmwohAL2uY17EROjCBmDSQBEnpy3q5AGEncSsGWlUmY0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771250229; c=relaxed/simple;
	bh=FRNlLfmAEwOPkzGxbkCIlMaZJhzaV5seTZ6cMCRBXJs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jyZi4WMstuHi0S06cqMGJN+yCqgw3R+gFPMuw5P8q1AWhEaWSa6h2DeDWG2nobhsgBratIYz/Eexzd9dUwYNN8Ep8wTNDhUBKoJH0KuidhgUrM6VuJMswWn6hxApked6wdx0Cb2P4RQTAgmHPvfmUSVMO8DKT9roZH9lKskLM8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JhGZx+xL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A229FC116C6;
	Mon, 16 Feb 2026 13:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771250229;
	bh=FRNlLfmAEwOPkzGxbkCIlMaZJhzaV5seTZ6cMCRBXJs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JhGZx+xLTZY+KH4WHp/2Vwg8DaC5cuK6/ZKH2sgbovqiHrJVLDMYh2UYe2OJQmkQ2
	 58fYyDDpCk7aUpoiJAkmaShasfWv34K7k+J1/NnyvqTBxGwQHtf5gGOntZwO1KXVrj
	 TPfYfPCrt21P83b4NDHb0VH3IgtxBXCavAcd9HsfcGRyAHf0eQpP1vtEIodUdyysmc
	 YfZse17Th4NJkNpHygqjNVOBoLIR7lWj43Vvqo/2GWoy2hZca9hYpFJjk8yyMRZ6rw
	 AhZkEzvueN0nZuVRY0NUNvys5YbmWLYRTYlkp2BRXCAIpUzynuGHnf24Bjw+BF8vLs
	 V6GR0KCs7bPoA==
Date: Mon, 16 Feb 2026 14:57:06 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <dev@sethm.id.au>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 0/1] man/man2/*: Update history of syscalls H-M
Message-ID: <aZMeuDza3H4tVbgu@devuan>
References: <cover.1769429341.git.sethmcmail@pm.me>
 <cover.1771232583.git.dev@sethm.id.au>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rz25vftbclpgxpdk"
Content-Disposition: inline
In-Reply-To: <cover.1771232583.git.dev@sethm.id.au>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5143-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: 1B01D1445C7
X-Rspamd-Action: no action


--rz25vftbclpgxpdk
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <dev@sethm.id.au>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 0/1] man/man2/*: Update history of syscalls H-M
Message-ID: <aZMeuDza3H4tVbgu@devuan>
References: <cover.1769429341.git.sethmcmail@pm.me>
 <cover.1771232583.git.dev@sethm.id.au>
MIME-Version: 1.0
In-Reply-To: <cover.1771232583.git.dev@sethm.id.au>

On 2026-02-16T21:44:09+1000, Seth McDonald wrote:
> Hi Alex,

Hi Seth,

> Apologies on my end also for my delayed response.  I've made some large
> but hopefully beneficial changes to my email workflow =E2=80=93 as can be=
 seen
> with the different email address.

:)

> > This patch seems to be corrupt. [...] Probably another issue with
> > protonmail, I guess.
>=20
> Yeah at this point I give up with ProtonMail.  I shouldn't have to fix
> all their issues for them just to send in a patch.  Hopefully Fastmail
> serves me better.

So far it works.  I could apply the patch.

I personally use Migadu <https://migadu.com/>.  I've had a very good
experience with them, and they're very quick in fixing any bugs I report
to them.  If Fastmail works fine for you, that's great!

> Anyhow, this is just the patch for mincore(2) with a few minor
> adjustments on the commit message.  I won't PGP sign it yet as I first
> want to ensure everything works before adding things on top.  But if all
> is well, I'll continue to sign my patches with my more secure key:
>=20
> E9D1 26A5 F0D4 9DF7 792B  C2E2 B4BF 4530 D39B 2D51

Ok.

BTW, the ubuntu keyserver shows the existence of a non-revoked key that
is probably old?

	pub (4)eddsa263/82b9620e53d0a1ae2d696111c267b0020a900289 2024-12-06T06:53:=
33Z

It contains two UIDs, one of which is revoked, but the other is not
revoked:

	uid mcdonald_seth@pm.me <mcdonald_seth@pm.me>
	sig cert  c267b0020a900289 2024-12-06T06:53:33Z ____________________ _____=
_______________ [selfsig]

	uid Seth McDonald (email encryption) <mcdonald_seth@pm.me>
	sig revok c267b0020a900289 2026-02-11T08:27:33Z ____________________ _____=
_______________ [selfsig]

Is it intentionaly that you revoked the UID instead of the key?  If you
want to revoke the entire key, you should probably use gpg(1)'s
--gen-revoke flag, which generates a revocation certificate for the
master key.

>=20
> Let me know if it's still corrupt, and I'll =CC=B6k=CC=B6i=CC=B6c=CC=B6k=
=CC=B6 =CC=B6m=CC=B6y=CC=B6 =CC=B6P=CC=B6C calmly figure out
> what's going on.

It worked.  :)


Cheers,
Alex

>=20
> Seth McDonald (1):
>   man/man2/mincore.2: HISTORY: Update appearances of mincore(2)
>=20
>  man/man2/mincore.2 | 13 ++++++++-----
>  1 file changed, 8 insertions(+), 5 deletions(-)
>=20
> Range-diff against v1:
>  1:  d109f3dc06e2 <  -:  ------------ man/man2/ioctl_eventpoll.2: HISTORY=
: ffix
>  2:  55de16b213bf <  -:  ------------ man/man2/kill.2: HISTORY: Update PO=
SIX appearances of kill(2)
>  3:  17eacf0f2d3e <  -:  ------------ man/man2/link.2: HISTORY: Change or=
der of linkat(2)
>  4:  bec317b8ee88 <  -:  ------------ man/man2/link.2: HISTORY: Update PO=
SIX appearances of link(2)
>  5:  2024c82a058d <  -:  ------------ man/man2/listen.2: HISTORY: Change =
order
>  6:  bcf9f5113f3c <  -:  ------------ man/man2/lseek.2: HISTORY: Update a=
ppearances of SEEK_{DATA,HOLE}
>  7:  2dd12d136bf0 <  -:  ------------ man/man2/lseek.2: HISTORY: Update P=
OSIX appearances of lseek(2)
>  8:  817af323707e !  1:  b1b6f011a7d3 man/man2/mincore.2: HISTORY: Update=
 appearances of mincore(2)
>     @@ Metadata
>       ## Commit message ##
>          man/man2/mincore.2: HISTORY: Update appearances of mincore(2)
>     =20
>     -    mincore(2) was implemented in FreeBSD on 1995-10-21,[1] which wa=
s first
>     +    mincore(2) was implemented in FreeBSD on 1995-10-21,[1] and was =
first
>          included in the FreeBSD 2.2 release on 1997-03.[2]
>     =20
>     -    It was implemented in NetBSD on 1999-06-15,[3] which was first i=
ncluded
>     -    in the NetBSD 1.5 release on 2000-12-06,[4] (despite the commit =
message
>     +    It was implemented in NetBSD on 1999-06-15,[3] and was first inc=
luded in
>     +    the NetBSD 1.5 release on 2000-12-06,[4] (despite the commit mes=
sage
>          stating its intended inclusion in NetBSD 1.4.1).
>     =20
>     -    It was implemented in OpenBSD on 2001-03-09,[5] which was first =
included
>     +    It was implemented in OpenBSD on 2001-03-09,[5] and was first in=
cluded
>          in the OpenBSD 2.9 release on 2001-06-01.[6]
>     =20
>          All other listed systems are taken at face value and rearranged =
in
>          chronological-ish order.
>     =20
>          [1] Dyson, John (21 Oct 1995).  "Implement mincore system call."
>     -    FreeBSD source tree (Git repository).
>     -    <https://cgit.freebsd.org/src/commit/?id=3D02c04a2f6c83ee28ed637=
d120296d04da8f03372>
>     +    FreeBSD source tree (Git repository).  Commit
>     +    02c04a2f6c83ee28ed637d120296d04da8f03372.
>          [2] The FreeBSD Project (29 Nov 2025).  "Prior Releases =E2=80=
=93 EOL".
>          <https://www.freebsd.org/releases>
>          [3] Thorpe, Jason (15 Jun 1999).  "Several changes, developed an=
d tested
>  9:  8b25a256e60f <  -:  ------------ man/man2/mkdir.2: HISTORY: Change o=
rder of mkdirat(2)
> 10:  347e36c11666 <  -:  ------------ man/man2/mkdir.2: HISTORY: Update B=
SD and POSIX appearances of mkdir(2)
> 11:  d3da8260e1bc <  -:  ------------ man/man2/mknod.2: HISTORY: Change o=
rder of mknodat(2)
> 12:  b0feda20f21d <  -:  ------------ man/man2/mknod.2: HISTORY: Update P=
OSIX appearances of mknod(2)
> 13:  32bd25fd3630 <  -:  ------------ man/man2/mknod.2: STANDARDS: Update
> 14:  67bf0c1aa133 <  -:  ------------ man/man2/mlock.2: HISTORY: Update P=
OSIX appearances of m(un)lock(all)(2)
> 15:  57292b4f60c4 <  -:  ------------ man/man2/mmap.2: HISTORY: Update PO=
SIX appearances of m(un)map(2)
> 16:  b8f4e6fa54e7 <  -:  ------------ man/man2/{mount_setattr,move_mount}=
=2E2: HISTORY: ffix
> 17:  4e1acc0f5e00 <  -:  ------------ man/man2/mprotect.2: HISTORY: Updat=
e POSIX appearances of mprotect(2)
> 18:  024ce32c9da5 <  -:  ------------ man/man2/msgctl.2: STANDARDS, HISTO=
RY: Update POSIX appearances of msgctl(2)
> 19:  975e61bea29f <  -:  ------------ man/man2/msgget.2: STANDARDS, HISTO=
RY: Update POSIX appearances of msgget(2)
> 20:  86e7c24b1428 <  -:  ------------ man/man2/msgop.2: STANDARDS, HISTOR=
Y: Update POSIX appearances of msg{rcv,snd}(2)
> 21:  d106bca86ec1 <  -:  ------------ man/man2/msync.2: HISTORY: Update P=
OSIX appearances of msync(2)
>=20
> base-commit: e2cc229b7551a63bb51853c849ce1a9e95946637
> --=20
> 2.53.0.1
>=20

--=20
<https://www.alejandro-colomar.es>

--rz25vftbclpgxpdk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmTIiwACgkQ64mZXMKQ
wqnb5g//c2GdNAqwFNOQn0DTiZSSkpPE3dVwlxKcYBPBH/XSVNfwvjcUHFedg+Fq
2uC22XxWT7q07eOV6nCk5aUuv5fEkRpILfSiRQaOgwkf6U2Hrl3/+lvFvj0BmodO
LB37B0mNnVeXqw9gC3sdck1sIR8tgAs5gZ1DyhmIUb4xJ3cEn1U9ROs0EbrEm0Xa
/Fab2w5TLZGmyII0A5V9nkRfvLTkq0BulIsuuOvB4EBkMzQWfO2uMmd9ftX4xMBw
pmJRs0cBYRQdGZpBHblPNE+KjV4yY8ZriAvH1m5A+XaXgMFnjTEukvO3tYyDQcXV
VzpENXqmYWnDz00e3Ub+uaI3NOv8nJ2lNBnmckKfWAyhT7kVSv4eGKW++1J+Lc9R
tPnA/SQfLkVH0ASsdvFlHDjPW2yz2JQ83wZ37bAJ0p5sA6S31WkFQ6cNZZ7Rb9WH
4ih7/95z+9Lh/r/h1dwkyE5Dp3vWnT1RExDZ2b5z8Y/ATir8L3rZ3wjujGqANQ/x
Dg/VdFhSYI16MffUBhtMZal4hqT0chyAgZsD38k9ZxLougsJdx8aX6rO/eg29UdQ
0ic3CnNWih8ZFG9RB7AVL0n/46Dr8w2CBo8iiyyWyIVjvEqJ2nYogL9X/Mw26krI
93ET3pCgL1/Qobr3b8YzvU5U03t0kgse4fYBT1P9ipttHxZydRs=
=twMd
-----END PGP SIGNATURE-----

--rz25vftbclpgxpdk--

