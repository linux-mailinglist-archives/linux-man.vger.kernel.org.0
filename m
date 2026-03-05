Return-Path: <linux-man+bounces-5238-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 5CgcHYi8qWnSDgEAu9opvQ
	(envelope-from <linux-man+bounces-5238-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 05 Mar 2026 18:25:28 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EEF8F21626D
	for <lists+linux-man@lfdr.de>; Thu, 05 Mar 2026 18:25:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AF33F3193004
	for <lists+linux-man@lfdr.de>; Thu,  5 Mar 2026 17:19:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90D7F3DBD6D;
	Thu,  5 Mar 2026 17:19:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BsCdABbQ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53AF739769B;
	Thu,  5 Mar 2026 17:19:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772731175; cv=none; b=SZEyVm49BJey1cBCq6QaR4IT1ApyWbddmWnVppqi6iSS1AtDXPSog80RsSGCh/vitz51BMMX71B6x/pvg8OuNSRSXOkdkfaCbPXd6SsUPS87TAIsdQ/yAQGvLtnD07pFvy8LPZNnRoyHip1aTHOeV8tMZatuu4nveZf5pVjpeuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772731175; c=relaxed/simple;
	bh=QD5OstprROHSWR/5uH9My4mKmUof+FJpJGsy9xLKTfA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AduaEhMHDF5qN/ZnWUss8jwAbS+LZ6NVipO+J/GUsNvBFo/ZrHhYUoOKG0dBFHmBZEPWpKwAPADiU0dxqZPiC1OWDP7u+2Y2ipaviEsgUjot0F3MZtXFAysWkBRMajt+q0icR7txacYy2iwOShttsLQopahBneGTGO11pbaK6mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BsCdABbQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 969D8C19425;
	Thu,  5 Mar 2026 17:19:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772731175;
	bh=QD5OstprROHSWR/5uH9My4mKmUof+FJpJGsy9xLKTfA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BsCdABbQ8nXxYM+z8+qwzatjDLLKfXw9Kw8repzqbic399QUkRE/dMGyea/CPX1Qm
	 5otWYjXcWI1H9W2XKS+V/7RjkNJUk+rJra4i+4V8Z37HnRL7IHvdWzashc1mv4MCq7
	 WnwmyVP8fx7Y/EXyeq6D5xfljm0ynoLy7Cn4PFFQMmgN2u/hPLgXOBmLibtr2E24KI
	 ktxtd08+myUSq1DWpPn+Eo8c/A2/9gH805uAK7Uzq0hec1IHDDaJUf0MNmpl333Poe
	 PCu7QMHM7EJr+8rxfwvsLG1BcRGIOUmjiOxKjVlxzWF0CJKU71l4Mj328++5S+uZcN
	 AvyWbOZ4iL4Qw==
Date: Thu, 5 Mar 2026 18:19:30 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Bhavik Sachdev <b.sachdev1904@gmail.com>, g.branden.robinson@gmail.com
Cc: avagin@gmail.com, brauner@kernel.org, criu@lists.linux.dev, 
	jlayton@kernel.org, josef@toxicpanda.com, linux-man@vger.kernel.org, 
	miklos@szeredi.hu, ptikhomirov@virtuozzo.com, Aleksa Sarai <cyphar@cyphar.com>, 
	Askar Safin <safinaskar@gmail.com>
Subject: Re: [PATCH v3] man/man2/statmount.2: Document STATMOUNT_BY_FD
Message-ID: <aam6Yn6ZJhM9PQup@devuan>
References: <aZzuI5pPe19gFvPf@devuan>
 <ef5a337e52f904d7eeb1e3fa82a09b04b46a4860.1772075365.git.b.sachdev1904@gmail.com>
 <aahG1Mb0oRBEG6sy@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xmp6ygvlox3yiyta"
Content-Disposition: inline
In-Reply-To: <aahG1Mb0oRBEG6sy@devuan>
X-Rspamd-Queue-Id: EEF8F21626D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5238-lists,linux-man=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,lists.linux.dev,toxicpanda.com,vger.kernel.org,szeredi.hu,virtuozzo.com,cyphar.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action


--xmp6ygvlox3yiyta
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Bhavik Sachdev <b.sachdev1904@gmail.com>, g.branden.robinson@gmail.com
Cc: avagin@gmail.com, brauner@kernel.org, criu@lists.linux.dev, 
	jlayton@kernel.org, josef@toxicpanda.com, linux-man@vger.kernel.org, 
	miklos@szeredi.hu, ptikhomirov@virtuozzo.com, Aleksa Sarai <cyphar@cyphar.com>, 
	Askar Safin <safinaskar@gmail.com>
Subject: Re: [PATCH v3] man/man2/statmount.2: Document STATMOUNT_BY_FD
Message-ID: <aam6Yn6ZJhM9PQup@devuan>
References: <aZzuI5pPe19gFvPf@devuan>
 <ef5a337e52f904d7eeb1e3fa82a09b04b46a4860.1772075365.git.b.sachdev1904@gmail.com>
 <aahG1Mb0oRBEG6sy@devuan>
MIME-Version: 1.0
In-Reply-To: <aahG1Mb0oRBEG6sy@devuan>

Hi,

On 2026-03-04T15:58:21+0100, Alejandro Colomar wrote:
> Hi Bhavik,
>=20
> Sorry for the delay; I had an issue with my mail provider.  It's now
> resolved.
>=20
> On 2026-02-26T08:40:16+0530, Bhavik Sachdev wrote:
> > STATMOUNT_BY_FD introduces the ability to get information about a mount
> > using a fd on the mount. This functionality is currently in linux-next
> > [1].
> >=20
> > Link [1]:
> > <https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/co=
mmit/?h=3Dnext-20260126&id=3Dd5bc4e31f2a3f301b4214858bec834c67bb2be5c>
> >=20
> > Signed-off-by: Bhavik Sachdev <b.sachdev1904@gmail.com>
> > Message-ID: <57c96336ccfbdc05f60b7875c315a8c1dd0d14b8.1771870334.git.b.=
sachdev1904@gmail.com>
> > Message-ID: <7d4b22c595feeadb3be6df8a8781344597120f7e.1771870502.git.b.=
sachdev1904@gmail.com>

I've applied the patch.  I've amended the few formatting issues I
reported below.  Since the only important issue was the wording one, and
Askar confirmed it's good, I took the patch.

BTW, Branden, I'm getting a diagnostic from groff:

	TROFF		.tmp/man/man2/statmount.2.pdf.set
	! (troff -mandoc -Tpdf -wbreak -rS12 -rU0  <.tmp/man/man2/statmount.2.pdf.=
troff 2>&1 >.tmp/man/man2/statmount.2.pdf.set) \
	| grep ^ >&2
	.tmp/man/man2/statmount.2:155: warning: table row does not fit on page 2

But the PDF looks good to me.  Would you mind looking at that page and
telling me what you'd do with that diagnostic, and whether I should care
about it?


Have a lovely day!
Alex

> > ---
> > Hey Alex!
> >=20
> > > Also, should we say the same as elsewhere?:
> > >	"It is an ORed combination of the following constants"
> > > and then a list which contains only STATMOUNT_BY_FD?
> >=20
> > I am not really sure that statmount flags will be a ORed combination in
> > the future i.e (STATMOUNT_BY_FD | STATMOUNT_NEW_FLAG) would be something
> > that is valid.
> >=20
> > I think for now, it is better we don't do that.
> >=20
> > Thanks,
> > Bhavik
> >=20
> >  man/man2/statmount.2 | 40 ++++++++++++++++++++++++++++++++++++++--
> >  1 file changed, 38 insertions(+), 2 deletions(-)
> >=20
> > diff --git a/man/man2/statmount.2 b/man/man2/statmount.2
> > index 5ac96796c..1556342de 100644
> > --- a/man/man2/statmount.2
> > +++ b/man/man2/statmount.2
> > @@ -24,7 +24,10 @@ .SH SYNOPSIS
> >  .EX
> >  .B struct mnt_id_req {
> >  .BR "    __u32  size;" "        /* sizeof(struct mnt_id_req) */"
> > -.BR "    __u32  mnt_ns_fd;" "   /* fd of mnt_ns to query the mnt_id in=
 */"
> > +.BR "    union {"
> > +.BR "           __u32  mnt_ns_fd;" "   /* fd of mnt_ns to query the mn=
t_id in */"
> > +.BR "           __u32  mnt_fd;" "      /* fd on the mount being querie=
d */"
> > +.BR "    };"
> >  .BR "    __u64  mnt_id;" "      /* The mnt_id being queried */"
> >  .BR "    __u64  param;" "       /* ORed combination of the STATMOUNT_ =
constants */"
> >  .BR "    __u32  mnt_ns_id;" "   /* The id of mnt_ns to query the mnt_i=
d in */"
> > @@ -89,7 +92,8 @@ .SH DESCRIPTION
> >  .I bufsize
> >  with the fields filled in as described below.
> >  .I flags
> > -must be 0.
> > +must either be 0 or
> > +.BR STATMOUNT_BY_FD .
> >  .P
> >  (Note that reserved space and padding is omitted.)
> >  .SS The mnt_id_req structure
> > @@ -110,6 +114,27 @@ .SS The mnt_id_req structure
> >  .I req.mnt_id
> >  (since Linux 6.18).
> >  .P
> > +.I req.mnt_fd
> > +is a file descriptor on a mount.
>=20
> Is this the same as a "mount object file descriptor" as describer in
> fsopen(2)?  If so, we should use the same language, I think.
>=20
> CC +=3D Aleksa, Askar
>=20
> > +If
> > +.B STATMOUNT_BY_FD
> > +flag is specified,
> > +.I req.mnt_id
> > +and
> > +.I req.mnt_ns_id
> > +are zeroed, the function will return information about the mount the f=
d is on
>=20
> We always spell "file descriptor", not fd.
>=20
> Aleksa, Askar, would you mind reviewing this patch?  You may have
> comments on some specific terms used here, as they might relate to
> fsopen(2).
>=20
> > +(Since Linux 7.0).
>=20
> s/Since/since/
>=20
> > +.P
> > +The fd can also be on a mount that has been lazily unmounted (see
> > +.BR umount2 (2)
> > +with
> > +.BR MNT_DETACH ).
> > +In this case,
> > +.BR STATMOUNT_MNT_POINT
>=20
> s/BR/B/
>=20
> BR is for alternating bold and roman.
>=20
>=20
> Other than the questios/doubts about mounts and file descriptors, and
> these minor formatting/source issues (which I would have amended
> otherwise), the patch looks good to me.
>=20
>=20
> Have a lovely day!
> Alex
>=20
> > +and
> > +.BR STATMOUNT_MNT_NS_ID
> > +will be unset, since an unmounted mount is no longer a part of the fil=
esystem.
> > +.P
> >  .I req.mnt_id
> >  can be obtained from either
> >  .BR statx (2)
> > @@ -392,6 +417,17 @@ .SH ERRORS
> >  .I req.mnt_ns_fd
> >  were set.
> >  .TP
> > +.B EINVAL
> > +.I req.mnt_id
> > +or
> > +.I req.mnt_ns_id
> > +was specified alongside
> > +.IR req.mnt_fd .
> > +.TP
> > +.B EBADF
> > +.I req.mnt_fd
> > +is an invalid file descriptor.
> > +.TP
> >  .B E2BIG
> >  .I req
> >  is too large.
> > --=20
> > 2.53.0
> >=20
>=20
> --=20
> <https://www.alejandro-colomar.es>



--=20
<https://www.alejandro-colomar.es>

--xmp6ygvlox3yiyta
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmpuyEACgkQ64mZXMKQ
wqkKSw/+PNpYmopfdzqIv88RAn6j7eD1nHMkrcVMYlVX9pDKVhRtcmarHV08X0mi
m4Qkeuzz/Zx1IVpqPKI8DRAOpbCIz+g4K9uR702yHAPVl24HVgoDWBxYhWyS/cO+
OdATzfjy2hDg3Qzncd2HPv+scNktREFcX2OJtK5MNnDypUsiq6Owrmsow5Cpv6YA
eyxeOvQqwhzKSId8qfyHsQRY0p6s9Ub/wRJd6j0ZSiVKDe20zpImbhzFIt+LCw71
kWRNT7tp2dyH6sHCvdtFBgw8AfQYe8Z2eff7z/BD3bYhFUEvFEXtAOmb98RNkSAy
eixeeenpom/mDBD2+qnGk3uhukrFOTxbs2+2sIsKdOoAv8FKXaW6hGrrS4BnQ0lx
+BGkZu1JsawbWpyrvgKdVfx3ESXK0QAh6TldEDUsDclthP7JtNqUcNvp0TNti8jW
VzY+Dsu3xZUZx9QHSUrwQZhlmMBNyXgOfCLIet7IGPKr3LW58eK8r8xv5hEOo2X3
1lBziX0l5wc/qtIrW7uVQR7cMCzgGlWKqTuB52kwqda/R2aMnJ/8gaKWFHDH9Mcj
aN5OoJWu2myrm8M8KR+c4KNXuDL9lRRLdVwL7uz2BQQhqVb1vo2VP2HKAqMJTQtx
JO4inlRQnacU6dEhFZtKHNNfIIHjMCD18S/xNyhDph8KYP36yFw=
=PPbY
-----END PGP SIGNATURE-----

--xmp6ygvlox3yiyta--

