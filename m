Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7DE7465DD5A
	for <lists+linux-man@lfdr.de>; Wed,  4 Jan 2023 21:04:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235279AbjADUE5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 4 Jan 2023 15:04:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55512 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235325AbjADUE4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 4 Jan 2023 15:04:56 -0500
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com [IPv6:2607:f8b0:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3DE2D3C3A1
        for <linux-man@vger.kernel.org>; Wed,  4 Jan 2023 12:04:54 -0800 (PST)
Received: by mail-oi1-x22d.google.com with SMTP id j130so24775546oif.4
        for <linux-man@vger.kernel.org>; Wed, 04 Jan 2023 12:04:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=JwDq3y/U2PV3L+p9B7d1KjrcDBeT137ESCSrbdvh2ZQ=;
        b=gHBQIG9Q3WY+zwH96uIg01aj7WeDQYa9/m0pLnUp8Ww03jkbHtfPxd8DgBg2dOCylE
         gn+GDx4XLrwML4qMHzu2c/kugc1Et1DgMi/nrOMNImGoFL5u7aYh2fn6YlaxmjsxtzSz
         t4RAsDi33v17UtXl+6uYH5NGperbejdtjdK36ResTvfF0QtbHE5/XV0W3kcQKduqwumG
         +3McBkJgA8RZFBRM+VrH4Z6WJGox2JPTGdgNWjQ+Wrz9mqg7tv+hlFRmW6WoqXLMa+0g
         4LTTeXdPh9VRkMvpqkLuk4wcFSgu6qdaXzQ/4KErWfPMii7gjqcb93GJIquzRVSZoIZg
         jI1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JwDq3y/U2PV3L+p9B7d1KjrcDBeT137ESCSrbdvh2ZQ=;
        b=qc7guAW6bdkV9Wjx1pXGod1dWYegPpiahCmXuRvgWBqU5SXzmrogvjpSvhYhCuN01X
         ti6ZfMeG1lb+UUhs/BgYGbUNEDBv58rmS3DxCIRxXcB5c/a/6UoOfDlFfLuyezN3mkrq
         /KyswOXHXZ3MZ/gAJrONM5BV6aJB7lxCV7i3SsNqC9bqvHia+wX5VHjwNQWwblTgUdFE
         qQhHBHeJpIVJQSeHlU0PDWeIV61GbsORnoUAvIlDba78Oqn7Mhuco5UGY/xxxj/Jj7VM
         S0NDcgOjF5yIQdn0f8hjIZnKcmyqlL4fRyx7hMaEHi4xVWB5EoDwwExLlMnRAUiKu/dF
         jhKQ==
X-Gm-Message-State: AFqh2kq8BwK9hIngVX6D91LC7LN0Y+q22kdT1CiUtp1tv1Cm9T1VmKtY
        z1ac8m9yFSZwq7blmixiLu3LK+Snn7o=
X-Google-Smtp-Source: AMrXdXtze61B4XBhwZVS1C+P/fJZO5ZrM477EWy91IwivT0Y/Gfi4BZK7j1GemkpT9AfjfPWlyP7xw==
X-Received: by 2002:a05:6808:90b:b0:35e:a9d4:30d6 with SMTP id w11-20020a056808090b00b0035ea9d430d6mr28459938oih.44.1672862693477;
        Wed, 04 Jan 2023 12:04:53 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id o2-20020a9d6d02000000b006704589eb54sm16447086otp.74.2023.01.04.12.04.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Jan 2023 12:04:52 -0800 (PST)
Date:   Wed, 4 Jan 2023 14:04:51 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH 2/9] ldconfig.8: Fix style nits
Message-ID: <20230104200451.vxgnuunzztnkifig@illithid>
References: <20230104073851.h6kg265ev5v4gmjl@illithid>
 <f5b81092-fb68-d57c-0686-c1b3e482f35b@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="ajsmegjpyzk2myat"
Content-Disposition: inline
In-Reply-To: <f5b81092-fb68-d57c-0686-c1b3e482f35b@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--ajsmegjpyzk2myat
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2023-01-04T19:50:01+0100, Alejandro Colomar wrote:
> On 1/4/23 08:38, G. Branden Robinson wrote:
> > * In synopses, set ellipses as separate "operands" to better
> >   suggest argument separation by white space.
>
> Please explain this better to me.  Maybe an example difference?

It is hard to locate examples of where I think elision of white space
before an ellipsis in a command summary would be correct, so I have to
contrive one.

Consider some super-complicated but traditionally-syntaxed form of the
tar(1) command.

tar cfv... archive member ...

There might be a _bunch_ of flag letters in the first argument, and a
terse or lazy man page might not present them all in the synopsis.  It
would be wrong to have white space as in "cfv ..." because once that
first argument is finished, the command is looking for an archive file
name (or "-", traditionally).  By contrast, each member of the archive
one wants to extract _must_ be separated by white space.

I acknowledge that the GNU tar(1) man page is not written in the style I
prescribe or presented above.  It appears to hew closely to Texinfo
conventions even where it need not, as with the shouting full capitals.
(Still, the page is a big improvement over the form it had 20 years or
so ago, when IIRC it was one of the many that told you to read info
files or pound sand.)

Official GNU resistance to man pages is broad and deep, but not
universal.

> > * In synopses, prevent breaks within option brackets.

We would more prefer the synopsis to break like this:

  /sbin/ldconfig [-nNvX] [-C cache] [-f conf]
  [-r root] directory ...

=2E..than this.

  /sbin/ldconfig [-nNvX] [-C cache] [-f conf] [-r
  root] directory ...

If we use SY/YS and employ \~ judiciously, we'll even get this.

  /sbin/ldconfig [-nNvX] [-C cache] [-f conf]
                 [-r root] directory ...

Magnifique!  <chef's kiss>

> > * Typeset ellipses more attractively on troff devices.
> > * Sort option flags in English lexicographic order.
> > * De-parenthesize content that seems important.
> > * Perform a Kemper notectomy.  That is, stop saying "note that"
> >   followed by some declarative statement.  This trope is all over
> >   Unix documentation and I even see it in ISO standards.  The latter
> >   doesn't serve to recommend it; as Dave Kemper has pointed out,
> >   everything we put in technical documentation should be worthy of
> >   note unless placed in a footnote, marked as "unnecessary on a
> >   first reading", or similar.  It is the exception, not the rule.
> >   If you feel the need to say "note that", consider what adjacent
> >   material you shouldn't be saying at all.
> > * Say "symbolic link" instead of "symlink".
> > * When one sentence explains the previous, use a semicolon.
> > * Set literals used as arguments to `-c` option in bold, not
> >   italics.
> > * Place the modifier "only" more carefully.
> > * Recast option descriptions to be in the imperative mood.
> > * Recast file descriptions to use the paragraph tag as the subject
> > of the first sentence.
> >=20
> > Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
>=20
> Please break this further into ffix, wfix, and tfix, if/where it makes
> sense. Moving code around also usually goes in a separate commit, with
> no other code changes (that would be for the sorting).

Okay, for v3 I'll split the "style" change into ffix, tfix, wfix, and
the lexical arrangement of the argumentful options to ldconfig(8).

> > -will only look at files that are named
> > +will look only at files that are named
>=20
> Would you mind explaining the difference to a non-native speaker?

Sure.  Consider the sentence:

I ate pizza yesterday.

We can insert the modifier "only" in _five_ different places in this
sentence, producing five distinct meanings.  For additional English
language fun, these are not the only possible interpretations; but all
are plausible.

Only I ate pizza yesterday.  ->  Other people ate something else.
I only ate pizza yesterday.  ->  I didn't _make_ the pizza.
I ate only pizza yesterday.  ->  I didn't eat anything else.
I ate pizza only yesterday.  ->  It hasn't been long since I ate pizza.
I ate pizza yesterday only.  ->  I usually don't, but fell off the wagon.

> > -will only look at files that are named
> > +will look only at files that are named

Here, the restriction applies to the set of possible files "looked at".
At the same time, files are not simply "looked at"; ldconfig(8) may
replace them by rewriting the target of a symbolic link.  So it is not
correct to suggest that files are "only looked at".

> > -Intended for use by experts only.
[...]
> > +Intended for use only by experts.
>=20
> Same here.

There's no significant difference in meaning here, to my eyes; the
latter reads more like idiomatic English to me.

Regards,
Branden

--ajsmegjpyzk2myat
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO129sACgkQ0Z6cfXEm
bc4qXBAAryxh+WRbp+kpLLvuMO/HBCNweB51I6++BILIroCkQow4UKg+RfKbpWsE
ybHVewGR8+3cDNPJU5oXajcx4Hq+x7yGh25Y0XoH/PYECVGvbgN0JBjbKopH/HQV
dOnRE5UcxGRCpKw9WAOa0aO7dZLraHr76IxyxoIxCvOg4ao9j8CP9nBGhW8X7OkK
G3ODtvruzZw+lQlWqMG6+CF75t1RybtO/R2oCKIkd7el78+1xwMIsByAa3b+LaCy
sUsUNRUJz1eM0et+EiBaFczEyeGClkGAiteR5VLwIh284RSZpS/evIt8zNncTNKc
nXm6OqheOOcHWBLhFF1CW8tQmJoVCw7tvRgul8+j6g8tOaKYH3M2lUWmAtIWF7jK
+dYmUeR0nH/N1QNBSTqqvAQWN0Kex233VsqYidZY0e5VHpUUy2pqEwMEQeD5a8cG
47QDmF2N3u4mznRfzaldAhWKiXz5ip63WU4MMIVNtz1/wOhuVyAQ2hBQqk0ilDuR
OEkalVCXEtQuX62eIEWag3hv/+IRjK/IO8PjEIo+Febo0RN9NWzglCkBXk2fNEeE
/RLy2IGVRwL//4ASszvrSDsme/ty6S5scqxfEt0tAYXyAkUvXDTJXBEq0S0WlbdK
FZGDZQxSKxg8OR0TL6Yc28Pw5gDWorEJakIP/Da21jWV1YHoEeM=
=/5Ph
-----END PGP SIGNATURE-----

--ajsmegjpyzk2myat--
