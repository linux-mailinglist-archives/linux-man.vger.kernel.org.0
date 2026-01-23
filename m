Return-Path: <linux-man+bounces-4930-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WD9vK6+cc2nNxQAAu9opvQ
	(envelope-from <linux-man+bounces-4930-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 23 Jan 2026 17:07:11 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC1178289
	for <lists+linux-man@lfdr.de>; Fri, 23 Jan 2026 17:07:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 78B583023DA1
	for <lists+linux-man@lfdr.de>; Fri, 23 Jan 2026 16:07:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07FB02F2613;
	Fri, 23 Jan 2026 16:07:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J3ksdezl"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF7B22F0C7E
	for <linux-man@vger.kernel.org>; Fri, 23 Jan 2026 16:07:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769184424; cv=none; b=K/t+raFVkqEfM28Db7aUdCYkXW0VMf9E7N0MWoR7tnh9k2NiVKurt5IRskQXm0uPej/EfPX7oXsuecQrgZHXc9lJBC9GLJLzZvCIMhZpKtAtQjVAi1UodT/bvUq5tl2ZumGDO6gxg1PcJg4ZDra7L5DtD42pV043rLUSxkoEyQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769184424; c=relaxed/simple;
	bh=EfKzXshSKzNcE2jJFK6B04Q33V/KZFxklys3vbiVUgw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mY/iRYJ6S1W5RNYE6Lh6Y58flgZES0DmofNcttKKjkusGMHazOHzXxm5HUNu5eIkhrP3AnpNUpFVKdagMKY9SO3kexvzPpvQFCPcMBPoBM97rZ8OqdP83cs7xiVhMEhpBnzNH+OUHVgz/Zx2hGZv+q5eFk5vA+SGS3mkv5qF8wE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J3ksdezl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 88CF7C19421;
	Fri, 23 Jan 2026 16:07:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769184424;
	bh=EfKzXshSKzNcE2jJFK6B04Q33V/KZFxklys3vbiVUgw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=J3ksdezl/vhCxKKqcrOKqGwJ+S4wEnGbFVvJ9+aZlxCRhxASJ16NdAs5Mz4tlpvk1
	 EaClziXdlneH1D1Zu68eYGQvJ0Z0gUuuCB+3pNGH1n8exOJp/nyNwrRlHNSjJ/n9Rs
	 +HBKo+mrYD+diW1HX5kqUhqxd1esQ3PXJVHqORBcD2MqT3hLuwcK12ydHs2N5DEzp7
	 UvuCjsAMknS0M0RTnwpoPkhDAt5gAvYYCB/lMvUeZi/nmwVp/kCGCl3Oy1nhm2IiwD
	 jqHQISsXfGX8jcqJT/oVCdnZO2aTXNf8DQ4oPjzCZxDSD9ib13S5mEdsVGxfQe5o3L
	 ORtci+WBkVwUQ==
Date: Fri, 23 Jan 2026 17:07:01 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 00/23] man/man2/*: Update history of syscalls CI-G
Message-ID: <aXOcdD0M2l6af0BU@devuan>
References: <cover.1768995315.git.sethmcmail@pm.me>
 <cover.1769047228.git.sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3l3dqptxy36cgnxn"
Content-Disposition: inline
In-Reply-To: <cover.1769047228.git.sethmcmail@pm.me>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-4930-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: 2FC1178289
X-Rspamd-Action: no action


--3l3dqptxy36cgnxn
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 00/23] man/man2/*: Update history of syscalls CI-G
Message-ID: <aXOcdD0M2l6af0BU@devuan>
References: <cover.1768995315.git.sethmcmail@pm.me>
 <cover.1769047228.git.sethmcmail@pm.me>
MIME-Version: 1.0
In-Reply-To: <cover.1769047228.git.sethmcmail@pm.me>

Hi Seth,

On Thu, Jan 22, 2026 at 02:24:23AM +0000, Seth McDonald wrote:
> Hi again,
>=20
> v2 now treats listings of both 4.2BSD and 4.4BSD as equivalent to just
> 4.2BSD, and thus removes the redundant mention of 4.4BSD in such cases.
>=20
> Seth McDonald (23):

I've applied all 23 patches.  Thanks!


Cheers,
Alex

>   man/man2/clock_getres.2: HISTORY: Update first POSIX appearance of
>     clock_* syscalls
>   man/man2/close.2: HISTORY: Update first POSIX appearance of close(2)
>   man/man2/dup.2: HISTORY: Update first POSIX appearance of dup[2](2)
>   man/man2/execve.2: HISTORY: Update first POSIX appearance of execve(2)
>   man/man2/_exit.2: HISTORY: Update first POSIX appearance of _exit(2)
>   man/man2/fcntl.2: HISTORY: Update first POSIX appearance of fcntl(2)
>   man/man2/fcntl_locking.2: HISTORY: Update first POSIX appearance of
>     locking constants
>   man/man2/fork.2: HISTORY: Update first POSIX appearance of fork(2)
>   man/man2/fsync.2: HISTORY: Split fsync(2) and fdatasync(2)
>   man/man2/fsync.2: HISTORY: Update first POSIX appearance of fsync(2)
>   man/man2/fsync.2: HISTORY: Update first POSIX appearance of
>     fdatasync(2)
>   man/man2/get[gu]id.2: HISTORY: Update first POSIX appearance of
>     get[e][gu]id(2)
>   man/man2/getgroups.2: HISTORY: Update first POSIX appearance of
>     getgroups(2)
>   man/man2/gethostname.2: HISTORY: Split gethostname(2) and
>     sethostname(2)
>   man/man2/getitimer.2: HISTORY: Update first SUS appearance of
>     [gs]etitimer(2)
>   man/man2/getpagesize.2: HISTORY: Update first SUS appearance of
>     getpagesize(2)
>   man/man2/getpid.2: HISTORY: Update first POSIX appearance of
>     get[p]pid(2)
>   man/man2/getpriority.2: HISTORY: Update first POSIX appearance of
>     [gs]etpriority(2)
>   man/man2/getresuid.2: HISTORY: Update first POSIX appearance of
>     getres[gu]id(2)
>   man/man2/getrlimit.2: HISTORY: Update first POSIX appearance of
>     [gs]etrlimit(2)
>   man/man2/getsid.2: HISTORY: Update first POSIX appearance of getsid(2)
>   man/man2/getrusage.2: HISTORY: Update first POSIX appearance of
>     getrusage(2)
>   man/man2/gettimeofday.2: HISTORY: Update first POSIX appearance of
>     gettimeofday(2)
>=20
>  man/man2/_exit.2         |  4 +++-
>  man/man2/clock_getres.2  |  2 +-
>  man/man2/close.2         |  4 +++-
>  man/man2/dup.2           |  4 +++-
>  man/man2/execve.2        |  4 +++-
>  man/man2/fcntl.2         |  4 +++-
>  man/man2/fcntl_locking.2 |  4 +++-
>  man/man2/fork.2          |  4 +++-
>  man/man2/fsync.2         |  9 ++++++++-
>  man/man2/getgid.2        |  3 ++-
>  man/man2/getgroups.2     |  4 +++-
>  man/man2/gethostname.2   | 12 ++++++++----
>  man/man2/getitimer.2     |  5 ++++-
>  man/man2/getpagesize.2   |  5 +++--
>  man/man2/getpid.2        |  4 +++-
>  man/man2/getpriority.2   |  6 ++++--
>  man/man2/getresuid.2     |  3 ++-
>  man/man2/getrlimit.2     |  6 +++++-
>  man/man2/getrusage.2     |  5 ++++-
>  man/man2/getsid.2        |  7 +++++--
>  man/man2/gettimeofday.2  |  7 ++++---
>  man/man2/getuid.2        |  3 ++-
>  22 files changed, 79 insertions(+), 30 deletions(-)
>=20
> Range-diff against v1:
>  1:  1a421b5ee130 =3D  1:  1a421b5ee130 man/man2/clock_getres.2: HISTORY:=
 Update first POSIX appearance of clock_* syscalls
>  2:  5327747ac3c3 =3D  2:  5327747ac3c3 man/man2/close.2: HISTORY: Update=
 first POSIX appearance of close(2)
>  3:  11e4b9d2ac05 =3D  3:  11e4b9d2ac05 man/man2/dup.2: HISTORY: Update f=
irst POSIX appearance of dup[2](2)
>  4:  5d691ee5e6a3 =3D  4:  5d691ee5e6a3 man/man2/execve.2: HISTORY: Updat=
e first POSIX appearance of execve(2)
>  5:  eb5b310ab4dd =3D  5:  eb5b310ab4dd man/man2/_exit.2: HISTORY: Update=
 first POSIX appearance of _exit(2)
>  6:  1f924f4f5c3c =3D  6:  1f924f4f5c3c man/man2/fcntl.2: HISTORY: Update=
 first POSIX appearance of fcntl(2)
>  7:  a44c49650063 =3D  7:  a44c49650063 man/man2/fcntl_locking.2: HISTORY=
: Update first POSIX appearance of locking constants
>  8:  7404e99ec690 =3D  8:  7404e99ec690 man/man2/fork.2: HISTORY: Update =
first POSIX appearance of fork(2)
>  9:  163be42a70ea !  9:  7b237415d7b9 man/man2/fsync.2: HISTORY: Split fs=
ync(2) and fdatasync(2)
>     @@ man/man2/fsync.2: .SH VERSIONS
>      +POSIX.1-2001.
>      +.TP
>      +.BR fdatasync ()
>     -+4.2BSD,
>      +POSIX.1-2001.
>       .P
>       In Linux 2.2 and earlier,
> 10:  0dfa064b051b ! 10:  ab31e843c470 man/man2/fsync.2: HISTORY: Update f=
irst POSIX appearance of fsync(2)
>     @@ man/man2/fsync.2: .SH HISTORY
>      +POSIX.1-1996.
>       .TP
>       .BR fdatasync ()
>     - 4.2BSD,
>     + POSIX.1-2001.
> 11:  a968c006c218 ! 11:  0d67e7c63fd3 man/man2/fsync.2: HISTORY: Update f=
irst POSIX appearance of fdatasync(2)
>     @@ Commit message
>     =20
>       ## man/man2/fsync.2 ##
>      @@ man/man2/fsync.2: .SH HISTORY
>     + POSIX.1-1996.
>       .TP
>       .BR fdatasync ()
>     - 4.2BSD,
>      -POSIX.1-2001.
>      +POSIX.1-1996.
>       .P
> 12:  566fd21d97b0 =3D 12:  6b987649c5cc man/man2/get[gu]id.2: HISTORY: Up=
date first POSIX appearance of get[e][gu]id(2)
> 13:  a54a94c8b118 =3D 13:  4ad7acf2ef8c man/man2/getgroups.2: HISTORY: Up=
date first POSIX appearance of getgroups(2)
> 14:  0097b249c950 ! 14:  94b81d0f1c2b man/man2/gethostname.2: HISTORY: Sp=
lit gethostname(2) and sethostname(2)
>     @@ man/man2/gethostname.2: .SH STANDARDS
>       .BR gethostname ()
>      -but not
>      -.BR sethostname ().
>     ++4.2BSD,
>      +SVr4,
>     -+4.4BSD (first appeared in 4.2BSD),
>      +POSIX.1-2001.
>      +.TP
>      +.BR sethostname ()
>     -+SVr4,
>     -+4.4BSD (first appeared in 4.2BSD).
>     ++4.2BSD,
>     ++SVr4.
>       .P
>       Versions of glibc before glibc 2.2
>       .\" At least glibc 2.0 and glibc 2.1, older versions not checked
> 15:  824605c82a14 ! 15:  9c780e0e0176 man/man2/getitimer.2: HISTORY: Upda=
te first SUS appearance of [gs]etitimer(2)
>     @@ man/man2/getitimer.2: .SH VERSIONS
>       None.
>       .SH HISTORY
>      -POSIX.1-2001, SVr4, 4.4BSD (this call first appeared in 4.2BSD).
>     ++4.2BSD,
>      +SVr4,
>     -+4.4BSD (first appeared in 4.2BSD),
>      +SUSv1,
>      +POSIX.1-2001.
>       POSIX.1-2008 marked
> 16:  f776e452e427 ! 16:  825144f95298 man/man2/getpagesize.2: HISTORY: Up=
date first SUS appearance of getpagesize(2)
>     @@ man/man2/getpagesize.2: .SH VERSIONS
>       .SH HISTORY
>      -This call first appeared in 4.2BSD.
>      -SVr4, 4.4BSD, SUSv2.
>     ++4.2BSD,
>      +SVr4,
>     -+4.4BSD (first appeared in 4.2BSD),
>      +SUSv1.
>       In SUSv2 the
>       .BR getpagesize ()
> 17:  c2b9d37b6208 =3D 17:  db0485168785 man/man2/getpid.2: HISTORY: Updat=
e first POSIX appearance of get[p]pid(2)
> 18:  d5e7adf0a804 ! 18:  6bcf34a705e3 man/man2/getpriority.2: HISTORY: Up=
date first POSIX appearance of [gs]etpriority(2)
>     @@ man/man2/getpriority.2: .SH ERRORS
>       .SH HISTORY
>      -POSIX.1-2001,
>      -SVr4, 4.4BSD (these interfaces first appeared in 4.2BSD).
>     ++4.2BSD,
>      +SVr4,
>     -+4.4BSD (first appeared in 4.2BSD),
>      +SUSv1,
>      +POSIX.1-2001 XSI.
>       .P
> 19:  b5a7de01af52 =3D 19:  0afcc4b4083b man/man2/getresuid.2: HISTORY: Up=
date first POSIX appearance of getres[gu]id(2)
> 20:  5e54217b8cec =3D 20:  ffb23d585617 man/man2/getrlimit.2: HISTORY: Up=
date first POSIX appearance of [gs]etrlimit(2)
> 21:  1bc25963021c =3D 21:  8ec811d4690a man/man2/getsid.2: HISTORY: Updat=
e first POSIX appearance of getsid(2)
> 22:  b93c17918b36 =3D 22:  3efc2800fc16 man/man2/getrusage.2: HISTORY: Up=
date first POSIX appearance of getrusage(2)
> 23:  00b72e770428 =3D 23:  37278a0497bd man/man2/gettimeofday.2: HISTORY:=
 Update first POSIX appearance of gettimeofday(2)
>=20
> base-commit: 760458adc15668e910cefbbc4f9e11ccfd454411
> --=20
> 2.47.3
>=20



--=20
<https://www.alejandro-colomar.es>

--3l3dqptxy36cgnxn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlznKUACgkQ64mZXMKQ
wqkaDg//c+hhND8J1TjQwGs5JabDY6Ez9TQvqIuSNgV6RH2xMGdd5hnrMmxwL1nH
0G9zE750CysG9CE1fVDoRgr5ieix+znsAbmjzyp03Kf32wHWehUFD3XeVxAYLSf/
5gEWUYW5rzQzIBSyCIeDR3KumTdq2AnTb8GLZMQkKA2SYaMuWT5/IXogp7YkNCHs
z8w4rrpWRfLrPAcI6b1NGW0tsFWgrlj9HI0HEdTGbhAk98F8kn79romY9SXqMGNe
0oCF/S2sln6XjpAG1dARDe7l12pUaM42M+D5m7MYgoDZjUYvecAgb5X9nnQIGEUx
dOCBfr6+tc+WMPN7aYHNomuGc8yVa/7D9WN1/H5KKOi1OFJZLe7Tvj94Y3E4uvAX
/krfLsYpCd9lJyDB1cI73F22f2NHBr8EkWYrvbei+aKzWScxthb6ZmRVYNUDp98t
EWnDWfoWUQXRcyg4fY9eDUisDKke2KIA0V+G1ZWIBiPPKFTwzaD6rLCoRRb47ij0
UUlEucBL1W2Locw1l9y11whglXxmZzWxGoDdWd7/mZijzt8hSy4n3313Q0dwM+FR
iP31viMi86f9y+UBj0XbPNrO62vG3AULsA5Y07ByObRQ8QT5WcwzORMfnXPy9oau
tTOe8NMwaEbfMxm0TPkTgpPPUdWv8k/b35k6miVxfBsmwk0YJ7s=
=kRal
-----END PGP SIGNATURE-----

--3l3dqptxy36cgnxn--

