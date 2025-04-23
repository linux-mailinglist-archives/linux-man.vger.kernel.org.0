Return-Path: <linux-man+bounces-2809-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BBC04A986BB
	for <lists+linux-man@lfdr.de>; Wed, 23 Apr 2025 12:05:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 69E2E3A7E93
	for <lists+linux-man@lfdr.de>; Wed, 23 Apr 2025 10:05:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BB8B1CBA02;
	Wed, 23 Apr 2025 10:05:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PQ7KwXhd"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B93517D346
	for <linux-man@vger.kernel.org>; Wed, 23 Apr 2025 10:05:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745402748; cv=none; b=BYXRMnjNQffkCH7edsI11xMR1H97ozju/7xQlTxIr7XQdKu+ga4cstAD8mZ9JvndaHzdUf4mJijTMRpG8T/s5Y0dAn4S0rR5y2aMgTOlVlUCRpeoJtMGmyT8VyZBZvG1ZW3vsahEuVNRSWAXAH00ZCLyZqe4u0Cuwo53FkruRqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745402748; c=relaxed/simple;
	bh=DfsVIgNgdjnQ52KGbTB2k7GrberIq5ZMaZDqr7qHW08=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=F5LYhgqYYZITtPI155letw9DjK4wKRM6swWhjUbtw3n4ZqZIut/iGmUVcD4/NeD5GOvo6n/dDQ/G5zQpntPcPO84yCMLXHKMTOMTqTbMNjqmHjg5riWPXxuoq5mHHZ88duWNfZdIOgCZ1BmEdKNT/u8xYdFpEUqEbkAYlVv0k7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PQ7KwXhd; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB8EFC4CEEC;
	Wed, 23 Apr 2025 10:05:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745402747;
	bh=DfsVIgNgdjnQ52KGbTB2k7GrberIq5ZMaZDqr7qHW08=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PQ7KwXhd7y8LsFJr/I39b0DEpPleA7VIu8j/QsgwMWGDxvi8sHEzVxC2cRKFSP7pZ
	 wlinE9yV6WR9pPIVbW3k9hRGiE+vrBqLwbUiOmeQBE9wBfoNGofAtkz9hKSOPQhm92
	 14gk5KbRkltTWO6ZI3mWqNArRdJZYSGYqoWVD9bSOjD7FQB/eWymylMELtnxZeB4Pb
	 M8ExgP7Xq+99Wq/dTZcbOpSp6PsyIGeDk9p9WVSSaoNpdFt+Uvy13SuMIBQE26cjOz
	 zo3LP6iODuKpu8wlIRgVEatA8SDna5I8BKP9FtLMW+3C7wR13D4AmUj4GzFQ0878c+
	 uzSMv8+76FG2w==
Date: Wed, 23 Apr 2025 12:05:42 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
Cc: linux-man@vger.kernel.org, Suren Baghdasaryan <surenb@google.com>, 
	"Liam R . Howlett" <Liam.Howlett@oracle.com>, Matthew Wilcox <willy@infradead.org>, 
	Vlastimil Babka <vbabka@suse.cz>, Jann Horn <jannh@google.com>, linux-mm@kvack.org, 
	Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH] madvise.2: update MADV_GUARD_INSTALL, MADV_GUARD_REMOVE
 description
Message-ID: <q6uv55rg2fqhfz3m62mwtypfm72c42jpz6hftcskeftcd3hcsj@w25cj6y3uod5>
References: <20250317210653.273728-1-lorenzo.stoakes@oracle.com>
 <jy7enfjux7etamfupfipzijrnlc2ltzuaq5limlpd6aus6ihfs@zpc5jqxtsbs4>
 <4f3180f4-c18b-4494-a619-2c22a69411aa@lucifer.local>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vnt25pqpdmdbqiu4"
Content-Disposition: inline
In-Reply-To: <4f3180f4-c18b-4494-a619-2c22a69411aa@lucifer.local>


--vnt25pqpdmdbqiu4
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
Cc: linux-man@vger.kernel.org, Suren Baghdasaryan <surenb@google.com>, 
	"Liam R . Howlett" <Liam.Howlett@oracle.com>, Matthew Wilcox <willy@infradead.org>, 
	Vlastimil Babka <vbabka@suse.cz>, Jann Horn <jannh@google.com>, linux-mm@kvack.org, 
	Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH] madvise.2: update MADV_GUARD_INSTALL, MADV_GUARD_REMOVE
 description
References: <20250317210653.273728-1-lorenzo.stoakes@oracle.com>
 <jy7enfjux7etamfupfipzijrnlc2ltzuaq5limlpd6aus6ihfs@zpc5jqxtsbs4>
 <4f3180f4-c18b-4494-a619-2c22a69411aa@lucifer.local>
MIME-Version: 1.0
In-Reply-To: <4f3180f4-c18b-4494-a619-2c22a69411aa@lucifer.local>

Hi Lorenzo,

On Wed, Apr 23, 2025 at 10:37:57AM +0100, Lorenzo Stoakes wrote:
> Hi Alejandro,
>=20
> Sorry for being slow on this, LSF and workload has held me up a bit, will=
 apply
> your feedback and send a v2 soon.

No problem.  Take as much time as you need.  :)


Have a lovely day!
Alex

>=20
> Thanks, Lorenzo
>=20
> On Sun, Mar 23, 2025 at 09:15:36PM +0100, Alejandro Colomar wrote:
> > Hi Lorenzo,
> >
> > On Mon, Mar 17, 2025 at 09:06:53PM +0000, Lorenzo Stoakes wrote:
> > > Lightweight guard region support has been extended in Linux 6.15,
> > > permitting the use of these features for file-backed and read-only
> > > mappings.
> > >
> > > Update the description for these operations in the madvise manpage to
> > > describe the changed behaviour.
> > > ---
> > >  man/man2/madvise.2 | 37 +++++++++++++++++++++++++++----------
> > >  1 file changed, 27 insertions(+), 10 deletions(-)
> > >
> > > diff --git a/man/man2/madvise.2 b/man/man2/madvise.2
> > > index bd2b90b7a..37492c8cf 100644
> > > --- a/man/man2/madvise.2
> > > +++ b/man/man2/madvise.2
> > > @@ -697,9 +697,22 @@ is applied to regions
> > >  containing pre-existing lightweight guard regions,
> > >  they are left in place.
> > >  .IP
> > > -This operation is supported
> > > -only for writable anonymous private mappings
> > > -which have not been mlock'd.
> > > +Prior to Linux v6.15 This operation was supported
> >
> > We don't use 'v' for version numbers.
> >
> > 	alx@devuan:~/src/linux/man-pages/man-pages/contrib$ grep -rho 'Linux [=
1-6][^ ]*' | wc -l
> > 	7679
> > 	alx@devuan:~/src/linux/man-pages/man-pages/contrib$ grep -rho 'Linux v=
[1-6][^ ]*' | wc -l
> > 	13
> >
> > (Oh, well, I need to fix those 13 places.)
> >
> > Also, there should be a comma (and lowercase):
> >
> > 	Prior to Linux 6.15,
> > 	this operation ...
> >
> > > +only for writable anonymous private mappings.
> > > +Since Linux v6.15 both anonymous and file-backed
> >
> > A comma here too.
> >
> > > +mappings are supported, including read-only mappings.
> >
> > I'd break the line after the comma (and put 'mappings ...,' in the
> > previous one).
> >
> > > +.IP
> > > +The mapping must not be mlock'd,
> > > +nor can they map hugetlb ranges
> >
> > mapping is singular, but they is plural.  Did I misunderstand, or is it
> > a typo?
> >
> > > +or special mappings
> >
> > I think there should be some punctuation here, but let's revisit after
> > the rest of the paragraph is revised.
> >
> > > +for example,
> > > +mappings marked with kernel-internal flags such as
> > > +.B VM_PFNMAP
> > > +or
> > > +.BR VM_IO ,
> > > +or secret memory regions created using
> > > +.BR memfd_secret(2) .
> >
> > The space should go before (2), not after.
> >
> > > +.IP
> > >  An
> > >  .B EINVAL
> > >  error is returned if it is attempted on any other kind of mapping.
> > > @@ -756,19 +769,23 @@ and
> > >  .IP
> > >  All mappings in the range
> > >  other than lightweight guard regions
> > > -are left in place
> > > -(including mlock'd mappings).
> > > -The operation is,
> > > -however,
> > > -valid only for writable anonymous private mappings,
> > > +are left in place.
> > > +The operation is supported on those mappings
> > > +permitted by
> > > +.B MADV_GUARD_INSTALL
> > > +in addition to mlock()'d mappings,
> > >  returning an
> > >  .B EINVAL
> > >  error otherwise.
> > >  .IP
> > >  When lightweight guard regions are removed,
> > >  they act as empty regions of the containing mapping.
> > > -Since only writable anonymous private mappings are supported,
> > > -they therefore become zero-fill-on-demand pages.
> > > +Anonymous private mappings therefore become
> >
> > I'd put 'therefore' as the first word in the sentence, followed by a
> > comma.
> >
> > > +zero-fill-on-demand pages,
> > > +and file-backed mappings are repopulating with the
> >
> > repopulat{ing =3D> ed}?
> >
> > > +memory contents from the up-to-date contents of the
> > > +underlying mapped file.
> > > +
> >
> > We can't have blank source lines.  That results in a diagnostic.
> >
> > >  .IP
> > >  If any transparent huge pages are encountered in the operation,
> > >  they are left in place.
> > > --
> > > 2.48.1
> > >
> >
> > Have a lovely night!
> > Alex
> >
> > --
> > <https://www.alejandro-colomar.es/>

--=20
<https://www.alejandro-colomar.es/>

--vnt25pqpdmdbqiu4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgIu28ACgkQ64mZXMKQ
wqmbjw/+LFZNq+iAzNgmmBd8za4l1U1q3PFyeliAAMVxrP2BLHBJFDz2Ir4KLoxX
+FGQJPtb1tPPXK6mt/K+/QwwLJDX9R5y79/YIB+x+VkePPlUtx7QqetxQXYfRqqE
R1cqOM5DK6TTsXpJkiRLAMvPMzf5Kmj4hP7NajXbpuapJyPiuWzAx6hM7AjaMQG1
NedhPqiL3reMQrRHbh0IhuxPiy8tivyAltE+WcDe1Cy/m882l0YQCF2VOVBwoi56
eQ0VfA4ZYFJuoNAWJ/2APb2U+QNbF/t3D6qZsWSV4t6z2rXXbUWdCaUM38h8wR7e
JRaO1Fk7SASBL/m6IyIKwezDan26elKPiSaluJz0pqMCZN3WgMiXftfCNfrV4Wf6
2wDhLKORSrtPC1S7HT1jeBHffVWdzWS9h0aY3C4ZUej1MXtdwfzemGN9/1AGGAOI
Wyo67wgNumARd63a0O/ESAEfEFjXj07JGqzkuFo6MwOfA+LPuX8V99nM+SzgnOEm
edSs+CRLP+iCjvS0uacqNbF3zf7gcCHGTnuaatq2m1YGx6D/OjxkgQKaoTTmer/V
ivrGIGN6QQKLUBDxqJIaeSUQMEUz1dIa0S06LpALjuLVDg0/1hlM9Maea0TmbVMc
Jr2irTfVdizRN0gukQwENv8bNU5e+tRWu8X83YmBP+yR14egS/Q=
=I05U
-----END PGP SIGNATURE-----

--vnt25pqpdmdbqiu4--

