Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 23B17590744
	for <lists+linux-man@lfdr.de>; Thu, 11 Aug 2022 22:17:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230133AbiHKURV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 11 Aug 2022 16:17:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52518 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229594AbiHKURU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 11 Aug 2022 16:17:20 -0400
Received: from mail-oa1-x36.google.com (mail-oa1-x36.google.com [IPv6:2001:4860:4864:20::36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACB109DB40
        for <linux-man@vger.kernel.org>; Thu, 11 Aug 2022 13:17:18 -0700 (PDT)
Received: by mail-oa1-x36.google.com with SMTP id 586e51a60fabf-10ee900cce0so22790155fac.5
        for <linux-man@vger.kernel.org>; Thu, 11 Aug 2022 13:17:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc;
        bh=+ymB51vNfOFDMvu46fw9q/Krb1eRKXCiFmyivcque8s=;
        b=kpvdv2pMaWQj6/+Or/RtPX1aeomm3N6VtFpSHoxk0YyzBf5/S+8fNLJ3VnvNE/B+I/
         u82sx5KTpvR34q1wEDwZD/BHcVyuXNKrgq6x3rwOzXgE2eUIhPh2VvHAC7DB+Y8mggGd
         uYtafEYnzNSfsBnBnyzcPmVToSHp3z+592Fc7IpgWLClqAAcfCZTVEX35B1qjD980vnr
         PovnuQeCg+p1oiwH7zpav6D0QmKxXgn/EsaGbVYkRlu18cfVC03ADTdSQ/VpvhW4Euz+
         U6rEpS+K2QY2qjPxOMzZ8iXibOZ3wxDSC8L/mucczLPYo3QLHRmeEVaN7hhqsa5DVo4E
         3bRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=+ymB51vNfOFDMvu46fw9q/Krb1eRKXCiFmyivcque8s=;
        b=KF2KW2+FLe4seXJdq68J8LXR/U36fdzP5mqtgRM8nCJt+b7dytegEGUKUuBBX3fJbm
         FXHICkR7J+avHtQscTv9KgNI5u9vO+bIy94L6KRJebaZ93Pr3dWynkoAimtNfF31UZZw
         4tZhLQIPOv9QnOxUYYy9x0mskSD66sj8DEkj3ZaOP3xMqi0ISCYMuUmOwG4a1kGUhl9x
         yKCPIVSfOaJnlLAsyfGvxwX2X87cVjafGi3o7W5AmV2esjZ7Iz0BHfOEXF7bwuqrKPzH
         Ms1DpvuVnb1Z27cNj8V01+UZRRx3FfN9bIsrdBcf/3eeZl7tojGqI6uWwYizTLHiaIop
         /7nQ==
X-Gm-Message-State: ACgBeo1175knlVLgVAXbDR7FPK+KH6/zTPY1oViY883WXXVRqFf/FURA
        4j+VJoTLKmnYV3XkjhTC6j0PZagfP8Fy1w==
X-Google-Smtp-Source: AA6agR63ciV9gBJrrv26uNexXK2h54Fm96Trb6ZWOghupGa0QOIqAdkwZOXTThFOfmvhhPqX5YFpxg==
X-Received: by 2002:a05:6870:c58b:b0:10b:d21d:ad5e with SMTP id ba11-20020a056870c58b00b0010bd21dad5emr241993oab.287.1660249037603;
        Thu, 11 Aug 2022 13:17:17 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id eo18-20020a056870ec9200b0010f07647598sm9404oab.7.2022.08.11.13.17.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Aug 2022 13:17:16 -0700 (PDT)
Date:   Thu, 11 Aug 2022 15:17:14 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Ingo Schwarze <schwarze@usta.de>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: [PATCH 4/6] xattr.7: wfix
Message-ID: <20220811201714.a2o432xhkyyyj6qi@illithid>
References: <20220729114506.1669153-4-stepnem@gmail.com>
 <20220729205823.lcy4fbezlw32owgu@illithid>
 <20220730161521+0200.203910-stepnem@gmail.com>
 <c2ef3b9c-97d1-2733-df27-542c9eacad17@gmail.com>
 <8edd0272-0c43-b5e7-9220-20094bb5ae23@gmail.com>
 <YvT6s2Sv+M2bEldp@asta-kit.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="4esjk6lxoofvw3j2"
Content-Disposition: inline
In-Reply-To: <YvT6s2Sv+M2bEldp@asta-kit.de>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--4esjk6lxoofvw3j2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2022-08-11T14:48:51+0200, Ingo Schwarze wrote:
> Alejandro Colomar wrote on Mon, Aug 01, 2022 at 03:28:03PM +0200:
> > I'd like to arrive to some consensus on usage of \~ and '\ '.
>=20
> In manual pages, always use "\ " and never use "\~", period.

This is hugely overstated.

> The former is portable and the latter is a GNU extension.

=2E..that is over 30 years old and supported by Heirloom Doctools troff
for 17 years now, neatroff for about six, and your mandoc for three.

For full disclosure, I'll acknowledge that Documenter's Workbench [DWB]
troff doesn't support it, but it doesn't seem to have been maintained
for 30 years (Heirloom Doctools troff appears to be its
descendant/successor).  plan9port troff doesn't either, and its laudable
introduction of a man(7) MR macro notwithstanding, its activity level is
not high.

I would pessimistically assume that most or all proprietary Unix
troffs branched off from V7 Unix troff or early device-independent troff
(maybe DWB 1.0 troff, ca. 1984 [?, 1]) lack support for `\~`.[2]

I further note that groff has a long tradition of inclusion in BSD
Unix,[3] and despite the efforts of the mdocml/mandoc project to
supplant or dispose of it groff in BSD's descendant communities, the
underlying fact remains.  Giving up support for `\~` was therefore, in
this sense, a regression, and one that took quite some time to address.

> > What do you think?
>=20
> I think you are massively overthinking this and the whole SI
> argument is irrelevent for manual pages.

Man pages are technical writing and BIPM's recommendations in this area
that Alejandro uncovered have prompted me to reconsider the style advice
in groff_man_style(7) [from groff Git].

But you should welcome that.  It would mean that a handful of uses of
`\~` in the groff man pages would move to `\ `, which is motion in the
direction you want anyway.

In any event, the selection of `\ ` versus `\~`, assuming support for
both and an understanding of their distinct meanings and effect on
adjusted output, is a matter for a software project's documentation
style guide.

As I recall, mandoc does not even support "full justification"
(alignment of text to both left and right margins, with inter-word
spaces expanded ["adjusted"] to achieve this) in the first place and
there are no plans to.  mandoc can thus treat the two sequences as
synonymous--but that doesn't mean the `\~` escape sequence is a
gratuitous alias or deviation from the norm.  It is a replacement for an
arcane troff hack.

  .\" no trailing space or character translation target on the next line
  .tr ~
  G.~W.~Pabst directed several films in the 1920s.

> While the above concern about robustness is minor, too (both groff and
> mandoc support \~),

=2E..as do others, listed above...

> portability is still significantly more important

You are not quantifying anything.  Come on, can we at least get a Fermi
estimation of the installed bases of the respective troff
implementations and mandoc?

There are, I presume, still C compilers out there that don't accept ANSI
C (1989) input.  That doesn't, and shouldn't, stop the rest of the world
=66rom moving forward.

> than such minute typographical details.

For someone arguing from a standpoint of such slavish fidelity to 40
year-old practices, you seem to be selective in the way you do it.  The
Unix manual was always meant to be typeset.

"The manual was intended to be typeset; some detail is sacrificed on
terminals." (man(1), _Unix Time-Sharing System Programmer's Manual_,
Eighth Edition, Volume 1, February 1985)

At the time that statement was written, the sentiment was some 12 years
old; the Bell Labs CSRC typeset man pages as soon as it was possible for
them to do so.[4]

I understand if some man page contributors don't want to mess with
aspects of typography that will appear only when formatting for output
devices more sophisticated than terminal emulators--widow and orphan
management can be tedious, for instance--but we shouldn't promulgate
advice that makes the task of those who do--people like Alejandro and
me--_harder_.

Regards,
Branden

[1] https://archive.org/details/dwb-preprocessor-ref
[2] https://github.com/n-t-roff/Solaris10-ditroff/blob/master/troff/n1.c#L7=
97
[3] https://minnie.tuhs.org/cgi-bin/utree.pl?file=3DNet2/usr/src/usr.bin/gr=
off/VERSION
[4] https://dspinellis.github.io/unix-v4man/v4man.pdf

--4esjk6lxoofvw3j2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmL1Y8AACgkQ0Z6cfXEm
bc4W6hAAhCjSkNwrSqDJpAgDEkrMN+9TeznPYh4hrZJkUyu0+8ddJSpkIy/dpi8c
hMavnpThvKCcRs7stj5aTpe4Mi/3RkSeKcNOc4eDXo6BSU55g7XJ1s7b+hPh/QVh
0m8NDVtQr5/f//2R3+6jO3yCiJa1pCz2jOWFhPT8W8aF6dSITIIVSt6xHUVZwIQf
jeUDOkjVDWra0MgfYZ3fxLR34YzpPyi4d8IPqFxFwrX5HLmecVNvKI7d0N8UQC5A
8VFzRwvzT6GPdL3aqwek1QH5tWQrfB0tmOilRySEuafW01QQa3MRtiGWWLSlA2nt
54YmrpZ/GYkitIfFkgG3UD59bbi1X/5BDga3Lh+WADhjSGE3aMhCn7OrQA5VtWvI
T+vwMA5qUQP7wGC6GErPgrNEoXpz3db9782fmS652zXJJv3TjkhTK94E1kz5dVcn
M/xCr2WjJVZc2wEQhoMsvZkce3WpXHb8y0vPVo6vvPHkqRQhJVdAMyEJVS8h8TdK
rxgCMpvSC9FwAKAhq4DaRjfmuEE71bSrHqiMsTEuEq5TQEgpGj1WVg3a5BjExE2C
dpjBl/+tjgPVsUZuw/s8CU2NwvyJeppTzP0O+DDUlXmMKpJJRAe6dfNbbbQhqWyt
bNZ54sAp/bKEz+WDy9oHw1EWzFBeOfllSuJzVaQHHH6Q34jm0jA=
=dwEr
-----END PGP SIGNATURE-----

--4esjk6lxoofvw3j2--
