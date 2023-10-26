Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C74257D8C33
	for <lists+linux-man@lfdr.de>; Fri, 27 Oct 2023 01:28:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231221AbjJZX2C (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 26 Oct 2023 19:28:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52738 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229503AbjJZX2C (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 26 Oct 2023 19:28:02 -0400
Received: from scc-mailout-kit-02.scc.kit.edu (scc-mailout-kit-02.scc.kit.edu [IPv6:2a00:1398:9:f712::810d:e752])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 54FA5187
        for <linux-man@vger.kernel.org>; Thu, 26 Oct 2023 16:27:57 -0700 (PDT)
Received: from hekate.asta.kit.edu ([2a00:1398:5:f401::77])
        by scc-mailout-kit-02.scc.kit.edu with esmtps (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (envelope-from <schwarze@usta.de>)
        id 1qw9la-001yCr-2e;
        Fri, 27 Oct 2023 01:27:55 +0200
Received: from login-1.asta.kit.edu ([2a00:1398:5:f400::72])
        by hekate.asta.kit.edu with esmtp (Exim 4.94.2)
        (envelope-from <schwarze@usta.de>)
        id 1qw9la-000j57-If; Fri, 27 Oct 2023 01:27:54 +0200
Received: from schwarze by login-1.asta.kit.edu with local (Exim 4.94.2)
        (envelope-from <schwarze@usta.de>)
        id 1qw9lZ-001iRN-Rj; Fri, 27 Oct 2023 01:27:53 +0200
Date:   Fri, 27 Oct 2023 01:27:53 +0200
From:   Ingo Schwarze <schwarze@usta.de>
To:     g.branden.robinson@gmail.com
Cc:     Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org,
        groff@gnu.org
Subject: Re: `\c`, mdoc(7), and man(7) extension macros (was: [PATCH 1/2]
 man*/: srcfix)
Message-ID: <ZTr1+TCl5KlTVo/n@asta-kit.de>
References: <20231025185424.txreg7q47zigo24j@illithid>
 <ZTlu2r8N3nrCnMpa@debian>
 <20231026125835.phpfjhz6xbsde33d@illithid>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231026125835.phpfjhz6xbsde33d@illithid>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden and Alejandro,

G. Branden Robinson wrote on Thu, Oct 26, 2023 at 07:58:35AM -0500:
> At 2023-10-25T21:38:59+0200, Alejandro Colomar wrote:
>> On Wed, Oct 25, 2023 at 01:54:24PM -0500, G. Branden Robinson wrote:

>>> diff --git a/man2/open.2 b/man2/open.2
>>> index 4c921723c..6603dfdff 100644
>>> --- a/man2/open.2
>>> +++ b/man2/open.2
>>> @@ -82,8 +82,13 @@ .SH DESCRIPTION
>>>  to an entry in the process's table of open file descriptors.
>>>  The file descriptor is used
>>>  in subsequent system calls
>>> -.RB ( read "(2), " write "(2), " lseek "(2), " fcntl (2),
>>> -etc.) to refer to the open file.
>>> +(\c

>> I'm going to disagree with Ingo with his claim that a macro that
>> forces using \c is bad because it promotes bad style.  '(\c' doesn't
>> look bad to me here.  Not more than having the leading punctuation as
>> an Nth argument.

> I disagree with Ingo on that point as well.
> 
> Saying why leads me to digress; I found myself writing down thoughts
> about future man(7) development more concretely than I have to date.
> (I'll return to this patch at the end.)  So, Ccing the groff list...
> 
> I think Ingo's perspective is strongly influenced by mdoc(7), the use of
> which he strenuously advocates.  And mdoc _does_ manage to make `\c`
> almost(?) totally unnecessary--

I think the sentence is accurate even without the "almost".
I don't recall ever using \c in any mdoc(7) page, and not even
seeing it used by others, and i cannot think of any reason why
anyone should ever want to use it.

> at the cost of a weighty internal recursive macro reprocessing system
> that no other *roff package is known to implement.
> 
> (This is what that "parsed"/"callable" stuff in groff_mdoc(7) (and
> mandoc_mdoc(7)) is all about.  Also, by "weighty", I mean it--back in
> ~1990, when mdoc was implemented, its documentation warned the reader of
> its slowness.  Fortunately, on modern systems, the rendering latency
> relative to man(7) is no longer noticeable.)

This all seems accurate.  With groff or any other full roff(7)
implementation, parsing mdoc(7) is still significantly slower
than parsing man(7) (when regarding the same amount of text output).
Consequently, while mandoc(1) is significantly faster than groff for
both mdoc(7) and man(7), the speed benefit is *much* more pronounced
for mdoc(7) than for man(7).

Your argument that nowadays, sufficient computing power is usually
available such that these performance differences typically no longer
matter for interactive use also makes sense.

> Even with performance considerations out of the picture, I think such a
> system is a point against adoption of mdoc; one can observe that,
> nowadays, both man(7) and mdoc require a person to acquire knowledge
> that they will "never" transfer anywhere else, assuming no resurgence in
> *roff popularity.

Granted.  Then again, trying to find such aspects, i actually found
fewer than expected.  Here are some examples of aspects common to
both languages that aren't actually that unusual:

 * The '.' request/macro line marker is not that different from
   markers used for embedding in-band control information into
   various protocols and encoding schemes.
 * The same applies to the `\` character introducing escape sequences.
 * While \" is a very unusual way of introducing comments,
   it is used in the same way as comment markers in most other
   line-oriented languages.
 * Unescaped whitespace (SPACE and TAB) has syntactical meaning
   and needs escaping in many languages.
 * Protected whitespace ("\ ", \~) exists in many languages.
 * While some of the names of scaling units may be unusual,
   the practice of appending units to numbers is fundamental
   in all sciences.  Besides, scaling units follow traditions
   of classical typography and arguably aren't obsolete even in
   the digital age.
 * Quoting arguments containing whitespace in "" is widespread
   in many languages.
 * Backslash-newline for input line continuation is widespread
   among line-oriented languages, too.
 * Having multiple glyphs for various kinds of hyphens and dashes
   is ubiquitious in typography.
 * Having to pay attention to quotes and accents and their proper
   encoding in input files is ubiquitious in typography, too.

Roff idiosyncracies that are common to mdoc(7) and man(7) and
unlikely to help anywhere else include:

 * Arguably the most unusual feature is \& and its various use cases.
 * Escaping '\' requires \[rs] (GNU syntax) or \e (portable syntax),
   and \\ has a totally different and rather complicated meaning.
 * The same goes for having to use "\&." rather than "\.".
 * That totally blank lines are not ignored in most contexts
   but more or less equivalent to .sp is certainly surprising.
 * Escaping " inside macro arguments by doubling it is quite unusual.

But the most scary idiosyncrasies of roff(7) syntax and semantics
appear only in low-level roff(7) and do not haunt manual page
authors, for example:

 * conditional and numerical expressions and their extremely
   unusual syntax and semantics
 * macro definitions and the unusual escaping needed there
 * the complicated concept of copy mode
 * diversions, traps, and the like
 * subtle differences between request and macro line parsing
 * and so on

> But the point is _even more true_ of mdoc than it is
> of man(7), by dint of the recursive macro reprocessing feature and the
> funny requirements that become necessary as a consequence (you have to
> use `\&` in more places; you have to break up individual punctuation
> characters when using them as macro arguments if you want them to work
> right).

True.  Still, you advocate using \& more more than we do, given
that you ask people to use it after every abbreviation even when it
is not at the end of an input line.

The only other aspect of mdoc(7) i can think of that is somehat
idiosyncratic is deliniter handling on macro lines, but that's
hardly worse than the complicated style rules for man(7) to solve
the same problem, especially considering that as a result, man(7)
has eight different macros for nothing but font control and still
needs \c on top of all those.

The fact that mdoc(7) macro names require \&-escaping when you
want to print them literally is hardly different from the
concept of reserved words in other languages, so there is really
nothing unusual about that.

> In other words, learning mdoc doesn't help you learn *roff all
> that much.

That doesn't sound like a very strong argument.  Which fraction of
people who have to write manual pages want to learn roff(7) but
do not know it yet?  Wild guess: not a huge fraction.

> Not as much as man(7) does.  And it doesn't help you
> learn any other programming/documentation system anywhere.

Does man(7), really?  I doubt it.  Mastering man(7) probably makes
it easier to learn ancient macrosets like mm(7), me(7), and ms(7)
afterwards, and more so than mdoc(7), i do not deny that.  But i
don't think it helps to learn the modern mom(7) macroset, nor to
learn low-level roff(7) programming.

> Plus, in mdoc, there is a much larger lexicon of macros to learn in the
> first place.  I count 115.
> 
> $ git grep '\.\(als\|de\) [A-Z][A-Za-z1][a-z]*' \
>   tmac/doc.tmac tmac/mdoc/doc-!(nroff) | wc -l
> 115
> 
> Admittedly, a couple of those are, if not deprecated, unlikely to be
> used in practice, because even after mdoc's documentation spent decades
> asking its readers for help, no one could be found who clearly remembers
> what they were supposed to do (`Me`, `Ot`).  So, call it 113 macros.

Now you nudged me enough to actually classify all macros in order to
allow a meaningful comparison.  I'll count not individual macros,
but groups of macros that form logical or syntacticl units.

Active macros, same functionality in mdoc(7) and man(7):
  .Dd/.Dt/.Os   .TH
  .Sh           .SH
  .Ss           .SS
  .Xr           .MR
  .Pp           .PP/.P
  .Bd -literal  .EX/.EE
  .Bl -bullet   .IP/.TP/.TQ   # -dash/-hyphen is almost identical
  .Bl -column   tbl(1)
  .Bl -enum     .IP/.TP/.TQ
  .Bl -tag      .IP/.TP/.TQ
  .Pf/.Ns       .BI/.IB \c
  .Lk           .UR/.UE
  .Mt           .MT/.ME
  .Em           .I
  .Sy           .B
  .No           .BR/.IR/.RB/.RI

Semantic markup, mdoc(7) only:
  .Nm
  .Nd
  .Sx
  .Tg
  .Dl
  .Ql
  .Rs/.%*/.Re   refer(1)
  .Fl
  .Cm
  .Ar
  .Op/.Oo/.Oc
  .Ic
  .Ev
  .Pa
  .In
  .Fd
  .Ft
  .Fn
  .Fo/.Fc
  .Fa
  .Vt
  .Va
  .Dv
  .Er
  .Ev
  .An

Structural markup, mdoc(7) only:
  .Bd -unfilled
  .D1

Useful enclosures, mdoc(7) only:
  .Dq/.Do/.Dc   # most useful for quoting plain English words
  .Qq/.Qo/.Qc   # most useful for C strings
  .Sq/.So/.Sc   # most useful for displaying single characters
  .Pq/.Po/.Pc
  .Bq/.Bo/.Bc

Useful text production macros, mdoc(7) only,
operating systems can easily decide to not use these at all:
  .Ex -std
  .Rv -std
  .St

Presentational markup, man(7) only:
  .RS/.RE

Semi-semantic markup, man(7) only, but badly designed:
  .OP      # combines .Fl and .Ar, but too inflexible for practical use
  .SY/.YS  # combines .Nm/.Cm/.Ar, but too inflexible for practical use

No need to learn for newbies, mdoc(7) only:
  .Bd -centered   not very useful and usually poorly implemented
  .Bd -filled     completely useless
  .Bd -ragged     almost never needed
  .Bl -diag       very specialized for .Sh DIAGNOSTICS
  .Bl -hang       almost never useful
  .Bl -inset      almost never useful
  .Bl -item       almost never useful
  .Bl -ohang      almost never useful
  .Ap             identical to .Ns \(aq
  .Sm             rarely useful, can alsways be achieved with .Ns
  .Bk/.Ek         almost never useful
  .Lb             catastrophic misdesign
  .Cd             very specialized for .Sh SYNOPSIS in kernel manuals only
  .Ad             almost never useful
  .Ms             very specialized and rarely used
  .Bf             completely useless
  .Brq/.Bro/.Brc  very rarely useful, easy alternatives exist
  .Aq/.Ao/.Ac     very specialized, used almost exclusively with .Mt
  .Eo/.Ec         never really needed, .Ns can always do the job
  .Nx/.Fx/.Ox/.Dx operating system specific, irrelevant elsewhere
  .Li             very rarely useful and already deprecated
  .Xo/.Xc         very rarely useful for tagged lists with tags that
                  are both extremely long and extremely complicated,
                  but ordinary backslash-newline input line continuation
                  can be used to solve these problems, too

No need to learn for newbies, man(7) only:
  .PD

Already completely deprecated in mdoc(7):
  .Bt
  .Db
  .Es/.En
  .Fr
  .Hf
  .Lp
  .Ot
  .Tn
  .Ud
  .Ux
  .At/.Bx/.Bsx    historical use only

Alread completely deprecated in man(7):
  .AT
  .UC
  .SB
  .SM
  .DT
  .HP
  .LP
  
Summary:
macro group      mdoc(7)  man(7)  common
structural        7                9
semantic         26        2       3
whitespace                         2
presentational             1       2
text production   3
TOTAL            36        3      16 not counting unimportant and deprecated
unimportant      22        1
deprecated       11        7

By this count, mdoc(7) has 52 useful macros and man(7) has 19.
Yes, that is significantly more, but mdoc(7) is much closer to man(7)
in this respect than to monstrosities like DocBook and Texinfo.

Also, 26 of these additional macros are semantic macros that by
design, man(7) lacks any kind of support for, so comparing the raw
numbers compares apples to oranges.  Excluding those 26:2:3 for a
fair comparison results in 23:14, which is hardly a very impressive
difference, especially considering that most of this results from
support of useful displays and enclosures somewhat lacking from man(7).

The real question to ask here is whether 26 macros is a reasonable
number of semantical markup macros or whether we could get away
with a significantly smaller number.  I don't think that would be
possible except with significant loss of expressive power.
Besides, those 26 macros are very easy to use.

> But Ingo added `Tg` to mandoc(1) mdoc--which groff doesn't support yet--
> so make that 114.

Yes, i did at one new macro in 15 years, after pondering whether
it was needed and refining the design for about a decade.
Buring the same time, i also deprecated about ten old macros.

> None of this is to say that mdoc should go away.  I do not mirror
> mandoc(1)'s initial ambition to completely kill off man(7).[3]  There's
> room in the world for mdoc, and I think it can coexist with man(7).

Yes, the last three decades have proven that both can coexist.
But that doesn't justify keeping man(7) on life support any longer.

Pointing out significant design mistakes in mdoc(7) would make
designing a completely new, man(7)-based semantic markup language,
as you apparently plan to, seem worthwhile.  But as shown above,
i think neither the argument that mdoc(7) syntax is too idiosyncratic
nor that the macro inventory is excessively large has merit.

Adding a novel idea or a novel concept might also make designing a
new language worthwhile.  But so far, all that i see proposed here is
turning the man(7) language upside down to switch from presentational
to semantic markup and from in-line macros to nesting blocks, and
those are both 1990 concepts already provided by mdoc(7).

> But
> I tire both of mdoc advocates' derogations of man(7), and of resistance
> to development of the man(7) language so intransigent that it keeps the
> macro package from rising to the challenge mdoc has presented to it,
> particularly in areas that man(7) authors also complain about.  A
> community with totalitarian conquerors on one hand and reactionaries who
> prefer death to evolution on the other is an unhealthy one.
> 
> Does mdoc do a better job of semantic markup?  Absolutely.  But I have
> an idea for bringing man(7) to parity in that department as well--at a
> much lower cost in macro name space and human memory loading.  It will
> cost 3 macros: one to define a tag class, and two others to open and
> close an annotation of enclosed material with a tag class.  (The
> bracketing is for (a) flexibility: tag as large a region of the page as
> you like, and (b) robustness: if an implementation doesn't support the
> macros--and many won't, especially at first--the rendered text of the
> page will not be damaged by ignoring the macros.)

If you want to switch the basic paradigms of the language late
in its life, that may be one possible solution for doing so.
I fear it may result in massive verbosity, though.

Consider the following, moderately complicated example from
the apropos(1) manual page.  The mdoc(7) language can gracefully
handle stuff that is much worse:

  .Bl -tag -width Ds
  .It Ar expr1 Op Fl o Ar expr2

If i understand your idea correctly, that would become something
similar to:

  .TAG argument
  expr1
  .TAGE
  .TAG optional
  [\c
  .TAGE
  .TAG cammand-line-flag
  \-o\c
  .TAGE
  .TAG optional
  ]
  .TAGE
  .TAG argument
  expr2
  .TAGE

Is that really better?  For example, regarding maintainability of
the manual page source code?  Or regarding readability?

Next question:  How are you planning to get that into the
next-line head scope of the .TP macro?

The mdoc(7) language wasn't only highly innovative for using the
concept of semantic markup in a mostly consistent manner in 1990,
that is, long before HTML became semantic, and not only managed
to keep the macro inventory very small (which is a massive
improvement over all its successors), but it is also ingenious
for its very compact and very readable syntax that allows
easy writing and easy maintainance of highly complicated markup,
which is a massive improvement over one of its successors, XML.
If i understand your proposal correctly, you risk ending up with
a very bad re-invention of XML, and if you then proceed to calling
that new language "man(7)", is see a real risk that you might
cause Doug to turn over in his grave even though he is fortunately
very alive and quite active and will hopefully remain so for
long times to come.

> Potentially, the big payoff is that most man pages won't have to define
> tag classes at all.  The definitions of these can be left to man page
> maintenance communities--like that of the Linux man-pages--and the class
> definitions `so`urced in.  Again, nothing breaks the formatted page if
> something goes wrong with this, like an anemic formatter not
> implementing the `so` request, or the tag definition file being missing.

I have absolutely no idea how this is supposed to work.  Let's say,
a specific operating system or "manual page maintenance community"
decides to define a new "tag class".  At least intially, that tag class
will not be known to any of the formatters.  Since the possibility
is documented and advertised, lots of communities will start to use
it, resulting is a rapid proliferation of redundant, inconsistent,
and clashing tags names.  It is trivial to predict that even those
formatters that initially intend to participate in that game of
catch will sooner or later run out of steam and fail to catch up:
we have already seen exactly that happen in the much simpler case
of the similarly misdesigned macros .Nx and .Fx in mdoc(7).

However, when formatting for any given semantic output language -
for example, HTML+CSS or LaTeX - the formatter will have to make
specific decisions about which output elements to use for the
input tag.  It simply cannot make such a decision in a reasonable
way for an unknown tag.  So this whole scheme is set up for utter
failure in exactly the same way as the mdoc(7) .Lb macro foundered,
or even worse, because for .Lb, the unavoidable desynchronization
merely causes unavailable description strings which can simply be
omitted, while here, the fundamental task of choosing adequate markup
elements becomes impossible.

I think this misdesign results from you still being stuck in a
presention-only markup mindset, even while trying to design a markup
scheme that you hope to become "semantic".  Semantic markup is *not*
about making the presentational aspect of the markup customizable.
Semantic markup is about defining a globally consistent catalogue
of tags.  Even bad, overengineered markup languages like DocBook
and Texinfo understand at least that much (even though DocBook
mostly fails to actually execute the concept).  The quality of the
language so defined depends on finding a good balance between making
the catalogue large enough such that is does not have gaps hindering
practical documentation work, but small enough such that it remains
easy to work with.  Making the catalogue itself customizable totally
defeats the central purpose of the whole endeavour, making utter
failure an unavoidable certainty.

> What would tag classes enable us to do?
> 
> (1) Associate formatting (style) decisions, like what typeface to use
>     for an item, with text based on the _meaning_ of that text.
> 
> (2) Make those styles customizable independently of a given man(7)
>     document, and in one or only a few locations.  Want file names to
>     show up in italics always?  Or roman always?  If the man page uses
>     semantic tagging, you'll be able to.  groff mdoc supports this but
>     it seems to be a fairly obscure feature.  For mandoc(1), this sort
>     of customization is, as I understand it, considered an anti-feature.

Indeed.  I think even after fxing the "undefined classes" disaster and
deciding on a good catalogue of classes to build into the language,
making markup customizable is still an absolutely terrible idea.
The fact you state yourself that very few people do it even in those
few cases where it is already possible is a clear indication that
there is no real demand.  Sure, if there is any way how anything
could posibly be made customizable, one person will eventually
show up demanding customizability, if only you wait long enough.
But beware of the trap of confusing that with "there is demand."
On the other hand, once something is customizable, sooner or later,
someone will start twiddling knobs, including distribution maintainers,
and the predictable long-term end result is going to be that manual
page markup looks different on each and every operating system and
distro, endlessly confusing users.  For no benefit whatsoever.
Global consistency plus long-term markup stability (such that
users don't have to re-learn every few years how markup looks like)
is one among the most important goals of what we are doing here,
especially from the perspective of users how aren't and don't want
to be specialists with respect to documentation markup.

> 	EX -> ES (example start)
> 	MT -> MS (mail-to start)
> 	UR -> US (URL start)
> 	YS -> SE (synopsis end)
> 	SY -> NS (syNopsis start)
> 	YS -> NE (syNopsis end)

Sounds like a pointless reshuffling of deck chairs.  You want that
formatters remain able to format old manual pages, so you can *never*
remove parsing support those old names.  Previously, users who wanted
to read manual page source code had to remember one name per macro.
After that, they have to remember (or look up) two names.  For very
little benefit, at best.

> [3] "The mission of mdocml is to deprecate groff, the GNU roff
>     implementation, for displaying -mdoc pages whilst providing token
>     support for -man."
> 
>     This rather fiery statement appeared at mdocml.bsd.lv in 2009, but
>     was withdrawn in late 2013.
>     [...]
>     While no longer a statement of mission, the attitude persists.

The reason for withdrawing that statement was that mandoc(1) now
aims to provide full groff-compatible support for man(7) rather than
merely "token support".  That doesn't change the first paragraph of
the mandoc_man(7) manual page, which is still completely reasonable:

   The man language was the standard formatting language for AT&T UNIX
   manual pages from 1979 to 1989.  Do not use it to write new manual
   pages: it is a purely presentational language and lacks support for
   semantic markup.  Use the mdoc(7) language, instead.

Yours,
  Ingo
