Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0DF3B6489D6
	for <lists+linux-man@lfdr.de>; Fri,  9 Dec 2022 22:03:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229814AbiLIVDy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 9 Dec 2022 16:03:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47730 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229877AbiLIVDt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 9 Dec 2022 16:03:49 -0500
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com [IPv6:2607:f8b0:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89D44B0798
        for <linux-man@vger.kernel.org>; Fri,  9 Dec 2022 13:03:43 -0800 (PST)
Received: by mail-oi1-x234.google.com with SMTP id t62so5618630oib.12
        for <linux-man@vger.kernel.org>; Fri, 09 Dec 2022 13:03:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=pP7Amnjly5qeZZCsoSVWBcb1UzYz0xd6kV1tRAxd1ig=;
        b=MSRZ+HOH0ddrSW9ZjtbgnwPNtUwrcAj2F4+tqxW4sqY2A9eQ6OLJZNcJSPr4irq6bd
         poMNE6/ZBFg8i+clEGuicwCb6ZaJf08CvUfR7Xnqo9Mb3IVu4s8/aUQZvAT2saAMgx1k
         yhjTOe51CNxlnXOxjrzODkxQb3dgGEo9yRCgJtiOrsg0hCnRfvDiwKkP/LS36TZnsgsH
         uaz8Avgb5OqzR2t5m/eLWNBRZ/qSS8bH1gSMpqngjyh9OurzysL9OzGtvf3wyKg7r+dI
         n5+CGnuRdepNTe9TNMocLJMCeQ43v21eaygq/glDdpHglrr3wwP4mDU3iqc4Stl9qNsz
         m8OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pP7Amnjly5qeZZCsoSVWBcb1UzYz0xd6kV1tRAxd1ig=;
        b=6x3vkFdwUD0Nvnwh3Ei0q1om9/c987GHOwiv3aHRlbXMnQlfLxd4XmMqJXCzPPZji1
         s56eUYTvCyRV1Y8HNRQeuM0weoTPNWABhWvHCPiFISQNY7GX/VbSBFaV9jzOYNwjvw3X
         j6srXC0oXgO8vhw/8NMcgI4+z8vhA1YOjPvF4sib6VRHx1ojJ4mVFj7hSeGScIimv2S8
         nn42+vX7sGa6sl8l0cYuG4gwZjtNjPl0p7J7lUH6Q+gkaUQqa6jEBo/rIiU99J9LsrTo
         V7ay8sa+Hr+N3WDyMmpEwbePZOtIjcB4R331xE4SNp+iz9CR78G8aluct1TV5IXlT2nf
         rF6g==
X-Gm-Message-State: ANoB5pm5Dp+2xxhWWeW1Rl9r7Bc/yw+PVVrmDZYTKCcMGxwt4qX1bkS7
        u6mxkJ5KPQVLtUd1tEA8gjvJtnbLTP4=
X-Google-Smtp-Source: AA0mqf5Qwu1IPHN6VXRTtjEfea3eE4FVaiSWFRz3vBcObIirGiJrbd7+u38oGKrh4Ye13CweRUrdcw==
X-Received: by 2002:a05:6808:23c7:b0:35e:461d:72ab with SMTP id bq7-20020a05680823c700b0035e461d72abmr4833920oib.19.1670619822668;
        Fri, 09 Dec 2022 13:03:42 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id bf21-20020a056808191500b00359f96eeb47sm882267oib.49.2022.12.09.13.03.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Dec 2022 13:03:42 -0800 (PST)
Date:   Fri, 9 Dec 2022 15:03:40 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        Mike Frysinger <vapier@gentoo.org>
Cc:     linux-man@vger.kernel.org
Subject: Re: preferred /proc/<pid>/xxx style?
Message-ID: <20221209210340.azlp4t6c5myz534b@illithid>
References: <Y5MCsc/H9BV6RcST@vapier>
 <bc30d5ac-c33b-9a67-fa85-1003da0057f5@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="gyuu67ch4vr4kdy4"
Content-Disposition: inline
In-Reply-To: <bc30d5ac-c33b-9a67-fa85-1003da0057f5@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--gyuu67ch4vr4kdy4
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex & Mike,

Alex, you beat me to this one...

At 2022-12-09T20:43:21+0100, Alejandro Colomar wrote:
> > personally i find that jarring to read because it's using italics
> > for the whole path except for the pid which has no styling at all.

I submit that it is more jarring to have to have a file specification
with mixed literal and variable components, such as

/var/log/epidemic/pid/port

and have it all marked up in the same typeface without a visual clue as
to which part is nonliteral.  (Observe the ambiguity.)  Yes, "the
experienced user will usually know [which part to replace]".[1]  To rely
on that principle in documentation is a deriliction of duty.

Granted, Team Boldface All Literals has a point here, in that under
their convention you would _also_ be able to tell.  But typographers
argue against excessive use of bold for a reason; when a document is
saturated with emphasis, the worth of emphasis decreases.

> > in the terminal this yields colored & underlined text except for the
> > "pid" which is just plain text like the rest.

Yes.  This is a convention of mathematical typography.

> You probably don't get the linter warnings because I think that
> requires groff-1.23.0 (still unreleased; hopefully available soon).

[grimace]

People can always help by building it from Git and reporting any
problems.

https://git.savannah.gnu.org/cgit/groff.git/tree/INSTALL.REPO

> We're talking about the following diff:
>=20
> -.IR /proc/[pid]/fdinfo
> +.IR /proc/ pid /fdinfo

People have developed a number of ad hoc syntaxes for specifying
variable content when the context already demands the use of the
typeface that they normally employ for it.  People throw brackets,
braces, and <> signs around with great abandon.  But these are all
syntactically significant in the languages that Unix people use.  In
formal documentation, as opposed to email, it's better to just switch
typefaces.

> > the man-pages(7) guidance doesn't covert this afaict.  it has:
> > > Formatting conventions (general)
> > > Filenames (whether pathnames, or references to header files) are
> > > always in italics ...
> > that implies it should be only in italics.
>=20
> It isn't covered in man-pages(7), AFAIK.  However, it is covered by
> groff_man_style(7) (also unreleased; maybe your version of
> groff_man(7) covers it):

groff 1.22.4's groff_man(7) page has similar text to what you quoted
(meaning this was one my earlier efforts to organize man page chaos).
So this guidance has been out there for nearly four years.

              Use italics for file and  path  names,  for  environment
              variables,  for enumeration or preprocessor constants in
              C, for variable  (user-determined)  portions  of  syntax
              synopses,  for  the first occurrence only of a technical
              concept being introduced, for names of works of software
              (including  commands  and functions, but excluding names
              of operating systems or their kernels), and  anywhere  a
              parameter  requiring  replacement by the user is encoun-
              tered.  An exception involves variable text in a context
              that  is  already  marked up in italics, such as file or
              path names with variable components; in such cases, fol-
              low  the  convention of mathematical typography: set the
              file or path name in italics as usual (see  .IR  below),
              but  use  roman for the variable part, and italics again
              in running roman text when referring to the variable ma-
              terial.

Regards,
Branden

[1] For those who haven't had the joy of using ed(1), let me share an
    old Unix-Hater's Handbook quote.

    Ken Thompson has an automobile which he helped design.  Unlike most
    automobiles, it has neither speedometer, nor gas gauge, nor any of
    the other numerous idiot lights which plague the modern driver.
    Rather, if the driver makes a mistake, a giant "?" lights up in the
    center of the dashboard.  "The experienced driver," says Thompson,
    "will usually know what=E2=80=99s wrong."

--gyuu67ch4vr4kdy4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmOToqIACgkQ0Z6cfXEm
bc4YLg//dOf8ZP+rSD4xtE3yA0hfYeZ2icy1dRbHkg/uK2FGE2IBf1pUeIac7FAg
pgeP5scTGYdP61lwmnn6ZmAcEHmMrDLm5h8Wigk3EQLxNPkXiFMFn/NLwIMH9lbm
/iEcmnNZNCzsv/Bgavz841DYltq32npPna5ZzQBrmlXvTiUWm2tgWX8jOxf977Qn
AXWiAeg8gK3ssO5T1K/c3nwFzrTI4ZSkf9QzBvyUcRkysUUmZ4FLbEqroV4gKDhy
2Cl7n+u/ieiqZ+G4O6CU/mbPK04ucSaiWEXEzU3ZM6Ug9gejyrzovWie1ob5ehHO
z1ZCibBVHLSIopzi1bC+8XVsWG+ovnANnzg84l3kz0i8ZJ57mFAJF2zN27hBU4XF
1GOMpvn/L7xnToPJUHFMutdSsHDpmGmB46V48PuowgULrj6dz9IRXhM6bNjkpNXj
5D7pfHUZfua9MkeN97pkb+9a/V1pirOxhJ5yQxdXi1dJ7Q+zDJET7IyXgPFg3n/b
BA3sjxKUWzt8lKaLEPpFaITuWXQ736fEIrUDmVVvZW3a+10ATqfZFcrtzTu4clvc
Rk0wPraq1f90qzDkDPh70+qJzOxCMRz8T+eNDmwJpTuxCoryghD1FjHF8lnKtVfS
keKb8bjNSwHGV8atFUSJuls+XsBtknEZINkcZq/W+8C9Ud2O1nY=
=JxVV
-----END PGP SIGNATURE-----

--gyuu67ch4vr4kdy4--
