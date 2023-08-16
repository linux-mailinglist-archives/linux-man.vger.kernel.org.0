Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AF71A77DF9A
	for <lists+linux-man@lfdr.de>; Wed, 16 Aug 2023 12:50:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233585AbjHPKtv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 16 Aug 2023 06:49:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38552 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244166AbjHPKt0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 16 Aug 2023 06:49:26 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2EBF92D63
        for <linux-man@vger.kernel.org>; Wed, 16 Aug 2023 03:49:06 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id DF28C66536
        for <linux-man@vger.kernel.org>; Wed, 16 Aug 2023 10:47:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9A986C433C7;
        Wed, 16 Aug 2023 10:47:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692182875;
        bh=9kOlQVZzbuMKJqC5Xzebde6ePSv7JaldESQ9lmbmqkc=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=XoJHOfd7uwA8OoFD9hWUI6FM3s5p2pqurqWQpVLB7mnqgucvysxyIrhDdQbDn2ovD
         +9/GB8gqMDNMGzz0bRfmjuLNvBkeDG/cWcQ7DnpT1zJYNMU2hOiLuF0rZUaYmB2klM
         HrEpkZ5ZPXxpvJXCAMOJ5yuEFjRaVR3fEqLV1hGfx4epg/Q9Fo0MbsEb747GYDr6aZ
         S3d5o3EXlOt5fwNASz80YQs31RpJgRQc98o+RVEDTTIWBmIWEcZRpYAx11V59r3PEl
         3JZSQW1eG9r6W/p/Z2u084vyvwUMBDm2Egdw5P494hq2qbtgIJjpKvf6yYJtCXhE0b
         F3igGNMhhv15A==
Message-ID: <023f19a9-1094-349a-8a1e-b2f017c3c812@kernel.org>
Date:   Wed, 16 Aug 2023 12:47:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH v3 2/2] man*/: ffix (migrate to `MR`)
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
References: <20230814001821.cjh5qrmqrrdks3u4@illithid>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230814001821.cjh5qrmqrrdks3u4@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0TkyuYx3jZIjeXLz9jlgbeud"
X-Spam-Status: No, score=-7.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------0TkyuYx3jZIjeXLz9jlgbeud
Content-Type: multipart/mixed; boundary="------------w5ltZgq2DcGJPdaaXah3msQT";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
Message-ID: <023f19a9-1094-349a-8a1e-b2f017c3c812@kernel.org>
Subject: Re: [PATCH v3 2/2] man*/: ffix (migrate to `MR`)
References: <20230814001821.cjh5qrmqrrdks3u4@illithid>
In-Reply-To: <20230814001821.cjh5qrmqrrdks3u4@illithid>

--------------w5ltZgq2DcGJPdaaXah3msQT
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Branden,

On 2023-08-14 02:18, G. Branden Robinson wrote:
> Use the man(7) macro `MR`, new to groff 1.23.0, instead of font style
> alternation macros to mark up man page cross reference.
>=20
> Depending on your configuration of groff man(7), this change may also
> alter the typeface that is used to mark up man page topic names (that
> is, the "ls" in "ls(1)".  groff by default sets these italics (which
> often appear underlined on terminals), in concord with the original AT&=
T
> Unix troff man(7) implementation in 1979.  A motivational excursus is
> available.[1]  To change this typeface selection, see the end of this
> commit message.
>=20
> Background (from the groff 1.23.0 release announcement and "NEWS" file)=
:
>=20
> o The an (man) macro package supports a new macro, `MR`, intended for
>   use by man page cross references in preference to the font style
>   alternation macros historically used.  Where before you would write
>     .BR ls (1).
>   or
>     .IR ls (1).
>   you should now write
>     .MR ls 1 .
>   (the third argument, typically used for trailing punctuation, is
>   optional).  Because the macro semantically identifies a man page, it
>   can create a clickable hyperlink ("man:ls(1)" for the above example)
>   on supporting devices.  Furthermore, a new string, `MF`, defines the
>   font to be used for setting the man page topic (the first argument to=

>   `MR` and `TH`), permitting configuration by distributions, sites, and=

>   users.
>=20
>   Inclusion of the `MR` macro was prompted by its introduction to
>   Plan 9 from User Space's troff in August 2020.  Its purpose is to
>   ameliorate several long-standing problems with man page cross
>   references: (1) the package's lack of inherent hyperlink support for
>   them; (2) false-positive identification of strings resembling man pag=
e
>   cross references (as can happen with "exit(1)", "while(1)",
>   "sleep(5)", "time(0)" and others) by terminal emulators and other
>   programs; (3) the unwanted intrusion of hyphens into man page topics,=

>   which frustrates copy-and-paste operations (this problem has always
>   been avoidable through use of the \% escape sequence, but cross
>   references are frequent in man pages and some page authors are
>   inexpert *roff users); and (4) deep divisions in man page maintenance=

>   communities over which typeface should be used to set the man page
>   topic (italics, roman, or bold).
> [...]
> o The an (man) macro package can now produce clickable hyperlinks withi=
n
>   terminal emulators, using the OSC 8 support added to grotty(1) (see
>   below).  The groff man(7) extension macros `UR` and `MT`, present
>   since 2007, expose this feature.  At present the feature is disabled
>   by default in `man.local` pending more widespread recognition of OSC =
8
>   sequences in pager programs.  The package now recognizes a `U`
>   register to enable hyperlinks in any output driver supporting them.
>=20
>   Use a command like
>     printf '\033]8;;man:grotty(1)\033\\grotty(1)\033]8;;\033\\\n' | mor=
e
>   to check your terminal and pager for OSC 8 support.  If you see
>   "grotty(1)" and no additional garbage characters, then you may wish t=
o
>   edit "man.local" to remove the lines that disable this feature.
>=20
> When the text of all Linux man-pages documents (excluding those
> containing only `so` requests) is dumped, with adjustment mode 'l'
> ("-dAD=3Dl") and automatic hyphenation disabled ("-rHY=3D0") before and=

> after this change, there is no change to rendered output.
>=20
> When automatic hyphenation is enabled, this change suppresses
> hyphenation of approximately 3,100+ man page names when cross reference=
d
> when using the default terminal width of 80 (meaning that the text
> is formatted for a line length of 78 for historical reasons).
>=20
> I prepared this change with the following GNU sed script.
>=20
> \# Handle simplest cases: ".BR foo (1)" and ".IR foo (1)".
> s/^.[BI]R \(\\%\)*\([.@_[:alnum:]\\-]\+\) (\([1-9a-z]\+\))$/.MR \2 \3/
> \# Handle case: trailing punctuation, as in ".IR foo (1),".
> s/^.[BI]R \(\\%\)*\([.@_[:alnum:]\\-]\+\) (\([1-9a-z]\+\))\([^[:space:]=
]\+\)$/.MR \2 \3 \4/
> \# Handle case: leading punctuation, as in ".RI ( foo (1)".
> s/^.R[BI] \(\\%\)*\([^[:space:]]\+\) \([.@_[:alnum:]\\-]\+\) (\([1-9a-z=
]\+\))\([^[:space:]]\+\)$/\\%\2\\c\n.MR \3 \4 \5/
> \# Handle case: 3rd+ arguments or trailing comments.  This case is rare=

> \# and will require manual fixup if there are 4+ arguments to MR.  Use
> \# groff -man -rCHECKSTYLE=3D1 to have them automatically reported.
> s/^.[BI]R \(\\%\)*\([.@_[:alnum:]\\-]\+\) (\([1-8a-z]\+\))\( .*\)/.MR \=
2 \3\4/
>=20
> Confirmed no errors arising in `MR` argument count as follows.
>=20
> $ groff --version | head -n 1
> GNU groff version 1.23.0
> $ groff -z -t -rCHECKSTYLE=3D1 -m andoc -T utf8 -P -cbou \
>   $(grep -L '^\.so ' man*/* | sort) 2>&1 | grep MR | grep . \
>   || echo "IT'S CLEAN"
> IT'S CLEAN
>=20
> To get the man page topic names to render in bold again as the Linux
> man-pages have historically done, set the *roff "MF" string to "B".
>=20
> 1.  man-db man(1) supports an environment variable for passing options

These seem to be alternatives.  For alternatives, I prefer letters
instead of numbers.  See man-pages(7):

$ MANWIDTH=3D72 man man-pages | sed -n '/^   Lists/,/^   [^ ]/p' | head -=
n-1;
   Lists
     There are different kinds of lists:

     [...]

     Ordered lists
            Elements are preceded by a number in parentheses (1), (2).
            These represent a set of steps that have an order.

            When there are substeps, they will be numbered like (4.2).

     [...]

     Alternatives list
            Elements are preceded by a letter in parentheses (a), (b).
            These represent a set  of  (normally)  exclusive  alterna=E2=80=
=90
            tives.

     [...]

     There should always be exactly 2 spaces between the  list  symbol
     and  the  elements.   This  doesn=E2=80=99t apply to "tagged paragra=
phs",
     which use the default indentation rules.


>     to the formatter.
>=20
>       MANROFFOPT=3D"-dMF=3DB"
>=20
>     You might wish to set this in your shell startup file and export th=
e
>     variable.
>=20
> 2.  When rendering pages directly with groff, nroff, or troff, you can
>     set the string on the command line.
>=20
>       nroff -dMF=3DB -mandoc man1/getent.1
>=20
> 3.  You can set this string in groff man(7)'s site-local configuration
>     file.  Its location depends on groff's build-time parameters, but i=
s
>     documented in the groff_man(7) page.  On Debian-based systems, it's=

>     in /etc/groff/man.local.  Add the following line (with no leading
>     spaces).
>=20
>       .ds MF B\"
>=20
>    (The trailing '\"' is a safety measure.[2])
>=20
> [1] https://lore.kernel.org/linux-man/20230803175738.dqpxy3dirl3bpznv@i=
llithid/T/#u
> [2] https://www.gnu.org/software/groff/manual/groff.html.node/Strings.h=
tml

You missed showing proof that this patch is good.  I included your old
tests in the commit message in the 'MR' branch.  Please perform them
and show them here.

Here's what I included:

    On 2023-08-01 00:50, G. Branden Robinson wrote:
    > I used a couple of scripts.
    >
    >   $ cat ATTIC/dump-pages.sh
    >   #!/bin/sh
    >
    >   pages=3D$(grep -L '^\.so ' man*/* | sort)
    >   groff -t "$@" -m andoc -T utf8 -P -cbou $pages
    >
    >   $ cat ATTIC/dump-pages-left-adjustment-no-hyphenation.sh
    >   #!/bin/sh
    >
    >   pages=3D$(grep -L '^\.so ' man*/* | sort)
    >   groff -t -dAD=3Dl -rHY=3D0 -m andoc -T utf8 -P -cbou $pages
    >
    > And here's how I ran them.
    >
    >   sh ATTIC/dump-pages.sh >| DUMP1
    >   sed -i -f ./ATTIC/MR.sed $(grep -L '^\.so ' man*/*)
    >   sh ATTIC/dump-pages-left-adjustment-no-hyphenation.sh >| DUMP2
    >   diff -U0 -b DUMP1 DUMP2 | less -R
    >
    > That confirmed that there were "no changes" (with the caveat noted
    > above).
    >
    >   sh ATTIC/dump-pages.sh >| DUMP2
    >   diff -U0 -b DUMP1 DUMP2 | less -R
    >   diff -U0 -b DUMP1 DUMP2 | wc -l
    >
    > I used these to eyeball and measure whether there were any formatti=
ng
    > changes even with default adjustment and hyphenation enabled.  It s=
howed
    > me _tons_ of man page names no longer getting broken (and hyphenate=
d)
    > across lines, and nothing else that I noticed.
    >
    > With the previous empty diff in hand, I decided that I hadn't regre=
ssed
    > the text of the pages.

>=20
> Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>

    [Jakub has concerns that groff-1.23.0 was released too recently]
    Nacked-by: Jakub Wilk <jwilk@jwilk.net>


Cheers,
Alex

> ---
>=20
> v3: Add notice about expected typeface change in man page cross
>     references.  Explain how to configure it.
>=20
> [Alex: I'm sending this out via Neomutt, and it _says_ this part of the=

> message is "text/plain; us-ascii".  If you receive it quoted-printable,=

> be advised that the equals signs in the foregoing are likely corrupted.=
]

If I open the email source in Thunderbird, I see things like this:

      MANROFFOPT=3D3D"-dMF=3D3DB"

I wouldn't have expected neomutt(1) to fuck up emails like that!
I mean, I assume that in Thunderbird, but not in neomutt(1).
Could you send attached an encrypted file that no program has the
right to mess?  (I still want the inline message, for discussion,
but I'll apply from the encrypted one.)

Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------w5ltZgq2DcGJPdaaXah3msQT--

--------------0TkyuYx3jZIjeXLz9jlgbeud
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTcqVEACgkQnowa+77/
2zKCcw//Yy0UBofhUl8bKVGHUi2Bu358J0jG78xyeyTH02UnhX29PUGsIDFCUSpd
7i0SWXDvYtq3Mwa1u4o2C+aNtPCAlJ6xplpnd1QFdGbYTnUk9ICnvD2ouCyZkzqX
zHBvcOGpYf2kfwoB025M+4bjE8OkI7vdXq03bpHjX1QtNjYFRccmr+cxyvt/w3qt
uUpuYD3+zvDr/8aj+pFbuC18RskLSboVajCYcdf/1TwFp6DTF+Wnb7AnYuZU89Aq
uDx9qQsWJCres6x1keSg64o2jdZLSuUZSQwgr8SSBvQIJIGl+vZRuTaeBEwMBRBi
Fv622/zjBVcHgGoHuI8SVZzp4mIYbXUSHHCv4wT3EZho39Vsyy5umbLk1twAu3KP
l6J+h4fBHEssf1C5UJ51vmf4jyNyvLaEvb/IcZqxNIVGclZR1wchmhNHatIJSHLf
5p6HqGyd0jJh1h9e/gWsMT1v2UkcQRhNtMn3GsF2YTqPyjvYQxd4wJT5ZFEEy99W
quic240QGuIWmt7Vhy0iC8+dqPX3mev06cglP3x3hl4buMvG4s7UrcoUSO0wwR9K
4hMZdsfA2AD5Wi0ZVz0tuuVeQSDfcisIZk7gHrR2Cieg7kBFdTzHATrXMI3gKv/r
YZde1LRErA46ep1m/UKoM77z7/DOcaq4Ub3Oq8raBVYm2ikh3nA=
=Fwrp
-----END PGP SIGNATURE-----

--------------0TkyuYx3jZIjeXLz9jlgbeud--
