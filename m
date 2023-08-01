Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4C11376B6F8
	for <lists+linux-man@lfdr.de>; Tue,  1 Aug 2023 16:13:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234073AbjHAONa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 1 Aug 2023 10:13:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38174 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234024AbjHAONV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 1 Aug 2023 10:13:21 -0400
Received: from mail-oo1-xc29.google.com (mail-oo1-xc29.google.com [IPv6:2607:f8b0:4864:20::c29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9BB05127
        for <linux-man@vger.kernel.org>; Tue,  1 Aug 2023 07:12:53 -0700 (PDT)
Received: by mail-oo1-xc29.google.com with SMTP id 006d021491bc7-565db4666d7so4274073eaf.0
        for <linux-man@vger.kernel.org>; Tue, 01 Aug 2023 07:12:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690899173; x=1691503973;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3kOx/CeWbK0XAPITmTZqifDuwKDDetL2aIEWt0HWgz4=;
        b=J1AXU0s8RibNb8A7U5nR/zVt7Ji2BM4cSMGE1eLU1hJqiOv/Z61OB48KbkueX31udG
         J8ws0AwBMme4HdWUaT7/oFrP1pTTVHEg89wvXr7EE5Rh/upTNkh1C4H7GWhLb0kYe6mf
         x1xAiqra/auvm+nNbWSV1VQDVSFcDQDzCBblZVc1IqiF7cIdbg00zqU7ePiZGohHMMXh
         b6Uj3maHY1D4DwKPBaOLpIMcrGdh2N2+1+KXJo7QpOgJ+dJsgpuJ9I82adOYnJ+w+Nxc
         YNt48K1S2IjsnxdS/oLYEO36B8Q+Th3zBXgyctNbOz8InkjRrRoxZ3wug+MOmn0fIqUg
         Hv8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690899173; x=1691503973;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3kOx/CeWbK0XAPITmTZqifDuwKDDetL2aIEWt0HWgz4=;
        b=gbOv9vDS5T0K4lWgHIAtE1PNueuXTYN2ej34e5KRNKNK5pG3Yxe8f1OqpoFYlH7hll
         BLtQgvVziOsOJaYE5xEy+/0L9ZMNLOGjvxD6P7teNNPkG5Z0qNYh67ctJ9BGP9F9BZBn
         j3b0L2oEonSynh+TFzWzb2DCFNCqRgJXrM7kPI+2q6HOWt4V1mgwNF0/Leq4p5VRsizq
         g4EGh1Z45e5spoRwcW4XkA1ZMO/9g+7oe9739Wt4FT15+kxo6emsTPm4vf16TaeTaE9t
         AYXDf10btnfiRdMMAUPJqeTePwdCJtJMnmqAOv/lpwK7BcMEw5g9nVppkP9sw5KfBQ85
         XiVQ==
X-Gm-Message-State: ABy/qLbuNSipWaNirxd8cEaz1+a3hsw2a/AaSGAqNSovAP+uLrsMeA10
        u20KTcsdso5kmWRP1L0IRR/laN2BsRA=
X-Google-Smtp-Source: APBJJlH3t9eSRvh5BYYbRwyJTQKIQ8AQfG39O6JZxQAis6+ZwIqiwBZuQz4XRVVb8gTu5/B7TTOIXw==
X-Received: by 2002:a4a:850c:0:b0:565:9e41:85d8 with SMTP id k12-20020a4a850c000000b005659e4185d8mr12309793ooh.6.1690899171838;
        Tue, 01 Aug 2023 07:12:51 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id 4-20020a4a1a04000000b00565d41ba4d0sm5395089oof.35.2023.08.01.07.12.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Aug 2023 07:12:51 -0700 (PDT)
Date:   Tue, 1 Aug 2023 09:12:48 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     Jakub Wilk <jwilk@jwilk.net>, linux-man@vger.kernel.org,
        groff <groff@gnu.org>
Subject: Re: [PATCH v2] man*/: ffix (migrate to `MR`)
Message-ID: <20230801141248.bo5sujjwjfob6pgj@illithid>
References: <20230731175251.67rgt2r4sweutnay@illithid>
 <20230731221641.pbkcrdx52gyy4xfz@jwilk.net>
 <20230801013113.gw74e54tww7mrprf@illithid>
 <4b44eef1-4e9b-8f03-8cf7-6ca9e2f5dea5@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="cwyj7x3gymo2r6tn"
Content-Disposition: inline
In-Reply-To: <4b44eef1-4e9b-8f03-8cf7-6ca9e2f5dea5@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--cwyj7x3gymo2r6tn
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2023-08-01T15:35:10+0200, Alejandro Colomar wrote:
> [CC +=3D groff]
>=20
> Hi Jakub, Branden,
>=20
> On 2023-08-01 03:31, G. Branden Robinson wrote:
> > Hi Jakub,
> >=20
> > At 2023-08-01T00:16:41+0200, Jakub Wilk wrote:
> >> * G. Branden Robinson <g.branden.robinson@gmail.com>, 2023-07-31 12:52:
> >>> Use the man(7) macro `MR`, new to groff 1.23.0,
> >>
> >> Given that this version of groff was released approximately
> >> yesterday=C2=B9, this is very premature.
> >>
> >> NACK from me.
> >>
> >> =C2=B9 More precisely, about a month ago.
> >=20
> > 5 July UTC, to be (a little) more precise.
> >=20
> > Linux man-pages release scheduling is Alex's prerogative, not mine.
>=20
> I just made a new release, so that we have plenty of time for the next
> one.

I saw that, and thought, "ooh, that's a bit quick--surely he didn't..."

And no, you didn't (include the giant `MR` migration patch).

I trust the announcement didn't give Jakub a heart attack...

> I don't expect to make a new one in months.  :)

I can't cast stones about release frequency, that's for sure.

> > He asked me (a long time ago) to deliver this after groff 1.23.0 was
> > released.  That is what I have tried to do.
>=20
> Thanks!

A pleasure.  Not merely to promulgate my "baby", but also to get a lot
of that cargo-culty stuff around tables cleaned out of the Linux
man-pages.  Tidy man(7) sources make for happier documentation writers
who have an easier time getting what they want.

> > groff 1.22.4 man(7) does not support the `MF` string (see below).
> > That could be backported too, but there seems no point before there
> > is a concrete need.
> >=20
> >> After applying the patch, the man page references are typeset in
> >> italics,
> >=20
> > For great justice!  (See below.)
>=20
> Still I think this should be documented in our commit.  Would you
> please send a paragraph (and the position at which you'd place it)
> with which I can amend the commit?

Yes.  That was on oversight on my part; I was scrubbing out all font
changes (with "-P -cbou") because my concern was with unexpected changes
to adjustment and hyphenation.  The style change for man page topics
(from bold to italics) was a "known factor" (to me).

Also, I saw that some "=3D3D" quoted-printable ugliness got into the
commit message, buried inside groff command-line options where people
unaccustomed to writing them might not mentally screen out the noise.

Please double-check for that before pushing to kernel.org.

> >> which is ugly
> >=20
> > See my recent exchanges with Lennart Jablonka on this list.
> >=20
> >> and against man-pages(7) recommendations.
>=20
> Well, we should update those to use MR.

And man(7) too, I guess.  What do you think?

> Branden is right that italics is more appropriate.  He has defended
> that position very well, so I'll let him defend that point.  The
> conversation to which he referred was:
>=20
> <https://lists.gnu.org/archive/html/groff/2021-08/msg00034.html>

Yes.  That message includes Ingo's acknowledgement of my historical
analysis, which can be found in the parent message.

https://lists.gnu.org/archive/html/groff/2021-08/msg00023.html

But we had a fairly wide-ranging discussion, much of which will not be
of interest to someone who updates to man-pages 6.6.6 =F0=9F=A4=98, sees it=
alics
appearing where they had been accustomed to bold, and flies into a rage.

I reckon the virtuous thing to do would be to write an ms(7) article
about the history of cross reference styling in Unix man pages.  I
regret that my conjecture about _why_ the GNU/Linux community shifted
the style (VGA text mode limitations) remains unsupported by testimonial
accounts from people who deliberately made this change.

Maybe this change will attract the attention of those folks.  Even if
they get angry with me in the process, I'm willing to risk being called
out as the price of improving the historical record.  :)

> But we should document in the commit message that the MR default
> implies a behavior change in our pages.

Yes.  And it's not hard to offer MANROFFOPT=3D"-dMF=3DB" as an initial
workaround.  One could throw this into one's shell startup file, but
only man-db man(1) honors that variable.  The more systemic approach is
to edit the site configuration file for groff man(7).

Files
[...]
   /usr/share/groff/site-tmac/man.local
          Local changes and customizations should be put into this file.

(Debian symlinks this to "/etc/groff/man.local".)

groff_man_style(7) offers further suggestions for content, based
(mostly) on feedback we've often seen over the years.

            .\" Use narrower indentation on terminals and similar.
            .if n .nr IN 4n
            .\" Put only one space after the end of a sentence.
            .ss 12 0 \" See groff(7).
            .\" Keep pages narrow even on wide terminals.
            .if n .if \n[LL]>78n .nr LL 78n
            .\" Ensure hyperlinks are enabled for terminals.
            .nr U 1

Debian's groff 1.23.0 packages in testing and unstable in fact already
enable the last (thanks, Colin!).

Regards,
Branden

--cwyj7x3gymo2r6tn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTJEtgACgkQ0Z6cfXEm
bc7Agw//VCsTlyTIzAT3qsudmvdiOW4HZQ/I5MQOVbJgWcP5+9EaU1Oxjw08TaT/
H7kP90tN2Fttpcjb8PBh9N9lBYKmYfvGrGjZ1M9d/vAHiBlMvIu27jb5EzqywwyM
hquhIPsChn9gJSJ3VKMmI8z/pVaSoYWuY5KpMC81Os9uTUgfUOVHJpT4yc251OPb
XZH32r5VS35vAUxizaSFddo+7AANIJ5dmy15Fum3RcEFdKOtQxoA+RuQeSV5waM2
xXFfMoyYJFd3t1J+9VDyWFoF+ElU9VJrzfDbc7dimxP7B6RC2GRjvYCtoWCrEFaf
CTbx0IZR9kOWRuzDHjCTEGGn5ZIH8dfXE65oaMb4PCGza7yTNZXHoAnS4/o97IQk
2hI0/1qqkPPvBOZcDc8+zSBe4fQLvKvY7a8ImHPzvU1p50gG61Efi3UVaddr1KDG
kLkAOWlNiLQdUEpzXNqE4P96oMi3WsNZ7JnHNDQkmsB2o/Imuxx4sGKHVUfEx5oW
ZWafLA/5B6fFHB5JMmRhnDNaLo5wISIL9737WX+gO37CXqQJQleRa9ImYTYPV3xx
p5NGTfqz9eBczYFkCdL7OLFMiTxoi8/6YmURJeLpEKFNJRCP/M8346rVtMer+04w
EoYsKDelgyTJzN5oUw5qz5Hqlu4OzMZYXmyD8f07x+E75XhN0Mo=
=IQAk
-----END PGP SIGNATURE-----

--cwyj7x3gymo2r6tn--
