Return-Path: <linux-man+bounces-2765-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 77162A83472
	for <lists+linux-man@lfdr.de>; Thu, 10 Apr 2025 01:25:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A243A8A66BE
	for <lists+linux-man@lfdr.de>; Wed,  9 Apr 2025 23:25:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 497CA219A7D;
	Wed,  9 Apr 2025 23:25:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="odNAs9sS"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 084072135AD
	for <linux-man@vger.kernel.org>; Wed,  9 Apr 2025 23:25:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744241139; cv=none; b=ZIexaQpU0+h4sM6yEkVByG2f+zAOJsJ31KQ6tF1SWOApQlaR9HOoYzFj0R0f8+f09ca+pMYO0X2UuH6xdlsFOESHnTxRWjz+rJvpoOwvtLu3FF5s9kUG3E87f0BmKHyHuH1Horg6kDYdpXnOzjiBi54w1ScknAOFR62GaQAV8oU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744241139; c=relaxed/simple;
	bh=iyxwZpyUBtrhKsZW9s+zLs3JA2pm3yOoVq07ESpy6vQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Jg5xfkh0D3nte7xkH/CJk2vebQ5gH7L/rLvGyw+jC2sRtVqItpZIC9NYEh5YT9GaOQZkD6dNccqGvwM5llaFoUe9A7GyhAebV/02LoNmNA1GimsSN5eBfCjXSKzqRNrx/QTUMRkBoSNvvCrcSXiJrflIl9ABtfucrDE/8hZZLq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=odNAs9sS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 41766C4CEE2;
	Wed,  9 Apr 2025 23:25:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744241138;
	bh=iyxwZpyUBtrhKsZW9s+zLs3JA2pm3yOoVq07ESpy6vQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=odNAs9sS6KCORAr1peSC/NIQxCr53jsQA2UnyRFnUXmny4gsQLKfWGWKZjAtTfZoW
	 1GvFFNUWW35MCbRufw4qvROGEk5e6xvvjc/TNjV3EJTB6pC5gTsY0eaOgUo5lizQDl
	 47KAQs58OiJSfpuNLnD+g6+6kc57trkUK0xS8ni6oS2Rj/FxGXs0dU0ADd55DsabcI
	 v+KU8p0d/SioGJ7/eDCQ6gEIaG+I6hHi7THLvTc2FH6WFF5tdslWnkwJYCIy054xtt
	 aoV5iKfC21UENh/902dsW6U/dDycOyVqjnxpCnU+qctGlNz/FvMIJUKoNr83u2Zf3x
	 DMxi03DWA6BAw==
Date: Thu, 10 Apr 2025 01:25:34 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: Eugene Syromyatnikov <evgsyr@gmail.com>, linux-man@vger.kernel.org, 
	"G. Branden Robinson" <g.branden.robinson@gmail.com>, Amit Pinhas <amitpinhass@gmail.com>
Subject: Re: Removing in-source contribution records contributer
Message-ID: <jpin2dbnp5vpitnh7l4qmvkamzq3h3xljzsznrudgioox3nn72@57uybxbe3h4p>
References: <cover.1739389071.git.amitpinhass@gmail.com>
 <c45f3d934ec20ec5fc813400a4a56079c2241ed1.1739389071.git.amitpinhass@gmail.com>
 <wwjzzwjpbh2ayydhorwgs4jhycjgwhxfzlk5tfym7dxx4w7kll@yaspehl62eik>
 <20250212230210.3kkixsk7bi3cdc4d@illithid>
 <lvhwk4czikqmx4acydi5t5q3nshvgdipedz6xkt7auvz5mnmwp@auuzri4hvsrn>
 <CACGkJdsEQENG1ZOQ14iueMzh4p5ywDenYp5eaN-itvrFfK+kmg@mail.gmail.com>
 <37qabjc65x7co7f3oiibpgwtvhnigk5z7tpmmzgrjhisi4nqmz@ypx33dbbltdn>
 <856467f3-73b4-4b45-a2c4-f7b4f44b1de2@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="imfhehatn5pt6q3f"
Content-Disposition: inline
In-Reply-To: <856467f3-73b4-4b45-a2c4-f7b4f44b1de2@redhat.com>


--imfhehatn5pt6q3f
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: Eugene Syromyatnikov <evgsyr@gmail.com>, linux-man@vger.kernel.org, 
	"G. Branden Robinson" <g.branden.robinson@gmail.com>, Amit Pinhas <amitpinhass@gmail.com>
Subject: Re: Removing in-source contribution records contributer
References: <cover.1739389071.git.amitpinhass@gmail.com>
 <c45f3d934ec20ec5fc813400a4a56079c2241ed1.1739389071.git.amitpinhass@gmail.com>
 <wwjzzwjpbh2ayydhorwgs4jhycjgwhxfzlk5tfym7dxx4w7kll@yaspehl62eik>
 <20250212230210.3kkixsk7bi3cdc4d@illithid>
 <lvhwk4czikqmx4acydi5t5q3nshvgdipedz6xkt7auvz5mnmwp@auuzri4hvsrn>
 <CACGkJdsEQENG1ZOQ14iueMzh4p5ywDenYp5eaN-itvrFfK+kmg@mail.gmail.com>
 <37qabjc65x7co7f3oiibpgwtvhnigk5z7tpmmzgrjhisi4nqmz@ypx33dbbltdn>
 <856467f3-73b4-4b45-a2c4-f7b4f44b1de2@redhat.com>
MIME-Version: 1.0
In-Reply-To: <856467f3-73b4-4b45-a2c4-f7b4f44b1de2@redhat.com>

Hi Carlos,

On Wed, Apr 09, 2025 at 05:15:21PM -0400, Carlos O'Donell wrote:
> > > In strace, FWIW, we have the following:
> > >   * the copyright notice looks like "Copyright (c) <year>-<year> The
> > > strace developers.";
> >=20
> > Hmmm, interesting.  And actually, it's more accurate than the usual
> > copyright lines.
>=20
> The value of the line "Copyright (c) The Foo Developers" is to indicate
> that the works are copyrighted, and it avoids anyone who infringes from
> arguing they "didn't know." It is in itself not a copyright statement.

Hmmm.

> What value is there in maintaining the year?

A copyright notice requires the year AFAIK, although if this is not a
formal copyright statement, I guess we can remove it.  That means
significantly less maintenance work, which is good.

> Note:
> Copyright Notices in Open Source Software Projects (Steve Winslow)
> https://www.linuxfoundation.org/blog/blog/copyright-notices-in-open-sourc=
e-software-projects

Thanks for the link!


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--imfhehatn5pt6q3f
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmf3Ae4ACgkQ64mZXMKQ
wqmg6hAAkxE11bn/6vwS8ZzMbb5WJWSBsoUuP0LR5Z//VY54xWCSeALRWH4gbJnn
C7RL7407tcPvnNnDh4g7T/plUAy9zM7q+wgguoWF/dZp6Iw5K6TdZiMyDv7m/tdU
TmmlEGVIO0M6X6xCLXUCZ4JlN1uH9h1uSbJl7HxDyCEP5oEl9DIEA2lAjDng/dlt
hrgPjCicUx/7M/gKFeEfmEIiTRA7NIhveva8ZrzfEjSk1PtopZMweqUvqv0xqZ82
oTinpfu+w9gG1sY/RfHKFnlnJ6wsvG4fdEAh+Ob0jQ7EUFz/m61NJeg1mPzKS1et
RddFvXPaveMqD4jRTJQwqCDlZRvDn5HYWSXxHZIaoyGhoG79NUUVWy+KjPBGiTa+
WWSQAD4KWATIMgu2IPMxtcBjRqpPxobmrA28NyXshCUo5dA75r/F+Q/X1MeNBExe
/xzx5UE+Mly4U4FzU+ADtghCQOszRWvoJ7tQ6xihRDNXSH17YtYgLeU43b6seI0c
wQXuHXGsktOVzLFeT8CsBySb/+LhiI4NG7jg4PTtHtkwsnD01IRh+UcZiBMoseR5
XW2vZim+0scSQ8SMPGpesqigfuIVi6bCqNHz9mOLNhcH1AZ7fcbscAscSPz9UgwB
ftDBOP1pBYDBMEzO2/9U5cqfdPM64Ze5X6GTnVbp0pjj+1+lC2M=
=Jyl7
-----END PGP SIGNATURE-----

--imfhehatn5pt6q3f--

