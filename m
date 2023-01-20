Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DA70E675C34
	for <lists+linux-man@lfdr.de>; Fri, 20 Jan 2023 18:55:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229813AbjATRz5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 20 Jan 2023 12:55:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46606 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230002AbjATRz4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 20 Jan 2023 12:55:56 -0500
Received: from mail-ot1-x32d.google.com (mail-ot1-x32d.google.com [IPv6:2607:f8b0:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B4C5C17E
        for <linux-man@vger.kernel.org>; Fri, 20 Jan 2023 09:55:55 -0800 (PST)
Received: by mail-ot1-x32d.google.com with SMTP id n24-20020a0568301e9800b006865671a9d5so3513748otr.6
        for <linux-man@vger.kernel.org>; Fri, 20 Jan 2023 09:55:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zFsnppgJ67EfOI6BZn0AKrdZ/n2euv32h8luRBfKOcg=;
        b=fZPjanQPXi7xREZZOJZJPqam4aN8+wO4C/xYhebBtIcfE2ZjX0YZ/1I9qLXPE+TYkm
         ewbI/ptTd3ZVaXkChcaDd3PIpfglncI5r+mHYscWCt/buWvGbZdhFaAi+O2n70aTStTT
         OLFtt+sygx3VyADZEToQvcrI9Wg15kVIAbS3dZ4BzF89LbwJLDgDs2jKyUIDSOJHudSm
         8PcFyVG8IP/IPnuiGKtnUmlT6Op/UhTOhCBjnPjZowyTwGq/SxfS+Uozl7PpN53bDqH2
         SKFmBUsN4fs4NZaVZX0qBEo/IRymeHHPRnvRl5SD9ypIygJb/a4szqfDt4v25AJGDocg
         jtnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zFsnppgJ67EfOI6BZn0AKrdZ/n2euv32h8luRBfKOcg=;
        b=WMyfXOynFRXREvyhbcTL85gLSGxx0u1WK2jzcAC4u1bMbeBMPIK10lnzedUONOJ9g1
         1vQgwlFC+cbNreXItDPPuaRqT0QmW6m053K/G0v5vnNnZrHZOHO6IyWgP7vCFVh1cDVu
         NdAvjG9BChac1tYdTvR9kssNtDPpE9tNBkz48SyCE1ameMb4vzOBQOnikruA6crE4oyv
         ZHQ6jYrc/lOgw2xPyEMazxg25FbmAJqh4nGbLFWuQwTKDx8fngOfisSWwoQLPwoazwSL
         0hEXX9RQcCIJQyKnNxQiDSkro9XDMT/bJo5VEUXqWlzgG9MtfIMQgwCZgrVuaL0plDRc
         aJPQ==
X-Gm-Message-State: AFqh2koYjU60BD7FXCSWrjbwC/cCFAYe2Fz7dIbBW+Gaz51U0dZRKM9E
        xRZ3e0gPVJeo2d7PyXZbfHfTkdsSZ1Ii0g==
X-Google-Smtp-Source: AMrXdXuWYOUjZ1YXz0dL4gO9xWVsYoywadDSi0/D4GALICQWa7ME7jXfsFpD+RzT/KyxfMplksU4sA==
X-Received: by 2002:a9d:7d14:0:b0:684:9611:8f5 with SMTP id v20-20020a9d7d14000000b00684961108f5mr7688856otn.27.1674237354645;
        Fri, 20 Jan 2023 09:55:54 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id 66-20020a9d0848000000b006865246ace0sm5341006oty.53.2023.01.20.09.55.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Jan 2023 09:55:53 -0800 (PST)
Date:   Fri, 20 Jan 2023 11:55:52 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Eric Biggers <ebiggers@kernel.org>, Ian Abbott <abbotti@mev.co.uk>,
        Zack Weinberg <zack@owlfolio.org>, linux-man@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx@kernel.org>
Subject: Re: [PATCH] scanf.3: Do not mention the ERANGE error
Message-ID: <20230120175552.ri5odhrf56bapuxj@illithid>
References: <20221208123454.13132-1-abbotti@mev.co.uk>
 <633629bd-753c-3097-9896-2491a0b0f1a2@gmail.com>
 <Y8oT53gEtkAOX0Zb@sol.localdomain>
 <b929eaed-0e8f-bb6c-87cb-8a36573c2769@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="zp5knikdhsvmrbdr"
Content-Disposition: inline
In-Reply-To: <b929eaed-0e8f-bb6c-87cb-8a36573c2769@gmail.com>
X-Spam-Status: No, score=-0.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URI_DOTEDU autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--zp5knikdhsvmrbdr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[re-ordering the mail I'm quoting]

Hi Alex,

I have some observations on your deprecation initiative and people's
reactions to it.

At 2023-01-20T14:12:07+0100, Alejandro Colomar wrote:
> All implementations of sscanf(3) produce Undefined Behavior (UB),
> AFAIK.  How much you consider UB to be a real-world issue differs for
> each programmer, but I tend to consider all UB to be as bad as nasal
> demons.  I'm not saying UB shouldn't exist, just that you shouldn't
> invoke it.  And a function that is used for scanning user input is one
> of those places where you really want to avoid invoking UB.

If there are common idioms that result in UB, it might be worth
documenting this in the man page, with a citation to the relevant
clause of the standard that declares it thus.  I agree that UB is
something to be avoided and I think most other programmers do too.  The
advantage to this approach is that if they disagree, they can take their
argument to the standards body instead of litigating it with you.

> This is similar but different to bzero(3).  bzero(3) was broken or
> slow in some implementations.  That's probably why it was never added
> to ISO C, and why POSIX later removed it.  The API wasn't bad, and in
> fact it's great, I prefer it over memset(3).  The difference between
> bzero(3) and sscanf(3) is that bzero(3) has now been fixed,

I still don't share your preference here.  The exposure of a more
general interface (memset) by a general-purpose library when the
implementation otherwise has no additional implementation cost is the
correct choice.  If a given programmer's use cases are restricted such
that one of the arguments to a general-purpose function is constant,
then that is exactly the time for them to write a macro or function
specific to their project to hide the complexity.

If you tilt your head right, this is similar to one of the ways closures
are used in other languages.

> I could change the "deprecated" statements by "see bugs",

I think you've hit upon one of the core drivers of resistance here.  A
problem with calling something "deprecated" is that it's often unstated
_who_ is doing the deprecation.  Traditionally, I think the Linux
man-pages have tended only to use this term in reference to one of the
standards bodies (WG14 or the Austin Group) formally employing it.

(Maybe I'm wrong, and Linux man-pages _has_ deprecated things in its own
authorial voice...but if other people also don't know that, it doesn't
matter, and confusion remains.)

So I suggest you adopt a new phrase, like "discouraged by Linux
man-pages", to characterize the authorial voice here.  Some people will
ignore your advice either way, but at least they'll know who they're
ignoring.[1]

> However, if somebody really wants to use that function, and would like
> to fix it, I encourage that effort.  If the function is fixed, which
> shouldn't be that hard, I'm fine removing the messages against its
> usage in the manual.
>=20
> While that doesn't happen, I prefer strongly recommending against
> their usage in the manual.  And dict(1) seems to say that the verb for
> that is "to deprecate" :)

Your dictionary is correct but social knowledge, a.k.a. tradition and
folklore, impose a context on the discussion.  Sometimes dumb things
become tradition (like calculating factorials or Fibonacci numbers with
recursive functions[2])--we don't have to acquiesce to that, but we will
have to document and sometimes defend our rejection of them.

> Right.  memcpy(3) has a bug in the standard.  However, implementations
> do the Right Thing (tm).  If implementations did the right thing for
> sscanf(3), that would be enough to remove the recommendation against
> it.  But my understanding is that the sscanf(3) implementation is not
> free of that problem.

This is a good opportunity to say so in these terms.  "Linux man-pages
discourages use of sscanf [under the conditions XXX] until
implementations are corrected to avoid undefined behavior [cite URL
here]."[3]

Regards,
Branden

[1] In groff_man(7), I admit I have not taken my own advice, and use the
    term "deprecated" in a subsection heading.  I have two defenses for
    this.  (1) I reorganized the man page along those lines 5-6 years
    ago, when I had less practice at writing technical documentation,
    and (2) the man(7) macros are not formally standardized anywhere
    anyway.  There is no "official" body with which to conflict, or with
    whom groff can be confused by the reader.

    After groff 1.23 is released (good news, I heard from Bertrand last
    weekend) I hope to add the SunOS extension "SB" to the deprecation
    list now that Solaris's death seems irreversible.

[2] https://sleeplessafternoon.wordpress.com/2013/03/26/examples-of-recursi=
on-the-good-the-bad-and-the-silly/

    For the mathematically or algorithmically inclined, I also
    recommend "The Genuine Sieve of Eratosthenes", by Melissa O'Neill.

    https://www.cs.hmc.edu/~oneill/papers/Sieve-JFP.pdf

[3] groff_man(7) gives you UR/UE, so use them!  >:-)

--zp5knikdhsvmrbdr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmPK1aAACgkQ0Z6cfXEm
bc4Fgg/9E5VP0E/1CyrGxiT3AeZN6gtfU0VmKZEhxFt9vyijk64zYc6sJ++yLJtl
hb14ri+uhWJX8pHGbZgbfeJwvQE9blw9e1fppXOY/W/gHQqSoGDXLm86JIPdPmPQ
V615P1NiNsMzQwfRFLZqPaEEqXxxavwqS8PVZ9Sxyqx2cF7TYafWMam2UiT/1NHE
1WMot9maHiiGvM1d+Cw7V2yXeUIsPQarI6EZUPHMlk2M10qvlbPVjC0JrZI1lP7Q
h7fUkHasL9iNpqiRtqE6L6Okwo8AdT1i5yyNRzDmYCuWddEz+itW+Il1dsm3Zbtc
OnO1lr7NxR6Z4Vh+abXeBy50WuwfdDhs+vPAvWBGNgIn/s0JtJGcvWQ+AImI691J
aVDuu09LAxHdsCrpEIQuyj0HdmITLyCfjsjtqYoYRWAED2KIcpWQfEBPBo4Hzia8
DZZhoqgVVG90+TBrPytu4Z7oXd/FEbX/5hT8oeoi6tUT5ox7UtrNVpvyMBvLk7d2
Bl3YiVV2mkQIGEC2SzEo/yKi7jQ0x0+G+CBnfc5CVCCrz3TwyhQS/sUB/tWFzsy+
GuCIMGKPBMfURXRHDudrdkbCs5JquA2DXy8FJsUWVOTtLhWXkxG1dOV3+YdNFXme
w2J9++seoRSMI7Q4oLxKtzaquBYKTRdeDnlBilPFzOU9x+hL7BA=
=50Uz
-----END PGP SIGNATURE-----

--zp5knikdhsvmrbdr--
