Return-Path: <linux-man+bounces-4894-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SCP7AsQScWlEcgAAu9opvQ
	(envelope-from <linux-man+bounces-4894-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 18:54:12 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F5005ACC5
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 18:54:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2BC9982DFB8
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 15:53:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7B2E480967;
	Wed, 21 Jan 2026 15:46:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iBRnG6zC"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81AD0481656
	for <linux-man@vger.kernel.org>; Wed, 21 Jan 2026 15:46:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769010389; cv=none; b=rJVO/4igQEg3VlAg/bqGAd/WQG55heXp1DA6FwiTwVbbrReBFywp1eHj75CCAse8V1Vl4f2tUCj/09UImFtmeU2SPxLUhwGASxUpz+KbOgMRuBnvGm4C9dBJb8/rq+KYOfcqNxqJBMH+gJ1My04rVJoDWusAGdNYkcOcV1fXeN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769010389; c=relaxed/simple;
	bh=OMr3U7zz7LwCRJjT9kbr4mIo364R5oH+QnN/4AybxuI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LvnADYj0rNXjzrhFuE13HImrD+sPyvOBcvxzLS7NwXAAHZ9kn9XpQhsNWNjILLRERWcmW5eEnEtIJ8vpUhgXur5KGTJJeGoM3mGD9pyTmA/yd218wHWp2DZcBG6E79B2PbRmAR+/BetU7XsEj0IX6txD6NEuhmWFlmVEzThStqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iBRnG6zC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7989CC4CEF1;
	Wed, 21 Jan 2026 15:46:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769010389;
	bh=OMr3U7zz7LwCRJjT9kbr4mIo364R5oH+QnN/4AybxuI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iBRnG6zC6ruIxdHTd3UATSKsxDFsucbepNZt/JOLVG91G24cb13USB8h6xm19xOvb
	 FMG4DbWl+CzhVsXx6iFZXCTr2zpAXGKAda67m/DpIVnYfwZn6Nk1k885FdaZ/UwvLq
	 wHnUKOxRWr2H/5SXO+MFYjIaSx/kFOot6vW0ylYZP16L5umU8yZaAQDt1/SDfPzaDU
	 mNTtlmsdnuPHF3kC/BxlZ5RNpI3btuyeYrvb/B/GrGvk2DSmg1995QE8M01QYtykzl
	 FTGI56bPk2h7KRabypN2SvsHVh4r7801CIFBnSAojjrRq9mvPellj07axoeeoiwU3R
	 ZG/61EeSqmCAg==
Date: Wed, 21 Jan 2026 16:46:26 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 00/23] man/man2/*: Update history of syscalls CI-G
Message-ID: <aXD0islnISuWCwel@devuan>
References: <cover.1768995315.git.sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="l7n3nfaqdeymnsxe"
Content-Disposition: inline
In-Reply-To: <cover.1768995315.git.sethmcmail@pm.me>
X-Spamd-Result: default: False [-3.56 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-4894-lists,linux-man=lfdr.de];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[kernel.org:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: 6F5005ACC5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--l7n3nfaqdeymnsxe
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 00/23] man/man2/*: Update history of syscalls CI-G
Message-ID: <aXD0islnISuWCwel@devuan>
References: <cover.1768995315.git.sethmcmail@pm.me>
MIME-Version: 1.0
In-Reply-To: <cover.1768995315.git.sethmcmail@pm.me>

Hi Seth,

On Wed, Jan 21, 2026 at 12:06:52PM +0000, Seth McDonald wrote:
> Hello,
>=20
> This patch set updates the POSIX/SUS history of system calls with
> identifiers starting with CI through G.  It also attempts to provide
> chronological order where possible, similar to the last patch set.
>=20
> Although this set does begin to touch on man pages with a peculiar
> listing in their HISTORY sections.  Namely, "4.4BSD (first appeared in
> 4.2BSD)".  I ordered these as if they were just "4.4BSD", since that's
> not inside the brackets and so should be more important (otherwise I'd
> assume it'd just say "4.2BSD" instead).  Although I'm not confident in
> this choice, so any thoughts regarding this would be appreciated.

I'd replace such a thing by 4.2BSD, as you suggest.


Cheers,
Alex

>=20
> Seth McDonald (23):
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
>  man/man2/fsync.2         | 10 +++++++++-
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
>  22 files changed, 80 insertions(+), 30 deletions(-)
>=20
> Range-diff against v0:
>  -:  ------------ >  1:  1a421b5ee130 man/man2/clock_getres.2: HISTORY: U=
pdate first POSIX appearance of clock_* syscalls
>  -:  ------------ >  2:  5327747ac3c3 man/man2/close.2: HISTORY: Update f=
irst POSIX appearance of close(2)
>  -:  ------------ >  3:  11e4b9d2ac05 man/man2/dup.2: HISTORY: Update fir=
st POSIX appearance of dup[2](2)
>  -:  ------------ >  4:  5d691ee5e6a3 man/man2/execve.2: HISTORY: Update =
first POSIX appearance of execve(2)
>  -:  ------------ >  5:  eb5b310ab4dd man/man2/_exit.2: HISTORY: Update f=
irst POSIX appearance of _exit(2)
>  -:  ------------ >  6:  1f924f4f5c3c man/man2/fcntl.2: HISTORY: Update f=
irst POSIX appearance of fcntl(2)
>  -:  ------------ >  7:  a44c49650063 man/man2/fcntl_locking.2: HISTORY: =
Update first POSIX appearance of locking constants
>  -:  ------------ >  8:  7404e99ec690 man/man2/fork.2: HISTORY: Update fi=
rst POSIX appearance of fork(2)
>  -:  ------------ >  9:  163be42a70ea man/man2/fsync.2: HISTORY: Split fs=
ync(2) and fdatasync(2)
>  -:  ------------ > 10:  0dfa064b051b man/man2/fsync.2: HISTORY: Update f=
irst POSIX appearance of fsync(2)
>  -:  ------------ > 11:  a968c006c218 man/man2/fsync.2: HISTORY: Update f=
irst POSIX appearance of fdatasync(2)
>  -:  ------------ > 12:  566fd21d97b0 man/man2/get[gu]id.2: HISTORY: Upda=
te first POSIX appearance of get[e][gu]id(2)
>  -:  ------------ > 13:  a54a94c8b118 man/man2/getgroups.2: HISTORY: Upda=
te first POSIX appearance of getgroups(2)
>  -:  ------------ > 14:  0097b249c950 man/man2/gethostname.2: HISTORY: Sp=
lit gethostname(2) and sethostname(2)
>  -:  ------------ > 15:  824605c82a14 man/man2/getitimer.2: HISTORY: Upda=
te first SUS appearance of [gs]etitimer(2)
>  -:  ------------ > 16:  f776e452e427 man/man2/getpagesize.2: HISTORY: Up=
date first SUS appearance of getpagesize(2)
>  -:  ------------ > 17:  c2b9d37b6208 man/man2/getpid.2: HISTORY: Update =
first POSIX appearance of get[p]pid(2)
>  -:  ------------ > 18:  d5e7adf0a804 man/man2/getpriority.2: HISTORY: Up=
date first POSIX appearance of [gs]etpriority(2)
>  -:  ------------ > 19:  b5a7de01af52 man/man2/getresuid.2: HISTORY: Upda=
te first POSIX appearance of getres[gu]id(2)
>  -:  ------------ > 20:  5e54217b8cec man/man2/getrlimit.2: HISTORY: Upda=
te first POSIX appearance of [gs]etrlimit(2)
>  -:  ------------ > 21:  1bc25963021c man/man2/getsid.2: HISTORY: Update =
first POSIX appearance of getsid(2)
>  -:  ------------ > 22:  b93c17918b36 man/man2/getrusage.2: HISTORY: Upda=
te first POSIX appearance of getrusage(2)
>  -:  ------------ > 23:  00b72e770428 man/man2/gettimeofday.2: HISTORY: U=
pdate first POSIX appearance of gettimeofday(2)
>=20
> base-commit: 760458adc15668e910cefbbc4f9e11ccfd454411
> --=20
> 2.47.3
>=20



--=20
<https://www.alejandro-colomar.es>

--l7n3nfaqdeymnsxe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlw9MwACgkQ64mZXMKQ
wqkuyw//TPKL1dgQrUNwTvebcc5Zfp0D1+uH6AU7IxfBxft3vv31GSnNwE2sj5PS
rTgyGr9fR+XkK6xN+Fv6+t1TetCpfrlnT7lGRoowljMKXYaNs6mCjpGYejSa2R7z
xrGw2vKvPM26dmmpJPyydfJYxG/2nyGjVFjfttG/D00LH2qKa+0e/nc2quKXVcsI
qlltqfoPTfe2yKB/8hx0PkzJoYDNImKUBVChKq4cxsfk04+YyqwkSqmwXHR5t1Lu
K1/HbSC9tVRuVdiZTgSsejGthZ9IaqrEmAjVUvGqx/e6MbFgn52dfgSWNbOSUBOq
yZF+mjPu3HaeCnyEOJzUm6qyHlWTJtFKcfAiK/DOLKuKGasqbMqpHyP40t6BV9yI
be6/XZ+4bOslFxqyVHQfyFEnquZAH4MysBryJ0gS/roJb/IOJToYh0P2XCCC24yB
xKKRtiz58vNO1XK0OwBXqPzefWw3Y2bT6X76TqenrBrZYyikGZcXu6ux4tVUjnqq
ncEfcAGwhAPjAZ3uQHRg+nfpUMmdC1eXEETFJC5lX4m/EcT22ekIGZD9ibY1mpoJ
kf7TuYzCriDiIcp8wRmZCWF9HH5iCYY4FHLZ1KoVVX0UXEouW5dh/rEXh6/1X7us
ksdI1aIWAZxY4iyXcn/dFa3IYMK4JrVEi9X8wpjJs9qTWMW5j3w=
=GhJz
-----END PGP SIGNATURE-----

--l7n3nfaqdeymnsxe--

