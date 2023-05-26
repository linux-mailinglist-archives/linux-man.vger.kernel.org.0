Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BAD7A712754
	for <lists+linux-man@lfdr.de>; Fri, 26 May 2023 15:15:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243622AbjEZNPp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 26 May 2023 09:15:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54986 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243630AbjEZNPk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 26 May 2023 09:15:40 -0400
Received: from mail-oo1-xc2f.google.com (mail-oo1-xc2f.google.com [IPv6:2607:f8b0:4864:20::c2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43EB210D8
        for <linux-man@vger.kernel.org>; Fri, 26 May 2023 06:15:07 -0700 (PDT)
Received: by mail-oo1-xc2f.google.com with SMTP id 006d021491bc7-555508fd7f9so179550eaf.3
        for <linux-man@vger.kernel.org>; Fri, 26 May 2023 06:15:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685106906; x=1687698906;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=18IVpsQYSu+U2hDWItrbwBnsXtrBHfhl6aS3icXzXqc=;
        b=SDROhOYerkjuSUE48NUFCjxnzk7KFkVNIBBgi5BYV+6nC2TI1lpDgrql79Kac68kX5
         mhN9odV+TYHPmBGsL6U580R17mq5Hpu9wJHPaQtOF/AVDJmGCHiOdq++eG0sVqWcigeF
         eaWL5hLaw/ipjsU/E6dFW9HZw0YJilFvctVUFmMNsAPwtMCFvMbjNbF27AUoDSdKi/CZ
         w7sRbvSblZBCadA/uhGydtL7/2L34LwNwvAr8B/ruhy7ZQUl/a3+YIKU8Tm+RcgDFZsQ
         mH8eyO3KqPukLPZouyM0qnxAitiP11bfajvW3HSDrcHvYmGhabllHmq6dK0M/7gHiOpS
         B90Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685106906; x=1687698906;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=18IVpsQYSu+U2hDWItrbwBnsXtrBHfhl6aS3icXzXqc=;
        b=GTiQDXF5SMUQCCM53X7kztUHuV1Fir9J0T3NeOwzg4tqTJ+Jt4xVXQEu/3+D6BZdm+
         ez/iWW6TLbpnaYoP+Ic30d6yf2/tBEq7G8UCjAg2pauijcfMgPSdTU1F8bHHK+FQi04Z
         tMNUcHp7D8akRXEtQJzxfBiBENikPs9kF5gnkRiHotLTmkc48AFWW/0+i0dm/U0y5/zo
         vCm1+oDP4cbDNunBZidXgKbsuQCqsYfniXRUZoHTt5qRCm5dxXYrEZHcFcNwIlrBooP9
         xXKabVtRSlz95i8CmNqhFIacckfhwzlCj6G0X1peRIpd4bkE3FojM915c8X6QKXmAd0J
         nwdQ==
X-Gm-Message-State: AC+VfDzot/bwRHj1xPasUHJbBt50dfraSjABS5g9C3FLb1wUW7tFvej4
        /1RMkxP8WOUgdb147Tb8EsI5KHTIBAQ=
X-Google-Smtp-Source: ACHHUZ7Z5LX5ZZr9XDZry3S7VxfvvsgBLa5wgJtUtu9j04TgpxydqiOspV44RlY+NENaEfu0bjQ1eg==
X-Received: by 2002:a05:6808:2083:b0:398:591a:2e62 with SMTP id s3-20020a056808208300b00398591a2e62mr1093587oiw.37.1685106905971;
        Fri, 26 May 2023 06:15:05 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id b185-20020aca34c2000000b0038934c5b400sm1667072oia.25.2023.05.26.06.15.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 May 2023 06:15:05 -0700 (PDT)
Date:   Fri, 26 May 2023 08:15:03 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>
Subject: Re: SPDX license review requests
Message-ID: <20230526131503.vvejwh3cgsrobgl3@illithid>
References: <CADeQ=2-ZsaSCEPfTHUO6AAZ_+H8ob4LJ5x5MuGaX=jdOVpdCog@mail.gmail.com>
 <bd1a81d0-456a-bc19-7df0-fdbcc2a51395@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="s4od7tlqijiee3bc"
Content-Disposition: inline
In-Reply-To: <bd1a81d0-456a-bc19-7df0-fdbcc2a51395@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--s4od7tlqijiee3bc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[mailing only the list, but CCing Alex as I know he doesn't mind]

Hi Alex,

Thanks for getting the ball rolling on this.  I have some critiques of
the existing variants and a suggestion for the forms we go back to SPDX
with.  I did also see your follow-ups which confused me a little, and I
fear they might confuse others a bit.  I suggest taking a few days to
shake out some points (it's going to be a holiday weekend in the U.S.
anyway, so some engineers may already be on PTO), and then re-announce
the relicensing effort subsequently.

At 2023-05-26T00:56:47+0200, Alejandro Colomar wrote:
> We've got 4 derivatives of the "VERBATIM" (now one of them in SPDX
> as Linux-man-pages-copyleft") license.  I'll paste here the four.
>=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> $ cat LICENSES/Linux-man-pages-copyleft.txt=20
> Copyright (c) <year> <owner> All rights reserved.
>=20
> Permission is granted to make and distribute verbatim copies of this
> manual provided the copyright notice and this permission notice are
> preserved on all copies.
>=20
> Permission is granted to copy and distribute modified versions of
> this manual under the conditions for verbatim copying, provided that
> the entire resulting derived work is distributed under the terms of
> a permission notice identical to this one.
>=20
> Since the Linux kernel and libraries are constantly changing, this
> manual page may be incorrect or out-of-date.  The author(s) assume
> no responsibility for errors or omissions, or for damages resulting
> from the use of the information contained herein.  The author(s) may
> not have taken the same level of care in the production of this
> manual, which is licensed free of charge, as they might when working
> professionally.
>=20
> Formatted or processed versions of this manual, if unaccompanied by
> the source, must acknowledge the copyright and authors of this work.
>=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The final paragraph may be nearly redundant/superfluous.  (1) Copyright
laws and international treaties forbid the effacement of (valid)
copyright notices anyway, even under transformation ("formatt[ing]" or
"process[ing]").  (2) Man pages are nearly always distributed and stored
on systems in source form anyway.  If systems ship "cat pages" without
their man(7) (or mdoc(7)) sources, they are already in violation not
only of this provision but the aforementioned laws and treaties.

I agree with your point about how amateur work is not necessarily done
more poorly than professional work.  Striking that sentence leads to the
following...

> $ head -n21 man2/set_mempolicy.2
> .\" Copyright 2003,2004 Andi Kleen, SuSE Labs.
> .\" and Copyright 2007 Lee Schermerhorn, Hewlett Packard
> .\"
> .\" %%%LICENSE_START(VERBATIM_PROF)
> .\" Permission is granted to make and distribute verbatim copies of this
> .\" manual provided the copyright notice and this permission notice are
> .\" preserved on all copies.
> .\"
> .\" Permission is granted to copy and distribute modified versions of this
> .\" manual under the conditions for verbatim copying, provided that the
> .\" entire resulting derived work is distributed under the terms of a
> .\" permission notice identical to this one.
> .\"
> .\" Since the Linux kernel and libraries are constantly changing, this
> .\" manual page may be incorrect or out-of-date.  The author(s) assume no
> .\" responsibility for errors or omissions, or for damages resulting from
> .\" the use of the information contained herein.
> .\"
> .\" Formatted or processed versions of this manual, if unaccompanied by
> .\" the source, must acknowledge the copyright and authors of this work.
> .\" %%%LICENSE_END

With the next license, things get murkier.

> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> $ head -n8 man2/getcpu.2
> .\" This man page is Copyright (C) 2006 Andi Kleen <ak@muc.de>.
> .\"
> .\" %%%LICENSE_START(VERBATIM_ONE_PARA)
> .\" Permission is granted to distribute possibly modified copies
> .\" of this page provided the header is included verbatim,
> .\" and in case of nontrivial modification author and date
> .\" of the modification is added to the header.
> .\" %%%LICENSE_END

It is not clear to me how this one is defective in not permitting
translations, but the others aren't.  Do we know who from the Fedora
Project made that determination?

If we then look at the 4th license, things get cleaner.

> $ head -n13 man2/move_pages.2
> .\" This manpage is Copyright (C) 2006 Silicon Graphics, Inc.
> .\"                               Christoph Lameter
> .\"
> .\" %%%LICENSE_START(VERBATIM_TWO_PARA)
> .\" Permission is granted to make and distribute verbatim copies of this
> .\" manual provided the copyright notice and this permission notice are
> .\" preserved on all copies.
> .\"
> .\" Permission is granted to copy and distribute modified versions of this
> .\" manual under the conditions for verbatim copying, provided that the
> .\" entire resulting derived work is distributed under the terms of a
> .\" permission notice identical to this one.
> .\" %%%LICENSE_END

This is the same as the first license we saw above with the last 2
paragraphs removed--the one expressing a kind of disclaimer, and the one
that I claimed is redundant/superfluous.

I see from your follow-up email that _this_ is the one Fedora claimed to
have a Freeness problem with.  Can we scare up a cite for which one,
exactly, they were referring to?  The concern their determination causes
me is that _none_ of the four license you present here explicitly grant
permission to translate.

The LaTeX 2e/"traditional GNU documentation license", from which all of
these license texts seem to be derived, solved the translation problem
with an explicit grant of permission.

>> Permission is granted to copy and distribute translations of this
>> manual into another language, under the above conditions for modified
>> versions.

And in fact if you add the foregoing paragraph to "VERBATIM_TWO_PARA",
you get _precisely_ what SPDX calls the "Latex2e license".

https://spdx.org/licenses/Latex2e.html

> Here goes some comments about them:
>=20
> The one and two paragraph licenses are almost identical to the usual
> one.  There seems to be a small diference regarding translations in
> the 2-paragraph one, being more restrictive.  Was that intentional?
> Or maybe it was just an accident, and there was no intention of
> disallowing translations?
>=20
> Would you please relicense to either Linux-man-pages-copyleft or
> VERBATIM_PROF?

If you agree, I would add LaTeX 2e to the list of acceptable candidates.

> Also, Linux-man-pages-copyleft seems to contain a sentence that
> makes it differ from VERBATIM_PROF:
>=20
> """
>   The author(s) may
> not have taken the same level of care in the production of this
> manual, which is licensed free of charge, as they might when working
> professionally.
> """
>=20
> I believe the quality of non-professional code and manuals to be
> at least as high as the professional one.  We have more freedom to
> reject crap.  I propose also deprecating Linux-man-pages-copyleft
> and moving to VERBATIM_PROF as the single surviving license from
> all four variants.

I'd go farther and move to LaTeX 2e.

> We're also discussing the names that each of these four should be
> given in SPDX.

Is that necessary, if you successfully migrate away from these to texts
that are already in SPDX, like LaTeX 2e and the existing Linux man-pages
copyleft?  I realize SPDX wants to capture many licenses for SWBOM
purposes, but if this transition is successful, the foregoing task will
rapidly become a problem of history.  And historical software
distributions have far worse description problems, such as (1) unknown
provenance, (2) missing copyright/licensing information, and (3)
incorrect copyright/licensing information.  (To an extent, all three of
these problems will continue to arise from time to time.)

> I suggest (in order of appearance in this email):
>=20
> -  Linux-man-pages-copyleft to be renamed to the following, and
>    mark it as a deprecated license.
>=20
> 	Linux-man-pages-copyleft-nopro
> 	Linux man-pages Copyleft (non-professional)

I thought SPDX didn't support renames at all...?

But if they do, I suggest disambiguation tags that are more descriptive
rather than trying to capture catchwords that distinguish them.

	Linux-man-pages-copyleft-care-disclaimer
	Linux man-pages Copyleft (with care disclaimer)

> -  VERBATIM_PROF to be SPDX'd as:
>=20
> 	Linux-man-pages-copyleft-qual
> 	Linux man-pages Copyleft (high quality)

=2E..but now the license text makes no mention of the Linux kernel at all.
It is just the LaTeX 2e license without its final paragraph, the one
granting permission to distribute translations of the manual.

=2E..which then leaves us in an awkward position regarding Fedora's
determination that VERBATIM_ONE_PARA had this problem.

And I wouldn't put a term like "high quality" (or "low quality") in a
license identifier under any circumstances.

> -  VERBATIM_TWO_PARA to be SPDX'd as:
>=20
> 	Linux-man-pages-copyleft-notrans
> 	Linux man-pages Copyleft (no translations)

=2E..this, too, says nothing of Linux to distinguish it from LaTeX 2e.

It is the LaTeX 2e license missing its latter two paragraphs.

> -  VERBATIM_ONE_PARA to be SPDX'd as:
>=20
> 	Linux-man-pages-copyleft-verbatim
> 	Linux man-pages Copyleft (verbatim)

This one doesn't mention "Linux" but is pretty idiosyncratically worded
("this page").  And Fedora had the aforementioned problem wherein they
claimed to be unable to locate permission to translate here.

You have already identified it as defective in its grant of permissions,
and it affects only 2 documents in the Linux man-pages.

Can we try to slate this one for the chopping block, and just not take
it back to SPDX at all?

Regards,
Branden

--s4od7tlqijiee3bc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmRwsM8ACgkQ0Z6cfXEm
bc5SNA/9EQME1EIPPRCZC3T+YQeu0Djye5CHIv0ggQIkGWpsAA+5uzSF5i6gNi4/
y6lXYFL7NQfMhn1jGK2J8cMoPzmfvKf+EryQbOTvpiNst4GIDmr22GTmwPGcnxKJ
3QxhIHT4I5Z6grcrPp8tkpRApYdLyp/9iXZvJ5DPtJ2l37EB+crNOu3wTKXG7i0i
4llORTWBFnhgA9jMayzh2iOYLkuzHhxuB2N4D+4LY+dVdHtlunqu263mGwjYfHi2
gV/VSGFNKziBVEQJYNRyjZ3d0I3i9B6Sevc+nApM2YoUmGAZdqDN2/5Kz82UWZHj
kbKgFiTCFjvLxAlpCsex5QcIF0Y9ktTNnwH7qfmzeHyIl2lf8ovvWswatkAhk7Yr
NEFoaqK8+XDPcw2i15jZytV1ZpIeVAdasO9Co1eIfrVWtDBwB3IfW9JXlwMfATDL
M38D8B5kGaHUWchLbP6lzyB7xpxoJf2uLRqLXlKDP1zM2eOee7FWkEvxKEymjdtE
3cZrTpu/bnHNC5K/Lg5KTo+9V9y/zm7bnWRHk7fCbf58+s19OQ17bzVgM2NAHzj0
XQdZa4bbi5l4rSOQVWaBuxRANE78LBoRyvdciyvkURP8DId6VHoAsbjQvbI3IaeM
yJnY21cs0muRPl9VfPSKiNYFM0OIdBc7+50ZN1HsubbkOQe3bKE=
=J0Ua
-----END PGP SIGNATURE-----

--s4od7tlqijiee3bc--
