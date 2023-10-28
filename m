Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 456927DA80A
	for <lists+linux-man@lfdr.de>; Sat, 28 Oct 2023 18:23:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229449AbjJ1QXM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 28 Oct 2023 12:23:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229446AbjJ1QXM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 28 Oct 2023 12:23:12 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5153EB
        for <linux-man@vger.kernel.org>; Sat, 28 Oct 2023 09:23:07 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5E4E0C433C8;
        Sat, 28 Oct 2023 16:23:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698510187;
        bh=tm3d/9BHTTixgOlf1zbC7ijq68huzPNpqd3Ec05nJnU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=pOE2H4YBwMpvoASt22OahxK+N/L67r3r5hWjnhMNgy2L7/N7ueH0Qhs1UptNdEwfd
         2TjFXS0LqldBwBR0D58m0IP2dVvzFmCpj+lTalYziLgaO1wJeyc4CtRilbL6+YgFHY
         wrSfbbKsCmwVfrjiWHEpzt9fKA66v6VOZ0p+AS7yf8uH+ubh3yTY39ndx4aqSJI61a
         IFXilpqZJtZT5kGTrTCQCbqRFuwL6zb1xGza50P1saoItjZcN3jZBXI6oiRguO/lVy
         qxEkCIQ0eyX1EZz/CdHyv3Y8gr6ZwFXMxC0BzSYq/RH4Ymw1wLyVWTJ+M8iMfvBMbY
         4NmYIPpV7QLlA==
Date:   Sat, 28 Oct 2023 18:22:52 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Muhammad Usama Anjum <usama.anjum@collabora.com>,
        kernel@collabora.com, linux-man@vger.kernel.org
Subject: Re: managing tagged paragraphs (was: [PATCH 2/2] ioctl_pagemap_scan:
 add page for pagemap_scan IOCTL)
Message-ID: <ZT01aL6v25b5z_Eo@debian>
References: <20231019131252.2368728-1-usama.anjum@collabora.com>
 <20231019131252.2368728-2-usama.anjum@collabora.com>
 <ZTbrIskF1mt0zTM_@debian>
 <20231024024802.e6hfjvfumzc2rbil@illithid>
 <ZTefONm-aap2x1nF@debian>
 <20231028130714.inrfj5nzbqt25ms3@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="mPBHisLrE5ffBP+x"
Content-Disposition: inline
In-Reply-To: <20231028130714.inrfj5nzbqt25ms3@illithid>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--mPBHisLrE5ffBP+x
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sat, 28 Oct 2023 18:22:52 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Muhammad Usama Anjum <usama.anjum@collabora.com>, kernel@collabora.com,
	linux-man@vger.kernel.org
Subject: Re: managing tagged paragraphs (was: [PATCH 2/2] ioctl_pagemap_scan:
 add page for pagemap_scan IOCTL)

Hi Branden,

On Sat, Oct 28, 2023 at 08:07:14AM -0500, G. Branden Robinson wrote:
> Hi Alex,
>=20
> At 2023-10-24T12:40:55+0200, Alejandro Colomar wrote:
> > On Mon, Oct 23, 2023 at 09:48:02PM -0500, G. Branden Robinson wrote:
> > > If one has learned device-independent troff's output language (see
> > > groff_out(5)), one can see that the space after the comma is simply
> > > discarded.
> >=20
> > Hmm, I might use .grout for the similarity with that manual page name.
> > ;)
>=20
> Yes, I like the terms "trout" and "grout" for the original Kernighan
> device-independent troff format and GNU's extended version of it,
> respectively.  But I have met few other people who do.  :)
>=20
> > > Good, yes.  I see what you're talking about.  We can now use
> > > ioctl_pagemap_scan(2) as a site for our horrific medical experiments.
> > > 3:-)
> > >=20
> > > I think this is an instance of the tricky little constraint problem
> > > Michael Kerrisk and I discussed almost 3 years ago.
> > >=20
> > > https://lore.kernel.org/linux-man/a79fc055-c7ab-1793-04eb-eb4f678e503=
5@gmail.com/
> >=20
> > Yep, and like Michael, I also dislike the line break.  Is there any
> > chance that we could make it not break after TP so that it (RS) would
> > be usable there?
>=20
> The exhibit was roughly this (based on ioctl_pageman_scan(2)):
>=20
> .TH foo 2 2023-10-28 "groff test suite"
> .TP
> .B vec
> The address of
> .I page_region
> array for output.
> .IP
> .in +4n
> .EX
> struct page_region {
>     __u64  start;
>     __u64  end;
>     __u64  categories;
> };
> .EE
> .in
> Other text.
>=20
> This already formats without a line break after `TP`.

I meant to ask if modifying RS's behavior to not break after TP was
something you'd consider viable.

[...]

> > Yup, but anyone new to man(7) will likely be put off by that page.
> >=20
> > $ man groff_man_style | wc -l
> > 1439
>=20
> Because we don't know your terminal width, that number doesn't
> communicate a lot.

Huh!  I thought I had used the standard width, but it seems I didn't.

$ man groff_man_style | wc
   1460   10154   81450

Even weirder is that it's not 89 either, which is the size of the
terminal when I use half screen.  And to crash my brain, I can't even
reproduce it with any terminal size:

$ MANWIDTH=3D82 man groff_man_style | wc
   1442   10152   81154
$ MANWIDTH=3D83 man groff_man_style | wc
   1435   10156   80990

> But it is just shy of 20k words in groff 1.23.0.
> The "reference" version, groff_man(7), is half as long.

$ groff --version
GNU groff version 1.23.0.497-e982

>=20
> > If you're just contributing a few paragraphs, you may prefer to learn
> > by trial and error (which is a perfectly valid approach, and one that
> > I prefer).
>=20
> Experimentation is certainly superior to guessing (or assuming).
>=20
> > Only when I wanted to learn the more obscure details, or quote
> > to someone else, I've read that page (and I haven't read it entirely
> > yet!).
>=20
> I look forward to your critique from a position of practical experience.

Me too.  I remember my promise to review it; I'm just very slow; even
slower than sloppy recuriters.

Cheers,
Alex

>=20
> Regards,
> Branden



--=20
<https://www.alejandro-colomar.es/>

--mPBHisLrE5ffBP+x
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmU9NVwACgkQnowa+77/
2zKSAA/+Mr8NxbngX1yRX0AGAqsoYiBbKNDALqx/P5T0Msl5vkDS4kbPfduw+tUl
qbjKS5fV39P93H+WhSx3+u/ZFPWo7RU34d+jEqkQsou9tL75URxKT56dtBrO2Lu7
pkEJXlkD0uho/Z+0+6jQu3cu3Nub+LovhC2DVh4SjxS4wLnYMuEMLvxTQUFUIc9d
Y2oQKETejpmCR2nKU0kt4LgbpvGLUFRM+v9/b7iOMn1X4BWY3ly7UUU+RItFLNMH
cPxjYN5bcUSZwAJvzTsc5mSpNeLY/YlGnsuDUdaX9plJ0ADnP54S2B4594zqQpgR
339isEjtnsillE3BXT8eA1fhhPIJplXtr4eUFtPnixU0F4QwHTejvAX1iYwf76ht
YxmN8e+6iB+d+gu58kLYP80Dw40xbxCVThK0WmvYGONdVJ6WL6bOyhd+ljcP5eRH
kwyCQWco7KwzbJ5I1OhONmVvc803R4MVmLnR5da71hGNDwh9jihzsqtWP8/Wpg7c
NPVqkZMaDeDuN2O98ph2LG22TK9R08ZAY0vgSXlWkM8riEpRSF+OHw8iRhVfudH0
XVuf2m5E5uwQSijoLTNUQiB62Z9xCs/bl0Es6h/NwFTaZzL43FVDN6ULkoLQrAQ+
4REXKzlZEtoRM8YMnnWfyfc+GMRIV64hcIHZeupBDlzspXLPctg=
=yjML
-----END PGP SIGNATURE-----

--mPBHisLrE5ffBP+x--
