Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 870BA767DBB
	for <lists+linux-man@lfdr.de>; Sat, 29 Jul 2023 11:51:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229816AbjG2Ju5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 29 Jul 2023 05:50:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229538AbjG2Ju4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 29 Jul 2023 05:50:56 -0400
Received: from mail-oa1-x35.google.com (mail-oa1-x35.google.com [IPv6:2001:4860:4864:20::35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA2B53ABF
        for <linux-man@vger.kernel.org>; Sat, 29 Jul 2023 02:50:54 -0700 (PDT)
Received: by mail-oa1-x35.google.com with SMTP id 586e51a60fabf-1bbdddd3c94so1821402fac.0
        for <linux-man@vger.kernel.org>; Sat, 29 Jul 2023 02:50:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690624254; x=1691229054;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=HO+p1aqWwzhDn27e31cO/6NkQLXm6MjyAVxDUdjCI28=;
        b=EdNdshp8SRWD/wLqSNb6EiSfhHRgsLJxHDmH+mymZtlzwNNljjLQarP+v0d4Z25jL+
         NpVvF0nTXFhWWMhcGL+wFeIpDZeZ65rBbU4iKDYNnB0RHRj9pmgC/6pgxlDheFcHMLW6
         9kQeGc+z59d+IR9BRSMnwCz1r+4DlWv+yq2RS++KfkJmwY/0h50cl8FtLIeoRWDf6mrj
         /eC6UikpLtkMI21LyRtL02L5w75XlFLaZS75qe6vUg7EjPqcIvV3zfmRTZCfKRSpJL8I
         DFIonbCkvDvR326iKaHhhBwgGnzDMFMER95xMMAWToav40FzeF65GJPJlzqjOeF9XqJ9
         fWFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690624254; x=1691229054;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HO+p1aqWwzhDn27e31cO/6NkQLXm6MjyAVxDUdjCI28=;
        b=WrYGwV4NAAfnlSRrbL/s646TrVQBoc1CYfeDIYhN3Xksdg7BObxW0EQ199ICe2RvlV
         9jeVKsNq1BtX3gCEQu6Xaz4/xqocz7eJOiA2Em/Ith75szRhAF9arlcNorzMjz/O66BQ
         H4tx2mIQ72G8hb/m/L2zQc2cABsWVRaq34SJR9ByU/shSionzChlXN4uZDcgfg6TNp2O
         YkLeAa/m3IJy4/Ax3uQd9ZeI7Pwx7TXnmQzYeluShIO6CRCDUIRILSwepKZUHwGjw6e1
         nafXiqhl7gOV1X0JEUdt0/4nqcWHBa7/fczmt2lqvZ/RpiQEBs4+2yfns4Tu7Mlbz/tt
         WicA==
X-Gm-Message-State: ABy/qLZ72pPUTGGt+RA/619k/fAIxZU2MBzfAkZuAPFtbQDUHmDhtNA2
        9CWsSOiX/OQFrHqHL6aZcCkmWSpT6Ns=
X-Google-Smtp-Source: APBJJlFF9ssA8ng9OIMt3DPz0CQMi1cjmEwu8o4P/BBQm5St6/nONKsVdA4UBtadjlV6GaDD+DhURw==
X-Received: by 2002:a05:6870:e247:b0:1b3:b6c7:ab1a with SMTP id d7-20020a056870e24700b001b3b6c7ab1amr5677107oac.28.1690624253989;
        Sat, 29 Jul 2023 02:50:53 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id b23-20020a056830105700b006b8c6eb962esm2412374otp.52.2023.07.29.02.50.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Jul 2023 02:50:53 -0700 (PDT)
Date:   Sat, 29 Jul 2023 04:50:51 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     Lennart Jablonka <humm@ljabl.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH] string_copying.7: tfix
Message-ID: <20230729095051.755yips2tkv5whph@illithid>
References: <ZMQL2bAg5p2no9ir@beryllium>
 <b6ce1d14-528f-cbe9-8117-be684526e36f@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="keprhgv3vrmqb4x3"
Content-Disposition: inline
In-Reply-To: <b6ce1d14-528f-cbe9-8117-be684526e36f@kernel.org>
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED,URI_DOTEDU autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--keprhgv3vrmqb4x3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2023-07-28T23:31:10+0200, Alejandro Colomar wrote:
> (CC +=3D Branden)

I think I just received my grammar prescriptivist's draft notice... ;-)

> On 2023-07-28 20:41, Lennart Jablonka wrote:
> >  while not duplicating memory
> > -nor using time to do a copy.
> > +or using time to do a copy.
>=20
> Is nor incorrect here?  I'm not a native English speaker and would
> like to understand why it is incorrect.

With the humbling caveat that you find me more persuasive than some
online grammar authorities, the foregoing suggestion is in my view a
hypercorrection.  The (coordinating) conjunction "nor" is not restricted
to sentences using "neither".

https://newsroom.unl.edu/announce/snr/3511/19686
https://study.com/learn/lesson/neither-nor-usage-examples-sentences.html
https://www.grammarbook.com/blog/effective-writing/using-nor-properly/

In the last, attend particularly to section "Using Nor Properly:
Interchanging with Or".

I'm a +0 on this hunk of the patch.  It's correct either way.

> > -See EXAMPLES for a reference implementation.
> > +see EXAMPLES for a reference implementation.
>=20
> Ok

Strong +1 here.  It is volcanically nonstandard to apply sentence
capitalization to an independent clause after a semicolon.

> >  .\" ----- DESCRIPTION :: Functions :: strlcpy(3bsd), strlcat(3bsd) ---=
-/
> >  .TP
> >  .BR strlcpy (3bsd)
> > @@ -427,7 +427,7 @@ isn't large enough to hold the copy,
> >  the resulting character sequence is truncated.
> >  Since it creates a character sequence,
> >  it doesn't need to write a terminating null byte.
> > -It's impossible to distinguish truncation by the result of the call,
> > +It's impossible to distinguish truncation by the result of the call
> >  from a character sequence that just fits the destination buffer;
>=20
> I guess it's ok (to me they both sound good)

I think the comma arose there due to good instincts: you have a long
chain of prepositional (and participial) phrases that do _not_ grow
strictly narrower in scope as they proceed.

Consider:

"Due to the dense foliage, it's impossible to distinguish the man in the
tree growing from the loamy soil laid down in the Cenozoic Era that I
remember learning about in geology class."

This (admittedly goofy) sentence is not difficult to interpret: each
phrase (after the first, "Due to", which serves as a topicalizer)
modifies only the preceding one.

By contrast, the sentence in this man page is structurally complex and
therefore challenging to parse.

"It's impossible to distinguish
     (truncation (by the result (of the call))
=66rom (a character sequence (that just fits
                                           ([inside] the destination
                                            buffer))).

That's pretty tough sledding.  Only semantic knowledge permits the
experienced programmer to make sense of it.

The use of the comma prompts the reader that an ambiguous parse is
possible, and that they should pause, as they would in speaking, to
permit the modifying phrases just uttered to bind to the preceding
language.  Or, alternatively, the comma (or pause) is a warning that the
phrase stack is being popped, cueing the reader or listener to attempt
multiple parses in search of one that seems suitable.

That this exhibit took so much meta-analysis to explain is what
motivates my advice: it would be better to recast the sentence until
clarity is achieved.

> > -This function copies the input character sequence
> > -contained in a null-padded wixed-width buffer,
> > +This function copies the input character sequence,
>=20
> I believe the below is like a parenthetical, which is why I put it
> between commas; isn't it?  Although your version also looks good.
>=20
> > +contained in a null-padded fixed-width buffer,
>=20
> Ok
>=20
> >  into a destination character sequence.

I'm a +0 on this one, too.  To me, it reads equivalently either way.

[duplicates of the foregoing cases snipped]

Regards,
Branden

--keprhgv3vrmqb4x3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTE4PIACgkQ0Z6cfXEm
bc7oMQ//eq7rgMeHtwTz7HlKHzlBsS3cAodXsaFTul7JhlxyHUsV72K34OYIAwCe
0peDANaJMFPBoZFW986flHh/a0tA1hTIBjY2j/VZ0S1z+lQYSVaaY2T83e+5fk3r
JCxBrBa8em0JdMC4AS5uc4U7PJ88I+97jG0NkCy9VGBTSqZ3YXcbnsHl29z0+1tS
6qU27y8TsDWmv3rjByjVv3gyjmsNqmSEJzNyYpuciTDppF9ehHTckXFIGAy/FHM+
B1FYo36iyzC9lqR9wuXdP5/O/d6Jpsvz0BH2fU9Rn42on16oF8QYjC8drJB4spy3
bNeuTA4aIBfwWuqTGl1wWVueS9045H0Mk1P4fMs0231ANoKmesRQUiA7UOxg1OD7
1ACQzJQ2Ohy3Crj4/5DUmL7ib81bMG3FUgAntNZNYWUDxVGBSyqIFu65ObBmpLly
m0078l8bc0D6hh3GFJkqhpRA1AL7jCXeUM6UA7aTK7JHEjgJKP+wZGFC2gH3lQKz
H4AhzfIJLM6ex4V4BHf6Z7myKpeGosvhPCUBAq3G9j1gnXppIDHiAWha73zKM/iO
bH8KBdl989u25XY9Z+vK2snPdnuvtoT4M8hz0zwdBNDl+BR8TZADUzw6KfoyJlYH
X0RsY4OjDAre4igBhNTDeOw2Dn4IF2nnUjPqai1UJKa3y8OfRrE=
=xf3l
-----END PGP SIGNATURE-----

--keprhgv3vrmqb4x3--
