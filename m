Return-Path: <linux-man+bounces-2484-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 43280A3ACDC
	for <lists+linux-man@lfdr.de>; Wed, 19 Feb 2025 00:52:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1D3451750FF
	for <lists+linux-man@lfdr.de>; Tue, 18 Feb 2025 23:52:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EA901DC184;
	Tue, 18 Feb 2025 23:52:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cjPiqt+U"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F27491D86CE
	for <linux-man@vger.kernel.org>; Tue, 18 Feb 2025 23:52:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739922772; cv=none; b=mcIGZaPsiH2Rh44mcQ8N8GrZA+ov3lmAt4PatjUGAqzIbxboi57wmszxOWr2H7ESyUahnUk2orpFAlmnnGgQIaoDgNHQna1ovhdy7K+dEOrafD9IhqFl+tAIZwKbUvFiy0WqDXRBaa9UGBaQlee35TqLjeyGjpG7jgusddIZIHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739922772; c=relaxed/simple;
	bh=CIxkQrTbWE8nT2K/yik6nq61S/6+kaB4qKkFL8i5cZc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=I7qaMvJd2UW1dH7+qEINg8TzD7uklaKDCw8w+XKHaTKIjZ+ixpF4Z7i+SffTLRb+cPBuH6rhNTuJg8m3ePogU9gpHgLbbEIW13t6feaHsJvD3Ow6H7plzPGgLqYvhWnWlH9XMtvqiBKskW9j/bIbEbcndZO0i/EItaApfSMtVCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cjPiqt+U; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A9AA1C4CEE6;
	Tue, 18 Feb 2025 23:52:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739922771;
	bh=CIxkQrTbWE8nT2K/yik6nq61S/6+kaB4qKkFL8i5cZc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cjPiqt+U1T/j59z8SxSYiSlpR+dHd4H4dzQ+F33LQmE7pNzg3FfwsGqwdFIl3Qcxh
	 8LY2FLB6kWz8tWYwnj2FBY7Sf78bAkBWYnkNJssc8YGQcZWwjj10GfAdri1RGAgcMz
	 1ueBbfgRpiXzs0xgY8D66GzWrxmE64IBUnenoTBWBmHrW3VnkoPQ6AlKgrGZrotime
	 AjTq3Uc5LrIVaNE0cozgD8iAMw5lNiyO3AC7lMweXveirPH1n0MLz1BdC7YHK+glgO
	 1VMYQ/dvQsX327MtSHIs6c1CCZridBP/fzxdek/RqyimUUYnxtpuuIvfY6DWvGGs2t
	 /EueOD6BAIuFA==
Date: Wed, 19 Feb 2025 00:53:32 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: Askar Safin <safinaskar@zohomail.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v3 1/2] man/man3/getcwd.3: say more clear that syscall
 can return "(unreachable)", but modern glibc wrapper cannot
Message-ID: <cjcvgtiyq4yipanoruv5xg2x7prusrudtgizttj634rrwlgyzl@a7iiwkoezojd>
References: <20250216061828.2277971-1-safinaskar@zohomail.com>
 <20250217165143.1265542-1-safinaskar@zohomail.com>
 <20250217165143.1265542-2-safinaskar@zohomail.com>
 <88f30f87-0498-4d2a-a9be-27b737ce54a7@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="f5vobmcf67i6asbo"
Content-Disposition: inline
In-Reply-To: <88f30f87-0498-4d2a-a9be-27b737ce54a7@redhat.com>


--f5vobmcf67i6asbo
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: Askar Safin <safinaskar@zohomail.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v3 1/2] man/man3/getcwd.3: say more clear that syscall
 can return "(unreachable)", but modern glibc wrapper cannot
References: <20250216061828.2277971-1-safinaskar@zohomail.com>
 <20250217165143.1265542-1-safinaskar@zohomail.com>
 <20250217165143.1265542-2-safinaskar@zohomail.com>
 <88f30f87-0498-4d2a-a9be-27b737ce54a7@redhat.com>
MIME-Version: 1.0
In-Reply-To: <88f30f87-0498-4d2a-a9be-27b737ce54a7@redhat.com>

On Tue, Feb 18, 2025 at 06:37:09PM -0500, Carlos O'Donell wrote:
> On 2/17/25 11:51 AM, Askar Safin wrote:
> > I verified using expirement that modern glibc wrapper getcwd actually n=
ever returns "(unreachable)".
> > Also I have read modern glibc sources for all 3 functions documented he=
re.
> > All they don't return "(unreachable)".
> > Also I changed "pathname" to "pathnames".
>=20
> Commit message is incorrect, but the rest of the change looks good.
>=20
> Please drop the "Also I changed..." line since you made this change in pa=
tch 2/2.
>=20
> You can keep my RB if you drop the line.
>=20
> Reviewed-by: Carlos O'Donell <carlos@redhat.com>

Thanks!

>=20
> >=20
> > Now let me describe my expirement:
> >=20
> > 	d-user@comp:/tmp$ cat getcwd.c
> > 	#include <unistd.h>
> > 	#include <stdio.h>
> > 	#include <sys/syscall.h>
> >=20
> > 	int
> > 	main(void)
> > 	{
> > 		char  buf[1000];
> >=20
> > 		if (syscall(SYS_getcwd, buf, sizeof(buf)) =3D=3D -1)
> > 			perror("SYS_getcwd");
> > 		else
> > 			printf("SYS_getcwd: %s\n", buf);
> >=20
> > 		if (getcwd(buf, sizeof(buf)) =3D=3D NULL)
> > 			perror("getcwd");
> > 		else
> > 			printf("getcwd: %s\n", buf);
> >=20
> > 		return 0;
> > 	}
> > 	d-user@comp:/tmp$ gcc -Wall -Wextra -o getcwd getcwd.c
> > 	d-user@comp:/tmp$ sudo unshare --mount bash
> > 	d-root@comp:/tmp# mkdir /tmp/dir
> > 	d-root@comp:/tmp# mount -t tmpfs tmpfs /tmp/dir
> > 	d-root@comp:/tmp# cd /tmp/dir
> > 	d-root@comp:/tmp/dir# umount -l .
> > 	d-root@comp:/tmp/dir# /tmp/getcwd
> > 	SYS_getcwd: (unreachable)/
> > 	getcwd: No such file or directory
> > 	d-root@comp:/tmp/dir# exit
> > 	exit
> >=20
> > Cc: Carlos O'Donell <carlos@redhat.com>
> > Link: <https://sourceware.org/bugzilla/show_bug.cgi?id=3D18203>
> > Link: <https://sourceware.org/git/gitweb.cgi?p=3Dglibc.git;h=3D52a713fd=
d0a30e1bd79818e2e3c4ab44ddca1a94>
> > Signed-off-by: Askar Safin <safinaskar@zohomail.com>
> > ---
> >  man/man3/getcwd.3 | 5 ++++-
> >  1 file changed, 4 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/man/man3/getcwd.3 b/man/man3/getcwd.3
> > index 685585a60..919ffb08f 100644
> > --- a/man/man3/getcwd.3
> > +++ b/man/man3/getcwd.3
> > @@ -246,7 +246,10 @@ without changing its current directory into the ne=
w root).
> >  Such behavior can also be caused by an unprivileged user by changing
> >  the current directory into another mount namespace.
> >  When dealing with pathname from untrusted sources, callers of the
> > -functions described in this page
> > +functions described in this page (until glibc 2.27)
> > +or the raw
>=20
> OK. Includes Alejandro's suggestion.
>=20
> > +.BR getcwd ()
> > +system call
> >  should consider checking whether the returned pathname starts
> >  with '/' or '(' to avoid misinterpreting an unreachable path
> >  as a relative pathname.
>=20
>=20
> --=20
> Cheers,
> Carlos.
>=20

--=20
<https://www.alejandro-colomar.es/>

--f5vobmcf67i6asbo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAme1HXwACgkQ64mZXMKQ
wql/cw/9GCjShdKUr6L0xgYNjmds12kyXTrbNNgIwjtcZ7y3sUPLZqgp/LSETYSD
AS/qPuvGQbyPRTEWKxKxafgqumirpuHE8DZeJXrVTxK3Ou2JE8BWd9Lp4QWhdKQP
aTA4MbXSXe4DDuKONxtpfVVz9N3H/s3k395cU7HZmOb5FN0fKrqyYyNwqVDHtYsk
8j20lJHgqgkjYp1exwyqbwHIg0m7q0tKettyOndE31Ca4s4pdiQktpuBJCP53J5D
IkHM8qLikEAYLPFqD4Npa/qy7pMx3RE+E2z5+gqoxlrofHNu0bwC/k57mNN0vIY9
UCnrUVpIVO1mzpzGBqneLwCry9pgId/88+gq+WxTPg0xeTRnTMnt3viKiFYnEhdB
O16dZrw2gXAizJEUUrEY+1lRrpQRl/L+Ou/Vd1jFV0oBVnhbMyrql9228cl55DSQ
szqZ/+pK6m1yLLzJG5NhkXeoFnJNfy7aX5Fp4SXSA6zCDug53XVdRUeR1UGlSCFl
yheY7S1thvp3AHS3nPRGzYYPEJxK4uAXFNK9P155IleO+NmFPOpha0GSsBrtlug2
ULAlDctzc/NUrPhBV6Kzo66UzmImwm0li63cT3aF5Ufsje+hvPUgyWT+LRcBVuNu
PU3noifBieVMyatr9l8j3s+PRERiUHhZ8IiAlHFwpxe/wwJB/2Y=
=PEiq
-----END PGP SIGNATURE-----

--f5vobmcf67i6asbo--

