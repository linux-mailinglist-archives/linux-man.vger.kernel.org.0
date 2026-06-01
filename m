Return-Path: <linux-man+bounces-5641-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cFdNIocFHmpRggkAu9opvQ
	(envelope-from <linux-man+bounces-5641-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 02 Jun 2026 00:19:51 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 90337625E06
	for <lists+linux-man@lfdr.de>; Tue, 02 Jun 2026 00:19:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C91BF3017CE5
	for <lists+linux-man@lfdr.de>; Mon,  1 Jun 2026 22:19:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DAD137F010;
	Mon,  1 Jun 2026 22:19:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lPMz8iQn"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A4A336213D;
	Mon,  1 Jun 2026 22:19:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780352384; cv=none; b=gUNEipYlELXfHGhCucXM+asko9niS34BT2bQG+NKfPoNaZ7nAcQOUxTXRc00Taxz3uwFNdwhjWrTlKXUofCxXSztok9UvWlnOPoGOAQmiPnVENqgKti2bzwP6themON2jxWQABOe8xFZ4Yx1xXUi6OUKHKj4edV1dS/la+flEaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780352384; c=relaxed/simple;
	bh=Wrd2uCdZw8mXDwER0LLO5AB0qYC2dGZDcclVnlBQm/E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IILWOKSpe4ETdBhzxLQWWyOkw0NKB+5+ZE8tNv6YLA90n4Grj33M3cZjAHIHwsHtjSmFAg9QbToGkqcTr/0ciABX5qMRcRh+2x0hVPfO1/JCvuntmdi+vLHmEfQLe3L/jGIhJ5zkLSCzgoOJKC1jWzmM8JAsr2Lz2+EWPmVLQp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lPMz8iQn; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 24AC81F00893;
	Mon,  1 Jun 2026 22:19:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780352382;
	bh=UGpo5gp1GklDKAAjSvOFnlQNXmY+Rax1chqUL9Ybcr4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=lPMz8iQn4dV2e2nihs7PsqNqYvx3eMV5OVLHcd0VTwds3VDDftXqI+GwEU9wi7g+r
	 J1WZTF+KV83gAZEz6DxQuZB1VvJRRlcqOrKz+gMDTNos/qs7AnqDqy8OYB4WsUoq2P
	 BV/hFMC5v4ltkY4Iez9tLfcKnWUlTudZY7QV0RRdh4xAbcw10IBiS/YU/dayNa0AZJ
	 nvD7nTKWsGOtikq58NUWA2kAdzL3n2riHfJqnZnG911xlBs4gwDzODtb1927vUHUUZ
	 uM7z3vPmjEmhBeh+uP0j8DiVDCKa7hEHzzxZkkowtyB7a6oPx6+6Tp5bTCEWuOwAxz
	 c5X0a7PxABc1Q==
Date: Tue, 2 Jun 2026 00:19:39 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Amir Goldstein <amir73il@gmail.com>, 
	Heinrich Schuchardt <xypron.glpk@gmx.de>
Cc: Jann Horn <jannh@google.com>, Jan Kara <jack@suse.cz>, 
	Matthew Bobrowski <repnop@google.com>, linux-man@vger.kernel.org, linux-fsdevel@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] man/man2/fanotify_mark.2: AT_FDCWD plus NULL path
 doesn't work
Message-ID: <ah4FXUpcE-6xlcDs@devuan>
References: <20260529-fan-mark-cwd-v1-1-cdfb3b5b6d7c@google.com>
 <CAOQ4uxiHU5xK=_FsOBkkB0go9ACBb2fYcdVE6T2o=MYDcxaiaQ@mail.gmail.com>
 <ahoIuOuC7q5M24dV@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uykuwuxrsiirp5cu"
Content-Disposition: inline
In-Reply-To: <ahoIuOuC7q5M24dV@devuan>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5641-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,gmx.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[alejandro-colomar.es:url,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 90337625E06
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--uykuwuxrsiirp5cu
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Amir Goldstein <amir73il@gmail.com>, 
	Heinrich Schuchardt <xypron.glpk@gmx.de>
Cc: Jann Horn <jannh@google.com>, Jan Kara <jack@suse.cz>, 
	Matthew Bobrowski <repnop@google.com>, linux-man@vger.kernel.org, linux-fsdevel@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] man/man2/fanotify_mark.2: AT_FDCWD plus NULL path
 doesn't work
Message-ID: <ah4FXUpcE-6xlcDs@devuan>
References: <20260529-fan-mark-cwd-v1-1-cdfb3b5b6d7c@google.com>
 <CAOQ4uxiHU5xK=_FsOBkkB0go9ACBb2fYcdVE6T2o=MYDcxaiaQ@mail.gmail.com>
 <ahoIuOuC7q5M24dV@devuan>
MIME-Version: 1.0
In-Reply-To: <ahoIuOuC7q5M24dV@devuan>

Hi,

On 2026-05-29T23:45:55+0200, Alejandro Colomar wrote:
> Hi Jann, Amir,
>=20
> On 2026-05-29T23:38:11+0200, Amir Goldstein wrote:
> > On Fri, May 29, 2026 at 7:27=E2=80=AFPM Jann Horn <jannh@google.com> wr=
ote:
> > >
> > > The fanotify_mark.2 manpage claims that AT_FDCWD works with a NULL pa=
th,
> > > but there is no kernel code for that - in fanotify_find_path(), in the
> > > `if (filename =3D=3D NULL)` block, the fd is only used for a normal FD
> > > lookup.
> > >
> > > This was also already the case when this manpage was written back in
> > > 2014, so remove the bogus documentation.
> > >
> > > Fixes: c200b422d ("fanotify_mark.2: New page documenting fanotify_mar=
k(2)")
> > > Signed-off-by: Jann Horn <jannh@google.com>
> >=20
> > Hah,  never noticed this.
> > Apparently, hallucinations already existed in 2014 :D
> >=20
> > Acked-by: Amir Goldstein <amir73il@gmail.com>
>=20
> Thanks!  I've added the author of the fixed commit in the recipients.
> I'll apply on Monday or so.

I've applied the patch and tag now.  Thanks!


Have a lovely night!
Alex

>=20
>=20
> Have a lovely night!
> Alex
>=20
> >=20
> > > ---
> > >  man/man2/fanotify_mark.2 | 8 --------
> > >  1 file changed, 8 deletions(-)
> > >
> > > diff --git a/man/man2/fanotify_mark.2 b/man/man2/fanotify_mark.2
> > > index e561ffd21..a3b77537c 100644
> > > --- a/man/man2/fanotify_mark.2
> > > +++ b/man/man2/fanotify_mark.2
> > > @@ -560,14 +560,6 @@ defines the filesystem object to be marked.
> > >  .IP \[bu]
> > >  If
> > >  .I path
> > > -is NULL, and
> > > -.I dirfd
> > > -takes the special value
> > > -.BR AT_FDCWD ,
> > > -the current working directory is to be marked.
> > > -.IP \[bu]
> > > -If
> > > -.I path
> > >  is absolute, it defines the filesystem object to be marked, and
> > >  .I dirfd
> > >  is ignored.
> > >
> > > ---
> > > base-commit: 9db8ca91f920b9aba40ed68de6b8da0ca9dbefaa
> > > change-id: 20260529-fan-mark-cwd-1c760106eff9
> > >
> > > Best regards,
> > > --
> > > Jann Horn <jannh@google.com>
> > >
> >=20
>=20
> --=20
> <https://www.alejandro-colomar.es>



--=20
<https://www.alejandro-colomar.es>

--uykuwuxrsiirp5cu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmoeBXoACgkQ64mZXMKQ
wqmSKQ/+OB9qZsXi0bFw5jXsbSic3/Z1rzCXQ+cBWfkikbxPIrHk0izfD9Qx9Azs
3pRZu56HL5ygbdjTLUwgMM5zu8GQ8p9aTfl/HAm4TxVBa0PPqO9ZY4+B1QiqR4HZ
jW0QNZWLh7AsFJ/fIxMV7QPogB9l2rml90dHTuTNfYgIqjvpuDXTNxnuHkC8NFrD
vL66WGgUVPRrNd4iIlqxBMdThxBS7P/5zQctgS42oRtMmJhzYZq52q4nnxEg9kGm
P00pxwLR2qZbOaQfc0mdhkIcu9HU9jDBekbnTEpqw/oFoGTDGfl7zgGSEPVCjWox
tIWvbJFrXRFAGxn5KdRYOyK/y0nuiW4lh0h/fARy4fAND0h9QiR8TNkZbv09Csec
aEHp99ydR3yELLtbUinc/QNZ0xv5iOgzVdAdqjZZNeUjm2/wwRkW7I9mdeZf0DTL
3D9aTK+eKS8rGqOw+lSkxdPQ+BY4Mkqqe0GvxgGeb77MjmVBWX/hExnFxwTZGarv
TKh9fmQIeHP3d9auQfomP/rEZHrId6m915sJW9Gf0myif/YRMvbAbRyoIzT056Dp
jMNtQh1lR8CFHHnElpkgYt7yLsaWeyeUV1WSNJ5xZ17vOKX/AqxIHysycSnen1fc
jpXrucVD0wBMzRhNarejoCV8/rQeHrSi2hHiD6Jo4XuobP+nhDQ=
=8Bu2
-----END PGP SIGNATURE-----

--uykuwuxrsiirp5cu--

