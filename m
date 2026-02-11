Return-Path: <linux-man+bounces-5106-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id TFSACY3Hi2nyawAAu9opvQ
	(envelope-from <linux-man+bounces-5106-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 11 Feb 2026 01:04:29 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FD9512034A
	for <lists+linux-man@lfdr.de>; Wed, 11 Feb 2026 01:04:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B8EB1303EAAC
	for <lists+linux-man@lfdr.de>; Wed, 11 Feb 2026 00:04:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9ED7C1C01;
	Wed, 11 Feb 2026 00:04:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PP8MzRr+"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61C59173
	for <linux-man@vger.kernel.org>; Wed, 11 Feb 2026 00:04:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770768265; cv=none; b=KTvX+Tbq7XJFrQPGa80Ks5hr8BPEL8xzTc9veOGnD6tixWkumVIvzRvDVmipKybUeDPCGvS5LdU+KHZfrARALClWpa7XWFgSOtCgbN1TbK9x30XLByLonbbD93rUwgI0iVKKJfTvQe+aum/61d6pr+8WK895J8qH2UkDAUBa9MM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770768265; c=relaxed/simple;
	bh=+l+gzLz1xLu4ko4tHpNbrPGI/MRTncdwNB6kACF/QhA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QMp6uEwtqE9QOq29BPpZDziE60YtXe6KAw9awnWAjdV+/sFZEiIQc3Ci+KVsNgWzBwok1G63kYmewZuojRkCg2gWCIElRLtUVQ28+T+1Zz8Su6c/9Lb+mOOtZS4Xc4qkoYojBPgRx4OUIqexcNncOON1rhlgAV69WDbfCv2QRG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PP8MzRr+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 543C5C116C6;
	Wed, 11 Feb 2026 00:04:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770768265;
	bh=+l+gzLz1xLu4ko4tHpNbrPGI/MRTncdwNB6kACF/QhA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PP8MzRr+8ZoGT5cf3HoDrNyW/Lyba3A/hWuiwYRJmEDm+HKd3rwZYdcARSK5CayD+
	 JvEQF7jCCw0R5N6ZpDjBJK9ewjbL1jAWHizPiDgtbJ6xhYy8Q6xMt3f2NRZkSrbjnf
	 8XB0aX1VXCZcXVsGmW7FfGNf8fzJ/4ChJcbU9xrE+9y2mnRmEEuDPZBWSSPnzV1gW4
	 cwlBR44b85rAseYo5NGhWinoKtKd/XQiWVKX30CZrUmZxvi+G5zvMz38c/N3zBnHbb
	 oBxBNMhM70SsAnTt6k3Va1k7zAQgXDrEujHpcihNts6zPyrTS0CW+cwhPP8lG7IUCT
	 r/Ukou+gWFspA==
Date: Wed, 11 Feb 2026 01:04:22 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 00/21] man/man2/*: Update history of syscalls H-M
Message-ID: <aYvHQ0ZQh9NqITHM@devuan>
References: <cover.1769429341.git.sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uj6n2p5vwx5bttnc"
Content-Disposition: inline
In-Reply-To: <cover.1769429341.git.sethmcmail@pm.me>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5106-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: 6FD9512034A
X-Rspamd-Action: no action


--uj6n2p5vwx5bttnc
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 00/21] man/man2/*: Update history of syscalls H-M
Message-ID: <aYvHQ0ZQh9NqITHM@devuan>
References: <cover.1769429341.git.sethmcmail@pm.me>
MIME-Version: 1.0
In-Reply-To: <cover.1769429341.git.sethmcmail@pm.me>

Hi Seth,

On 2026-01-26T12:28:10+0000, Seth McDonald wrote:
> Hi all,
>=20
> This set updates the history of system calls H to M.
>=20
> While I have been thorough with my research, I would encourage those
> interested to double-check that my edits make sense given the listed
> sources.  Particularly for linkat(2), SEEK_DATA/SEEK_HOLE, mkdirat(2),
> and mincore(2), since they took significantly more time and research
> than other functions.
>=20
> Seth McDonald (21):

I've applied all patches, except the mincore.2 one (it was corrupt).
Thanks a lot!  I'll release very soon; probably tomorrow.  :)


Have a lovely night!
Alex

>   man/man2/ioctl_eventpoll.2: HISTORY: ffix
>   man/man2/kill.2: HISTORY: Update POSIX appearances of kill(2)
>   man/man2/link.2: HISTORY: Change order of linkat(2)
>   man/man2/link.2: HISTORY: Update POSIX appearances of link(2)
>   man/man2/listen.2: HISTORY: Change order
>   man/man2/lseek.2: HISTORY: Update appearances of SEEK_{DATA,HOLE}
>   man/man2/lseek.2: HISTORY: Update POSIX appearances of lseek(2)
>   man/man2/mincore.2: HISTORY: Update appearances of mincore(2)
>   man/man2/mkdir.2: HISTORY: Change order of mkdirat(2)
>   man/man2/mkdir.2: HISTORY: Update BSD and POSIX appearances of
>     mkdir(2)
>   man/man2/mknod.2: HISTORY: Change order of mknodat(2)
>   man/man2/mknod.2: HISTORY: Update POSIX appearances of mknod(2)
>   man/man2/mknod.2: STANDARDS: Update
>   man/man2/mlock.2: HISTORY: Update POSIX appearances of
>     m(un)lock(all)(2)
>   man/man2/mmap.2: HISTORY: Update POSIX appearances of m(un)map(2)
>   man/man2/{mount_setattr,move_mount}.2: HISTORY: ffix
>   man/man2/mprotect.2: HISTORY: Update POSIX appearances of mprotect(2)
>   man/man2/msgctl.2: STANDARDS, HISTORY: Update POSIX appearances of
>     msgctl(2)
>   man/man2/msgget.2: STANDARDS, HISTORY: Update POSIX appearances of
>     msgget(2)
>   man/man2/msgop.2: STANDARDS, HISTORY: Update POSIX appearances of
>     msg{rcv,snd}(2)
>   man/man2/msync.2: HISTORY: Update POSIX appearances of msync(2)
>=20
>  man/man2/ioctl_eventpoll.2 |  2 +-
>  man/man2/kill.2            |  4 +++-
>  man/man2/link.2            | 10 ++++++----
>  man/man2/listen.2          |  4 ++--
>  man/man2/lseek.2           | 10 +++++++---
>  man/man2/mincore.2         | 13 ++++++++-----
>  man/man2/mkdir.2           |  8 +++++---
>  man/man2/mknod.2           | 11 +++++++----
>  man/man2/mlock.2           |  3 ++-
>  man/man2/mmap.2            |  5 ++++-
>  man/man2/mount_setattr.2   |  2 +-
>  man/man2/move_mount.2      |  2 +-
>  man/man2/mprotect.2        |  4 +++-
>  man/man2/msgctl.2          |  6 ++++--
>  man/man2/msgget.2          |  6 ++++--
>  man/man2/msgop.2           |  6 ++++--
>  man/man2/msync.2           |  3 ++-
>  17 files changed, 64 insertions(+), 35 deletions(-)
>=20
> Range-diff against v0:
>  -:  ------------ >  1:  d109f3dc06e2 man/man2/ioctl_eventpoll.2: HISTORY=
: ffix
>  -:  ------------ >  2:  55de16b213bf man/man2/kill.2: HISTORY: Update PO=
SIX appearances of kill(2)
>  -:  ------------ >  3:  17eacf0f2d3e man/man2/link.2: HISTORY: Change or=
der of linkat(2)
>  -:  ------------ >  4:  bec317b8ee88 man/man2/link.2: HISTORY: Update PO=
SIX appearances of link(2)
>  -:  ------------ >  5:  2024c82a058d man/man2/listen.2: HISTORY: Change =
order
>  -:  ------------ >  6:  bcf9f5113f3c man/man2/lseek.2: HISTORY: Update a=
ppearances of SEEK_{DATA,HOLE}
>  -:  ------------ >  7:  2dd12d136bf0 man/man2/lseek.2: HISTORY: Update P=
OSIX appearances of lseek(2)
>  -:  ------------ >  8:  817af323707e man/man2/mincore.2: HISTORY: Update=
 appearances of mincore(2)
>  -:  ------------ >  9:  8b25a256e60f man/man2/mkdir.2: HISTORY: Change o=
rder of mkdirat(2)
>  -:  ------------ > 10:  347e36c11666 man/man2/mkdir.2: HISTORY: Update B=
SD and POSIX appearances of mkdir(2)
>  -:  ------------ > 11:  d3da8260e1bc man/man2/mknod.2: HISTORY: Change o=
rder of mknodat(2)
>  -:  ------------ > 12:  b0feda20f21d man/man2/mknod.2: HISTORY: Update P=
OSIX appearances of mknod(2)
>  -:  ------------ > 13:  32bd25fd3630 man/man2/mknod.2: STANDARDS: Update
>  -:  ------------ > 14:  67bf0c1aa133 man/man2/mlock.2: HISTORY: Update P=
OSIX appearances of m(un)lock(all)(2)
>  -:  ------------ > 15:  57292b4f60c4 man/man2/mmap.2: HISTORY: Update PO=
SIX appearances of m(un)map(2)
>  -:  ------------ > 16:  b8f4e6fa54e7 man/man2/{mount_setattr,move_mount}=
=2E2: HISTORY: ffix
>  -:  ------------ > 17:  4e1acc0f5e00 man/man2/mprotect.2: HISTORY: Updat=
e POSIX appearances of mprotect(2)
>  -:  ------------ > 18:  024ce32c9da5 man/man2/msgctl.2: STANDARDS, HISTO=
RY: Update POSIX appearances of msgctl(2)
>  -:  ------------ > 19:  975e61bea29f man/man2/msgget.2: STANDARDS, HISTO=
RY: Update POSIX appearances of msgget(2)
>  -:  ------------ > 20:  86e7c24b1428 man/man2/msgop.2: STANDARDS, HISTOR=
Y: Update POSIX appearances of msg{rcv,snd}(2)
>  -:  ------------ > 21:  d106bca86ec1 man/man2/msync.2: HISTORY: Update P=
OSIX appearances of msync(2)
>=20
> base-commit: 6754bd1a126ed1e9b7d9c2bc1d221681f5182bb3
> --=20
> 2.47.3
>=20



--=20
<https://www.alejandro-colomar.es>

--uj6n2p5vwx5bttnc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmLx4UACgkQ64mZXMKQ
wqlERw/+KUyvIdFXyog7Bb1VcybICcfKxABJodRopvqzRSJ487o6bvyFnRVsE6Su
xWIpJniYa7UEnVypaFpxLFjyYMj/qKkQVm1pQj/V8VhCltrQG+cTxJ74E4vnz4rp
yN0L9X8B9PPDe3Dr/zBhsNm73w+ff+1ew5OlZXyMwHSkN6K2ktSGa1aCrSZlfE84
RKQ1xnessY6p0sJR41DOSYSnZBYCMbvhAwljVMLCPeFyHOJOzLGTP9UwJLztWLHK
ZCZjWuKFkgOMvgME1eYu/GNLoQ7k4g9FaavuHGRM5XFBb3oqSdwra+wDmVCaa1Xs
I7POiCQJbSEkaS4NoSEtZ/hAu0vMNT/oXrz3OEt+/BO7TLnE4lKVlN9vrMR1Q1St
rL9RqMrdvohXoHIbjMyZKFziGqm/3fadI0ozo+JhDeCJevtHuHDG/0iAUgufDi+8
FZ0yuBDR00RWNwPszMeTHD7q3oKMDg6SP/azzN2mmOsP5SH/U+Num6EpK892XA8G
ir2CXWJ01+8Iu89b+HgUuZkMqw/l02a8HYJu3hGKMT41RU4MN8LntobUoQdO2kzM
THbJqMlZZngKAvZ9EGBVFXxrbL3Ir99S6Hx6m6fWhEVikOEDn60ez3aOLIf32MCD
mTJ2j/5/V+DWFI/vMPAh/ZOXdJ73zjdFYPKp2zD3rJZpNzgjrBU=
=EMod
-----END PGP SIGNATURE-----

--uj6n2p5vwx5bttnc--

