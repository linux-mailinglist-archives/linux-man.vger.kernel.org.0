Return-Path: <linux-man+bounces-1709-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E1FCC95FABB
	for <lists+linux-man@lfdr.de>; Mon, 26 Aug 2024 22:35:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6F8651F21DAD
	for <lists+linux-man@lfdr.de>; Mon, 26 Aug 2024 20:35:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 000BA13B588;
	Mon, 26 Aug 2024 20:35:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XQXV730R"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B35ED881E
	for <linux-man@vger.kernel.org>; Mon, 26 Aug 2024 20:35:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724704513; cv=none; b=kjAI2Qhf+MF0+Q5IH10YX/aGcmYM2PV4EAc+6XeaI6KXU94j0pgNMX0b7P1ffgfKvD+3LKd1whlUr9Kcnk3C/231htklOEMsc4jMTmezXLzENkkdUzkMOcUpbCiA+r9tNDRM/+01+Yi96bk6fl5q9dL/7+LAV31zt9B62fMb5rI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724704513; c=relaxed/simple;
	bh=SQeQzOgEDCyseVz7+nctQMEnoNlpWd+MOsW48XhX+ck=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZHgE4udLve9nBua7VWz9qbb9jwyUgD+ZfxeOtPHj3YanBVgJ22ZNDk8DTYA4QjxpBu+kLZcHHWlNTgJemIYHD8TvP3V3cSufZuOj0Mf0XIv1gwP7MN3+5R10U5OJqWOzTFjLEshScmdaxnwBrdaR+5y4mRLZbv8MLCmGGHTc9Vo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XQXV730R; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A4B7AC8B7B8;
	Mon, 26 Aug 2024 20:35:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724704513;
	bh=SQeQzOgEDCyseVz7+nctQMEnoNlpWd+MOsW48XhX+ck=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XQXV730RyVJB0bvhKXguc4S3pYPPAfYSVcZzeA6IWPuIYCe6HxIJxl2Ra1/SSdl31
	 nNETVeZ1pIogCM8Bttsikr+kv8d3VKLJh9UfXqVuRE1DuofT7ouYLvZqLrSKBzKPhH
	 osdjECKSb+Q5CEABx6h+ThGpZBNiAVVLjkMSAgrL2g7N5NBnlukuyyMlZ+TRiK2K11
	 Ee26XtHiDBuvuMk7ypugRyB6Y26W57k7EmfLIUYvMYiZN9w3HmCZZ6OFFKoTJUeEpH
	 f11Kk9BNpq01isGCcQcPxdMzZNf2nSReCwSsoeJ6Byv1DTKz8SJW8aESQdwMqePWVB
	 RqRxBMSKyJkuQ==
Date: Mon, 26 Aug 2024 22:35:10 +0200
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: fchmodat(2) does support AT_SYMLINK_NOFOLLOW now, no?
Message-ID: <kmig5buwz7eydpyk5in7hqzdmvykrq5kvajnkdixarfjzpeqaj@msyiruggayrx>
References: <CAJgzZoon_Ewki=qGEPnzbSi7Tfu-i51cT529z3obiHeaP+WuuQ@mail.gmail.com>
 <akk6v6ddvxj2wr3eo32jw4frjqxvgygbbf7xsqrzdofu7gabko@r45j6x5blmfk>
 <CAJgzZooRNJbSe0fsYztsMKvb=C1FLU_cXQX9xtR9DPCavx6H7w@mail.gmail.com>
 <22l25y4gk7qaersl4zfsyvvoxctkzs5ea5beiz44wmvbn7tg5i@q2yzq7zaj2b4>
 <CAJgzZornYRGFRmUF6KaOCDgsgYSKdJ=V6GKxVsxNSJDCyZc+SQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dd46y3pwcdc5wtrv"
Content-Disposition: inline
In-Reply-To: <CAJgzZornYRGFRmUF6KaOCDgsgYSKdJ=V6GKxVsxNSJDCyZc+SQ@mail.gmail.com>


--dd46y3pwcdc5wtrv
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: fchmodat(2) does support AT_SYMLINK_NOFOLLOW now, no?
References: <CAJgzZoon_Ewki=qGEPnzbSi7Tfu-i51cT529z3obiHeaP+WuuQ@mail.gmail.com>
 <akk6v6ddvxj2wr3eo32jw4frjqxvgygbbf7xsqrzdofu7gabko@r45j6x5blmfk>
 <CAJgzZooRNJbSe0fsYztsMKvb=C1FLU_cXQX9xtR9DPCavx6H7w@mail.gmail.com>
 <22l25y4gk7qaersl4zfsyvvoxctkzs5ea5beiz44wmvbn7tg5i@q2yzq7zaj2b4>
 <CAJgzZornYRGFRmUF6KaOCDgsgYSKdJ=V6GKxVsxNSJDCyZc+SQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJgzZornYRGFRmUF6KaOCDgsgYSKdJ=V6GKxVsxNSJDCyZc+SQ@mail.gmail.com>

Hi Elliott,

On Mon, Aug 26, 2024 at 04:15:27PM GMT, enh wrote:
> > Maybe we need to add a "C library/kernel differences" section?
>=20
> what's your timeline for "currently interesting" vs "just historical"?

I guess the line is when systems that provide XXX are EOL.
I usually check Debian and RHEL versions for determining that.

> (though i guess whatever that is, Linux 6.6 is pretty new at less than
> 12 months old!)

Yup.  :)

>=20
> >         $ grep -rh '^\.SS ' man | sort | uniq -c | sort | tail
> >               5 .SS glibc
> >               7 .SS Authors and copyright conditions
> >               8 .SS Address format
> >              11 .SS Ioctls
> >              11 .SS glibc notes
> >              12 .SS Socket options
> >              13 .SS /proc interfaces
> >              15 .SS ISO/IEC\~8859 alphabets
> >              51 .SS C library/kernel differences
> >              99 .SS Program source
> >
> > Would you mind preparing a patch?
>=20
> if you just want the trivial removal of the incorrect sentence, sure
> ... if you want a whole new "C library/kernel differences" section

I prefer the latter: instead of removing and then documenting the
kernel/libc difference, I'd make it in a single commit, so that
git-blame(1) shows the history better.

> you're probably able to write that ... which is probably a good

I could...  I'd have to research a little bit for it.  Do you feel like
writing a draft with what you've found already, and I continue from it?

If you're busy or lazy, though, just let me know and I'll try to do it
=66rom scratch myself.  :)

> juncture to point out that there's also a whole missing function ---
> there's no mention of lchmod() which seems to have been added in
> GLIBC_2.3.2 (yes, 22 years ago; not to be confused with 2.32 :-) ...
> except i don't think it _worked_ on Linux until glibc sha
> 6b89c385d8bd0700b25bac2c2d0bebe68d5cc05d in 2020? i don't know how you
> want to document that!).

You probably know that function much better than me.  If you want to
have a look at it, it'll be very welcome.  (But considering that we've
been waiting for several years, we're not in a hurry.)  :)

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--dd46y3pwcdc5wtrv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmbM5vgACgkQnowa+77/
2zJaRA/+PE6mPun2Nt22Oyq/+fMqOSBzpLTo3Md4PLZiy4Z5YpZVR99RM9VyoY97
222MeUeA96854qz0TeNd4MhSNjDggAH8mwyPAcFzb2LAAT9Jxou+QJXDktK9KaIu
pK3FjmEmKkju87f00McvlStMniznMMs8+WMVYQMP2OXMipJSY61DUFYUmc6psrmt
GVLa6Yk+sQQSRJ2vX3+TJPXykzYOXpXnL/nOSH23D614tHgtnH5LViAzwGOBa6y4
PEZPmneX7+eOlmGSWgn4YuGrqSRBxeI//crbFq8n9/A3/1neEbZ8ZPeZAnjYBxEV
CkxsIjxg/1vYQO+RIvDa0W4Ex6+ckQL8ao5AthswGch7YmCiJtyiOFKcPwXvTYYt
tzzK2k0UmjlzcxvJIxrxpEmnu3UQ8bH3d5oN396xCtAy11j/MIMBMhdGtThamXI/
YfPZsCjPTGLmbGgyyT+efBF4amaBUrMtL4+/t8xi4voSF/kWDThVsczWbGj3tEyh
RquD4DC65c+ylCPFgrPjSkwf3JxXur3cQ40wqa2DCvK5CObEGTR9gmQrM/CvRzUG
YWva+BQ2U+mDvvYjfrSX5jI945dN2RZ7lVl19RyCQYhveExlq0EZHsvWH6TlcZgX
cey2kg4xBwTQ7VVNefFgzhMOsB2lRwvY/rcAbHVTpToTLtnf2zU=
=obDo
-----END PGP SIGNATURE-----

--dd46y3pwcdc5wtrv--

