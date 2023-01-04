Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 50A6B65DDF3
	for <lists+linux-man@lfdr.de>; Wed,  4 Jan 2023 22:00:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235489AbjADVAp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 4 Jan 2023 16:00:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50466 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230233AbjADVAo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 4 Jan 2023 16:00:44 -0500
Received: from mail-oa1-x2a.google.com (mail-oa1-x2a.google.com [IPv6:2001:4860:4864:20::2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79C5D15FEB
        for <linux-man@vger.kernel.org>; Wed,  4 Jan 2023 13:00:43 -0800 (PST)
Received: by mail-oa1-x2a.google.com with SMTP id 586e51a60fabf-12c8312131fso41190129fac.4
        for <linux-man@vger.kernel.org>; Wed, 04 Jan 2023 13:00:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6V+5SRO7nNeCvP8iWCvl3t3Dy6HXOdKFWEs9SqpfwG4=;
        b=p0vUqAcNTC6iEENsibHvJWFeQ9VqqQfQFNy2bMhy4k22+6gwPIEEjIZQ+iEaK/8IL6
         QqOSEVv/fAOUc3A4Si1C+JGWfEFdjZVDVEBC016Le331ob0HSPY8i5Cy/w/juTTm3RtT
         XP6dLiEL1E0C2LwxZ2pL8Vw1eNyAoaxdA/n1Y0ZQ6hH0lScGSrz/gJ86SBRVSM0ds1pd
         BOmbAPWKGK8IHsJ8sEJzA489K3tbE6xnYsqUodX4HgtXgo6fKtlUm6CzcXMM6AVJznCU
         yCmn0xosplMsuGD9E0W4+noT5ayA7f3hp1ghdFj8f3/57cC0GqjahlB/nA94DDlSiNMn
         JQNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6V+5SRO7nNeCvP8iWCvl3t3Dy6HXOdKFWEs9SqpfwG4=;
        b=D7MIVEDhq/8AGaYBVrNdu5Xx8kopPom3ylEJJLynR2m/EDTY5Pu8+b03pqOFqvCUbH
         9tsIsXXIbK9anus+SOcz7KKcQHgd5h8SYpq9jvWAelzQLfdmH4gk/MV5qZdk04TfbV6r
         Js7nsFo+apyouFun0J+yH8jc7Xm60PscPKPCuvN/ZD7ZMd0W17blpdmAyLIeSjB9nDM8
         0uBEUFSF6y+TifIyr9FRhnRA5W+zjzXmtWNHpOQULD1SwHRz2Lq5sYYiwLc137nSJizb
         tZV19nWEDeLR9hDWO+9gEZd0KAh8AONg7cBznfYPVDQes/Af4jNCqZupiPsAwYm7cFuw
         NOQg==
X-Gm-Message-State: AFqh2kr9RronjQhkzbfs1XJuIy8FGBgn79B0dyBzY+fv0sYLeGoZNDRX
        e3Qloga6pojyE3Yzo1n3WwM=
X-Google-Smtp-Source: AMrXdXt5ZsPEV68GYiie7jD789dz6QozebGzS04sLCEJydb/SdRjra13UOHB8Ykd7h1wQ0b/k0XHCw==
X-Received: by 2002:a05:6870:1b08:b0:150:d1f4:936f with SMTP id hl8-20020a0568701b0800b00150d1f4936fmr3916712oab.18.1672866042065;
        Wed, 04 Jan 2023 13:00:42 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id l8-20020a056870204800b001417f672787sm15916340oad.36.2023.01.04.13.00.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Jan 2023 13:00:41 -0800 (PST)
Date:   Wed, 4 Jan 2023 14:59:42 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH 1/9] ldconfig.8: Fix markup nits
Message-ID: <20230104205942.uc6klfjzf5fe2zij@illithid>
References: <20230104073807.gcohk253vopp4ii3@illithid>
 <8527af62-1921-63cc-a94b-db3d9af4ee49@gmail.com>
 <20230104155512.klkmu62oaz7ore5a@illithid>
 <529c2d78-395f-b0e6-a114-e214335d4472@gmail.com>
 <20230104191118.xs7jwtjcqz6fhbbx@illithid>
 <afd3a0d3-9bf4-2687-4f62-2ebd62398447@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="bm44v24vxcpku64r"
Content-Disposition: inline
In-Reply-To: <afd3a0d3-9bf4-2687-4f62-2ebd62398447@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--bm44v24vxcpku64r
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2023-01-04T21:15:00+0100, Alejandro Colomar wrote:
> > That's true.  But what is _not_ true is that you don't have a
> > minimum expected terminal width.  You do, you just might not know
> > what it is and it may not even have been consciously chosen.
>=20
> I haven't consciously chosen it, but I often use 66-col terminals,
> especially when I plan to paste text into an email.

Well, by "you" I mean in your capacity as Linux man-pages maintainer.

There is some threshold of terminal width in the corpus of pages below
which things start to look really horrible.

Maybe you'd like my shell wrapper for man(1).

    # View a man page but report all warnings.
    man () {
        if command man "$@"
        then
            command man --warnings=3Dw "$@" >/dev/null
        fi
    }

It shows me the formatter's warnings _after_ the page is rendered.

> Even if unfilled blocks exceed the terminal width, and therefore might
> be unpleasant to the eyes, they have a nice feature: the line never
> breaks, and you can still pipe it to other programs, or paste it, and
> it will be a single line.

You can therefore simulate this for any man page by setting the `LL`
register to some large value.  Once it exceeds your terminal width, it
will certainly be ugly as hell, but if you want line-by-line
piping/pasting, maybe you'll find it useful.

    -rLL=3Dline=E2=80=90length
        Set line length; the default is 78n for terminal devices and
        6.5i for typesetter devices.

man-db man(1) simulates this with the MANWIDTH environment variable.
Presently it uses a hack, which I hope will go away after groff 1.23.

https://savannah.gnu.org/bugs/index.php?58992

> > In any event, groff man(7)'s SY/YS extension macros are _built_ for
> > this application.  I'm happy to "port" this page to use them; doing
> > so will permit removal of the PD macro calls, among other benefits.
>=20
> Yup, that would be nice!

Okay, there's another change for v3, then!  :)

> > > Is there anything that "reverts" \%?  So that if it were the
> > > default, we could use \anti-% to say "groff, you might break this
> > > word"?
> >=20
> > Yes.  \% itself does that.
>
> I mean something like \X\%foobar, so that the \X "cancels" the \%.
> Not manually inserting break points.  So, imagining a world in which
> hyphenation was disabled _only_ within font-selection macros, I could
> specify that a word is fine to be hyphenated like this:
>=20
> .B \Xidontcareifthisishyphenated

Hmm, no, there is no *roff escape sequence for "apply automatic
hyphenation to the following word".

But your hypothetical is already a counterfactual.  Macros like .B
_already_ don't disable hyphenation.  So it seems to me like you're
proposing second-order machinery to get yourself out of the bind you're
creating with your first-order demand to make the font macros disable
hyphenation.

It really seems better to me to leave the font macros alone and have
a semantic tagging facility for those things you really don't want
hyphenated.

Or, proceed as the groff man pages have to date, stick to the font
selection macros as they are, and use \% with them.

Most of the 94 printable Basic Latin characters already have meaning
as *roff escape sequences when preceded by an escape character.  The
scarce name space that remains must be occupied only with great
consideration.  Dave Kemper and I have kicked around ideas for an
"extension" character for escape sequences to surmount this problem.  \<
is available, and despite giving me nightmare memories of HTML, it might
be the best choice among what remains.[1]

> > Like changes in lettercase, this is _information_.
>=20
> I don't argue against that, but if there was a way to return that
> information explicitly, we wouldn't be loosing it.

As noted above, I think a good way to achieve that is by not discarding
it such that it needs recovery later.

> Oh, I do complain a lot; however, I don't express it too much in the
> form of bug reports, since I don't believe it's the fault of the
> writer, but rather lack of support from groff(1).

I don't think groff is missing support for anything you want here; we
have a disagreement over the design of the man(7) package.

> But I do find it very uncomfortable, similar to when manual page authors
> don't use the proper \-.  However, I do think that one is fault of the
> author, and you can already find many such reports signed by me :)

My Debian colleagues teased me twenty years for railing against man
pages that didn't escape their hyphens.  I was an early adopter of UTF-8
terminal emulators.

> > I suppose people who copy-and-paste multiple lines from a man page
> > realize they need to remove the hyphens along with newlines.
> > Fortunately, on UTF-8 terminals, they have hope of seeing the
> > difference between hyphens and the ASCII hyphen-minus that is
> > always(?) meant as a literal.
>=20
> My problem is not about pasting text.  That's very minor.  My problem
> is finding text.

Yes, I've seen many people complain about this, justifiably, over the
years.  When people leave hyphenation enabled and try full-text searches
of man pages, often inside less(1), they get frustrated by the broken
words.

> For finding command options, I usually type:
>=20
> /   --foo
>=20
> If \- hasn't been used, I need to use:
>=20
> /   ..foo
>=20
> and skip all the noise.  When there's too much noise, sometimes using
> an anchor (^) helps.  But it's way nicer when writers use \-.  I keep
> finding such bugs, and reporting them as much as I can.

Yup.  Improving hyphen-minus hygiene here produces wins.

> When searching for keywords, the problem is the following:  I do
> `/keyword`, but then if the keyword is hyphenated... well, good luck.

Right.  less(1) is an interesting program.  It has lots of features,
many more than any one user will use.  But it seems to be pretty
indifferent to helping with searches for hyphenated words.

It's _possible_ to design an extension to ISO 6429 for communicating
hyphenation break information to terminals (and pagers).  A big question
is what would bother to use that information.  If Mark Nudelmann doesn't
want to support it, it's DOA, and he views ISO 6429 grudgingly enough in
the first place, hence "less -R".

I have only two recommendations.

1.  Disable hyphenation in your man.local; or
2.  Back my play for semantic tagging in man(7).  ;-)

> > I think marking break points, hyphenated and otherwise (as with
> > URLs), is the opposite of laziness.  It is a level of fastidiousness
> > I don't actually expect of many man(7) writers apart from myself.
>=20
> I would want to use \:.  What I want is a tool which re-enables the
> default hyphenation points after they have been cancelled.

I submit again: if you don't cancel them in the first place, they don't
have to be reconstructed.

> I would.  I wouldn't be able to count how many times I've tried to
> search for such a keyword, and it was hyphenated.

Semantic tags would solve this problem.

Regards,
Branden

[1] What's available?

    \+ \1 \2 \3 \4 \5 \6 \7 \8 \9 \; \< \=3D \> \@
    \G \i \I \j \J \P \T \U \W \y \]

--bm44v24vxcpku64r
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO16LcACgkQ0Z6cfXEm
bc7UixAAhsfvsYzep/ANfI/NNXJZ4vDLM8gDpaEwn5MhLJcgbnvTY3+8P5QbqUwD
7UR+TTArn1Z/E7hZElEfhtnJxD07Y5qyAW8ex+0Q1gBE9JgdHluz/e90xLYIGYJm
U1fXfOCbH7VZM8dftx1rKw65TdMP/2YaRV9r/sz0X5S5xIR+/MHh6mcYXAYTKSy1
i9xdR9/PosLdFK06i+26dl3oUX2xXBe5Y1/1QP8MCHVVH3Dg77UYiiquQ7wajBzq
3WMnQeNi0+AXKe5p0ufra2QBhdfnWnIw09bF+8dPaaYoSzoWSFygeCc5d4nVTVjr
LZq8FEdNdqYCVO0dbMX9eBwabpzDu7SL+a1ranqGi+NnMdlzqyJWrTHNRFgExeDN
4IfXArsXvNbm+U5iRbn0TbO7R3U3NNJ33eXUnWwrYjc7tbZmx7L7RfbfCC08MLP2
Fo4HoCPMRN18OWbYzyB7LgJgSMo7tXSIDHA7+58FtYDZbqI/FZdAF1qiADJCOmFA
v4ANulwMlGhvtnjKegMKYVUQMwyww/BtzQaoRlx26Ng2EWkMTsWEvlw9XUQH6hbp
c5dgCnjWI2gAi+vBXYd1BWhRwngV/LNLQeskAmOyMLFMC0BAm8blXW2YvNu4cYfi
GG2ikRmhCt9x11HUPSWeIZ2zZC3w8dxgVw9pf6c4OpU8JKVYO8o=
=kjWa
-----END PGP SIGNATURE-----

--bm44v24vxcpku64r--
