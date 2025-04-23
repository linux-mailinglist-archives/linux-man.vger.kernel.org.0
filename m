Return-Path: <linux-man+bounces-2814-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C22FAA99A0E
	for <lists+linux-man@lfdr.de>; Wed, 23 Apr 2025 23:10:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2A9AE7B1514
	for <lists+linux-man@lfdr.de>; Wed, 23 Apr 2025 21:09:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3C59284666;
	Wed, 23 Apr 2025 21:10:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ik9JqqbE"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 612512820AB
	for <linux-man@vger.kernel.org>; Wed, 23 Apr 2025 21:10:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745442621; cv=none; b=MEhQNYvxdeGR/Un+xbGEtHNMuSgWKq9URb7cJ8xrI/A9RlmxRdvLWy6i7++3enr9HvQJz6YgRIVvy/jl+qvHFDMZBshKNymTWwSZV/6Gy3NgAEp7hVpogNtKm+bfOHVXLSD0HCP1wFQvQRM8qRTtYuhrPvLYV4U+1MXiUJj9KfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745442621; c=relaxed/simple;
	bh=pdcKP2ZdNEo5goD00owMfeeneCDr1jDd3nY5bZmNhZQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JEGdDNOX7XhFoA8rodJu24RyVUIRwNr5fnlE2U7tXkcmgWkH21lC6/eJ4iTkmcSeaa8tfh7lZeYKE/aAXRYa5PT5xLmoF3cx2TZbA7/u7ixeq2EoSMECeoZPIVZw8HLUb0U271hEkGcmfeof5+aOUtgqhFVXGYR4ehWPmpChQrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ik9JqqbE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E1884C4CEEE;
	Wed, 23 Apr 2025 21:10:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745442620;
	bh=pdcKP2ZdNEo5goD00owMfeeneCDr1jDd3nY5bZmNhZQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ik9JqqbEuNJiyD7CHdH7ItE3EEYhxMuJnq7vM3/UGOY/V9Tn+4wVYBkAmX2vUKBcq
	 6pSgDB6EpJLK6BFFZcyZ58XqzYELjsRahUD6HQBz8YvEUDdlstzLKGUvvcUK5k5BbU
	 rcLjwgRN1U7O7gkHFCgwk4zFeTMat4tpbWkmznJmlN099hDYg3n8mO/zPV+DZ85XTw
	 mr2D557TjZMF1KBnYN5wTTAthEOeec+38XiuhTcCDKhd9CEAf9ZcmgNzdtKRPcQCWO
	 xCkPBl64ZwvQjM/cytA04nyXVw47BHygzHTo/foV7SqM9/fKL5BqX/+yt66wxTfK+c
	 659ZMZglfWJ+g==
Date: Wed, 23 Apr 2025 23:10:15 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Suren Baghdasaryan <surenb@google.com>
Cc: aarcange@redhat.com, lorenzo.stoakes@oracle.com, david@redhat.com, 
	peterx@redhat.com, lokeshgidra@google.com, linux-man@vger.kernel.org, 
	linux-mm@kvack.org
Subject: Re: [PATCH 1/1] man/man2/ioctl_userfaultfd.2, UFFDIO_MOVE.2const:
 Add UFFDIO_MOVE page
Message-ID: <2uffhjsbzq2hmgx5o5ac6u6ifi25nxhqy75irf7atjd6shctwg@eo7whozxpmqb>
References: <20250423011203.2559210-1-surenb@google.com>
 <4xxeauieht3kdepkgsc73xroo42zkltepxpzce6yir2zouzr7w@tjp5t43tr7pk>
 <CAJuCfpHs+x_iAWAU=_Rph=fioc-30Y-2oiuudeW6jBy9DnBBFQ@mail.gmail.com>
 <CAJuCfpGdMZE=oazv4yEPGsmJAt8rL3yNHBs-mkGXD1Mfh8gNLg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6o674d26cf7mrwfa"
Content-Disposition: inline
In-Reply-To: <CAJuCfpGdMZE=oazv4yEPGsmJAt8rL3yNHBs-mkGXD1Mfh8gNLg@mail.gmail.com>


--6o674d26cf7mrwfa
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Suren Baghdasaryan <surenb@google.com>
Cc: aarcange@redhat.com, lorenzo.stoakes@oracle.com, david@redhat.com, 
	peterx@redhat.com, lokeshgidra@google.com, linux-man@vger.kernel.org, 
	linux-mm@kvack.org
Subject: Re: [PATCH 1/1] man/man2/ioctl_userfaultfd.2, UFFDIO_MOVE.2const:
 Add UFFDIO_MOVE page
References: <20250423011203.2559210-1-surenb@google.com>
 <4xxeauieht3kdepkgsc73xroo42zkltepxpzce6yir2zouzr7w@tjp5t43tr7pk>
 <CAJuCfpHs+x_iAWAU=_Rph=fioc-30Y-2oiuudeW6jBy9DnBBFQ@mail.gmail.com>
 <CAJuCfpGdMZE=oazv4yEPGsmJAt8rL3yNHBs-mkGXD1Mfh8gNLg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJuCfpGdMZE=oazv4yEPGsmJAt8rL3yNHBs-mkGXD1Mfh8gNLg@mail.gmail.com>

Hi Suren,

On Wed, Apr 23, 2025 at 12:55:41PM -0700, Suren Baghdasaryan wrote:
> > > > +.B struct uffdio_move {
> > > > +.BR "    __u64  dst;" "   /* Destination of move */"
> > > > +.BR "    __u64  src;" "   /* Source of move */"
> > > > +.BR "    __u64  len;" "   /* Number of bytes to move */"
> > >
> > > Are we in time to name this size instead of len?  Length usually refe=
rs
> > > to the number of non-zero characters in a string, while size refers to
> > > number of bytes in some object, which is more appropriate in these
> > > cases.
> > >
> > > If this has already been released in the kernel, don't worry about it,
> > > but if it hasn't, maybe we should call it size?
>=20
> Sorry, it was released back in 6.8.

Okay, no problem.

> > > > +.P
> > > > +The following value may be bitwise ORed in
> > > > +.I mode
> > >
> > > Please use .mode instead of mode.  That makes it more obvious that we=
're
> > > talking about a struct member.  I know most pages don't do this, but =
I'm
> > > planning a global change for consistency soon; since this page is new,
> > > we can start clean and do it as
> > >
> > >         .I .mode
> > >
> > > This is done in a few cases already in fanotify(7), for example.
>=20
> Ack. I assume that should be done everywhere else.

Yep.


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--6o674d26cf7mrwfa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgJVzAACgkQ64mZXMKQ
wqlHJw//ebsaWn/y09CIPJybxyYKuDib7ZwG/FgRg2SEetBKrVWiYxuVZ9jM0HwK
22rKNXVJXtlFkP5MiBvtkC1u9avEwYonLf8/kbaAPdOwtlgQJlQF82Sm3jz1Q6wJ
+XVmq2E4ZU5Hia5VIAM4C7AmS0qwRGT2udB4i0tdEcxFRdV5kziuNFqHKyLiMj2R
aSUNENHlTfYw3K2Yvm6+HNe21GnwYqnKnjbFd8fEEtDx+HlO9zye2mf/D0Mg3LY/
9UjCXepgWWmk6N5dzz5z9YIbUmKBQZZEFc27MRtYfmfOkZvH2pZFh7sSHxSC3CtH
PFQ4tsDzL6YTc/Bru+3ZDM+LFp5XwgNxfxpD/aiwRldDJmS8mZM2m8xVMDxKSTz/
nqEWHVffLPZl1feE5DXkJiBmgG3TfP0NjRCnlELHf+cmt4L2Alm3a9kHl3siGnhA
4Cvl6WdHgYrmU6kgM37s1zjOgsO/QoNIh64fqD2MU1lmvewfcUiJftnmsjl8WPWM
Sk6t7/z77vdO+qEmSPPfv1i/KfInatW+3Myi+Xx8DdjioZ8RdXjmq2hNRxbNmcML
RMFQdLljeOpSQrCriIbJscDCg93Fa06YzLyD8Djmt5q+qFDlOghoBiyq/KlGZ10C
Vz1V29ibMl90ptMbIPRf/e+MSdr8n1dONQvDNGth1i8AJTP48ns=
=Es28
-----END PGP SIGNATURE-----

--6o674d26cf7mrwfa--

