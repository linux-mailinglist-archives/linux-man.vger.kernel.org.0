Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 18A7976A658
	for <lists+linux-man@lfdr.de>; Tue,  1 Aug 2023 03:31:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229510AbjHABbT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 31 Jul 2023 21:31:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36812 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231178AbjHABbT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 31 Jul 2023 21:31:19 -0400
Received: from mail-oa1-x32.google.com (mail-oa1-x32.google.com [IPv6:2001:4860:4864:20::32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF0321725
        for <linux-man@vger.kernel.org>; Mon, 31 Jul 2023 18:31:16 -0700 (PDT)
Received: by mail-oa1-x32.google.com with SMTP id 586e51a60fabf-1bba254a7d4so3915152fac.2
        for <linux-man@vger.kernel.org>; Mon, 31 Jul 2023 18:31:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690853476; x=1691458276;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=NuZvAc+OnF4YtUrnNZqpiP55zv2QzMA9JtELv81TK/g=;
        b=XUdhPI8goGhBm02Gps4GcreHX4AJfTSLsSHp3ets+Wnw8yN4DzK3kjSvPOG+EPGqoa
         cwlkiRqDYvRB/HKdeLv2nEg4Xm9IUNLIuxOOKWcVrM/U+mTZDItWX4CxE2YFUFadsgcD
         2fnFlBbddIATL2tAZcVN94ayq/xLyYF2gGk5mYU4xDOkqK4kTeu0nkzXbbgCdELa7Xku
         r84GOw2z8wH1Tu1rDljudcyGofRoaWpnhKCLOyqSWLqdrXiv+TMbalZVLo2ShobVIKHc
         r4lUMdetIvZcXVl4OCZ66TBdPRYf/nXkgiiqGqUkNxuVrBm8wkD/5yOz6t3DxsgvJ86Y
         IiyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690853476; x=1691458276;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NuZvAc+OnF4YtUrnNZqpiP55zv2QzMA9JtELv81TK/g=;
        b=gbRDqrna1clIOo+qALHxbmMuqb8T3MFUxZyZ3wQW9RMWxx2LkawEjEMK0rjGd3QSvn
         lBErKFac6Owk1PoBk3k7f4KRN+LBMjoC8LlerR+YqHCq1i9WDgKAeZX8NMskDerFQY9E
         OCpi35simDdJmIwVlTfywOacT39RRgm3TlHPbpyU4C7cyyA8R3afWm6j/l53bQKhlxcu
         7TsjJL7q8qLPSin3wbbpEszMIR2wL/uMwT6NezbeuoG2Fh9w5pdVdsJVyxPP0Hvzy2/f
         vL9JCVLx9NSOCSprIubUndskJo1qDmUwdcEvcXI95ggMOfXkqyK9s5CYJjHCRwH8CzU4
         0C7Q==
X-Gm-Message-State: ABy/qLYeTjHKFBsFzljUIsT/GTHwhWkxL7BlxnsXJtzJVTyuGRoz0QYr
        K72n979VO3RJImJSmWDUH27suEGWL+k=
X-Google-Smtp-Source: APBJJlFsFdq7oMVwJQ3Zhs2NS/AnpsmnyGmiFP8ydHC09QqUpwekcXQJGQKq74JuLqZb6G1jrITo8A==
X-Received: by 2002:a05:6870:c8a8:b0:1bb:ba55:3fdd with SMTP id er40-20020a056870c8a800b001bbba553fddmr11461592oab.7.1690853475878;
        Mon, 31 Jul 2023 18:31:15 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id m28-20020a0568301e7c00b006b8a0c7e14asm4580154otr.55.2023.07.31.18.31.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 18:31:15 -0700 (PDT)
Date:   Mon, 31 Jul 2023 20:31:13 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man*/: ffix (migrate to `MR`)
Message-ID: <20230801013113.gw74e54tww7mrprf@illithid>
References: <20230731175251.67rgt2r4sweutnay@illithid>
 <20230731221641.pbkcrdx52gyy4xfz@jwilk.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="52vbdwqp6gikeyh5"
Content-Disposition: inline
In-Reply-To: <20230731221641.pbkcrdx52gyy4xfz@jwilk.net>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--52vbdwqp6gikeyh5
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Jakub,

At 2023-08-01T00:16:41+0200, Jakub Wilk wrote:
> * G. Branden Robinson <g.branden.robinson@gmail.com>, 2023-07-31 12:52:
> > Use the man(7) macro `MR`, new to groff 1.23.0,
>=20
> Given that this version of groff was released approximately
> yesterday=B9, this is very premature.
>=20
> NACK from me.
>=20
> =B9 More precisely, about a month ago.

5 July UTC, to be (a little) more precise.

Linux man-pages release scheduling is Alex's prerogative, not mine.  He
asked me (a long time ago) to deliver this after groff 1.23.0 was
released.  That is what I have tried to do.

> > When the text of all Linux man-pages documents (excluding those
> > containing only `so` requests) is dumped, with adjustment mode 'l'
> > ("-dAD=3Dl") and automatic hyphenation disabled ("-rHY=3D0") before and
> > after this change, there is no change to rendered output.
>=20
> That's not what I'm seeing with Debian groff 1.22.4-10 (which seems to
> have .MR backported).

Not exactly.  It has a compatible stopgap measure to keep Debian stable
=66rom going wrong in the event that any package using `MR` in its man
pages gets backported to bookworm (Debian 12).

https://salsa.debian.org/debian/groff/-/merge_requests/4

groff 1.22.4 man(7) does not support the `MF` string (see below).  That
could be backported too, but there seems no point before there is a
concrete need.

> After applying the patch, the man page references are typeset in
> italics,

For great justice!  (See below.)

> which is ugly

See my recent exchanges with Lennart Jablonka on this list.

> and against man-pages(7) recommendations.

Not all man pages are bound by man-pages(7) style suggestions.

Further, /etc/groff/man.local is a conffile, and assuming it's stock (to
simplify the pattern matching below), you can do this:

sed -i -e 's/IR/BR/' /etc/groff/man.local

And that way, even if someone backports groff 1.23.0 itself to Debian
stable, you will not be disturbed by the choice of font for man page
cross references.

It might be helpful to recap the `MR` feature description from the
1.23.0 NEWS file and release announcement.  One of its objectives is to
_stop_ prescribing a typeface for these things, though of course it has
a default, as it must.

o The an (man) macro package supports a new macro, `MR`, intended for
  use by man page cross references in preference to the font style
  alternation macros historically used.  Where before you would write
    .BR ls (1).
  or
    .IR ls (1).
  you should now write
    .MR ls 1 .
  (the third argument, typically used for trailing punctuation, is
  optional).  Because the macro semantically identifies a man page, it
  can create a clickable hyperlink ("man:ls(1)" for the above example)
  on supporting devices.  Furthermore, a new string, `MF`, defines the
  font to be used for setting the man page topic (the first argument to
  `MR` and `TH`), permitting configuration by distributions, sites, and
  users.

  Inclusion of the `MR` macro was prompted by its introduction to
  Plan 9 from User Space's troff in August 2020.  Its purpose is to
  ameliorate several long-standing problems with man page cross
  references: (1) the package's lack of inherent hyperlink support for
  them; (2) false-positive identification of strings resembling man page
  cross references (as can happen with "exit(1)", "while(1)",
  "sleep(5)", "time(0)" and others) by terminal emulators and other
  programs; (3) the unwanted intrusion of hyphens into man page topics,
  which frustrates copy-and-paste operations (this problem has always
  been avoidable through use of the \% escape sequence, but cross
  references are frequent in man pages and some page authors are
  inexpert *roff users); and (4) deep divisions in man page maintenance
  communities over which typeface should be used to set the man page
  topic (italics, roman, or bold).

Regards,
Branden

--52vbdwqp6gikeyh5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTIYFgACgkQ0Z6cfXEm
bc4PRQ//bZttVbSHRc661hrBBAgRHBAD5CcAnD6ZAI2r58xAgP21Nocd076j1UBX
aOh934i46ibMgcG4Sg0dDrMeAzykY32NagNig9x8v37fUsjVK5xR+V6KqtXRSfug
+KP5zmXgqC5oEcV34l6zBj3ZMVkF7L7uS61cdMe4THKa16LpYe/EWp4uziTJPn3o
gf3SzM0Due3uzklPOZ2/8mn38OUic5hkIaHjS/+y9oOTJIV2Z4A9FmqLqJb3GlVF
yNJfju8CP/YzwFzDZNrOS2bSxXZZxijIoVlAmuBEoKuPzbNkKocfWfutW2hz/J4R
0DW9/5Ad+NmoX+A5oqdNQfYj/KOBNuF24rBr+D4Mhj0ZgN7v5x4NRQ8VMNeHVaun
PiA870z0B7StqGdA0o/WtPfAKFdc/DDnsLrzCfvZCMrCkZkwUuqezlG0Pl+h4Cfl
VGpf+OP5JEtuHhD8pLnHSbJ3d6HKYqohDuiqCFsW2pSUoMirgTUMB6d8JWxpw8yQ
AFYlCz9N10XSBV9bzpsmuh9yvxDtnhPxeNyJeIQn+meVqBSZpMTM1zRiUqlbTKFd
8da7m4wVrW9L/qbChD3lUmkTti+d9yepfYL6rHwJxqScUMZhG71FiPv/LghUB3Ui
ncjm/48eCQpsONlLPDg3ympfRo8i9i739MzrP/0oK92hosBm47U=
=oy/A
-----END PGP SIGNATURE-----

--52vbdwqp6gikeyh5--
