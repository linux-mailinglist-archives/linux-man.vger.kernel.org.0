Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BD3DF754D25
	for <lists+linux-man@lfdr.de>; Sun, 16 Jul 2023 04:34:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229791AbjGPCei (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 Jul 2023 22:34:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52270 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229460AbjGPCeh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 Jul 2023 22:34:37 -0400
Received: from mail-ot1-x32d.google.com (mail-ot1-x32d.google.com [IPv6:2607:f8b0:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 462072702
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 19:34:36 -0700 (PDT)
Received: by mail-ot1-x32d.google.com with SMTP id 46e09a7af769-6b867acbf6dso2684889a34.0
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 19:34:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689474875; x=1692066875;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Du4mmCPaGlg695PqvFmUe5k2K55wMCDC7+0AyKd+OvU=;
        b=apN3MPlXOGxDmFyPyj78zWTzXwbVNnSru5YdIrl1i6SwGf+GlqVTpRLWQBRd6ZVHGg
         pPj7Vu34JG1H3bwZrCb706OqdMdVUq3dloznMGbcXr1QQp7QjtK5RB4SNTcAM7g3iXhd
         w1LHlkB6EfgXwKufA7ppCaTDyTR7G3aNUOP1w1nF9gOq9jSv/+WBbH/FLRgomhWh+FX8
         cys8XBrGL5jUB9bCrD1Lx62+vEb7+XfRGM0CELn6hzo/Zd7vDeHNsfe9LFMabz3JaLy2
         TVjpheNvxh3YgXDAplh+qG1vWT238r8rZx0Z4zcJ/Ec57aN+XoWsaAfyoPQ0GISTBS1+
         ojCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689474875; x=1692066875;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Du4mmCPaGlg695PqvFmUe5k2K55wMCDC7+0AyKd+OvU=;
        b=P2Ofry3IyKrCOjZsXoKzyxuR+e5btSySPFLbmKdk2D2Qnuf1ppJe2t8muVtE3Y7bFy
         XVMa6NxZWk17nojVG6EzG5QryHGgHxpIVYYASo9xWQr72TJJOUVRKX2C4NUm/U1RrGW5
         R01lAN1OSE51FO7yqB8SDndbqWzYFLhR+8l2YGnvEwgaKkFCG0X69ww2UzQ6ThWXEKil
         au0/UHqFUmli+DKreftMZ5v8V3MJ6awo+AmY41iZuajSbfHqf+VB+pHtKNtDM3+l9NPy
         gunv47uTMg6A+iMojv7joSYNStaDfitnJIlugox4OH3ZvCEDEBy4L9yUan61EP5DxMSH
         W4aQ==
X-Gm-Message-State: ABy/qLZYVTue6AYmBDSxoXTDulajJUIHqJluMo4/bQGg8zNZjP0dm+Py
        pn46qbKIjhlzmuWiN4nhaYuB5Pof2Rg=
X-Google-Smtp-Source: APBJJlFzWrjHPJXIFNLBiWOh1iImzCzCHQZY9xv2efuF2lCcu/cVPKYm5kOW13tk+faa019SiUfALg==
X-Received: by 2002:a05:6870:e40c:b0:19e:941a:8c5c with SMTP id n12-20020a056870e40c00b0019e941a8c5cmr4564424oag.10.1689474874951;
        Sat, 15 Jul 2023 19:34:34 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id ds53-20020a0568705b3500b001a6d15fc52fsm5715082oab.4.2023.07.15.19.34.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Jul 2023 19:34:34 -0700 (PDT)
Date:   Sat, 15 Jul 2023 21:34:32 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH] recv.2: msg_iovec / MSG_ERRQUEUE / -v
Message-ID: <20230716023432.eolrrjeiilr63tb4@illithid>
References: <CAP0H_AHtBCVaj2KM+DhHAoJrM4MW+vQhMEH0UHEa_UiMUzW03g@mail.gmail.com>
 <d33c2eee-8be0-6a00-9ffe-239cc41c6242@kernel.org>
 <20230715195934.yigz5fz6ulkxktaa@illithid>
 <567cd883-412f-6b23-92c6-e7ea51fd7ebd@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="pc6f2zanh3ljsrzs"
Content-Disposition: inline
In-Reply-To: <567cd883-412f-6b23-92c6-e7ea51fd7ebd@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--pc6f2zanh3ljsrzs
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2023-07-16T03:31:54+0200, Alejandro Colomar wrote:
> > https://www.grammarbook.com/punctuation/hyphens.asp
>=20
> [criticizing that link]
>=20
> + Examples:
> + an off-campus apartment
> + state-of-the-art design
> +=20
> + When a compound adjective follows a noun, a hyphen is usually not
> + necessary.
> +=20
> + Example: The apartment is off campus.
>=20
> What?  "is" is a verb.  The compound adjective follows a verb, not a
> noun.  Or does it mean after in the sense that anything can come in
> between, as long as it's the noun which it modifies and it has come
> before the adjective?  Is that a valid use of the word "follows"?  I'm
> not native, but that sounds, ughh.

You're right that they employed an unhelpful example.  The apartment
example affords an ambiguous syntactical parse, which a hyphen _can_
clarify.

A.  The apartment is off-campus.

Here "off-campus" is an attributive phrase, and "is" is what some
primary school educators in the U.S. call a "linking verb"; in some
languages, my impression is that a "zero copula", meaning no verb at
all, is permitted or even preferred there.  Renderings of broken English
are often presented this way in literature and entertainment.

A1.        *The apartment off-campus.
analogue:  *My dog old and sick.

Because natural language demands a bit of Postel's Law, the foregoing
are generally understood by English speakers despite their non-standard
structure.

But consider the following alternative.

B.  The apartment is off campus and in a suburb.

Here we can parse the sentence as compounding two predicate adjectives
that are in the form of prepositional phrases, and therefore _not_
hyphenated.

One of the reasons I think grammarbook's example is a poor one is that
_semantically_, one infers the same information regardless of which
_syntactical_ parse one uses.  Where possible, examples should be
selected to indicate potential miscommunication, as in this classic
illustration of the value of the Oxford example from a young Objectivist
penning acknowledgments in a thesis for school.

*I'd like to thank my parents, Ayn Rand and God.

> BTW, that's the only case where it says to not use hyphens, and since
> by being alone it's necessarily not following a noun, I'd say it
> doesn't fall in this rule, and so a hyphen would be deserved.

I'd agree.  I cite authorities only because I cannot expect people to
take only my word at such things.  My authority as a grammarian is
limited.  Unlike some, I don't have God and Ayn Rand for parents.

> I don't see reasons to avoid it in the links above.
>=20
> So, I'm tending to conclude that it's necessary, or at least useful or
> tasteful.  Please quote the relevant parts if you disagree.

Recalling the case at issue:

=2EBR MSG_ERRQUEUE " (" recvmsg "() only; since Linux 2.2)"

I would find the addition of a hyphen before "only" to be superfluous.
As I said before, it disambiguates nothing.  Further, if any of these
annotations ever has to be compounded, as in a man page that documents
several functions but requires annotation only for a subset of them, the
use of hyphens as you intend is liable to add clutter.

=2EBR MSG_BAZQUEUE " (" foomsg "()-, " barmsg "()-only; since Linux 7.99)"

Consider also the possibility that you may want to invert set
membership; perhaps 6 out of 7 functions in a page accept a certain
parameter.

=2EBR MSG_BAZQUEUE " (not " quxmsg "(); since Linux 7.99)"

There is no correct place for a hyphen here.

> > commit 43b89c2304552b18c9a9ea02bca05ffd94d6518c (HEAD -> master)
> > Author: G. Branden Robinson <g.branden.robinson@gmail.com>
> > Date:   Sat Jul 15 14:54:32 2023 -0500
> >=20
> >     man-pages(7): Add attributive annotation advice.
> >=20
> >     Prompted-by: Alejandro Colomar <alx@kernel.org>
>=20
> We use Reported-by: (mostly for bug fixes), Suggested-by: (for
> features), or when none fits, just Cc:.

Okay.

> >     Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
>=20
> LGTM.  Please send a patch.

Will do.  I've gotten sidetracked by the great automated "Mr. Sed"[1]
project, which turns out to have some prerequisites if I am to
demonstrate no changes in formatted text as I intend.

Early findings:

1.  I think I have raised warnings to this list before about
    manipulating adjustment and hyphenation outside of table regions
    with `ad` and `hy` requests; the Linux man-pages do so
    systematically around hundreds of tables, attempting (but failing)
    to (reliably) "reset" them after tables, often with miserable
    results.  Fixing this is a separate, prior sed(1) project.

2.  An ".sp 1" hack, also after tables, to work around a groff
    pre-1.23.0 bug is also not necessary and the time to sweep it away
    is near.  I may not _have_ to do this one to satisfy "Mr. Sed",
    though.  I will keep you advised.

Regards,
Branden

[1] the rewrite of man page cross references to use the new groff 1.23.0
    `MR` macro, a feature I have written about on this list before and
    which is covered in the release announcement sent here earlier this
    month by Bertrand Garrigues

--pc6f2zanh3ljsrzs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmSzVzEACgkQ0Z6cfXEm
bc5cuQ/+OiPdmeiC6q4CLCHzbCx0F1EfdAYSQuIgnS8gzYFJBUkbXsB/yofuQxXX
iYbhVWCdWmmFl0ZrPyHh1pCdaaBajouQXDqaphTeXaFrBSKinrOE76bj+D+MkwO+
6gssC9OnA5NMJw110oIpTNl2EJMcJKpzADZNpkhdqjvjOEs+axs9uVxkyPx/CMDi
AlhKIlrI7iKaynTg0tePXBnm4VyO5E+wNopTI2EyPpHBJ3jhNxnReq2oo0NkNCDF
1QcXoUjFmiMA+Xfus4UEvC5+CIrBRdAkV4NDN8DMExA8Odvt5rVQmuIIb8J8P9SU
JHozkID8oeFB87ygvhqe0z1kODCZn1mLPa6U0M0bKz5byIQxN9ZuZaPKRGWoxvsD
7B7f1fySRrpdzVrrx2kD70KWDKDpWYS8tKUPwXgkBlGhQRabvGNtwMdAIStfIbaE
uiqJF3Id/zrpKZI8QQkzqRlgsRDfMOYs5pYwz4PJOz+6odcEov3annLrTORIpDfp
PrGN6a3DWBznScEXTbqtQIYJ7ZZbgScFMAqBFJeUJSLFTP8fyVlopwhPgSklcaUM
Rg4HPPM6xk08LbA63ioh7JqMYDSV76YftQLJZ74TR+JE+QMwW6oorzt3nmzlZ/He
PRXFUczIUle/9y+JXYsCE0hc/auyLlQ45wfgmAb57cNaNT6Lquo=
=j0G0
-----END PGP SIGNATURE-----

--pc6f2zanh3ljsrzs--
