Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 189103DC1DE
	for <lists+linux-man@lfdr.de>; Sat, 31 Jul 2021 02:15:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234448AbhGaAPo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Jul 2021 20:15:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48000 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234326AbhGaAPo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 30 Jul 2021 20:15:44 -0400
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58354C06175F;
        Fri, 30 Jul 2021 17:15:39 -0700 (PDT)
Received: by mail-pj1-x1031.google.com with SMTP id ds11-20020a17090b08cbb0290172f971883bso23136949pjb.1;
        Fri, 30 Jul 2021 17:15:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=uOoMY7WWDtNHWPPws89NRO9ZDQL/9B+g8377URwZYtc=;
        b=hdlTI/OBcexMUhSBLXOqQuJtkf3tBiQXFjCJpIzJzVU9cea4tlrknRorGMvWXkf4+B
         1Dxz0/4fd37oA6HPCka/Pf5fvWYhRHpYT/Nc4YV/MK4MQ7DU5ARqOsrRkQs0q/I+kkti
         TJQY9NKJu95D4gBRyRuH/SUxSQYfnXcPMukP+KXGFr4MECPbTLauVS7Nwe6b+XcYnRtB
         FMieL+vlBcCi1rZROA/Fna0dCQkCVxB+rMpggOVeH5N+KPzLUMH0u2SeYVGFHPQxxuFZ
         gKTvPSTZPoq0pfVbdbUo/iAIg/J7+s99pi1E9P2oqMrcsFk9VzN8D1XHwL5jRtPel/SX
         GGNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=uOoMY7WWDtNHWPPws89NRO9ZDQL/9B+g8377URwZYtc=;
        b=C55XT9szBt49RoXjoEGPHzCgLUWfEThDq3UsBMuZvwW+UAB6VOB+U53rcBNSGSKl2f
         tsff7b5IEvXm3W/0oUMskPLbbLCXPvhi2gdkdhqRGEy6f1IWnY+J4xOzWkWUhZI0hp/9
         pRGTpp/unM+kqaJa8ST088izlES5K7ozTe2DKLhYhOvJA1KxxZxKK1jGS7J1Z1QaQNXb
         InbfYYsckJ5ob0uQq+mENaJIn70UTZ3DAN6UsCjeNpP9xlsuE7jr0SrwJLUw+sd24MTf
         6/VuT6hkO95nA/YTvKINJn0YtmcX0BWDCp94ZZgfYAhH+pI1U8mvchgVbR2G+oGGoal8
         PRRQ==
X-Gm-Message-State: AOAM532UfPQcJOp2BS2woor9t5PC8Yye+gj6vEXlxWvD/jTF2LAzXjdf
        sRGMH0FvN+BFOMiBmbhKBGE=
X-Google-Smtp-Source: ABdhPJz/4BtbHd4PqKJR8l42KuGXJcERiKA/KFOkdQ/54G7PBpEMORFR6/0fdd3V2CY2miHcckTvOg==
X-Received: by 2002:a63:1d21:: with SMTP id d33mr3466027pgd.340.1627690538888;
        Fri, 30 Jul 2021 17:15:38 -0700 (PDT)
Received: from localhost.localdomain ([1.145.37.91])
        by smtp.gmail.com with ESMTPSA id 5sm3686420pfp.154.2021.07.30.17.15.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jul 2021 17:15:38 -0700 (PDT)
Date:   Sat, 31 Jul 2021 10:15:31 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>,
        Jann Horn <jannh@google.com>, Jonathan Corbet <corbet@lwn.net>,
        Kees Cook <keescook@chromium.org>,
        Randy Dunlap <rdunlap@infradead.org>,
        Vincent Dagonneau <vincent.dagonneau@ssi.gouv.fr>,
        landlock@lists.linux.dev, linux-kernel@vger.kernel.org,
        linux-man@vger.kernel.org, linux-security-module@vger.kernel.org,
        =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@linux.microsoft.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: [PATCH v2 1/4] landlock.7: Add a new page to introduce Landlock
Message-ID: <20210731001529.ggiknccl74akaahk@localhost.localdomain>
References: <20210712155745.831580-1-mic@digikod.net>
 <20210712155745.831580-2-mic@digikod.net>
 <3f1b943b-2477-2c4e-c835-d6616888176c@gmail.com>
 <c5036c5c-37a1-57d2-e5dc-1f41a5ed0d31@digikod.net>
 <a3b271e6-e03f-dab8-b04c-c76315cdd98e@gmail.com>
 <1a698059-d9dd-5aa0-2765-42e704c3a697@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="ehsdumg7eeutkyzw"
Content-Disposition: inline
In-Reply-To: <1a698059-d9dd-5aa0-2765-42e704c3a697@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--ehsdumg7eeutkyzw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi, Alex!

At 2021-07-30T14:59:52+0200, Alejandro Colomar (man-pages) wrote:
> Yes, they were because of semantic newlines.
>=20
> The "rules" are:
>=20
> Follow mainly "semantic newlines" style (forgetting about the line
> length), which will give you a text that (mostly) fits into 75 or 80
> columns.
>=20
> If after doing that there are some lines that exceed the 75 or 80
> column right margin, consider fixing that line by breaking it at a
> different point or maybe breaking it further.  The 80 column limit is
> a hard limit (I can't read anything past the 80 col), while the 75
> limit is a bit softer (that's for allowing quotes in reviews) (if
> fitting a line into col 75 would break it in a weird way, don't do
> it).
>=20
> If I didn't explain myself enough, please tell me.

I'm a little puzzled by the above.  Semantic newlines have little to do
with the output line length in *roff systems.  They arose due to a Bell
Labs Unix Room practice, popularized by Brian Kernighan.  Brandon Rhodes
has a backgrounder on this[1].

Man pages tend to be really flexible with respect to output line length.
This is one reason the groff man macros expose a user-settable LL
register.  The main limitations on line length are people using tbl(1)
tables or disabling filling (with the .nf request or in .EX/.EE
examples).  Another limitation is that as lines get shorter, it becomes
hard to set the page headers and footers without them overlapping.

For the first two points there is not much the macro package can do;
both tbl(1) and filling disablement leave the placement of line breaks
in the hands of the document author, and they can abuse that power by
"oversetting" a line; that is, making it longer than the configured line
length.

The third point is a problem the macro package can overcome with some
effort, by measuring the lengths of the components that go into a header
or footer an abbreviating them.  This is not a theoretical concern;
Erlang supplies some man pages with insanely long names[2], and you can
see the problem in footers today on the man-pages site for any page
groff ships, because Michael pulls from our Git repository (to my great
relief, because I fix documentation errors and make other improvements
all the time) and our version identifier has gotten crazily long because
we're on the order of one thousand commits since the last release
candidate, and gnulib's git-version-gen uses release tags, commit count
since the tag, _and_ an abbreviated commit ID to generate the version
string.  For my tree right now that's "1.23.0.rc1.999-7ae6d".

Here's a specimen of how that works out in a rendered page:
<https://man7.org/linux/man-pages/man1/neqn.1.html> (scroll to the
bottom).

I've fixed the problem for long page names for the next groff release,
but it involved some string-manipulation gymnastics[3].  I haven't yet
factored those out into their own (private) macro which I can also call
when preparing the page footer.

Regards,
Branden

[1] https://rhodesmill.org/brandon/2012/one-sentence-per-line/
[2] CosNotifyChannelAdmin_StructuredProxyPushSupplier(3erl)
[3] https://git.savannah.gnu.org/cgit/groff.git/commit/?id=3Db7f38e8a1d698e=
1078d7c215d08fde57d8e919b9

--ehsdumg7eeutkyzw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmEElhkACgkQ0Z6cfXEm
bc5viQ//aiYP1xMIvvGAd9x6UiXqZvwslItd2+qKgtJyFKCUjwggKlenPpewgt5b
Qsjc4qLJ57yXFre0kFel/Dy3MqBROWdcILWDjxD7HY6Q92nquR+kZ4YkWGqdsnTd
QwsxcFcYrtpBj/NfScfdNqkdxOG3odXSX4MK5HFB3Kf1/V/0AN99uSqQImm1WkiJ
2o6SHEbxsRmNOJB7tn1sQZQiSEgObrVpMfGXOevDma+6vma+2R/rykc7wq6W89Jp
7uVyHEq3R6ow4Jel+6ZPMTn/xo3yhp3V7Ghj/bzqcXpXSG97HnnDrzeIFKk0Lo9y
LvegNheY3kju+e5iVJuUq9NNY1j6nlpEHdQCmw249G+ZD3oIw3jbWaXVVqQgFB5b
+S1QnXxHTIH7Crz7gL4aeED3ik/bDg7LLZCHC+NcLUPpjA+35pfFT2IXVxEUJFoR
d1DEvfVwAlsjp9ubYzzc31NOBpmOglTMPxywzBY5CDw9rM53FVvzNNZ828XziCjh
8dD7tD2O2ibyJRfQPrH3QU63tRzNjX5bgOONkOh48k5rsU2MF1wybwZIDipIKMJj
xKr1aJO/a3QhTWzPsyBNOtYdRDuaAnaEjYHL4RULurNcHTDtZnR7N3thInFFrUEG
ZWes+6VM8MS65nAg/OOWmsV54Ikip54Sim3AWKaeKwMQUYsKwXQ=
=DqRD
-----END PGP SIGNATURE-----

--ehsdumg7eeutkyzw--
