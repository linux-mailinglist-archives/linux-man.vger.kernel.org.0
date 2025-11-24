Return-Path: <linux-man+bounces-4310-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 97051C817DB
	for <lists+linux-man@lfdr.de>; Mon, 24 Nov 2025 17:09:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4D9853A7F70
	for <lists+linux-man@lfdr.de>; Mon, 24 Nov 2025 16:08:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37D67314D0D;
	Mon, 24 Nov 2025 16:08:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VALS34IF"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1A10314B76;
	Mon, 24 Nov 2025 16:08:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764000537; cv=none; b=T29CpvaX3xH7jpbj9XeJa5BgPVYc4sKccXuw2tBmFU3cDH0O8RTpmcTRcfPNrfntWRvK/5KmXb/zk70dZcmqniDipnX8pO3qiwesU+x5wRKRhFoHNDD3bQNmeHL2OLGd4Tpo5lQL7vueQ8/fTCZUPFJ2iDl6yLe0kDaYfG9Cihs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764000537; c=relaxed/simple;
	bh=2BS6q8sZUqbRQw+PypR81r2K3Iad19CiwoNjOq57AjI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Jje1NlUCFbHs6h7eOpT6iw5R/mbx21bnC6UAU8LlcQIquJu1Fl40Y4oaqiyR2LHZ3zNN9PR9hk6wH7LDD6QR8ZFx4fg3TNVOSqfPEq6yklj2lFmSPxgTiNkEphfWlpgE5E5+rgcNOW6XNmjOIXCBW+nAO34FGpbqbRtqgiIr+Is=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VALS34IF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C3BEDC4CEF1;
	Mon, 24 Nov 2025 16:08:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764000536;
	bh=2BS6q8sZUqbRQw+PypR81r2K3Iad19CiwoNjOq57AjI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VALS34IFSLGOWzKE86Cz+sq9UEoIbMnxZQq4h9tfr4CJIeWiHQ64hsMoVXWxbvc8U
	 00Xc44eBXLhsL6x7EFH8vOa14frtzrX7vHlruquxOIDCIgL+2VqkKK+qRjQFeh5CGy
	 O7D8mXQugoT+sSfQ8SgGYWGo3dZfeeb3QYOlmC4rUd2dTQHKG5fLpEiakhxeUeXNOM
	 ISlxlNvbvQGmb7/RUfmXXHVHnVOdwuisdsBKpn0PNaVang3tEmj7z5UpgBZXgrVPi/
	 EX5ZCy0Kh2NKo8GqmhrfdOAkrJLvVJzDdgTbd8yTUtgqHTP24hJXiBN6iRhnH8AK9Z
	 N5KwNyZnIKqjA==
Date: Mon, 24 Nov 2025 17:08:52 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
Cc: linux-man@vger.kernel.org, 
	"Liam R . Howlett" <Liam.Howlett@oracle.com>, Vlastimil Babka <vbabka@suse.cz>, Jann Horn <jannh@google.com>, 
	Pedro Falcato <pfalcato@suse.de>, Rik van Riel <riel@surriel.com>, linux-mm@kvack.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] man/man2/mremap.2: fix incorrect reference to VM_MIXEDMAP
Message-ID: <qxqyvoxrtv57wo6honuz765fe2ffjny3k2zpbo3w32wqgm3eeh@shgzoq6dy7ei>
References: <20251121081609.52462-1-lorenzo.stoakes@oracle.com>
 <0a072ec0-6d9d-4cd3-82e2-9df55ecb9aa7@lucifer.local>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="suhmvda3b27n3t6q"
Content-Disposition: inline
In-Reply-To: <0a072ec0-6d9d-4cd3-82e2-9df55ecb9aa7@lucifer.local>


--suhmvda3b27n3t6q
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
Cc: linux-man@vger.kernel.org, 
	"Liam R . Howlett" <Liam.Howlett@oracle.com>, Vlastimil Babka <vbabka@suse.cz>, Jann Horn <jannh@google.com>, 
	Pedro Falcato <pfalcato@suse.de>, Rik van Riel <riel@surriel.com>, linux-mm@kvack.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] man/man2/mremap.2: fix incorrect reference to VM_MIXEDMAP
Message-ID: <qxqyvoxrtv57wo6honuz765fe2ffjny3k2zpbo3w32wqgm3eeh@shgzoq6dy7ei>
References: <20251121081609.52462-1-lorenzo.stoakes@oracle.com>
 <0a072ec0-6d9d-4cd3-82e2-9df55ecb9aa7@lucifer.local>
MIME-Version: 1.0
In-Reply-To: <0a072ec0-6d9d-4cd3-82e2-9df55ecb9aa7@lucifer.local>

Hi Lorenzo,

On Fri, Nov 21, 2025 at 08:20:12AM +0000, Lorenzo Stoakes wrote:
> On Fri, Nov 21, 2025 at 08:16:09AM +0000, Lorenzo Stoakes wrote:
> > We actually disallow VM_DONTEXPAND and VM_PFNMAP for VM_DONTUNMAP, the
> > manpage incorrectly references VM_MIXEDMAP. Correct this.
>=20
> Of course I ironically typo'd here :)
>=20
> VM_DONTUNMAP -> MREMAP_DONTUNMAP
>=20
> :P

:P

> >
> > Signed-off-by: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>

Thanks!  I've applied the patch, with the amendment.  I've also added CC
tags for all the people in CC.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D466c43360f3874a890e910610d4d01ea135d020c>
(use port 80)


Have a lovely day!
Alex

> > ---
> >  man/man2/mremap.2 | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/man/man2/mremap.2 b/man/man2/mremap.2
> > index 6a6df8601..cbe960f77 100644
> > --- a/man/man2/mremap.2
> > +++ b/man/man2/mremap.2
> > @@ -206,7 +206,7 @@ The
> >  flag can be used only with mappings that are not
> >  .B VM_DONTEXPAND
> >  or
> > -.BR VM_MIXEDMAP .
> > +.BR VM_PFNMAP .
> >  Before Linux 5.13, the
> >  .B MREMAP_DONTUNMAP
> >  flag could be used only with private anonymous mappings
> > --
> > 2.51.2
> >
>=20
> Cheers, Lorenzo

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--suhmvda3b27n3t6q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmkkgxQACgkQ64mZXMKQ
wqlUZQ/9G8bz0/Tk9TsQUt2t30n9mdcLfS4up17YIY9gkiX5QOpFzYwQhDnb/2/l
NFDJhdYmZRFMWXZTlTGjWm+QuFgJob20bC0nlaxmc5jutrJ88iaLsG8ROfOUG2z2
zptzKOSQHCzpQLfOQbfcnTuo1dUCOflhML3ddH+Qyxq1+fGx2/BA//kePrz3FuKv
bDOCVMI+Jgaf57aX7+UvgfHa9y7NL7O3EK5YLdHYetbQQiCb2+tkK8ZMKWRfjgAX
QmKaxJg4zxaoOn2FsSVv1oc9f+mYwrrd55IQJFKJdR0UKz43KCtk5vX7WI2jMCpq
oXZugSKohCAvPTHZ91E3EkmckRBpB4ushPvc0DulWslWfSMyEBMmFZpWEI1E0uss
Shu+HRi9Vr1DJLOyGu1TTSYKlsc5FrjfLW5oUGfEkJlmjkxpnbO58vNLHTKs03C3
JsedzI4LioADh3d/rAl/QVJjzh0IPz9SS+ptfrd6Ivs0/DcdaOPakqUs0hVKeAta
VinIgeDKzOMBClqW6uqiegp7lPf9xxHkJWcWKHoehde8qLvR7QyEwmTcDgRatIEk
LPGl/gHCZ/rBiBqB2Dp40y8lpk0xZWN/MKlqogMJi/InqBasHcdCLSmwbp1ZYRFF
vqfebiU6TO54ToQT2EJ8DGfuQU/1htsj6FyIFuSGZ11hyXU24Kc=
=AiEG
-----END PGP SIGNATURE-----

--suhmvda3b27n3t6q--

