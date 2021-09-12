Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CB4AE407EED
	for <lists+linux-man@lfdr.de>; Sun, 12 Sep 2021 19:27:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229784AbhILR3L (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 12 Sep 2021 13:29:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46680 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229653AbhILR3K (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 12 Sep 2021 13:29:10 -0400
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2EB61C061574
        for <linux-man@vger.kernel.org>; Sun, 12 Sep 2021 10:27:56 -0700 (PDT)
Received: by mail-pj1-x1036.google.com with SMTP id j1so4685910pjv.3
        for <linux-man@vger.kernel.org>; Sun, 12 Sep 2021 10:27:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=hBMMYAVyhRpRoDraJrmK0lRD/noCh+kGr3uvOXlH/go=;
        b=XzmV3bJoZiEwYnw62SDOWEeWnRkTL9Sh6tbATIFcOF6pZCyjW5azZOV6xuXL/74MxM
         xPQQUvdLlZkd8JcQsd5u4Pob1wop2vhjsugiBwCHPYlSLtbzyvMIbnR8WVc9iqS835G4
         EPAlKZcY+TrhWvmr8jn8NM9P0fMXT5dnB7OfhxmqqUNC5MEfXKJpvMoSiJb1VR+m1nQX
         jGFYjN8NMHWjRDL5jOyRjDZjZmy1khrfxmVFk11kwZFEp4Uvk13xFY1tcuxH+rEcznXI
         6GFu3Sk9OIWzTYjIw4Sg2haEdVzYwZgsRWiyeWPG0ODS0PMiNFsdqgtVlXEDwCIwi9+C
         EcZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=hBMMYAVyhRpRoDraJrmK0lRD/noCh+kGr3uvOXlH/go=;
        b=5wIf+9UWd7CKW4gfCRFi1sHYX1cIEPRQJ2r1ExHdP1XewliMS2lgfzhAorv+b2batC
         ldQyfOuQQorR8unRMLGuERT/OvsHukbbXQHZ2mSqAWX7qoJ2Vtz2ex1NKYqpi2Pgp+D7
         0BhGhH2wY+30htMkhzsl+cuvxOKp0iwSTpU9VGHaemjHDqglYhbfhjA/m4wJT1Km5Qr+
         CFe6MvMJWDqFQfDG7cgy4rR+BrnaOD+HOfVeKgY8S+bQmQ0oce9bS+E800cONOs7Aav+
         p2dNlyexIKGaTSEvpynD0uGjrSlCBx3ajMxiIoanlUI1cQ+p5h6gTbcu8ZzEXIwT9PUb
         YJQA==
X-Gm-Message-State: AOAM530oAGRQujzifl6IuKzgd2YfzBr5bnqSZ4oux5fKmUqlfMqadWRM
        P8a/73iocp1fgEtktMVzvm4=
X-Google-Smtp-Source: ABdhPJyVfGd+/NzPhn3LD4JgUpAldPOzGOrKlm8YOKHAM7LDHQl/AfeXKfKAGKqnJeHht0vo0jY1hA==
X-Received: by 2002:a17:90b:1e49:: with SMTP id pi9mr8591857pjb.83.1631467675486;
        Sun, 12 Sep 2021 10:27:55 -0700 (PDT)
Received: from localhost.localdomain ([1.145.22.133])
        by smtp.gmail.com with ESMTPSA id f16sm4349473pjh.6.2021.09.12.10.27.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Sep 2021 10:27:54 -0700 (PDT)
Date:   Mon, 13 Sep 2021 03:27:50 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     groff@gnu.org, linux-man <linux-man@vger.kernel.org>
Subject: Re: .B, .I disable hyphenation?
Message-ID: <20210912172749.uziql5vofxi7sjth@localhost.localdomain>
References: <ebbf8dab-6fd0-2fb8-d29b-b7146f79398d@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="oarvrunewe5njoop"
Content-Disposition: inline
In-Reply-To: <ebbf8dab-6fd0-2fb8-d29b-b7146f79398d@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--oarvrunewe5njoop
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi, Alex!

At 2021-09-12T14:56:39+0200, Alejandro Colomar (man-pages) wrote:
> Hi Branden,
>=20
> Usually, when a manual page highlights a term, either in bold or
> italics, it usually is a special identifier (macro, function, command
> name or argument), for which hyphenation can hurt readability and even
> worse, turn it into a different valid identifier.
>=20
> What about disabling hyphenation for .B and .I?
> Are there any inconveniences in doing so that I can't see?

The problem that arises is that the font styling macros are
presentational, not semantic, so it's hard to know whether someone is
using them for emphasis or to suggest syntactical information.  This is
why you made a statistical argument ("usually").

I'm hesitant to adopt your suggestion, because if we did make this
change, it would be difficult to override in the other direction, e.g.,
the page author is thinking, "yes, I'm putting emphasis here--hyphenate
the words as necessary, darn it!".  Because hyphenation had already been
suppressed, it would have to be manually added back in to every word in
the arguments to .B and .I.  Most writers of English, for good reason,
cannot be bothered to learn where the hyphenation points are and
understandably leave that chore to a computer.  (Moreover, U.S. and
Commonwealth English seem to apply different hyphenation rules.)

In my opinion it is easier, in terms of maintaining flexibility and
getting reliable results, to do what I do in the groff man page
corpus--disable hyphenation on a per-word basis when necessary.  To be
concrete, I populated the shell variable "MANS" with the man source
document files in the groff tree, and then performed this grep.

$ grep '^\.[BIR]\([BIR]\) \\%' $MANS

I got 434 matches in groff Git HEAD.  Here are 3 of them.

=2E/src/utils/lkbib/lkbib.1.man:.IR \%@g@indxbib (@MAN1EXT@)
=2E/src/utils/lkbib/lkbib.1.man:.IR \%@g@refer (@MAN1EXT@),
=2E/src/utils/lkbib/lkbib.1.man:.IR \%@g@lookbib (@MAN1EXT@),

A whopping number of these are like the above: they are man page cross
references.  The `MR` macro I've been talking about for (over?) a year
now would render this usage of \% unnecessary, because MR would be
semantic and we know we _never_ want to hyphenate the name of a man
page[1].

The manual suppression of hyphenation is not necessary if you know a
word won't be hyphenated.  A trick that's been passed around on the
groff list is to have a shell one-liner handy that tells you all of the
automatic hyphenation points groff thinks a word has.

Here's the version of the "hyphen" script I use.

#!/bin/sh

for W
do
    printf ".hy 4\n.ll 1u\n%s\n" "$W" | nroff -Wbreak | sed '/^$/d' | tr -d=
 '\n'
    echo
done

I don't have to remember or reason out which of "indxbib", "refer", or
"lookbib" will be hyphenated.  I can ask groff.

$ hyphen indxbib refer lookbib
in=E2=80=90dxbib
re=E2=80=90fer
look=E2=80=90bib

Yup, they all need hyphens, so a leading \% is advised.  [Aside: What's
that "@g@" thing, you may ask?  Like the man page section number, it is
not groff syntax, but fodder for a sed script that replaces it during
make(1) with the command prefix configured by the person who builds
groff.  (When groff was first written in 1989-1991, it often had to
share a disk with a proprietary troff installation, and needed to stay
out of the latter's way.)  Since I can't know at man page maintenance
time what the builder will choose for a prefix, I have to assume that it
is something that is hyphenable, and so I suppress its hyphenation.]

By contrast, I don't need to suppress hyphenation for the following.
[Aside: These command names also don't collide with historical troff
names, so they don't need the command prefix, either.]

=2E/src/utils/tfmtodit/tfmtodit.1.man:.IR groff (@MAN1EXT@),
=2E/src/utils/tfmtodit/tfmtodit.1.man:.IR grodvi (@MAN1EXT@),

In my view, this is really not much work; I spend much more time
thinking about and recasting at the sentence or paragraph level--or
realizing there's some concept that we haven't explained adequately at
all and drafting a presentation of it...and, for that matter, composing
emails like this one--than I do worrying about hyphenation points.
Nevertheless, I recognize that many contributors of man pages to the
Linux man-pages project are _profoundly_ uninterested in typography--in
fact they may have hyphenation disabled altogether in their man page
renderer[3]--and regard every single thing they are required to learn
about *roff or man(7) syntax as one more nudge in the direction of
Markdown or some other alternative that they imagine will deliver them
to an effortless utopia where documentation practically writes itself.

I acknowledge that placement of these hyphenation control escapes looks
tedious (and it is, slightly).  If we want to fix this in the man(7)
macro language, then, in my opinion, the right way is to cross the
Rubicon and add more semantic macros.  I have never forwarded a serious
proposal along these lines because I still have full-thickness burns
over 90% of my body from exposure to DocBook 25 years ago.  The problem
that mortified me is that as soon as people get their hands on a
semantic tag they have, all too often, deployed it the highest
syntactical level of the implementation language they can locate.  In
HTML, for example, that is the element.

If we had a pair of macros that meant "my argument is a keyword" or "my
argument represents user-replaceable text", respectively, then we could
easily and reliably solve the problem at the level you're tempted to.
(Though as a matter of fact, I would _not_ disable hyphenation for
nonliterals...why should we?  They don't need to be copy and pasted
as-is--if they are, they get replaced anyway by definition--and
descriptive nonliterals are sometimes long[4], as anyone who's read a
few BNF grammars can attest.)

The smallest, tightest solution I have been managed to contemplate that
does not bloat the name space of man(7) is something along these likes.

=2EKW keyword [tag-space]
=2EVA metavar [tag-space]

Here is a straw-man example.

=2EKW strlen function
and
=2EKW strnlen
return
=2EKW size_t type
and take an argument
=2EVA s variable
that is expected to be a
=2EKW "const char *" type

=2E..which would render as

strlen and strnlen return size_t and take an argument s that is expected
to be a const char *

"strlen", "strnlen", "size_t" and "const char *" would be styled as
directed elsewhere (with defaults in an.tmac or an-ext.tmac, but
possibly overridden in man.local to suite distributor or site tastes).

I wanted to end the example sentence with a period, but right away we
hit one of the problems that has prevented me from advancing this
proposal, which is the question of how to handle adjacent
punctuation...add yet another macro argument for it, or encourage usage
of the output line continuation escape \c, which historically terrifies
people?  Support multiple optional arguments, and force people to learn
to quote empty macro arguments, an inconvenience that man(7) largely
already spares them from if they practice good style[5]?

In case it needs to be pointed out, I think it's impractical for
man(7)--as a macro package--to prescribe descriptors for the "tag" name
space.  mdoc(7) somewhat notoriously maintains large catalogs of a
proliferating number of BSD-descended operating system names and
releases, a source of ongoing tedium and maintainability
frustrations[6].  DocBook's attempt to boil this ocean is what drove me
away from it and I don't want to bloat groff man(7) with something
that's going to demand community consensus--and, I expect, some amount
of heated debate--to resolve.  The virtues of _having_ a tag name space
are, I trust, well understood, and their availability is a point Ingo
takes some justified pride in with the support thereof in mandoc(1).

The Linux man-pages project is much better suited than the groff project
is to design and promulgate a set of canonical tags; to point out just
one blind spot, groff doesn't ship _any_ section 2 or 3 man pages,
whereas these sections are Linux man-pages' bread and butter (though the
long-neglected section 7 is looking better all the time and at last
fulfilling its decades-old potential).

I don't have answers to the questions I've raised, so in the meantime, I
practice the discipline of using the hyphenation control escape sequence
with the font style macros.

To conclude this epistle with some possible next steps to take, I
foresee a few possibilities.

1. Despair of popularizing this knowledge.  Encourage people to continue
   to do as they have always done, and trust more detail-oriented
   contributors like yourself to clean up .B and .I calls with
   hyphenation control escapes as required.
2. Teach people about correct usage of the \% escape in man-pages(7),
   and remind contributors about this subject about as often as you have
   to do regarding semantic newlines.
3. Lobby for a change to man(7) implementations as you originally
   suggested.  I know I've voiced some resistance to this idea, but your
   bigger challenge may be getting a hold of any maintainers of
   non-groff man(7) implementations to even field the proposal.  On the
   other hand, if groff and mandoc are all you care about, you've
   already reached the right people.  :)
4. Have Linux man-pages provide its own implementations of .B and .I to
   do what you want.  (Every Linux man-pages document could use the
   `.so` request to load such overrides.)  This might represent an
   irreconcilable conflict between your project's needs and groff, and
   I'm pretty sure no one wants to see that happen, but in the spirit of
   frankness I have to point out that this is a possibility, and one
   that may not have occurred to many Linux man-pages contributors.
5. Cross the Rubicon and develop semantic macros for man(7).  The payoff
   here is huge but the effort required will not be small.
   (Implementation is not the hard part; socializing the change and
   providing a smooth transition/deployment path for umpteen
   distributors who won't ship Linux man-pages releases in synchrony
   with any other particular thing will be much more challenging, I
   predict.  And that's not even counting the issue of standardizing a
   lexicon for the tag name space.)
6. [ObIngoSchwarze: Switch to mdoc(7).]

Regards,
Branden

[1] Erlang developers may disagree.[2]  :-|
[2] https://savannah.gnu.org/bugs/?43532
[3] Or would, if they knew it was possible.  See the `HY` register in
    the "Options" section of groff_man(7) or the `--nh` option of man-db
    man(1).
[4] Here's an example from groff_font(5) in groff Git HEAD.

       papersize format=E2=80=90or=E2=80=90dimension=E2=80=90pair=E2=80=90o=
r=E2=80=90file=E2=80=90name
              Set the dimensions of the physical output medium according
              to  the argument, which is either a standard paper format,
              a pair of dimensions, or the name of  a  plain  text  file
              containing either of the foregoing.  Recognized paper for=E2=
=80=90
              mats are the ISO and DIN formats A0=E2=80=93A7, B0=E2=80=93B7=
, C0=E2=80=93C7,  and
              D0=E2=80=93D7;  the  U.S.  formats letter, legal, tabloid, le=
dger,
              statement, and executive; and the envelope formats  com10,
              monarch, and DL.  Case is not significant for the argument
              if it holds predefined paper types.

              Alternatively, the argument can be a custom paper size  in
              the  format  length,width  (with no spaces before or after
              the comma).  Both length and width must have  a  unit  ap=E2=
=80=90
              pended;  valid  units are =E2=80=9Ci=E2=80=9D for inches, =E2=
=80=9Cc=E2=80=9D for centime=E2=80=90
              ters,  =E2=80=9Cp=E2=80=9D  for  points,  and  =E2=80=9CP=E2=
=80=9D  for  picas.   Example:
              =E2=80=9C12c,235p=E2=80=9D.   An  argument that starts with a=
 digit is al=E2=80=90
              ways treated as a custom paper format.

              Finally, the argument can be a file name  (e.g.,  /etc/pa=E2=
=80=90
              persize); if the file can be opened, troff reads the first
              line and attempts to match the above  forms.   No  comment
              syntax is supported.

              More  than one argument can be specified; troff scans from
              left to right and uses the first  valid  paper  specifica=E2=
=80=90
              tion.

[5] https://man7.org/linux/man-pages/man7/groff_man_style.7.html#Notes
[6] https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D867123

--oarvrunewe5njoop
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmE+OIwACgkQ0Z6cfXEm
bc4oSQ//ahcV2iSJlSj6BPMLm4LFvR8SK4Qz83yuT0ZPr+nEc++UsUF6vtVzclgn
kNQNUnJG883PzzL+XBYaa5gRaQLVv0IvdPzjVnR6BJ2VIOwmuB/Ea/0zEDuQ/Tfc
izbrwUTaZTbZxO3/A/8J55FX9nY8QkyKG6bhcbAMGn6vHkhpUXA0yDJTtpTMmyV/
EidcpaBOJXlFOLILvCPnrTLMUlsOeZnTc20lJ337mGt/UOQJ+2hlYgaqIGKTO/Aq
uTwINGrnXMwbkmsXdQj7AooWxQFlsoGEuWK93i/oiGbwkKXq8HPrquJNgMSdZlA/
lXw2aWIooizZ029avlFdaDwUIn9E20pPnR11ksBysKRU7veAl1AKV4S6NLusZ2pI
/qY7QJEZDqpkj6XBuKEU9mC+qxKIU9pxcFjEXBYmtCLxDav65cYXyW32yQLr1OuR
eb376Uktvy4LUxsWiZOwtdcERwXULBmWt/KicH00ADMbTH7lKH65p45wCkDfZDay
wWBA57ba+SRkmPCEafiIRC/2xKKhV9N60mOjUSze2Hp9uX1MmLr7rYic7QA+k2DW
ixb36hiq6PoqWG3vgvO5HAkl6z74Uc0r1fwr0y0IDI7Lh/A+mJvdkqGBNFJlKWgy
T/tXZ1NJHaIeaMtFJAHaaGS4djUCe2so42lZQmZB0HZKNN2uK2A=
=nmsV
-----END PGP SIGNATURE-----

--oarvrunewe5njoop--
