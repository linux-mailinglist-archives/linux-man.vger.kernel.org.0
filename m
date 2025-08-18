Return-Path: <linux-man+bounces-3471-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 30690B29A75
	for <lists+linux-man@lfdr.de>; Mon, 18 Aug 2025 09:03:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EB7935E6407
	for <lists+linux-man@lfdr.de>; Mon, 18 Aug 2025 07:01:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 880DA277030;
	Mon, 18 Aug 2025 06:58:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UA+xOJHn"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46CBB1A8F97
	for <linux-man@vger.kernel.org>; Mon, 18 Aug 2025 06:58:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755500307; cv=none; b=UlScqhpp6CTlZ4B50rIz9p4uHDcDC/Fn1Xe6V92FFlhmF+1ClWr8tnLsTxMDcBa5U+0nafQdHExizJiA9Wnl1AImOL139OZxWBZS6SI76a+VfKp9u/fdO0BrfXjeQOBmfiRDYfHMyHhgCCFUCtlQiTr5RkN+ixB+uT8306lJulU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755500307; c=relaxed/simple;
	bh=B31akcyvOuA2yIcjQ/I02WVQN1cx8USJtiAipwg8MWU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SMkCPlrxu/Up4QmCerO4mVOnHkdKJW0y50bPRkjUOuNGLge0h1mczT4OEGTkh1lf21zcg8Q7Y8uBl1S+n53Sv7WGW9AwDaOGG3+unK9JFzscoZLQPVzEgE4xtrSzgglONjzzNTDuD/KJKhq114QiB+ee90B386AzdPvRWbRFS9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UA+xOJHn; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA35AC4CEEB;
	Mon, 18 Aug 2025 06:58:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755500306;
	bh=B31akcyvOuA2yIcjQ/I02WVQN1cx8USJtiAipwg8MWU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UA+xOJHnlfS/7kjuJIZggfD2NY8SDfG56znYb7PcyHrFE+BdHHIzeVwJDpA5HOmx2
	 nT6Ev6VIrhIeh4DHGf2ORf6reWyd6l8LXHUukkcjlEMBiNhupa0Mftzs0QepxN1OkG
	 WX3Z8qs3B+WTzEEgx+yzeCT2DHq1DwiUWYz9UmU/MHimVzdF83DOEgbcXF7ceE61t1
	 KODmzeqndlEjxFb4G+LyLach7RN58gSabf+SB3ZT40PcZAOUcGqgR4Jquzmg7lXdTU
	 Y4CZ9OiQJzmie9uygkmJOVgMzhPCEA//tZR4jvZHHXZSOlqi+81w2RpTBk+Zp+mG9R
	 djKbaCzmDlscA==
Date: Mon, 18 Aug 2025 08:58:17 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: Alex Yang <himself6565@gmail.com>, linux-man@vger.kernel.org, 
	Alex Yang <himself65@outlook.com>
Subject: Re: [PATCH] man/man2/getrusage.2: clarify ru_maxrss unit as
 kibibytes (KiB)
Message-ID: <jclco3uxvj7drormblgik6fsa36aemanyxqaf44mhaqgbwszye@nuhauaulbrlg>
References: <20250818061203.33211-1-himself6565@gmail.com>
 <iutkhvhpxre54i6a5zt4s3xt6khpmignznhg6wdzue5efbhbhh@hgdvsivvg2km>
 <87wm71yvd4.fsf@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ot3lb3pkfj7jjbq3"
Content-Disposition: inline
In-Reply-To: <87wm71yvd4.fsf@gmail.com>


--ot3lb3pkfj7jjbq3
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: Alex Yang <himself6565@gmail.com>, linux-man@vger.kernel.org, 
	Alex Yang <himself65@outlook.com>
Subject: Re: [PATCH] man/man2/getrusage.2: clarify ru_maxrss unit as
 kibibytes (KiB)
References: <20250818061203.33211-1-himself6565@gmail.com>
 <iutkhvhpxre54i6a5zt4s3xt6khpmignznhg6wdzue5efbhbhh@hgdvsivvg2km>
 <87wm71yvd4.fsf@gmail.com>
MIME-Version: 1.0
In-Reply-To: <87wm71yvd4.fsf@gmail.com>

Hi Collin, Alex,

On Sun, Aug 17, 2025 at 11:52:39PM -0700, Collin Funk wrote:
> Alejandro Colomar <alx@kernel.org> writes:
>=20
> >> -This is the maximum resident set size used (in kilobytes).
> >> +This is the maximum resident set size used (in kibibytes).

BTW, Alex, could you show a link to the relevant source code?  Or maybe
a small test program that demonstrates this?  How do you know it's in
KiB and not in KB?

> >
> > Should we maybe say this?
> >
> > 	(in KiB).
>=20
> This sounds better to me based on it's use elsewhere:
>=20
>=20
>     $ grep --exclude-dir=3D.git -rl 'KiB'

I often use 'grep regex *' as a simpler way to avoid '.git'.  Also, the
build system's temporary files are created under .tmp, where I also
don't want to search.

>     man/man2/ioctl_fsmap.2
>     man/man2/process_vm_readv.2
>     man/man2/readv.2
>     man/man2/alloc_hugepages.2
>     man/man3/btree.3
>     man/man4/fd.4
>     man/man5/proc_kcore.5
>     man/man5/proc_sys_vm.5
>     man/man7/units.7
>=20
> Writing out the full name of the IEC unit is much less common:
>=20
>     $ grep --exclude-dir=3D.git -rl 'kibi'
>     man/man2/msgctl.2
>     man/man5/tmpfs.5
>     man/man7/units.7

Thanks!


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--ot3lb3pkfj7jjbq3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmiizwIACgkQ64mZXMKQ
wqm1FxAAk4AC1+HkMJUY8JR7/EJ09RKYpBu4Sx7WdswcgKNMd8HtjxvejnxRrrwZ
X7g3pCaKtC1fT5CoDmaEruDaUezWEebVIqcaDQYCCMmdg9y65nzjlRnXFT+/k1fy
+lZaIzxS9h9dC8zbYgng+7XxpFot1TxwfMWezavbG2nPggbBabrDgMmH40dagqBG
RRwPmqHjgtUNyQk/6vKqD1fMjfwOtaB0vw4yeLatx8tsQQlQfnfGT63KqB+6TbBy
2LgXRreJQawHJXVQ4zlG9e3Az/XtdJx/RCcdtUBw4vk++PS/P+/Jfhy/nkbKabiw
8kxJEbBxm6me3sNCA2HlQdBQoUInvZZIniuwLoyuCMPJTgxoZUc7qfx0HWlW0Ph4
nSEeZICd3J8OSdup9/sAsjLPLz/b8vtwaYkOGyU/f/W9J4jctby0oNuJ6p5HD+RR
UeN4SvyZLLVtOUYwYRggaK9suk2nMHE4HGoYw5C2iMTdXWenac4bdwLhVr4JQwiM
tayM/FlyXM/bNG6lc3PsZ++YwZNLxCjuGwwAjIymy+Rc4a4TCEgBYLTWTy12QDq1
VwfDdUSyvAoJHOJJ0pvjryPzRKPt9ofp0tWGEC+bv+atSGjcb0ObI7KquVZy8aBm
zW0ykIZpNPG29MihiDqYr27iJv/TMyLIP8lb0rPRL1HimkxyTOg=
=YrcG
-----END PGP SIGNATURE-----

--ot3lb3pkfj7jjbq3--

