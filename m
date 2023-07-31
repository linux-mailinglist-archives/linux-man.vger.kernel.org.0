Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F3FBD76A45E
	for <lists+linux-man@lfdr.de>; Tue,  1 Aug 2023 00:50:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231786AbjGaWu2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 31 Jul 2023 18:50:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231207AbjGaWuX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 31 Jul 2023 18:50:23 -0400
Received: from mail-oo1-xc30.google.com (mail-oo1-xc30.google.com [IPv6:2607:f8b0:4864:20::c30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D9251BD9
        for <linux-man@vger.kernel.org>; Mon, 31 Jul 2023 15:50:19 -0700 (PDT)
Received: by mail-oo1-xc30.google.com with SMTP id 006d021491bc7-56c7eb17945so1563460eaf.2
        for <linux-man@vger.kernel.org>; Mon, 31 Jul 2023 15:50:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690843819; x=1691448619;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=LqJ+Yn6HX1YK85n/jQR11UGnM6iV1ICshCjTSIQXWMg=;
        b=dM+2FrWPHAZgP5FYT6eHZ4og2X44U9lmmyWFjB/3MLtZl5O1EpdPEj33LAIzNBlN+t
         300Mwlvhz6R8fQT6tzgcneLVqjvQfrY/LJmrzrBoIMULWLDdLU5IIrwN+sUxhkpIUPrN
         bpSyPg9iiq+CPqFTRxHuT/3vA58/vtXeDV1XR1WfSYN1bBvMsH/+UTizkPSxTlw/NTPU
         gDuVPxibPv7Nh7GXRBDolr01r7o8vvf4G380hhkXpNMo6GpeuPByrlmXipoaWVaLfIlW
         IgNT1V6VHVdRwY9P1mXVsz3Z6XPu+wucqZjXhJhlOzSdSVltUWVddupPnxfUJxJAr3RP
         EHGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690843819; x=1691448619;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LqJ+Yn6HX1YK85n/jQR11UGnM6iV1ICshCjTSIQXWMg=;
        b=MPBTVRRa9jPZyCtIwrO+LUhfZhzPBVyTwPBHDv1LI3040S6tJBtovPopwQvPH75PAT
         EnK+RXMv49GjYdbB5Zl5uVac2Y/XpWThRY3onDqk8ZXkx/z4u9MrePhyfT5lkEjCs6EW
         D2OWpKBlRs44m3bOHeO3U35vkbn34vvE+Skm/JfDkL09BakIGRN1btg78VlJ38EmGoAk
         qbYnswWAZtdYKDVAh1I6xTsZYV62eIFmmqakGhBkbwUNWJI3GFzrE3ts5OFgg4Whr/w4
         OZYSjsAF6T8DPiWGmRYwj/6JcvL8mK9MddH5ev3cStQ0ICj1P0cWv1H0hmscpWfjh71v
         Y8Rg==
X-Gm-Message-State: ABy/qLaPd2s5ggZDiMm/suFuQbVEdjCPz2Zumt7OtvqhoLtloBcbHwiz
        ow5YInGxz/sXLWWO/Fo1V5keJdFC7lI=
X-Google-Smtp-Source: APBJJlF0oawU1siXjkumSeyfKYMH8+rFA5P6dX4tcXfNYYXB0fW7SIWusQOLbeR8A7620GDoJ0GAnw==
X-Received: by 2002:a4a:6506:0:b0:56c:e747:4609 with SMTP id y6-20020a4a6506000000b0056ce7474609mr1599942ooc.7.1690843818742;
        Mon, 31 Jul 2023 15:50:18 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id u19-20020a4a9e93000000b00566270e616dsm4711259ook.38.2023.07.31.15.50.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 15:50:18 -0700 (PDT)
Date:   Mon, 31 Jul 2023 17:50:16 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man*/: ffix (migrate to `MR`)
Message-ID: <20230731225016.4fxao4bn4ntmnx35@illithid>
References: <20230731175251.67rgt2r4sweutnay@illithid>
 <a57068eb-83dc-5018-281d-8c122b6ccb6e@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="2kunh3cr5trerypm"
Content-Disposition: inline
In-Reply-To: <a57068eb-83dc-5018-281d-8c122b6ccb6e@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--2kunh3cr5trerypm
Content-Type: multipart/mixed; boundary="ylx2k7gumookfbxh"
Content-Disposition: inline


--ylx2k7gumookfbxh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2023-07-31T23:47:50+0200, Alejandro Colomar wrote:
> > When the text of all Linux man-pages documents (excluding those
> > containing only `so` requests) is dumped, with adjustment mode 'l'
> > ("-dAD=3Dl") and automatic hyphenation disabled ("-rHY=3D0") before and
> > after this change, there is no change to rendered output.
>=20
> It would be interesting to see a script that corroborates the above
> paragraph.  It might help other projects that may want to migrate to
> MR.

Sure.  I used a couple of scripts.

  $ cat ATTIC/dump-pages.sh
  #!/bin/sh

  pages=3D$(grep -L '^\.so ' man*/* | sort)
  groff -t "$@" -m andoc -T utf8 -P -cbou $pages

  $ cat ATTIC/dump-pages-left-adjustment-no-hyphenation.sh
  #!/bin/sh

  pages=3D$(grep -L '^\.so ' man*/* | sort)
  groff -t -dAD=3Dl -rHY=3D0 -m andoc -T utf8 -P -cbou $pages

And here's how I ran them.

  sh ATTIC/dump-pages.sh >| DUMP1
  sed -i -f ./ATTIC/MR.sed $(grep -L '^\.so ' man*/*)
  sh ATTIC/dump-pages-left-adjustment-no-hyphenation.sh >| DUMP2
  diff -U0 -b DUMP1 DUMP2 | less -R

That confirmed that there were "no changes" (with the caveat noted
above).

  sh ATTIC/dump-pages.sh >| DUMP2
  diff -U0 -b DUMP1 DUMP2 | less -R
  diff -U0 -b DUMP1 DUMP2 | wc -l

I used these to eyeball and measure whether there were any formatting
changes even with default adjustment and hyphenation enabled.  It showed
me _tons_ of man page names no longer getting broken (and hyphenated)
across lines, and nothing else that I noticed.

With the previous empty diff in hand, I decided that I hadn't regressed
the text of the pages.

If there are further sanity checks we can apply, I'm open to
suggestions.

Since you had me looking at my shell history, I'll share that I did a
"git co ." (co =3D alias for "checkout") 18 times in the course of
developing MR.sed.  Those drove most of my recent patch submissions
immediately prior to this one.  I could have done 18 more without
fatiguing (albeit not necessrily without frustration with myself for not
getting my sed right).  But that's the beauty of sed, and
Bash/readline's "reverse-search-history" and "operate-and-get-next"
features.

As it turned out, my sed was pretty good, except for the missing use
case you identified, and my fix for which worked on the first try.  The
irregularity of the page inputs was the tricky bit.

At one point I had a fearful episode that I'd misdesigned `MR` for one
scenario, and much like the Master being terrorized by the Keller
Machine, I had visions of the Doctor (Ingo Schwarze) laughing at me and
telling me he told me so and winning the whole world over to mdoc(7) in
one stroke.  But it was fine (attached).

There are _still_ some `ad` requests scattered around (outside of tbl(1)
text blocks), but I didn't go after those because they weren't in the
way of my objective.  Eventually it'd be good to scrub those too.

> > I prepared this change with the following GNU sed script.
> >=20
> > \# Handle simplest cases: ".BR foo (1)" and ".IR foo (1)".
>=20
> What I do to avoid git messing with these comments is to write a
> leading space.  For git, only '#' in column 1 are special.  Since most
> compilers and interpreters allow a space before a commented line, a
> leading space is fine.

Ahh.  A leading backslash is the only workaround I've ever noticed.

> I've edited the commit message to have spaces, so that it's directly
> pastable into a MR.sed script.  Oh, and I included "$ cat MR.sed;" in
> the commit message; I couldn't not do it.  :)

No worries. :)

> I've applied the patch (or rather, the script), but won't push it yet.
> If you send a run of commands that prove no differences before and
> after, I'll amend the commit message with it.

Please do verify it yourself with the tools above (or better ones).  I'm
well aware that this is a huge change that can make people nervous.

Regards,
Branden

--ylx2k7gumookfbxh
Content-Type: application/x-troff-man
Content-Disposition: attachment; filename="try-to-break-MR.man"
Content-Transfer-Encoding: quoted-printable

=2ETH foo 1 2023-07-31 "groff test suite"=0A.SH Name=0Afoo \- frobnicate a =
bar=0A.SH Description=0AThe time has come to talk of many things\[em]namely=
,=0Aman page cross references=0A(like \%(\c=0A.MR ls 1 )=0Athat might get s=
crewed up by the hyphenation control escape sequence,=0A.RB \[lq] \[rs]% \[=
rq].=0A.=0A.P=0ANow let's try=0A.MR pneumonoultramicroscopicsilicovolcanoco=
niosis 1 .=0A.=0A.P=0AFormat this page with=0A.RB \[lq] "nroff \-rLL=3D30n =
\%\-mandoc" \[rq]=0Ato attempt.=0A
--ylx2k7gumookfbxh--

--2kunh3cr5trerypm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTIOqEACgkQ0Z6cfXEm
bc5D/BAAkc9LsPE1o02eGwA+FWDlR3JxSbCqg6cMS8A2CHCLni8/7rVGqinmmian
DdSoltIwQ1jnnsFm417GZx/zrnQNViIEadBzqcQYxRd7BQPOYM6SarUq6GuInbHA
KTXKAfLcs4wE7+LUkNHE+fUnmxIV1/450uLIoDkVW/iaC2Ro42NY4R/Sh5k5phjH
1jzG/u2zDBtc6NbzLFEqn+hZvMgaAO7RxEN4KKlSsFteZ2r48V30QU2bn1VVa2Gn
8NV6G9Cq5gUzyvqkhGcxPToPCeiNxXwIKaK58Zg/2j+VqUYWJZdtnKJHXRjOFjzc
w1u+4h2c8bbmbLZlhV7s9R92iq2cLvRqitfY9HSYusM4NKEPhB+eviLDc6ULxPOi
+oltZxUcQwpJHDwESlJBqHxEluomSNTaYhjX1UTJILxlmOOZhBT81IUI1TecFkQS
csttfTwyqEmrot5MIUVIEM2FK3Q2BBQkIWcAsJoBAihZqmkFryPJmxwQNtut0wL8
Q4mj7MCrPMJpXHEGLK4SrhlZEylYVMisRSeyfjqEfnpmaqTzpgI+ToywTIbXIOuO
8yglw60wxrMnun3suOJZmqkqerlRwXh1TnR0HzbLykE59NCBH4cSjtzT4lDJJKiL
sqvUs3ZygNcyxt8mBnLxSQ6Jh61P0bq6Sl/tRDPVTr2OFbwpTDk=
=D42v
-----END PGP SIGNATURE-----

--2kunh3cr5trerypm--
