Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D2F1074BDAE
	for <lists+linux-man@lfdr.de>; Sat,  8 Jul 2023 15:52:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229462AbjGHNwq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Jul 2023 09:52:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43356 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229458AbjGHNwq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Jul 2023 09:52:46 -0400
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com [IPv6:2607:f8b0:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7766DE50
        for <linux-man@vger.kernel.org>; Sat,  8 Jul 2023 06:52:44 -0700 (PDT)
Received: by mail-ot1-x333.google.com with SMTP id 46e09a7af769-6b7206f106cso2522450a34.1
        for <linux-man@vger.kernel.org>; Sat, 08 Jul 2023 06:52:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688824364; x=1691416364;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vykiBZD8Mn9VCpzlPWD0MERs8rb23R9+AB2xa2ovEiQ=;
        b=WIGZrCB32s8crOFP7iiYYQniihSZynwgd+BJAXKbUHcorNzwc+Sg0hRWuE8bZAsoVW
         sNY1G7sXcAS2YpV5uV8Eot/T5IQvjXbyxxlX/qoH7iaZB88hV56BYNOivLVjTP1p3u+z
         Dn4762wyCFdAhL6wE31CvAOf1jV2Xs8xhPanPgLBElFXlSvyIP4x+DM0MErT6h14QEwb
         Xrp+WwXJb6fWhGLi+Xv+6azxNB+wd/6rXZqPeUV5GeB/O+JSrijTqiPmkjXK+tM4yRoA
         JbdUDeo4EQ063mtPmoHfs8LfVMxvZ828wFDe7IHNJZsYYNfFNev7Vkxk2LfDO4EevMfM
         jwrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688824364; x=1691416364;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vykiBZD8Mn9VCpzlPWD0MERs8rb23R9+AB2xa2ovEiQ=;
        b=PsYyvoJwF7VMz3MmdQcMK8VzCspSzfnCmq+qOUQc0JrsPi+Puzr06XHxD652RRg7NU
         glf7lJq/cPkzrufHECeM0xsSz2gXuELh4AGrnGDaaYqiP6FHuIZK3C+EakfRDUGt3Fk6
         0NiebIFePo5dpd7gAnCZJo0lxJnpbr5ssh6VeDwvWqs38UeD5A2Oa4dZvT0hOyXh0CXL
         d3RgXkzjkagjhDXT3KWWEdgafx5HRbwy8Pp3T9cFKcHOTyjpEh4hJW9gMLz7oYvDA/hp
         2E/UiIlOIovagpy7/NEyH6D02hqLuRlPcRfMoBM0NlOar9aobJONugaAozzoNhaFiGWl
         7y2Q==
X-Gm-Message-State: ABy/qLYlgrWmlb8xk8xcL3FJVOMgh3+e4QZiWYNauhGLB+bNYO46qLtg
        am9+1LlzqbUIBWdPJrIHZ4dWIysUt/Y=
X-Google-Smtp-Source: APBJJlGJaur+wWd9LYe2pcJHzGKCC8gzqtVJr6wISyoqHH7yZvXqYw8ZdoIWwOn0UWkF8joyyR7bow==
X-Received: by 2002:a9d:6f10:0:b0:6b9:48de:119d with SMTP id n16-20020a9d6f10000000b006b948de119dmr69975otq.13.1688824363709;
        Sat, 08 Jul 2023 06:52:43 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id s16-20020a0568301e1000b006b8bf76174fsm2632216otr.21.2023.07.08.06.52.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Jul 2023 06:52:43 -0700 (PDT)
Date:   Sat, 8 Jul 2023 08:52:40 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Tom Schwindl <schwindl@posteo.de>
Cc:     =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
        "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH] regex.3: "([^...])" is not an end of sentence
Message-ID: <20230708135240.b2wmsbatluv2keko@illithid>
References: <cndmjlonfcjogtpy7fsrtouncxn335fu52u35poylcwtxihztd@hq2fb3sqvizd>
 <CTWPJBPKXRDW.3KYB31EMTA2B5@morphine>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="jzuzwr5pserdra4q"
Content-Disposition: inline
In-Reply-To: <CTWPJBPKXRDW.3KYB31EMTA2B5@morphine>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--jzuzwr5pserdra4q
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Tom,

At 2023-07-08T10:10:01+0000, Tom Schwindl wrote:
> On Sat Jul 8, 2023 at 5:11 AM CEST, =D0=BD=D0=B0=D0=B1 wrote:
> > diff --git a/man3/regex.3 b/man3/regex.3
> > index 13e540b22..630c0369d 100644
> > --- a/man3/regex.3
> > +++ b/man3/regex.3
> > @@ -109,7 +109,7 @@ .SS Compilation
> >  Match-any-character operators don't match a newline.
> >  .IP
> >  A nonmatching list
> > -.RB ( [\[ha]...] )
> > +.RB ( [\[ha]...\&] )
> >  not containing a newline does not match a newline.
> >  .IP
> >  Match-beginning-of-line operator
>=20
> I cannot reproduce this on my system; only one space is rendered.

You may have the inter-sentence space amount configured to zero.[1]

I get the extra space with all of DWB 3.3 nroff, Heirloom Doctools
nroff, mandoc, and groff.

$ printf '.ll 100n\nA nonmatching list\n([\(ha...])\nnot containing a newli=
ne does not match a newline.\n' | groff -Tascii | cat -s
A nonmatching list ([^...])  not containing a newline does not match a newl=
ine.

[cd DWB][2]
$ printf '.ll 100n\nA nonmatching list\n([\(ha...])\nnot containing a newli=
ne does not match a newline.\n' | DWBHOME=3D. ./bin/nroff | cat -s
A nonmatching list ([...])  not containing a newline does not match a newli=
ne.

[cd Heirloom]
$ printf '.ll 100n\nA nonmatching list\n([\(ha...])\nnot containing a newli=
ne does not match a newline.\n' | ./bin/nroff | cat -s
A nonmatching list ([^...])  not containing a newline does not match a newl=
ine.

$ printf '.ll 100n\nA nonmatching list\n([\(ha...])\nnot containing a newli=
ne does not match a newline.\n' | mandoc | cat -s
()                                                                         =
 ()

A nonmatching list ([^...])  not containing a newline does not match a newl=
ine.

                                                                           =
                       ()
Regards,
Branden

[1] Adding the following line to your man.local file in a groff
    installation would do the trick.

    .ss 12 0

    In groff, this is also the default for several "groff locales",
    including "cs", "de", "fr", "sv", and, new in groff 1.23.0, "it".

[2] I respelled the \[ha] special character escape sequence in legacy
    form for greater portability, but the "ha" special character _name_
    is not recognized by DWB troff (which has not been maintained for
    about 30 years).

--jzuzwr5pserdra4q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmSpahIACgkQ0Z6cfXEm
bc5sIxAAj+et8SAe2yivcmmfWFuyDE5Qg5PDLANACYsSMbVQa+ZB5ZKc1GZAKMU3
hux4hdwiPsNGLuaAaxo2Fr+mJY8GDdZR9WqxRzrBrWquEXpxHfWkOX/VrcYsr07y
KZQy3CCl9ZDyT/DE2O4B3Z5juK/+hpC0hyhcN8jazt58YiyxmGfn96t9D9Tks8ue
PvMzYER+ImQ1ePWpYEiaZgRiZm4AbUeMN0n8JDVSMtvWD509UPsWLslh6aX7ZFuQ
l3NArb2zY/WgXZBhWw+DptH9hu1qlnMRpVT/J2S/Cvv6jmZVH7OdZB9M1v3TuV9N
Kj+KKTyPRi4OH2bk+gtzBcTVWRfk/Aj5l6LSrogBPcaTMlCZJ0qrtAo1VF5teSYd
ix4vpg+Uuyf8BujQK7UMetDArxZOi72RMF1Yh+qw3lhn6YPfPMAjfShrVDSAywFS
vN8ge4gwsFsjzTBYTx/CtTz9ALHVrzZAvfMbpTZ9UiBo0HsVdd9zZlSVRMX8XOeY
CvqnH2Oaijcsk2tkkttfOC+PCiuy91a5H+w97vl36KIn9OSvBL45tPpJ0MhDv9lo
kODIHKZi2bpKA3xfoLU2fCxcV+MGDcIXA9xcbVXVdzDF0hFCzTr3f438b7tbnXZ7
isP5FlIpvJSLsfUSFA6LU3BwwlKjgWgqYjBi8UogksKsJ7folos=
=2tzL
-----END PGP SIGNATURE-----

--jzuzwr5pserdra4q--
