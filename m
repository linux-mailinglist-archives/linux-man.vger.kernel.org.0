Return-Path: <linux-man+bounces-612-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 66FE187D46E
	for <lists+linux-man@lfdr.de>; Fri, 15 Mar 2024 20:22:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0A6571F22672
	for <lists+linux-man@lfdr.de>; Fri, 15 Mar 2024 19:22:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E62B51033;
	Fri, 15 Mar 2024 19:22:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ToUmDxMk"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FC4952F6F
	for <linux-man@vger.kernel.org>; Fri, 15 Mar 2024 19:22:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710530576; cv=none; b=fYUySvQc90vH8i8nJQjj4/qOufsM+ZoW0jSzQSBUxLYliGRefV5/eJbGtGU9a4rhmeZpdwlKvOtPPFarZian7BGySBWUy15dG9pb/VdNqcthX4YXLXI/YlTO/t4BOtoQEtjBN64srIM4uETP5L6lzrosfKTYvUXPmB0N2scqKN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710530576; c=relaxed/simple;
	bh=KuT7jIxRD+2hh2Ht8Wpgb9/C+QOF1tZAYRMvQgHwJX8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YQTA1G97uSSfx7f/OulRf6q4vweMesgTp+FajmqCaxGhwWetlzljx4khc+S1bw/2s87oFJnL2Xh5Dm9SAJDaMXAI4iTKJ7vtDMrht3Dp++zGWnx6bOknz9hP5fFwtjMRa4/UhyxSxCeHIQVR6eT/sFGrD4GLS8bVBTxvOK2YAjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ToUmDxMk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D0D2CC433F1;
	Fri, 15 Mar 2024 19:22:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710530575;
	bh=KuT7jIxRD+2hh2Ht8Wpgb9/C+QOF1tZAYRMvQgHwJX8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ToUmDxMkgrcKRJs2ceDOrNQ8uwANlBH5Trg9JUSMlw5zyC4h6+2dqU51IHRQL7/SL
	 2hGY0kpb90sdsoY4VIjUW49O+I9C9KQnuoF8vI1lN1PpYQpdxOzoH+liRT89b69PnA
	 U2SzSsWWaTkybaehEYT8bL6sq5gHTyexGiQM2kH+683HlrD19HqpQUWCh7Jm7yG/ZH
	 qUm2jS2nKhdjJJAGrKazsOxGt0IL3N55ikMpTqM79RCKkplOMv975x3H60E6SJLZst
	 2XYa8tJ77/vgDb+OQdmvaBzLa5jLPqiEmZUZNDAYjCVbQancoCxLB1ziC5UfdaGxn5
	 tOVB0DDBjiECg==
Date: Fri, 15 Mar 2024 20:22:52 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Svetly Todorov <svetly.todorov@memverge.com>
Cc: linux-man@vger.kernel.org, gregory.price@memverge.com,
	ying.huang@intel.com
Subject: Re: [PATCH v2] man2: add MPOL_WEIGHTED_INTERLEAVE documentation
Message-ID: <ZfSgDOLBqw1Kyz8X@debian>
References: <20240315-weighted_interleave-v2-1-b742a48750b0@memverge.com>
 <ZfSf3f7baqC1N_ha@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="OK/rTwGw0F3jgsvm"
Content-Disposition: inline
In-Reply-To: <ZfSf3f7baqC1N_ha@debian>


--OK/rTwGw0F3jgsvm
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 15 Mar 2024 20:22:52 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Svetly Todorov <svetly.todorov@memverge.com>
Cc: linux-man@vger.kernel.org, gregory.price@memverge.com,
	ying.huang@intel.com
Subject: Re: [PATCH v2] man2: add MPOL_WEIGHTED_INTERLEAVE documentation

On Fri, Mar 15, 2024 at 08:22:05PM +0100, Alejandro Colomar wrote:
>=20
> Path names should go in italics.  See groff_man(7):

Oops, that's groff_man_style(7), actually.

>      .I [text]
>             Set  text in an italic or oblique face.  If no argument is
>             given, a one=E2=80=90line input trap is planted; text on the =
 next
>             line,  which can be further formatted with a macro, is set
>             in an italic or oblique face.
>=20
>             Use italics for file and path names, [...]
>                     An exception involves variant text  in  a  context
>             already  typeset  in  italics,  such as file or path names
>             with replaceable components; in  such  cases,  follow  the
>             convention  of  mathematical  typography:  set the file or
>             path name in italics as usual but use roman for the  vari=E2=
=80=90
>             ant  part  (see  .IR  and .RI below), and italics again in
>             running roman text when referring to the variant material.

--=20
<https://www.alejandro-colomar.es/>

--OK/rTwGw0F3jgsvm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmX0oAwACgkQnowa+77/
2zLKNhAAmY8uzYV5CQinjYHCBLJRCykhtNgGcoAl1n5Pn2TQtIYkmUIrEjpAwoqR
Fxa/oEvCdWvfBgSsKxHiZe1TSANf69IBK+5PceMxLEuqBH4EAWvBSu1KtQgTSP88
9OEYlMONmuP2uAve9KB7+Js3kEQt1+x1NCxPeEhDX0WQbHBykX+8Qwmzfa4yKacf
a0LhuKGxTlXQnfO3ITnBUJyZ14ZdK9kpvhXj55xFkKTUjf9CyOPM9dv1zXazkM7r
z2YhGCj0+30qs09fkHO7KnqQyBx1MY38HYzbjlUAkdYr2ynhvFM9ddPncIbyvYL1
bQFtiNtZkFSy4Kpd3plv2QhG8E7J6Vees4T67gatxyOegG9rTqKCs4UZf++QZcV7
F6BC64/ZAq0ePpJMUk7D5zGtbXAhTSVeDUw19O4c+MZZyNl7eE8y0+1Xz2O2ltQN
DaOP/f6RVbgKiOlG4Q5e7fjucALjS//fKJ0jNBi0BktAstrcqftYsS/ZBV51yrqQ
KFiHQy4DQlcGUOC9aWTyZm/avn/rE/fX0dW51J1k4mtuc7SGD6SXW7zvXiB6O0MK
HNNTqDGA8sqsA4A/K0RjEBAZH+pEHSRno87h3Tx2Uabl2DkSwjbrogMfVTbqo4vn
bo2Sf6PaIhGPCCBL5E21vYW1ZzhRX60/gZe71i2ITvyucKA7O9A=
=vdxw
-----END PGP SIGNATURE-----

--OK/rTwGw0F3jgsvm--

