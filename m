Return-Path: <linux-man+bounces-2923-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E9C5AB7467
	for <lists+linux-man@lfdr.de>; Wed, 14 May 2025 20:34:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AF8958C17AF
	for <lists+linux-man@lfdr.de>; Wed, 14 May 2025 18:34:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFF5D286D7C;
	Wed, 14 May 2025 18:34:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s6iu+8sL"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A920628689C;
	Wed, 14 May 2025 18:34:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747247669; cv=none; b=HaIiW/z2woOt4LTnjKvblD82jmCeQ6BK3zdTSgH8AFV1EQVNebO9U0bYRwKMj7LpIzezuBwwmOR6p/Jei7V67MrO9KRhavF5CdXSH9d65RD9ViTPXbXlTqD6Q+ar0xPgSAlt/hx4063eOadBwls3g5bH62ltLHS4Wu+zZrS97DU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747247669; c=relaxed/simple;
	bh=US4aMCr9h+WIzJSiaRZrpBVDIR14dmQ8/DnZa3W4o7Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PIUNosbzNoDE1T+g0JJ8SYkF7OaysblQvzV1X1INU7j4KU2JCZKQfmEevs/xQcmoe8CdeUqZ4Dk1JAYtYdo2aVAWdu4QBOrbP4Nabbo1HACtWB/0qWLo0Qa6VN+E8PA7lrW4btIhemNaFKNqeYcGS6zhtn0fIX5kmoBTS53+vfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s6iu+8sL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9E432C4CEE3;
	Wed, 14 May 2025 18:34:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747247669;
	bh=US4aMCr9h+WIzJSiaRZrpBVDIR14dmQ8/DnZa3W4o7Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=s6iu+8sL2/BvGbxTQIOVB8zGB5TvpCCK0h08Ln2eKbgBZXeRgyQS/fiY8VZ6JUJNB
	 7MfklHG2YVDenP+Q8257867VjrJqTYVol+1cnVKlgx1+qSIRVLG+hslyDd9WKG8YfZ
	 25Tb2XJfKLemZ8DPZroh24tSFpe6mZVPwhSBmEdJjuAs4dHnS+3XmgbuAgALQh33gS
	 vGcryxCXqQvbCjE1M1wAdjL4W2XJeQ2CJjsfotSgzht32JdS5srZcah+5GBsf1zkm9
	 rm9SoNd3wYDik0EXcvnuMbQuYUbxwkuktRwLCXqI3fZlQVqEayt1WYC2ihKExdmZr1
	 XVEscTve40cVg==
Date: Wed, 14 May 2025 20:34:22 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Peter Xu <peterx@redhat.com>
Cc: linux-man@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Andrea Arcangeli <aarcange@redhat.com>, Mike Rapoport <rppt@kernel.org>, 
	Axel Rasmussen <axelrasmussen@google.com>, Kyle Huey <me@kylehuey.com>, linux-mm@kvack.org, 
	Robert O'Callahan <robert@ocallahan.org>, Suren Baghdasaryan <surenb@google.com>
Subject: Re: [PATCH 1/2] UFFDIO_API.2const: Update userfaultfd handshake and
 feature probe
Message-ID: <5ttjhxdolfulke72aqi25tv5gfww7jl2cwtwgp6lu4zp66hl3d@kwowsvdhuju7>
References: <20250512171922.356408-1-peterx@redhat.com>
 <20250512171922.356408-2-peterx@redhat.com>
 <6eobuzkwm6xhpis4s52dtit55fws37elv5d7zygaf64czcjag6@brz2nrc6qptu>
 <aCTRDSCSiRrswEXP@x1.local>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hqfungowftzawdun"
Content-Disposition: inline
In-Reply-To: <aCTRDSCSiRrswEXP@x1.local>


--hqfungowftzawdun
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Peter Xu <peterx@redhat.com>
Cc: linux-man@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Andrea Arcangeli <aarcange@redhat.com>, Mike Rapoport <rppt@kernel.org>, 
	Axel Rasmussen <axelrasmussen@google.com>, Kyle Huey <me@kylehuey.com>, linux-mm@kvack.org, 
	Robert O'Callahan <robert@ocallahan.org>, Suren Baghdasaryan <surenb@google.com>
Subject: Re: [PATCH 1/2] UFFDIO_API.2const: Update userfaultfd handshake and
 feature probe
References: <20250512171922.356408-1-peterx@redhat.com>
 <20250512171922.356408-2-peterx@redhat.com>
 <6eobuzkwm6xhpis4s52dtit55fws37elv5d7zygaf64czcjag6@brz2nrc6qptu>
 <aCTRDSCSiRrswEXP@x1.local>
MIME-Version: 1.0
In-Reply-To: <aCTRDSCSiRrswEXP@x1.local>

Hi Peter,

On Wed, May 14, 2025 at 01:21:17PM -0400, Peter Xu wrote:
> On Wed, May 14, 2025 at 05:59:48PM +0200, Alejandro Colomar wrote:
> > > +.P
> > > +For historical reasons,
> > > +a temporary userfaultfd is needed to probe
> > > +what userfaultfd features the kernel supports.
> > > +The application needs to create a temporary userfaultfd,
> > > +issue an
> > > +.B UFFDIO_API
> > > +ioctl with
> > > +.I features
> > > +set to 0. After the
> >=20
> > Please use semantic newlines.  Break the line after the '.'.
>=20
> This one was overlooked indeed, will fix it.

Thanks!
=20
> >=20
> > $ MANWIDTH=3D72 man man-pages | sed -n '/Use semantic newlines/,/^$/p'
> >    Use semantic newlines
> >        In the source of a manual page, new sentences should be  started
> >        on  new  lines,  long  sentences  should  be split into lines at
> >        clause breaks (commas, semicolons, colons, and so on), and  long
> >        clauses  should be split at phrase boundaries.  This convention,
> >        sometimes known as "semantic newlines", makes it easier  to  see
> >        the effect of patches, which often operate at the level of indi=
=E2=80=90
> >        vidual sentences, clauses, or phrases.
> >=20
> > Also, please say "zero" instead of "0", as was in the old paragraph.
> > That will allow git-diff(1) --color-moved to detect some movement of
> > text.
>=20
> This was not part of the old text, but sure, will do.

I know you've completely rewritten the paragraph, but even then, parts
of the old text remain (maybe because however you write it, some parts
need to be said).

	-.I features
	-field set to zero.

This part is kept in the new text, even if just by chance, and it might
be interesting to see that in git-diff(1) --color-moved.


Have a lovely day!
Alex

>=20
> Thanks,
>=20
> --=20
> Peter Xu
>=20

--=20
<https://www.alejandro-colomar.es/>

--hqfungowftzawdun
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgk4igACgkQ64mZXMKQ
wqmj4hAAgRxz4rSoq+wezhJH20C+of2dSCloeCFk8LaEAOXal4mFZADa8ndeCKVj
tw3RuzzmFvValDlaVVM3R6jI8ujsGSjE+ZVdT5Xye+WDScCh438QryjHPtTZp9b6
Lq21mXgrjg63uC8GhJ/LUNu3O/Uksik5mOOvDV5RBZYVsm2hpUKlrAl9RtwzRXQA
5npMzCZbMlZBH7LxahktaErX7X4YsGwp9KnuUWQqPdQb6P5APN2mNqjA5nJlUYQ0
XovB3N3mVNjZ7YnTF/dbIiGKvWYg2K2W9U5oarVIZ0Gv73K77lGOxiagIEL8y98i
kDXkMztKrHbYV0lLLLM+X4enQ+cK0/USpHtKMrdbPtdhGlN7gWyzw+IgXwOr/mUl
Jh0nUGmC0PWbP7xSCCsEvk3dr3H/zTw7o/335yrchPv5KwUK24ozReLHqxFVLvpI
dqh9Si43Ro1MCFbRpp5hUd7KbsdMY75C+MZYeDCF+ouYF2+WdJAOXGSJkWqEfG6H
lhkCuihV6JedgvB+7q19jMhve09CrObIrQ0PdAyqZqi3F/hdsqfR1FwvNtf3GU47
aQQAn/IxXSr5lDEzkhLdYid32++oWbg0053wgf28bej0Ckg6mzJ3jZVUgzvpOwhJ
3139n4woCcVUTfMh8Pwoi6IuWhbgZAfXB6uFOkE9MLHfdnMPwbA=
=nCgI
-----END PGP SIGNATURE-----

--hqfungowftzawdun--

