Return-Path: <linux-man+bounces-759-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E1F568A4588
	for <lists+linux-man@lfdr.de>; Sun, 14 Apr 2024 23:07:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4E0C01F21B0A
	for <lists+linux-man@lfdr.de>; Sun, 14 Apr 2024 21:07:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E069134CE0;
	Sun, 14 Apr 2024 21:07:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YeC4gFEC"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C3D813665A
	for <linux-man@vger.kernel.org>; Sun, 14 Apr 2024 21:07:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713128821; cv=none; b=U+TJfNBbLTI2TqFTfZC8MF38hh4jW4kIdqaQ+hI+MYjLpsTetVt/16wJSrtbvQvCu7qQRX46RJUqcf7D3dk2zRBq6DKG4xRR8LiDCp8FJXu69dKFf13zE2HzK0D8uzTfUgnEMev+dTyo5/hrHEi2APTDqMaTq6AQihYYyO2Bqp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713128821; c=relaxed/simple;
	bh=PFdVZTnjj2I4zKphKWVUx1xYfwJ91Y03IgGkj88nd9s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Q3WTm/glQjFLLePs5gB8I/nEGoJS2a7AmuuPoesoXvryTfzByQk/iu48o/IzCWl/pqpRB2s02cUOBRnEEYB7YAg8ARkKz86NWxj7c1FQcV5ieH0FMOHFzyJ56kcw8Mi8a6MJJzWDb6wnxiTsGLDyBEXmloT81Zo4btzKYSnRqoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YeC4gFEC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 258F1C072AA;
	Sun, 14 Apr 2024 21:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713128820;
	bh=PFdVZTnjj2I4zKphKWVUx1xYfwJ91Y03IgGkj88nd9s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YeC4gFECQ1im4jhngKmPQvbqWaiZFzCPWx5KeiAkIvxxM451AelmU1yr35vGDNDPz
	 0a4co6awAHrw5Uh1kQBPkm+QXuJJ9t/t+hjHHBQb9LLwesvqPoJZLskr8yJyws6Y0c
	 hpdgkH8lSkFnt2/pFy3PFGjGf7Ekef8CCF7jxWQ0u9/PfQYAzklGF7QmrueYFt5k7i
	 Oq/cY3yk2VKfbWOSrxPHhxpTX0kHU1kQaOP6UOoUa4KeusmxdycIQQp0rhTD6tftDi
	 f8SfB4EayqHGQhOMyY8puKm2SokG/HFQ7w7DvdYLCr/rQLyrQfJy4qR/dplbiP9cYq
	 yMuEhFZ0dT+RA==
Date: Sun, 14 Apr 2024 23:06:57 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Deri James <deri@chuzzlewit.myzen.co.uk>, linux-man@vger.kernel.org
Subject: Re: Linux man-pages PDF book
Message-ID: <ZhxFceuCgt7zK_o2@debian>
References: <ZhvLPvqHzpw2Jl3o@debian>
 <ZhvM2Yy6lWGJLhtg@debian>
 <20240414125653.h7y7y66yt7cgtgwm@illithid>
 <Zhv9F9VuAi6qEQ2L@debian>
 <Zhw0lSlm0F2qnqMm@debian>
 <20240414202528.xqrt5wqyec5kdehf@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fkT/0XVy45Wf9iha"
Content-Disposition: inline
In-Reply-To: <20240414202528.xqrt5wqyec5kdehf@illithid>


--fkT/0XVy45Wf9iha
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 14 Apr 2024 23:06:57 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Deri James <deri@chuzzlewit.myzen.co.uk>, linux-man@vger.kernel.org
Subject: Re: Linux man-pages PDF book

Hi Branden,

On Sun, Apr 14, 2024 at 03:25:28PM -0500, G. Branden Robinson wrote:
> Hi Alex,
>=20
> Wow, I'm envious.  For you, lore let those gigantic attachments through.

They've recently changed the infrastructure; maybe something has
changed.  I remember the limit was 100k in the past, while my
attachments were 8.8M each, so it clearly seems to have been lifted.  I
didn't really think too much; we probably don't want to abuse that.
I'll try to be careful.

> At 2024-04-14T21:55:00+0200, Alejandro Colomar wrote:
> > I forgot to mention that while I can't reproduce the performance
> > regression, I see a regression in the navigation panel.  When using
> > groff.git HEAD's an.tmac, the navigation panel doesn't allow
> > collapsing an entire chapter, while the Linux man-pages fork of it
> > does allow.  Both PDF books are attached to this message.
>=20
> I see what you mean.
>=20
> One bet is that I messed something up here and Deri's first or second
> hypothesis will be correct.
>=20
> Here's mine.
>=20
> You might need to set a register I added in this commit.
>=20
> commit 5fbc22d022c07f517bc83aa9b8c97ea5536efd18
> Author: G. Branden Robinson <g.branden.robinson@gmail.com>
> Date:   Sun Mar 3 23:57:38 2024 -0600
>=20
>     [man]: Add `an*bookmark-base-level` register.
>=20
>     * tmac/an.tmac: Add experimental feature to support increasing the ba=
se
>       level of PDF bookmarks.  Define register `an*bookmark-base-level`,
>       initialized to zero.
>=20
>       (PT): Add 1 to it when producing document bookmark.
>=20
>       (SH): Add 2 to it when producing section heading bookmark.
>=20
>       (SS): Add 3 to it when producing subsection heading bookmark.
>=20
> I don't know what you're using to produce the chapter headings in the
> navigation panel, but that likely needs to be at level 0 (or 1,
> depending on the convention the PDF spec uses).
>=20
> I added the foregoing feature because it was obvious to me that someone
> might want to incorporate a man page collection into a larger work.
>=20
> I admit I didn't think of the chapter organization application.

If you often open the Linux man-pages book you'll realize why you want
it.  If you want to navigate to a page in chapter 7, you don't want to
scroll down 1000+ bookmarks.  You want to close the navigation for the
first 6 chapters (and their subchapters), and easily arrive to
chapter 7.

>=20
> So you'd likely do something like this when building with groff Git
> HEAD.
>=20
>   '-r an*bookmark-base-level=3D1'

It doesn't seem to work.  I did the following.  I don't see a behavior
change at all.


diff --git a/share/mk/build/pdf/book/_.mk b/share/mk/build/pdf/book/_.mk
index 166cd28a6..46ede414a 100644
--- a/share/mk/build/pdf/book/_.mk
+++ b/share/mk/build/pdf/book/_.mk
@@ -31,20 +31,21 @@ _PDF_BOOK :=3D $(_PDFDIR)/$(PDF_BOOK)
=20
=20
 $(_PDF_BOOK): $(_MANPAGES) $(_TINOS) $(MKBOOK) $(MK) | $$(@D)/
	$(info  $(INFO_)GROPDF          $@)
	$(MKBOOKDIR)/prepare.pl $(_MANDIR) \
	| $(CAT) $(MKBOOKDIR)/front.roff /dev/stdin \
	| $(PRECONV) \
	| $(PIC) \
	| $(TBL) \
	| $(EQN) -Tpdf \
-       | $(TROFF) -man -Tpdf -F$(_FONTSDIR) -dpaper=3Da4 $(TROFFFLAGS) \
+       | $(TROFF) -man -Tpdf -F$(_FONTSDIR) -dpaper=3Da4 \
+               '-r an*bookmark-base-level=3D1' $(TROFFFLAGS) \
	| $(GROPDF) -F$(_FONTSDIR) -pa4 $(GROPDFFLAGS) \
	| $(SPONGE) $@
=20
=20
 .PHONY: build-pdf-book
 build-pdf-book: $(_PDF_BOOK);
=20
=20
 endif  # include guard


> Let me know if that works out.
>=20
> The foregoing is not documented because it needs field testing.  Now
> maybe it will get some.
>=20
> > > $ time make build-pdf-book 2>/dev/null
> > > GROPDF		.tmp/man-pages-6.7-53-g5125d867d.pdf
> > >=20
> > > real	0m13.307s
> > > user	0m16.229s
> > > sys	0m0.481s
> > >=20
> > > $ time make build-pdf-book 2>/dev/null
> > > GROPDF		.tmp/man-pages-6.7-53-g5125d867d-dirty.pdf
> > >=20
> > > real	0m13.564s
> > > user	0m17.060s
> > > sys	0m0.510s
> > >=20
> > > (I've built all the dependencies before hand, so that only the PDF
> > > is built in these invocations.)
> > > (The -dirty one uses -man.)
>=20
> This is very good news.

:-)

BTW, the bookmarks for section headings and subsections don't have a
friendly name; they are of the form `#pdf:bm6`.  Maybe you could form a
name of the form `#intro.1:NOTES:Login`, or whatever form makes sense to
you, but based on the actual text of the bookmark.

Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--fkT/0XVy45Wf9iha
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYcRXEACgkQnowa+77/
2zIUEg//a2MMyIJmyoguMua2MgC/0iAduRyNSooUJ1DZEzp4gUebCD4vsOFRI0XI
TEUR/i/jOazd+CwUz7+uwGL4zUpioT/sPL2VFBq+NSykOyLqczmhGsAaTZ+whWwa
1iz4ALrxKVoaeDXDyYHepTqBi/iQsGxb1n1bXu0GEXX0X5Upgu1Gc3MVSNQWguEx
zRk47gZ4faKQnOOj3YLHMK20CyFvakTZY4GfiU/LL5Krt3S5xeV4qfROLgGwPgVt
PR9JXHAEVxc6QBHbZKVo9sn5nhckVtUMC12yESBA5OAL/RS1gWA+I7d+nW5gF0uR
5vCasleGbGXndJHTSzPMNvtvB7ubK4oYbPJxVWkoPflmRmmLUBvDWwaCFB5us8DK
3HBAO6rtbZm/960sReaQFgi4f862bDIaoX3/UcrquHG1DQd1QzocU69ts1XP3TB5
FrPn1nS46hSlm/347aQCF2YNki1iTLvlGYr6Y2CIT3q8B/oAbBO17WRUlBkl8A7n
QgdQtOl54mYMvCM/+qU5Zv4lyIxzeQ9RaE9qcdZ01szPmPvrHxmvkVbEt3UuAtkh
WdaCJkyGYmCPOQwuYILCYss84EENuDfthPcReV6cHd9jg5XBV4VilF1MLOyGaysk
MYC91IQqgr/J852AhpuvYl4KfD5J7Oqz/uhtW4zPRH//B0IicFA=
=Es1Z
-----END PGP SIGNATURE-----

--fkT/0XVy45Wf9iha--

