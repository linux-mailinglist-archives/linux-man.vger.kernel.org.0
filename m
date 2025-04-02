Return-Path: <linux-man+bounces-2729-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 675ABA79764
	for <lists+linux-man@lfdr.de>; Wed,  2 Apr 2025 23:14:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B1BC21893982
	for <lists+linux-man@lfdr.de>; Wed,  2 Apr 2025 21:14:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC6CE1F3FDC;
	Wed,  2 Apr 2025 21:14:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Icg1BWSQ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC8C842A87
	for <linux-man@vger.kernel.org>; Wed,  2 Apr 2025 21:14:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743628461; cv=none; b=ufbowtvwd/OhoNSrUbknme6E5CHuVfJaYHxnnbMKbxDHbhC1mUt0AkVev2HQ9Ax9Q/Fd/DXm2uwpyenu1BuO7fgILr/iOSG40ttUfPjggL1Ct6mNfbyaBNcUqzbOBjknHFRGLgWjA9W1JdplQjEm/yz6YvbjQJlQn68fC6v4Mt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743628461; c=relaxed/simple;
	bh=SvcCjmEC58T7qU55vGcafA4DnvdGb2S6Qn1wK/AFa10=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=P38Tkc4f+sWTvHooG65kG2hWBfQ3GKSUp6L61YKZwI/y9mUF2YUtmf4OhUeZUDytooK99LZH1MkHPM1d4KllSxrHUk3EBVJV8wbaORdqGMcd2WfdTGdmCY7FJ/EsFqK97jrok4va0BFhtvL+I/ZFtUViHlCzYNaxSJBXBMAnNio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Icg1BWSQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 253C0C4CEDD;
	Wed,  2 Apr 2025 21:14:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743628461;
	bh=SvcCjmEC58T7qU55vGcafA4DnvdGb2S6Qn1wK/AFa10=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Icg1BWSQuFpy5t9dJsQRa8j7id7/KRRWnfUs1E58KVYf8Nim3WZ5zeIwKp85xI86w
	 ruxbaDMVJnXelwuP6HKB2tTZWA82e34sOM45/Pz56PxwSLst8eklzGmpOsdth5/Lqx
	 2F+Zeteoe4cpCxX+vUtZCJ6xJnDKv6hAUWh1qeL+6roSzM9p/+6o90u5dT/53CFvbv
	 fc35HAu9CX9kAkJtcyMLVyZvDtFnkA9tnO8ZHh6bzFarr14xURQHbZWlJvWMoJDZnR
	 93MKQ9ObvkKJdsn9ebbwfnY0gqXAQ9bGtPNtjhDyK6b1qq/2fTIlMO8d2N2W+P5V99
	 MmnLZNPxdxc8w==
Date: Wed, 2 Apr 2025 23:14:17 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Amir Goldstein <amir73il@gmail.com>
Cc: Alejandro Colomar <alx.manpages@gmail.com>, Jan Kara <jack@suse.cz>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH v2 2/3] fanotify.7: Document FAN_RESPONSE_INFO_AUDIT_RULE
Message-ID: <w353fxq7kesaau5ft7jfjg2zi5yetqfglgbh2joyk3rghdzkqn@i3aykxqgrbpz>
References: <20250331082759.1424401-1-amir73il@gmail.com>
 <20250331082759.1424401-2-amir73il@gmail.com>
 <ecb3r3iw7c6efbl5dagb7jy7sailmdpmil3qg76lm7s3ub3qua@e55vmngsboyq>
 <CAOQ4uxgPdWXqaLN9PmgnWaPHDsisZJTLpV-GYmtY_mgPKyMYcQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3sds5vgyp2fbmwvh"
Content-Disposition: inline
In-Reply-To: <CAOQ4uxgPdWXqaLN9PmgnWaPHDsisZJTLpV-GYmtY_mgPKyMYcQ@mail.gmail.com>


--3sds5vgyp2fbmwvh
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Amir Goldstein <amir73il@gmail.com>
Cc: Alejandro Colomar <alx.manpages@gmail.com>, Jan Kara <jack@suse.cz>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH v2 2/3] fanotify.7: Document FAN_RESPONSE_INFO_AUDIT_RULE
References: <20250331082759.1424401-1-amir73il@gmail.com>
 <20250331082759.1424401-2-amir73il@gmail.com>
 <ecb3r3iw7c6efbl5dagb7jy7sailmdpmil3qg76lm7s3ub3qua@e55vmngsboyq>
 <CAOQ4uxgPdWXqaLN9PmgnWaPHDsisZJTLpV-GYmtY_mgPKyMYcQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAOQ4uxgPdWXqaLN9PmgnWaPHDsisZJTLpV-GYmtY_mgPKyMYcQ@mail.gmail.com>

Hi Amir,

On Mon, Mar 31, 2025 at 11:46:33AM +0200, Amir Goldstein wrote:
> On Mon, Mar 31, 2025 at 11:01=E2=80=AFAM Alejandro Colomar <alx@kernel.or=
g> wrote:
> >
> > Hi Amir,
> >
> > On Mon, Mar 31, 2025 at 10:27:58AM +0200, Amir Goldstein wrote:
> > > Document FAN_RESPONSE_INFO_AUDIT_RULE extended response info record
> > > that was added in v6.3.
> > >
> > > Cc: Jan Kara <jack@suse.cz>
> > > Cc: Richard Guy Briggs <rgb@redhat.com>
> > > Signed-off-by: Amir Goldstein <amir73il@gmail.com>
> > > ---
> > >  man/man7/fanotify.7 | 43 +++++++++++++++++++++++++++++++++++++++++++
> > >  1 file changed, 43 insertions(+)
> > >
> > > diff --git a/man/man7/fanotify.7 b/man/man7/fanotify.7
> > > index ad864b762..863578bd7 100644
> > > --- a/man/man7/fanotify.7
> > > +++ b/man/man7/fanotify.7
> > > @@ -787,6 +787,49 @@ flag can be set in the
> > >  field.
> > >  In that case, the audit subsystem will log information about the acc=
ess
> > >  decision to the audit logs.
> > > +.P
> > > +Since Linux 6.3,
> > > +.\" commit 70529a199574c15a40f46b14256633b02ba10ca2
> > > +the
> > > +.B FAN_INFO
> > > +flag can be set in the
> > > +.I .response
> > > +field.
> > > +It indicates that an extra variable-length response record follows t=
he
> > > +.I fanotify_response
> > > +structure.
> > > +Extra response records start with a common header:
> > > +.P
> > > +.in +4n
> > > +.EX
> > > +struct fanotify_response_info_header {
> > > +    __u8 type;
> > > +    __u8 pad;
> > > +    __u16 len;
> > > +};
> > > +.EE
> > > +.in
> > > +.P
> > > +The value of
> > > +.I .type
> > > +determines the format of the extra response record.
> > > +In case the value of
> > > +.I .type
> > > +is
> > > +.BR FAN_RESPONSE_INFO_AUDIT_RULE ,
> >
> > How about making this more schematic?  I'm thinking of the following
> > (see diff for both the source code and the rendered page).
> >
> >
> > Cheers,
> > Alex
> >
> > $ git diff
> > diff --git i/man/man7/fanotify.7 w/man/man7/fanotify.7
> > index 863578bd7..4b1e2c215 100644
> > --- i/man/man7/fanotify.7
> > +++ w/man/man7/fanotify.7
> > @@ -813,13 +813,11 @@ .SS Dealing with permission events
> >  The value of
> >  .I .type
> >  determines the format of the extra response record.
> > -In case the value of
> > -.I .type
> > -is
> > -.BR FAN_RESPONSE_INFO_AUDIT_RULE ,
> > -the following response record is expected
> > +.TP
> > +.BR FAN_RESPONSE_INFO_AUDIT_RULE
> > +The following response record is expected
> >  with extra details for the audit log:
> > -.P
> > +.IP
> >  .in +4n
> >  .EX
> >  struct fanotify_response_info_audit_rule {
> > $ MANWIDTH=3D72 diffman-git
> > --- HEAD:man/man7/fanotify.7
> > +++ ./man/man7/fanotify.7
> > @@ -539,16 +539,18 @@
> >           };
> >
> >       The value of .type determines the format  of  the  extra  response
> > -     record.   In  case  the  value  of  .type is FAN_RESPONSE_INFO_AU=
=E2=80=90
> > -     DIT_RULE, the following response record is expected with extra de=
=E2=80=90
> > -     tails for the audit log:
> > +     record.
> >
> > -         struct fanotify_response_info_audit_rule {
> > -             struct fanotify_response_info_header hdr;
> > -             __u32 rule_number;
> > -             __u32 subj_trust;
> > -             __u32 obj_trust;
> > -         };
> > +     FAN_RESPONSE_INFO_AUDIT_RULE
> > +            The  following  response  record is expected with extra de=
=E2=80=90
> > +            tails for the audit log:
> > +
> > +                struct fanotify_response_info_audit_rule {
> > +                    struct fanotify_response_info_header hdr;
> > +                    __u32 rule_number;
> > +                    __u32 subj_trust;
> > +                    __u32 obj_trust;
> > +                };
> >
> >     Monitoring filesystems for errors
> >       A single FAN_FS_ERROR event is stored per filesystem at once.  Ex=
=E2=80=90
> >
>=20
> I think this is nicer.
> Feel free to apply your version.

I have applied your patch amended with my diff.


Cheers,
Alex

>=20
> While at it, you may want to consider a similar reformatting
> to the section describing the extra information records in events
> starting with:
>=20
> "Information  records  are supplemental pieces of information..."
>=20
> and then with:
>=20
> "Information records that are supplied alongside..."
>=20
> I know making an order in this would be too much for me...
>=20
> Thanks,
> Amir.

--=20
<https://www.alejandro-colomar.es/>
<https://www.alejandro-colomar.es:8443/>
<http://www.alejandro-colomar.es:8080/>

--3sds5vgyp2fbmwvh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmftqKkACgkQ64mZXMKQ
wqkZBA/+KtOhZwOcgw1JovO5y/29WwRzXNwlYk0ct3WdsSuyFu36dmoa/wTo+Y+k
1LaEHEbcQNh/0ZsKB6gRQC/aas6jJGlCR3S/jFN7fgzjzgRzJXvoHpbEzdqyqn2c
I5sJdqaQv4QlZYoVkViLe/yjbf19aOzA9XOLTN5FGevdpzt3vLvd9GZLvllTx3vL
hN9UN7uogwGkQAgQLqmLBftF87vbpHx7nT6nh6NointD+mrpvP6k5FzKlK6gUcdJ
W0i+iImhq0Eiwz7LwBg3BKPmNt1IoDy0koEmiz5MgZZSUZyOSSHV/yQ1JGrLWhLF
5YJTyMxja0jWMMg4ISEKd6+fh8Y7YwcFIKsJY+1yTZpmC/Yt/aAq5c7CNG4Lt7Ix
4BedIA5eXztQs7zKvpNIQBsbvXlk24C+naFnBAJDZsXlsnXmsW0cXDCPlNYToo6i
cTUbjXZ1j4oBUD+vFeBD/GcD9sctvMQ0tvD1awBrFNi+5wDKPmTdXx/A54TAR6KT
WhhrfqCkO3zqwJLHD1tKJQoW+axggBN4W3KdeMNiJcf5RwnRxhkEKf9JkBNlUpiX
cjgZP5pV76nnI4tm0/c1wENDJQx1ZOYVZEGdzABwGnnKClK+3ZxIVqjKLg1t22Si
+uLB/K1oXkqwC+B3QDwARt+h76+dYKCpOICfrEQ8K07pmtgtd3Q=
=qAP0
-----END PGP SIGNATURE-----

--3sds5vgyp2fbmwvh--

