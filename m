Return-Path: <linux-man+bounces-2704-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E5CCDA7639D
	for <lists+linux-man@lfdr.de>; Mon, 31 Mar 2025 11:54:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3904F1888CDF
	for <lists+linux-man@lfdr.de>; Mon, 31 Mar 2025 09:54:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D02461DF247;
	Mon, 31 Mar 2025 09:53:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h/AO3+d3"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FF7915530C
	for <linux-man@vger.kernel.org>; Mon, 31 Mar 2025 09:53:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743414839; cv=none; b=nPUBKEArPZaUk0RlKHJJ6lTpGJLOpaZp/yYknll/lye2Ch8dlAOw9r3PIBb1cb7ZdqS4R+lFM42kuVFMgIER3VunIg2FCoRT5xlxAazVzxbGRzMOqFqIAKZJP1pCZa0BLFBHnhb8MerfeGeTU5K29lUapIrbmEMZfh5648QXxnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743414839; c=relaxed/simple;
	bh=hKvSFAaCcFeg0M5Jv14Wr9JyPcE2q0ZsnL89exGLbJc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ueAW5D++49alLLEn4sZ8vpIOXYgx7EPiB2NLCaYVX7XZuZZqOFNbd9lq7asf/FwVk7k5Jy0NgdZAAcafRYdQxtewP5lIb8VzGht2ePuJgBaWdu3Az22Pr8dg88J1I6j8EpneLIVC6Pje/ggZrGrT1tmOQadwL+s1z3+E4cpPGS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h/AO3+d3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0F10EC4CEE3;
	Mon, 31 Mar 2025 09:53:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743414839;
	bh=hKvSFAaCcFeg0M5Jv14Wr9JyPcE2q0ZsnL89exGLbJc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=h/AO3+d31K7jaEbrbim8xV1LQpOQsakLcFWZ4Xx9Q0lfzgQz1KZhPjnP6P3m4kA7P
	 NULskENXwJ/W4yH4JV2hxodxhoKUhrFFoGahHAk02K3HaHpxKsHqUazit8ploFsoch
	 99Zz/+SpXiAkT1UBtUCLotLTc1qJMHB9YRVrIaSl47kYiltn6I4ViKKNISrcZx3J0u
	 1O6ENE3Oy17xKHrkhDI4F7NurHGjcPHtlsxEyd6Fqg/Gd7FboupwnhJKX/M1DPNkYc
	 5y4SkWwV3G2uwhiglJIAqYPQLVDXdNyfPNT+G3Kf9mQRqvbZNHLjdzMcouiOTi5GuY
	 Q7DlP6goZTvzQ==
Date: Mon, 31 Mar 2025 11:53:55 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Amir Goldstein <amir73il@gmail.com>
Cc: Alejandro Colomar <alx.manpages@gmail.com>, Jan Kara <jack@suse.cz>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH v2 2/3] fanotify.7: Document FAN_RESPONSE_INFO_AUDIT_RULE
Message-ID: <rbsnuvfdwe4xhosezvxe5w7epnis2v6fzvfrkcd764x4pbywyg@yyzeb2q5jzzm>
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
	protocol="application/pgp-signature"; boundary="deww46b7eko6xcox"
Content-Disposition: inline
In-Reply-To: <CAOQ4uxgPdWXqaLN9PmgnWaPHDsisZJTLpV-GYmtY_mgPKyMYcQ@mail.gmail.com>


--deww46b7eko6xcox
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

Thanks!  I will.


Cheers,
Alex

>=20
> I know making an order in this would be too much for me...
>=20
> Thanks,
> Amir.

--=20
<https://www.alejandro-colomar.es/>

--deww46b7eko6xcox
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfqZi0ACgkQ64mZXMKQ
wqlEGxAArxB2xW8pDHsFaMreZVOJHQQRAkWLF/Vp/qqM29GjKdK9T6aSOAKP75bl
WxhwRPwIeT9ab95R5EAk4dLh7O9sTv02zHe5APMIZzP1xFRVj8vCLEXVjIzHFsyd
KljT4OVygYykY7tauTpHxrDyrO5qU8KKlr+IMUYolkkdyMI2Pib43xTxgzBBNHZH
mvyYKmOAVTsz9GmApcBohZ3hse8SEJURHRZMy3fehRzn0eYVKo052Mf7t1HPt/vy
AUT02YVg8pGJMxOhX3G1HxwZjz6ecldxnFG4dTPjVJhP1KRF1aqlx+Yw8nrrVg+w
mKU7ZTMjLDg/tLO6e7gVoWji+LbJ4/5vRX/2sdJnq/YZk0C/umKlMa37h2ZKxtt9
okzsqY5Byiw5rEzZb4VJRKLozjLGu4j4zOj292uZSZ0hC8kxbEnInSoLn4fEG7S1
bupSMjZfMxClK+YQ35Fv/LTB/PSlO9JL7oH0ghBZR48JqzcwsZpZi3GuuLM+Yae5
UjRr8P/QY54by4fYW91F2E32YoaTA8WBF4rhjfCnOl12AL/xDdhWpr0ECKnOephC
f7PxSMww4MsRS9ML1bmF2G1BWsmwHK0TbY6bRTIWg9YjWVg0fMI8nK6uI13my+Cm
ceC9vjsVj94hcCn/AcwcQBj0+rIb+73bOJzEQl2rsfkycpy5NdI=
=kdBM
-----END PGP SIGNATURE-----

--deww46b7eko6xcox--

