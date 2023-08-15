Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E395677C4BD
	for <lists+linux-man@lfdr.de>; Tue, 15 Aug 2023 02:52:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231203AbjHOAwI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Aug 2023 20:52:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49184 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233897AbjHOAwH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 14 Aug 2023 20:52:07 -0400
Received: from mail-oo1-xc36.google.com (mail-oo1-xc36.google.com [IPv6:2607:f8b0:4864:20::c36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB459199F
        for <linux-man@vger.kernel.org>; Mon, 14 Aug 2023 17:51:40 -0700 (PDT)
Received: by mail-oo1-xc36.google.com with SMTP id 006d021491bc7-56dfe5ce871so1800081eaf.2
        for <linux-man@vger.kernel.org>; Mon, 14 Aug 2023 17:51:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692060625; x=1692665425;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=BZRnAaAw0zJjisC+ehbV3nJkc/b7aeUSaqq0Gcyuhgw=;
        b=AcWYFpshuIFE84OPecMGVvk+mWS3VvBINoO6RU7KQ5EiR0wDb8FGI83N796+qTajgl
         a+Qh/quTUmTKFWSyOchWYENIR7TISdYz6X4yZ3CaBMfNNm4Fg5LIPQvC/6Ju7FmoOoGX
         tKA6liQUWrp62Ejj5AIx471MLcZCLbVErlUt2i5loNhfC8zawRUmQzGugUTbxLrHyiJQ
         XJO0sggJSJrPYnPNKnsNagtant/+GqEaGJtSNL89KoLDNg0Fa0hVvz+qVzM9oMIsVNK4
         Dp6a7RiYkUJ9g4NKTd6PUWJMXvblptTyVdSM6cmQzl+RR0wolpJGtM4Vdn+Zm8qNIYgQ
         GsuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692060625; x=1692665425;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BZRnAaAw0zJjisC+ehbV3nJkc/b7aeUSaqq0Gcyuhgw=;
        b=K6Pq6Biq+6y0LYvRYd5i/LjUkC06JV77+9sywDJ8RnW9n7FnFn6QdW8QrrpQsL6TX8
         APUGWtbv6mRlwpWmCG46Z/waHAQyWMU/zDVjkteVa3qnpPLc8kQF4UXadA6kuNMflh5L
         4hzJGWT14vpDjZhWG9+Y5ribg0KX2qLoFtLH76Cs6ZrjgWT8FvDb0/bFo30kd0d2rYA1
         OWoc923RYBEZcCsbQNfvBktort2Gb8OOnGN5xvS8685hzXsP0riQ5dtLry9bRzlw/UmJ
         ye9rfolJi+BMiw7860TUJUw4xGeraZVmqToBLR5nZAb00OODu0NSLh8UUcM4C6B0xPaT
         R4/g==
X-Gm-Message-State: AOJu0YxwbPFZYH8H4rXkx0U1Pv0U0cFY9BzsBH2F3vgm5eg5GnDEWPz+
        52UkFM9y6qbN713IGZIDXuM84KnmwMI=
X-Google-Smtp-Source: AGHT+IHk/0BadIdmSmtYo8pv0zRacV3gKjutzEHa7NbXo6wQ1u0hUV0XHf1uulRwTB8kbTax+JV9Ew==
X-Received: by 2002:a05:6870:a79c:b0:1bf:26f0:6b5b with SMTP id x28-20020a056870a79c00b001bf26f06b5bmr12207541oao.32.1692060624634;
        Mon, 14 Aug 2023 17:50:24 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id e20-20020a4a8f14000000b00569c240e398sm5275353ool.30.2023.08.14.17.50.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Aug 2023 17:50:24 -0700 (PDT)
Date:   Mon, 14 Aug 2023 19:50:22 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Deri <deri@chuzzlewit.myzen.co.uk>,
        Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, Brian.Inglis@shaw.ca, groff@gnu.org
Subject: groff features for hyperlinked man pages (was: No 6.05/.01 pdf book
 available)
Message-ID: <20230815005022.47vpqsjoczn4vyii@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="h3mckqry42p7j4sr"
Content-Disposition: inline
In-Reply-To: <4859011.31r3eYUQgx@pip>
 <8264634.T7Z3S40VBb@pip>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--h3mckqry42p7j4sr
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[looping in groff@gnu because I'm talking about GNU troff internals and
development plans I have]

At 2023-08-14T22:22:16+0100, Deri wrote:
> On Monday, 14 August 2023 21:01:46 BST Alejandro Colomar wrote:
> > On 2023-08-14 19:37, Alejandro Colomar wrote:
> > >> Another change which would need to be accepted is to allow a
> > >> fourth parameter to .MR which is the destination name.  Normally
> > >> the name of the destination is derived from the first two
> > >> parameters concatenated with "_", but if the name part of the .MR
> > >> call to the man page includes non- ascii characters (such as ".MR
> > >> my\-lovely\-page 7 ,") then it needs to provide a "clean"
> > >> destination name.

(linux-man readers might want to check out here, except for one
clarification about `MR` below.  The presentation below is mostly about
macro package and formatter internals.)

Yes.  This sort of thing has been undertaken a couple of times in macro
packages for groff.  Keith Marshall's pdfmark and your "an:cln" in the
"deri-gropdf-ng" branch are two examples.  I also had a couple of cracks
at it in my new feature in 1.23 for abbreviating pieces of man page
headers/footers if they would overrun other parts of it.[1]

These things are painful and fragile to implement.  We need a Better
Way(tm).  So I've proposed one and have roughed most of it out in my Git
stash.  I've mentioned it before on the groff list.  What we need is a
*roff string iterator.[2]  I think it's likely that implementing one
will also help us with other problems.[3][4]

Because strings, macros, and diversions can be interchanged, or at least
punned,[5] I think we'll also need a new conditional expression operator
to identify iterands that aren't ordinary or special characters.  The
only application of this that I envision, at least in early days, is so
that a macro iterating over them could skip them, ignore them, or throw
an error.  Already we have problems when people apply the cruder tools
GNU troff has for string manipulation to things that aren't
representable as individual characters within a string.[6]

With a general string/macro/diversion iterator, we can retire a lot of
the existing GNU troff requests that deal with strings, replacing them
with macros using the iterator request, which I intend to call `for`.  A
reverse iterator, `rfor`, may also be necessary.

Using the iterator request, in a file called "string.tmac" maybe,
`length`, `chop`, `substring`, `stringup`, and `stringdown` could all
become macros.  It would be easy to add `index` and `rindex` (after the
old BSD string library functions, now superseded by strchr() strrchr()),
which macro programmers have requested repeatedly over the years.

Often, just searching through a string for a character is all a macro
wants to do.  It's always been absurdly baroque to do that in GNU troff.
In AT&T troff, it was nigh impossible.  (If I don't say "nigh", Tadziu
Hoffman will appear in a puff of brimstone, arrayed in mask and cloak,
to show us some obfuscated but brilliant hack to get it done.  Okay,
forget I said "nigh".  ;-) )

> > I just re-read this, and am confused.  '\-' is an ASCII character,
> > isn't it?  In fact, all of the Linux man-pages pathnames are
> > composed exclusively of ASCII characters, aren't they?

You're thinking about this at the wrong level, Alex.  `\-` is a *roff
special character.  Unless converted to something else by character
translation or character definition,[7] it goes to the
device-independent page description language as a special character too.

Here's a quick glimpse of device-independent troff output, albeit
without helpful italics.

    c c  Typeset the glyph of the ordinary character c.  The drawing
         position is not advanced.

    C id=E2=9F=A8whitespace=E2=9F=A9
         Typeset the glyph of the special character id.  Trailing
         syntactical space is necessary to allow special character names
         of arbitrary length.  The drawing position is not advanced.

Consider a three-character *roff input document.

printf -- '-\\-\n' | groff -Tascii -Z

The part where the glyphs are written out looks like this.[8]

c-
C\-

It is up to the output device to decide what to do with that.  groff's
"ascii" and "latin1" output devices put out a U+002D character; its
"utf8" device puts out a minus sign, U+2212.  Now, before anyone
defecates a brick about the U+2212 not being easily greppable, nor
useful for copying and pasting to a shell prompt, the man(7) and mdoc(7)
macro packages override that.

  In man pages (only), groff maps the minus sign special character '\-'
  to the Basic Latin hyphen-minus (U+002D) because man pages require
  this glyph and there is no historically established *roff input
  character, ordinary or special, for obtaining it when a hyphen and
  minus sign are both separately available.  To obtain a true minus
  sign, use the special character escape sequences '\(mi' or '\[mi]'.[9]

> ... If you look at the keyrings(7) man page you see examples such as:-
>=20
> .BR persistent\-keyring (7) ,
[...]
> Which when converted to .MR calls looks like:-
[...]
> .MR "persistent\-keyring" "7" "," "persistent-keyring"

Urp.  No, it doesn't.  Not unless you changed `MR` in deri-gropdf-ng.

=2EBR persistent\-keyring (7) ,

when converted to an `MR` call, looks like this.

=2EMR persistent\-keyring 7 ,

I expect man page authors would violently protest if they were told they
had to type all those quotes and, worse, repeat the name of the page.

One of the selling points of `MR` is less typing (no parentheses).  It
is hard enough to sell that macro on the linux-man list without
inaccurate claims entering the fray.

Now, if I understand correctly, is quite possible that something you're
doing in your branch is having `MR` call another macro internally to
prepare a hyperlink with some "anchor"--I won't say "node" because
collides with GNU troff internal jargon--information.  (This is
suggested by the heavy quoting you showed, since when macros call each
other with arbitrary numbers of arguments, and those arguments need to
be kept separate in the callee, the caller should use the `\$@` escape
sequence, which is analogous to the POSIX shell's `$@`.)

In your example above we see the "\-" special character getting
converted to an ordinary one, "-".  That's totally fine and is the sort
of thing I want to make easy--fundamentally with the `for` string
iterator request and practically with an `index` (or `strchr`, or
`bikeshed`) macro.

> On the keyrings(7) page in the pdf you should be able to see the
> difference between HYPHEN (U+2010), which is what \- becomes, and
> HYPHEN-MINUS (U+002D) which is the ascii character. The problem is
> that the MR request is a bit naughty in that it uses the first two
> parameters for two purposes, first it is used as a destination, but it
> is also output as text.

I don't think it's naughty; I think that by and large, man page authors
don't care to give "anchor names" to elements of their document.  They
want the macro package to figure it out.  I think one reason--maybe the
only reason--people are getting a glimpse inside the sausage factory of
GNU troff internals is because we haven't had a defined mechanism for
getting character data to an output device that is neither (1) intended
for formatting (writing visible glyphs) nor (2) in the printable ASCII
(Unicode Basic Latin) character set.  That's the aforementioned Savannah
#63074.[3]

Looking farther ahead, I think a further step is required if we're going
to have intra-page links; we're going to have to have a way to
disambiguate duplicates.  In practice there's not much risk from having
duplicate section titles in man pages, but I reckon a big, complex page
could duplicate subsection titles.  And if we automatically generate
hyperlink tags for paragraph tags, those would likely need it as well.
Maybe representing such internal anchors hierarchically will be enough:
"section_subsection_tag" or something like that.  I'm confident this
problem has been robustly solved elsewhere, and that all we need to do
is identify, adopt, and adapt a known good solution.

> So as text it may contain escapes to enhance the typography, for
> example using \- for a better looking hyphen. It is not my job to
> impose artificial restrictions on how a man page author wants his
> creation to look, better to separate the two purposes, so there is no
> restriction.

Agreed.

> > > Is this really needed?  Can't gropdf just translate them
> > > internally?  Say, do unconditionally the equivalent of `| tr - _
> > > |` or something like that.
> > >=20
> > > [...]
>=20
> This is all happening in groff macros way before it gets to gropdf.

I hope I have shed some light on this proces.

At 2023-08-14T22:40:31+0100, Deri wrote:
> I'm really hoping Branden's going to help me with that, I think he
> intimated that he might when he suggested I start a branch for the
> work. I have one more push to the branch to do, but I need to contact
> Peter since there is a minor tweak to om.tmac to make expandos work in
> mom.

Yes, I plan to help.  Some of the things you are having to do are ugly,
and making the existing GNU troff limitations described above really
hurt for a Do The Right Thing kind of programmer.  I want to fix these
problems so that the macro stuff we do in man(7) is as simple and easy
to understand as possible.  Complexity creates hiding places for bugs.

Regards,
Branden

[1] "[man] abbreviate titles when too wide, instead of overlapping them"
    https://savannah.gnu.org/bugs/?43532

[2] "[troff] string iteration handles escape sequences inconsistently
    (want `for` request)
    https://savannah.gnu.org/bugs/?62264

[3] "[troff] need a way to embed non-Basic Latin glyphs in device
    control commands"
    https://savannah.gnu.org/bugs/?63074

[4] "[troff] standard error output should be sanitized"
    https://savannah.gnu.org/bugs/?62787

[5] https://www.gnu.org/software/groff/manual/groff.html.node/Punning-Names=
=2Ehtml#Punning-Names

[6] "[troff] .chop cannot surmount the barrier of a .char definition"
    https://savannah.gnu.org/bugs/?64439

[7] https://www.gnu.org/software/groff/manual/groff.html.node/Using-Symbols=
=2Ehtml

[8] It actually doesn't.  In GNU troff, the GNU extension command 't' is
    used for sequences of non-overstruck ordinary characters when
    supported by output drivers, and in AT&T device-independent troff,
    the unnamed move-and-print command--a performance and storage
    optimization tuned to the needs of machines in 1980 and explained in
    CSTR #97--was used.  But 'c' is simple, supported by all device-
    independent troffs, and works.

[9] https://git.savannah.gnu.org/cgit/groff.git/tree/PROBLEMS?h=3D1.23.0#n1=
12

--h3mckqry42p7j4sr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTay8YACgkQ0Z6cfXEm
bc6QRQ//S8TormJIu1hHbauDnthZJ2TFCyl8t6Ifgd8aUx1e4FLHCmLLE7odMEAX
URrhMsdlsLGwyWRHu/yjfathVSjnGwAbz0a7oIR3rItx3oJtTtUvRKH/qJ0LbhVv
4yFkkIXyEUnqVodYwB38FpJe02YkuFUauMNxn8rkJKKASKUBvGEX+eYI+X0iMRHx
Vy7w3YGjSz+iosHFuQLaXeUdLSycaYqiqWQS4VVxtMg1iof9D35eqPCgu/h0gdT3
g8E6w6d3Bs7lBJCuIg80IRk20Clb5G08u7nH0D/SI9c7gQY4kkFeN/1F9YaeN3A4
h/RJmJUfbXmKUxML/PQEQbW2XFgQCCTTwspVqo9EB2vMliaCghNWlglB+5+UM7Hp
Bqga1u46tcZVYYZW1XPrSm66DCD8mmD46O5cJTq4vKawVvsY4ekdKcv8+YAIlfRN
RsNBu9K6RWlZX3LsfJJUxDHe7YFaCvxOuVEDRzUgbzgT9Gsu1zZmNTA1lg6WFmPk
7bWjwmphAj4um5kwMaRnYEEgeqGn33TDyR5L37RR4cIC4It/DetGbVUzYbHpByDj
MZmcLeQZbx/uLaGiRCD+0t+cpKA7bGU953SGa9EfOx7LeKfw+D0Rcy1RYPw5VorB
xccZxuS99asQcjF+qizSn/RGk3odjA8wjVfsllzVUAp5RRbP5HM=
=y6gZ
-----END PGP SIGNATURE-----

--h3mckqry42p7j4sr--
