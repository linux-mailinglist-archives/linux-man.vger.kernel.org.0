Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AD05A7D4E20
	for <lists+linux-man@lfdr.de>; Tue, 24 Oct 2023 12:41:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232676AbjJXKlD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 24 Oct 2023 06:41:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53014 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232042AbjJXKlC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 24 Oct 2023 06:41:02 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D417010E
        for <linux-man@vger.kernel.org>; Tue, 24 Oct 2023 03:40:59 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6584BC433C7;
        Tue, 24 Oct 2023 10:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698144059;
        bh=G1zkeDVM9FaONk5Rdox64b1VMsm23deUml2+kwpyoEM=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=unTKSAJz/v0P3k8COM6EWAY9GH2sgkElf3HojTC6mbAA5BMc+4VWjPBeIueTa3jSm
         APycbDLDXlcVwmOOyLWv9urgQds4vJXRPxL9ingsOMmtuGdF+YFqCf+WT9Y4qOcrqj
         b+PmpbXTKYI+WaccKb7Sp9wm6Ml/pdgS6mdygcHxALp275XjPHPZ1CwSlJ9hSNaXOW
         AQmvO75i0QHAW7m/y5CMlw1KHRVlcTgO2N+IWXy6Th8YAeDohs8UVTqxZTsJaiyCrl
         rlplT8XqEULMOScvuR128oPoEgOfZs1HgVX+G3lB6Wzu6dKBEex5nf4Zn8120tIa7r
         HJDNlyHXOhkUA==
Date:   Tue, 24 Oct 2023 12:40:55 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Muhammad Usama Anjum <usama.anjum@collabora.com>,
        kernel@collabora.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 2/2] ioctl_pagemap_scan: add page for pagemap_scan IOCTL
Message-ID: <ZTefONm-aap2x1nF@debian>
References: <20231019131252.2368728-1-usama.anjum@collabora.com>
 <20231019131252.2368728-2-usama.anjum@collabora.com>
 <ZTbrIskF1mt0zTM_@debian>
 <20231024024802.e6hfjvfumzc2rbil@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="jjGctIy7uwM9hZAx"
Content-Disposition: inline
In-Reply-To: <20231024024802.e6hfjvfumzc2rbil@illithid>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--jjGctIy7uwM9hZAx
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 24 Oct 2023 12:40:55 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Muhammad Usama Anjum <usama.anjum@collabora.com>, kernel@collabora.com,
	linux-man@vger.kernel.org
Subject: Re: [PATCH 2/2] ioctl_pagemap_scan: add page for pagemap_scan IOCTL

Hi Branden,

On Mon, Oct 23, 2023 at 09:48:02PM -0500, G. Branden Robinson wrote:
> Hi Alex,
>=20
> At 2023-10-23T23:52:28+0200, Alejandro Colomar wrote:
> > [CC +=3D Branden]
> > > +.SH SYNOPSIS
> > > +.nf
> > > +.BR "#include <linux/fs.h>" "  /* Definition of " struct " " pm_scan=
_arg ", "
> > > +.BR "                          struct page_region "and " PAGE_IS_* "=
constants " */"
> >=20
> > That space is not necessary after a closing '"' is something I don't
> > know why exists.
>=20
> Right; since filling is off, and the line will be broken after
> "pm_scan_arg," (with typeface changes) anyway, this attempts to put a
> space at the end of the line.  But that would be invisible, and an
> according-to-Hoyle *roff formatter would get rid of such spaces at the
> end of the line before sending them to the output device anyway.
>=20
> $ printf '.TH foo 1 date package\n.B "pm_scan_arg, "\n' \
>   | groff -Tutf8 -man -Z | sed -n '/pm_scan_arg/,/package/p'
> tpm_scan_arg,
> n40 0
> f1
> V200
> H0
> tpackage
>=20
> If one has learned device-independent troff's output language (see
> groff_out(5)), one can see that the space after the comma is simply
> discarded.

Hmm, I might use .grout for the similarity with that manual page name.  ;)

[...]

>=20
> > > +.TP
> > > +.B vec
> > > +The address of
> > > +.I page_region
> > > +array for output.
> > > +.PP
> > > +.in +8n
> >=20
> > Ahh, this is great, because I needed to explain to groff(1)
> > maintainers what is the problem with TP that I was complaining about
> > in another thread.
> >=20
> > Branden, here's what I mean.
>=20
> Good, yes.  I see what you're talking about.  We can now use
> ioctl_pagemap_scan(2) as a site for our horrific medical experiments.
> 3:-)
>=20
> I think this is an instance of the tricky little constraint problem
> Michael Kerrisk and I discussed almost 3 years ago.
>=20
> https://lore.kernel.org/linux-man/a79fc055-c7ab-1793-04eb-eb4f678e5035@gm=
ail.com/

Yep, and like Michael, I also dislike the line break.  Is there any
chance that we could make it not break after TP so that it (RS) would be
usable there?

>=20
> In all that time, no flash of brilliance has yet illuminated a solution
> (that wouldn't involve extending the man(7) language, like recognizing
> an additional argument to TP or other paragraphing macros).
>=20
> > If you're new to man(7), it is rather unintuitive what to do here.
>=20
> Yes.  groff_man_style(7) attempts to offer advice here, in subsections
> "Horizontal and vertical spacing" and as one of the FAQs in "Notes"
> (".RS doesn't indent relative to my indented paragraph.").

Yup, but anyone new to man(7) will likely be put off by that page.

$ man groff_man_style | wc -l
1439

If you're just contributing a few paragraphs, you may prefer to learn by
trial and error (which is a perfectly valid approach, and one that I
prefer).  Only when I wanted to learn the more obscure details, or quote
to someone else, I've read that page (and I haven't read it entirely
yet!).

Cheers,
Alex

>=20
> That's more material than I care to quote to this list, so I will just
> advise anyone who doesn't already have groff 1.23.0 installed to check
> out pages 261 and 269 of
> <https://www.gnu.org/software/groff/manual/groff-man-pages.pdf>.
>=20
> > Muhammad, in this project, we usually use IP to continuate a TP.
>=20
> More projects than this one use it for that purpose; when `IP` itself is
> given no tag argument, it is idiomatic usage going back to 1979.
>=20
> Regards,
> Branden



--=20
<https://www.alejandro-colomar.es/>

--jjGctIy7uwM9hZAx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmU3nzcACgkQnowa+77/
2zK/PQ/7Bgh1hMwPlgNu+F6fWmlgWqGCUUpy6mPenksTiRV6jsdIt7PqFN6AzSTH
tB3FVYJf9qfu0yB/C71XgMeOHStdU9lgekuR6QfFz37mocQAfS1UWSiRqLBwLP6S
xvZRc+jJMw9g/0NoaHnRgi9c+kNVpFpIXpBBGOB2A4QAYJei5I0dxeXePwa0VTVf
vhTw5l4DXyBlp6UcEqe7oC1NmJTa4NXY0RMyWqL3Vv/gdpCNBNW71aj8ouFc0ndn
Xl0ibf1XN9FBFTOQksrxmctgOjtSv8X/Dd08zYJm8A6xJFphzH/AZC9Di2NsBIot
PkhSaeY+QFQ5eLYwfArNp71P581BBB0JBsEmrZWX2VeHZhyLE1vOdDAJuWA3Idu8
25a+J3w1CGklPfaUydkyIu/9KzgwpX+9UZa0dCbF4Wn4X66USQFO1wvbvaQS+vnc
1k4a5YBkjJqbgLJxbnbTH3cOvKIibDqJOdtNnu2eZBsDNNC3xHl4d1bSZmnsjqZM
LUUc96KZ0S3AukzsZhSIN09oxkATmQLjLnhZTtmbTfbhj5WoMvy7MOZgXKBO4Gl9
+3YmkfMY1fI5fkQob4+BjqZ5rY2qRoWVqIuxr0ElBwjBiZCQk/kXjD+nE/zeq93B
LBjkyzu6yibiBnYAhspAexd0HceOb0l1kiX3GoWHgv9ZfqkirEY=
=r7Y9
-----END PGP SIGNATURE-----

--jjGctIy7uwM9hZAx--
