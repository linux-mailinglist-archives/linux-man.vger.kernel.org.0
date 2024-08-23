Return-Path: <linux-man+bounces-1687-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DC1B95D7E3
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 22:34:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1BB24B22682
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 20:34:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A8641C689A;
	Fri, 23 Aug 2024 20:34:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tZ/IhhLP"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A707C148
	for <linux-man@vger.kernel.org>; Fri, 23 Aug 2024 20:34:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724445287; cv=none; b=KaGJTHp+T3vqoY3GV6ni8JRGPUHGlzMb4kpPiOxSQUrDxfhxGK+tjFX22bWGU0JBCyQ9jfH1LcOkieucaf/2AGNbYPZp3/MFmyHfbDayH/9n6bXVELGFPIpMe8WR/XLUMyu6WFqbB8H/ilx1AuWLh0V7AEctg0nIKndd6kHVeSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724445287; c=relaxed/simple;
	bh=LAJg2BuDgoTnHpj3+vWJbwa3mFYws9u6ByG8IdHm2Hs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oQoag24WEVcaxUtn6ELcuWaZ2e8hW06UGfuEqoUp59INRmPqSEjchmYosDmacmALKCNOF6t9scezdyfiIn/1Tf08mEzAoGlW/Mb4J8EK8ZvoBoyfxHmINuwJVHD261mdaGshwSwqkzrPvd9j/C9e52QGASbjB2wB287lxT37U4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tZ/IhhLP; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 06CBAC32786;
	Fri, 23 Aug 2024 20:34:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724445286;
	bh=LAJg2BuDgoTnHpj3+vWJbwa3mFYws9u6ByG8IdHm2Hs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tZ/IhhLPeURx3B9N3m5pspZOhJXysiE3OsvCvhxwoRK0hY+5jZSxfrShDO0j3TXvA
	 Bh22OuYExQh2RYvjL2wAvxQTbL0buDSi8AFrwiNtsd6FuCO6AJAf2nB6jDvQCaDjDC
	 I0BonSRzuCu0Yb0XHdKmVd3qWeiJYboq3ymuQxBbrMyi7H3hu8m1fb05TIUhaRFd4G
	 Qc8/kUuER3wcPWS/8vIqtUltO3VCJ6l8KhPeQPUTnPQpXRb84SzDedAafp/Smy9qHy
	 8100udR0IcmbFnAVQpqdvB3queYVkpHECHSHvpy1aeZedxEVpyIuFqAaJaqBJpYi+J
	 VhIBGsx882x/A==
Date: Fri, 23 Aug 2024 22:34:41 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: Robert Elz <kre@munnari.oz.au>, Andrew Josey <ajosey@opengroup.org>, 
	Geoff Clare <gwc@opengroup.org>, Vincent Lefevre <vincent@vinc17.net>, 
	Xi Ruoyao <xry111@xry111.site>, libc-alpha@sourceware.org, DJ Delorie <dj@redhat.com>, 
	linux-man@vger.kernel.org, carlos@redhat.com, "Robert C. Seacord" <rcseacord@gmail.com>, 
	Jens Gustedt <jens.gustedt@inria.fr>, austin-group-l@opengroup.org
Subject: Re: [PATCH v3] ctime.3: EXAMPLES: Add example program
Message-ID: <dhpb2izqpkly4n5m6x2pvxyp5z6mayskxohpf2wfgai5sv4wd7@tf6cx5enzwce>
References: <kibbmshdcm3jfmpdyrspdnodqfehwd4bredtojemojvngdnzno@cfommtte6drm>
 <7be010d1eb77d72caef1ff7018213f94e0074714.camel@xry111.site>
 <jexdbqmvupx3q546nipasrhunylrjazpbe2d3inmbqa4llowjo@6gu4orqoerbo>
 <20240823125313.GB2713@cventin.lip.ens-lyon.fr>
 <daswt7u6tvj7mq4x5ntjzel5cspkyfmkphrtvsdsywoaalhrgh@7s2eedsskylp>
 <20240823135449.GF2713@cventin.lip.ens-lyon.fr>
 <4n6fqru43irlzw7qcqkj6za4hxtn5g3icvtmyuneap4fs2aryk@ctcmkvw2xxl5>
 <20240823152617.GI2713@cventin.lip.ens-lyon.fr>
 <cb65drmcb6cotrz6rzkfuwg5aod2jta4ma6f6cds4pouk5tjdj@6wl6iwby2isi>
 <8a48b03e-2873-4ec1-8896-98a28da9e824@cs.ucla.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nqqykyhogiyc7c6n"
Content-Disposition: inline
In-Reply-To: <8a48b03e-2873-4ec1-8896-98a28da9e824@cs.ucla.edu>


--nqqykyhogiyc7c6n
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: Robert Elz <kre@munnari.oz.au>, Andrew Josey <ajosey@opengroup.org>, 
	Geoff Clare <gwc@opengroup.org>, Vincent Lefevre <vincent@vinc17.net>, 
	Xi Ruoyao <xry111@xry111.site>, libc-alpha@sourceware.org, DJ Delorie <dj@redhat.com>, 
	linux-man@vger.kernel.org, carlos@redhat.com, "Robert C. Seacord" <rcseacord@gmail.com>, 
	Jens Gustedt <jens.gustedt@inria.fr>, austin-group-l@opengroup.org
Subject: Re: [PATCH v3] ctime.3: EXAMPLES: Add example program
References: <kibbmshdcm3jfmpdyrspdnodqfehwd4bredtojemojvngdnzno@cfommtte6drm>
 <7be010d1eb77d72caef1ff7018213f94e0074714.camel@xry111.site>
 <jexdbqmvupx3q546nipasrhunylrjazpbe2d3inmbqa4llowjo@6gu4orqoerbo>
 <20240823125313.GB2713@cventin.lip.ens-lyon.fr>
 <daswt7u6tvj7mq4x5ntjzel5cspkyfmkphrtvsdsywoaalhrgh@7s2eedsskylp>
 <20240823135449.GF2713@cventin.lip.ens-lyon.fr>
 <4n6fqru43irlzw7qcqkj6za4hxtn5g3icvtmyuneap4fs2aryk@ctcmkvw2xxl5>
 <20240823152617.GI2713@cventin.lip.ens-lyon.fr>
 <cb65drmcb6cotrz6rzkfuwg5aod2jta4ma6f6cds4pouk5tjdj@6wl6iwby2isi>
 <8a48b03e-2873-4ec1-8896-98a28da9e824@cs.ucla.edu>
MIME-Version: 1.0
In-Reply-To: <8a48b03e-2873-4ec1-8896-98a28da9e824@cs.ucla.edu>

Hi Paul,

On Fri, Aug 23, 2024 at 12:08:36PM GMT, Paul Eggert wrote:
> On 2024-08-23 10:48, Alejandro Colomar wrote:
> > Robert, Geoff, Andrew, can you please clarify where is the discussion
> > that led to the following change?:
>=20
> Why does it matter? The tm_wday idea has worked everywhere for decades and
> is now standardized.
>=20
> For what it's worth, GNU Emacs has been using the tm_wday idea since 2018,
> when I made the following change:
>=20
> https://git.savannah.gnu.org/cgit/emacs.git/commit/?id=3Db4eb908f858284a7=
962851fd99c94598f76afa6f
>=20
> and many GNU tools also use the idea, because I made a similar change to
> Gnulib too:
>=20
> https://git.savannah.gnu.org/cgit/gnulib.git/commit/?id=3D6ccfbb4ce5d4fa7=
9f7afb48f3648f2e0401523c3

Great!  That gives me more confidence.  Thanks a lot.  :)

Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--nqqykyhogiyc7c6n
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmbI8mEACgkQnowa+77/
2zIyJRAAmGQCSJDq9LXiE1xHIuuSbFy387uiOsiYi9YV3P5DfwUKJxsaW9FtqvAU
565sQmIBG9nwqXaxb0sU5bXjjDb1d7pm0QoRBoEewzCHG1pK+TDJpFmACkfVJp5W
XrlkSOxJtrQLoqnKmPrZe1UwDfYsQoQaWw7nvrBqbJDYOzQbi0b0hW4ISXahntD/
3c1a+q2Xp8Q9WumAoU52jq87KmlUYFgjeZYZsyww1L3GSsOiZvcSLcWIVz/JpuIw
lWGVqZBk7TO5jRnpQwZ7gMBwD1hvLZaW8/MMzPRTjZJrQb4K0XikLJ5+uUwn9NLh
EqCJ36VuZnc7vqlLF1Xoj2QDU1lrwfnM1KR0kakhVy8ZXoVg2LugOOk5X5WcmndR
LGH0Jtm4gGiHLIynGxIPCPBjU/RwwgS1Ax5c8wFK8OVQnLQdPFyNXk1pOZsFg5Si
JzQoa0k49fpuer7iI5OaDVjphDSNcKDEsfE+/DZIUop7UE0zQi4TyyvPUny1sp6k
wvGEOBYMN+jU1yzwqhAIOO8nSS+ZJQOump8fpfPA0axS4d8VHtrqbF2OZ7Zzm1mX
yHiQjUbK5WLJjZ50gWHOEfDSknWJOe7VPqnTv7QjQP64f4iJVKK0kkwc3gQsxUxO
VPnYpWm/836J8yoBqhxvJWYxFvZ+92iW7drzfbQlXlnQA0IRvR0=
=SYLZ
-----END PGP SIGNATURE-----

--nqqykyhogiyc7c6n--

