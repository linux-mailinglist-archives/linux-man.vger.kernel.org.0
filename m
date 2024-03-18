Return-Path: <linux-man+bounces-668-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DBE987F2C0
	for <lists+linux-man@lfdr.de>; Mon, 18 Mar 2024 22:58:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4E0281C216B9
	for <lists+linux-man@lfdr.de>; Mon, 18 Mar 2024 21:58:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 726D15A7A2;
	Mon, 18 Mar 2024 21:57:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hUvZXIu+"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E235A79D
	for <linux-man@vger.kernel.org>; Mon, 18 Mar 2024 21:57:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710799079; cv=none; b=jKGfdMnrU3g4LRyFK1mRIbpjv3KtW1wJxDCwRRyl3h27gqoFLVKC2QKfMrzxOJMwW3Da0sByeJDvoeoen1fo4RDf9KRi1gu4HG33zfXJPTaSstufj+q5e0pyrmYCtvGuvZFixAbZ/i3fENAYI9mgFQ0GFz2EagP3I5mhLZhJhNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710799079; c=relaxed/simple;
	bh=mis3H750KyYYLh9+6Rvou6b8UMplBl8OSgtQeMqGTzU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cR9aqp1yMVC1cBP7udnKdLpZ+0ZtXEMaVtyICh8EItED7fnKpjMBfOkuLFrKbo86xOB1EqKQdEkFww+9oLXI25P/Ex2kBrkYREenmMU5Y1TS8rhzVFeKXCDmECH8+otvo+3wBhPA4yKvNVGt8+I42lcuLD0tgYPlsoCKDq7W7X8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hUvZXIu+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DDD5CC433F1;
	Mon, 18 Mar 2024 21:57:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710799078;
	bh=mis3H750KyYYLh9+6Rvou6b8UMplBl8OSgtQeMqGTzU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hUvZXIu+sCPrFKp5bEHNdptSPwvKr0BdxR0b2jN59SUJxWwHJN39r7JoygdKVfkSR
	 91rvxg+WqSCjVV6Q/35UlFpw1AqcfzLVzr40bUnyA9nmQIqnZWsWcBc+o61qMZR4lS
	 4LUOSpXvbYwV9elaFrM988+qN3VhZK8kqRZIsN676/uXH1Zda8kOYAJK9Ah3rpgKXp
	 xcFwx6848oVtsXk0YYZiqXGOKGKmbhVoXEpvwAzYustF/TSocklp8IN0H0fo0x71eK
	 5y6M6z0UxysCayl53wf+4TzSYMW1/JRsVXwnHLlgxLMhie74kMqZHt1ZBVSR9Id8Hm
	 lVHix/OyZmknw==
Date: Mon, 18 Mar 2024 22:57:49 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jeremy Baxter <jtbx@disroot.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 3/6] intro.1: Explain the meaning of a directory
Message-ID: <Zfi447ghGCfLC_Kk@debian>
References: <20240317080850.28564-3-jtbx@disroot.org>
 <20240317080850.28564-6-jtbx@disroot.org>
 <ZfcGub2EdBC20dCI@debian>
 <CZX537Q8308O.YVDA7PY3E2H2@disroot.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yz8UkAk0/Xqd0o9F"
Content-Disposition: inline
In-Reply-To: <CZX537Q8308O.YVDA7PY3E2H2@disroot.org>


--yz8UkAk0/Xqd0o9F
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 18 Mar 2024 22:57:49 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jeremy Baxter <jtbx@disroot.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 3/6] intro.1: Explain the meaning of a directory

Hi Jeremy,

On Tue, Mar 19, 2024 at 08:57:07AM +1300, Jeremy Baxter wrote:
> On Mon Mar 18, 2024 at 4:05 AM NZDT, Alejandro Colomar wrote:
> > On Sun, Mar 17, 2024 at 09:08:31PM +1300, Jeremy Baxter wrote:
> > > ---
> > >  man1/intro.1 | 3 +++
> > >  1 file changed, 3 insertions(+)
> > >=20
> > > diff --git a/man1/intro.1 b/man1/intro.1
> > > index 090678750..f0a8d98e0 100644
> > > --- a/man1/intro.1
> > > +++ b/man1/intro.1
> > > @@ -180,6 +180,9 @@ The command
> > >  In this example, we use it to find Maja's telephone number.
> > >  .SS Pathnames and the current directory
> > >  Files live in a large tree, called the file hierarchy.
> > > +In this hierarchy, there are many
> > > +.IR directories ;
> > > +a directory is simply a file that can hold other files as opposed to=
 text.
> >
> > This might confuse more than it helps.  What does "hold" mean?  Does the
> > directory hold the file data?  As in a .tar archive?  No.
> >
> > In any case, this subsection doesn't seem to treat how directories are
> > represented in the filesystem, but rather how they are presented to the
> > user in path names.
>=20
> What do you think about this?
>=20
>   In this hierarchy, there are many
>   .IR directories ;
>   a directory is simple a file that contains other files,
>   rather than text.
>   For example, if we have a file called
>   .I tel
>   in the directory
>   .IR /home/aeb ,
>   we can refer to it by the pathname
>   .IR /home/aeb/tel .
>=20
> I think this section is still important because previously there was
> no explanation for this, and most people are accustomed to using the
> word "folder".

Hmm, it's good that you mention this.  When explaining directories to
friends used to Windows (and GUI) terms, I noticed that it's unfamiliar
to them.

I actually thought about it, and the term "directory" tells you what it
is quite precisely:

Like a directory of phones, it's just a piece of paper where you note
down the phones of people.  Directories, similarly, contain lists of
files.  They don't "hold" nor "contain" the files.

Cheers,
Alex

>=20
>  ~Jeremy
>=20
> > >  Each file has a
> > >  .I "pathname"
> > >  describing the location of the file from the root of the tree
> > > --=20
> > > 2.44.0
> > >=20
> > >=20
>=20

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--yz8UkAk0/Xqd0o9F
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmX4uN0ACgkQnowa+77/
2zIbsw/+NMl9TaKo2zn9AS8TOTDHUF7o41IRiZA4qmfRVqxIIfDTxa6vdloGheId
zdm8XyyxTIpH1BxPfoXbZdUcCNBut5q1A8v/jKsEgrmk9ms9lwYbiqIIggIboFjj
9Wr66iTi+19LuJrGz1jKpSdX+n3B2jOFYuZuRSCRGvp28TP25PgBXjDUxwv8KBJZ
AWOyqmOrYJXt8qojJLtT9brxvBkDo9FlcQIZ10l9XafA/1o+ezmGJGj/5BsqGRNX
KPhn8V9gNsfsQc3YoS5mfjzx6ZoS8Jb6nKVK1BK6qAkbuj3NanNpMUwAPg3T0+1j
9FQx4k2g1+qHSL2v0m0oDc4uQ779z99wFrasx/RLUhOefCu0K22o2ovClZTu43SM
VkKCT7SV8TLFlLsB1MaZYUUIskKWshGwPqFBHW8ZGnbWLpUFaJ32zZBUnNGSeCjF
SrzTDRna7ExyNEWOng34QGtiKm9wOSfd1x+lVsq6fIh+FmTrBHRxsd/eCIoN51wP
06ahl3Ckd/VoNoHlREqvWE2dLDKdpkOuNdKXM2SplcA4bsJn1O4VJLAFhXgaE2v9
08bP8EIc24TW7UQ0bh2frrmyQraejfmY/gn0p1S7dC92XN1tMKkS41X9qj2KGz6q
Rw4exVfTUUcV07j4NMsRMNnDgUCHryW8sMY3AR6WZ0xQzBevSNE=
=yo6G
-----END PGP SIGNATURE-----

--yz8UkAk0/Xqd0o9F--

