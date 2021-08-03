Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 79F453DED41
	for <lists+linux-man@lfdr.de>; Tue,  3 Aug 2021 13:59:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234653AbhHCL7V (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 3 Aug 2021 07:59:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49198 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235600AbhHCL7V (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 3 Aug 2021 07:59:21 -0400
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E808C061757
        for <linux-man@vger.kernel.org>; Tue,  3 Aug 2021 04:59:09 -0700 (PDT)
Received: by mail-pl1-x636.google.com with SMTP id u16so14871437ple.2
        for <linux-man@vger.kernel.org>; Tue, 03 Aug 2021 04:59:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=SO/nS96+q5MAvWXZjV7VX2mQ13/e9pvELVQRmef9yMI=;
        b=AdqDvYhwSy+RnYB+r/FXha7wxqPdJs5x847zdgk1DVQN9y21rhn7MLcBG15JUbhwSc
         fWqADoXkHIBh6VH/7gm+hYfEcTESq+yi2StezTKJ/lIbYYkxJ4XQZ7ckXsGnlFQ4El2d
         A1mMpeHfErYgC/IgxhndLT5Qcihg6C1o6Pezp5QY6E8iifk2pLVH5NoQ8aw0IFC8S1Yn
         X46pajsqLxTmOE06CXnh1VYUQRDUzIuvWXTqmOfbmBxmgFQjofxypcMU1IwOwr+wkX2M
         caf3X4T/eRELskU+hmqGKA48JZt0N33pWgD10MUFzrVYH5GuhhPLu+QaKmvhrUg6P7RY
         08jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=SO/nS96+q5MAvWXZjV7VX2mQ13/e9pvELVQRmef9yMI=;
        b=R1NMwlGtkSkMIELhsxsedlUd0O7Bc9/SiSSvJMnv3m7oWUPup7TltSpWmLxWR8YggL
         jSiPzGevUb7pLrJaaoj8S8wUR82AsEwrhoMnXrJ6Ef9Ls6qCwmce/BbPxxeBiaQwZkQ4
         +AIaMTUeVrb7zcch3TNnHp61n6LXdO6CbrOXcR/MmyqILknb5zIi+uu8csk24v6u8vqo
         CBH6i7UApNniBvkUFXMkowInBQFsvxIBWgXbwJ5idv52DfcCE9tcyb53E6ZqJhYHgGxD
         5xrBajx4HOTvb2NXf1tQOhe1JlpCvmcRsfkCbnkScjM5Oe8xHp+gnnIZAi3lS4ej40vk
         Y+Hg==
X-Gm-Message-State: AOAM532q8qZr7pNxdZTvontxyAT6fE8foRzruty4wN8sswhGXmSuWkEG
        7jpn3moq8r750jWu/eN6rbc=
X-Google-Smtp-Source: ABdhPJzeGkahYFuqdq1RX0hybKWVM0exy1ned1C1cXrb9gJVZrjl4oVltZVpU0pT8jaEykH/DUItqw==
X-Received: by 2002:a17:90a:5201:: with SMTP id v1mr21852083pjh.46.1627991948705;
        Tue, 03 Aug 2021 04:59:08 -0700 (PDT)
Received: from localhost.localdomain ([1.145.37.91])
        by smtp.gmail.com with ESMTPSA id f24sm2665670pjj.45.2021.08.03.04.59.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Aug 2021 04:59:08 -0700 (PDT)
Date:   Tue, 3 Aug 2021 21:59:03 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, groff@gnu.org
Subject: groff_man(7), man(7), and man-pages(7) (was: [PATCH v2]
 mount_setattr.2: ...)
Message-ID: <20210803115901.2log3cuxusrljd7q@localhost.localdomain>
References: <20210730094121.3252024-1-brauner@kernel.org>
 <9ba8d98e-dee9-1d8d-0777-bb5496103e24@gmail.com>
 <20210731094311.twnwu553i7hzr5md@wittgenstein>
 <1ca74dab-bda4-5105-6e18-3764ee607761@gmail.com>
 <20210801105151.qtjjc7wly7ck6kme@localhost.localdomain>
 <5cc3f1c1-19de-6f1e-2e3b-ebf7f968a7a4@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="ybgnynhu5aghktla"
Content-Disposition: inline
In-Reply-To: <5cc3f1c1-19de-6f1e-2e3b-ebf7f968a7a4@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--ybgnynhu5aghktla
Content-Type: multipart/mixed; boundary="vatujfvxvsevjhjb"
Content-Disposition: inline


--vatujfvxvsevjhjb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[adding groff@ to CC]

Hi, Alex!

At 2021-08-01T13:50:09+0200, Alejandro Colomar (man-pages) wrote:
> [I (GBR) wrote]:
> > https://xkcd.com/927/
>=20
> Agree.  That's why I doubt very much that we'll ever change to RST (or
> any other language).  But I'll have to try and make the current
> man-pages consistent enough so that people see it easy writing them...

We definitely share this goal.

> I think I tried groff_ms(7), or maybe it was groff_mm(7); I don't
> remember.  But I didn't like having to learn a new dialect, more so
> when there are macros that act differently with the same name.

Fair enough.  I have to admit that some things about ms(7) surprised me;
it was really aggressive with the use of diversions to collect input,
and its approach to font style alternation was a bit timid at first
which led to it being extended in a way which is tough to defend.

When Bell Labs took their second crack at a general-purpose macro
package, mm, they adopted man(7)'s names and semantics for font style
alternation.

Unfortunately, that approach doesn't scale well with the availability of
large numbers of fonts/styles.  (And design-wise, they got caught out in
short order with the radical novelty of the Linotron 202's bold italic
style.)

> Since I already know man(7) very well, it's simpler for me to use it
> everywhere.  But maybe if you send me that document you might convince
> me (but I doubt it).

Attached.  Since my last attempt to send a PDF to linux-man@ went into a
black hole, I'll send you the document source (which is smaller anyway).

Just format it with "groff -t -ms".  I've even gotten it usable on
terminals, though so far only on wide ones (at least 91 character cells;
getting it any narrower would mean refactoring the tables, and I've
deferred that until after I complete content revisions, if ever).

> I think most languages out there are perfect examples of
> <https://xkcd.com/927/>.

This perspective, I don't share--I'm fond of C but also sometimes
maddened by it.  I think there is great value in exposure to other
languages, well enough to a get a "feel" for them if not to use them in
daily practice.  I think doing so can help one's creativity in
problem-solving.  To name two examples, I've seen much to admire in Ada
and Rust.  I'd like to grow a Haskell brain.

> BTW, I'm curious, and never knew this:  what's the difference between
> groff_man(7) and man(7)?  They are each a page about groff_man,
> written by different authors/projects, right?

Yes.  Michael and I were able to roughly sketch the history in a thread
in May[1].

What would you think about retiring the linux-man man(7)?  I've been
hesitant to suggest this because it does some work that I don't want
groff_man(7)[2] to do, because to do so is not its place--the
prescription of system-specific conventions and practices.  However, it
occurs to me that much of this information is already being maintained
more diligently in man-pages(7), and that which is truly more material
to system _organization_ is probably better suited to intro(7) or even
intro(1).

groff names its macro package man pages with a "groff_" prefix because
it was common, back in the 1990s, to install it on vendored, branded
Unix system that already supplied a troff system--often Documenter's
Workbench (DWB) troff, SoftQuad troff (sqtroff), or some descendant of
an AT&T troff (sometimes from before Kernighan's device-independent
rewrite of the system ca. 1980, sometimes later).

On systems where nothing else provides the macro packages, this makes
little sense.  groff_{man,mdoc,me,mm,ms}(7) might as well be available
simply as {man,mdoc,me,mm,ms}.  Slightly absurdly, we also have a page
named groff_mom(7) even though the mom macro package never existed in
_any_ other implementation.

I don't suggest a rename so much as an additional provision of an
additional set of pages with .so requests bringing up the "real" pages.
It's sort of like having symbolic links within the roff(7) language.

I would emphasize that because there is style guidance in
groff_man_style(7)[3], I think it would retain (only) that name even if
groff were to start providing man(7), because the former page documents
_groff's_ house style in areas where there is room for discretion).

> That's what I don't like

Yes, and it _still_ doesn't solve what we often call the "three-font
problem" (discussed, with workarounds, at length in groff_man_style(7)).

Bernd Warken, a groff contributor from several years, promoted a macro
called "FONT" that would take alternating arguments: a font identifier
followed by the argument to be set in it, repeat.

So, you might have

=2EFONT R [ B \-\-stylesheet=3D I file R ]

The above is as good a solution I've seen, but no one (apart from Bernd,
briefly) has expressed enthusiasm about extending man(7) with it.  I
think there are two reasons for that: (1) man needs more _semantic_
markup much more badly than it needs more style markup, and (2) there
are limited returns for documents to be rendered in a terminal emulator,
which is the dominant medium in which man pages are consumed.  There's
one style available you can't get at if you write a well-behaved man
page (bold italics), but nothing else since most terminal emulators will
only render one font family to the screen at a time.  Finally it's hard
to motivate such a thing.  If you look at PostScript or PDF versions of
grops(1) or gropdf(1), or the DVI version of grodvi(1), you'll see that
the font repertoires are presented with samples.  It's a handy
demonstration for the reader whose device can render them, but I think
the pages lose much for readers in terminals.

> > > > I genuinely like writing documentation because it gives me time
> > > > to think about the semantics I put into code.  But I hate
> > > > writing manpages or rather dread writing them because I know I'm
> > > > going to be losing hours or a day not on content but on
> > > > formatting.  And then rounds of reviews with subtle differences
> > > > between .I and .IR and whatnot. As a developer and maintainer I
> > > > can't usually afford losing that much time which means I
> > > > postpone writing manpages especially complex ones such as this.
>=20
> This was written by Christian, but you removed him from the CC list :)

Whoops!  Well, maybe he'll see it anyway.

> > Frankly, the quality of much auto-generated man(7) output is abysmal
> > and no doubt contributed to the macro language's poor reputation.
> > People view the source of a man page produced by docbook-to-man, for
> > example, and rightly recoil in horror.  Unfortunately they don't
> > understand that they're looking at the *roff equivalent of
> > Obfuscated C.
>=20
> I guess.  I don't like autogenerated code in any language.  I never
> tried checkpatch.pl's auto fix for the same reasons.

I remember the horror I experienced when I was being shown how to write
Java in Eclipse.  "Need getters and setters?  Here!  Just click this
button and the IDE will write stubs _for_ you!"  I had many reasons to
run screaming away from Java but that was one of the best.  If something
is that bone-headedly simple, why is it being specified in the source
code in the first place?  It should either be defined in the language,
with a provision for overriding the bonehead default) or you should be
maintaining the software project in a higher-level language, using a
macro processor that _produces_ Java, for instance.  (More likely you'd
just choose a better language that compiles to Java bytecode--not
surprising that multiple projects in fact took that approach.)

Regards,
Branden

[1] https://lore.kernel.org/linux-man/\
f21251ae-a136-8b09-af72-b5ad95f2b4cc@gmail.com/
[2] https://man7.org/linux/man-pages/man7/groff_man.7.html
[3] https://man7.org/linux/man-pages/man7/groff_man_style.7.html

--vatujfvxvsevjhjb
Content-Type: application/x-troff-ms
Content-Disposition: attachment; filename="ms.ms"
Content-Transfer-Encoding: quoted-printable

=2E\" Handle font requests with families, for instance in tbl(1) tables.=0A=
=2Eif n \{\=0A.  ftr CR B \" for a visible distinction from roman=0A.  ftr =
CB B=0A.  ftr CI I=0A.  ftr CBI BI=0A.  \" Redefine CW so to use bold inste=
ad for a visible font change.=0A.  als CW B=0A.\}=0A.\" This document doesn=
't require the minus sign but we do want a copy-=0A.\" and-pastable hyphen-=
minus.=0A.char \- \N'45'=0A.\" A very limited output device might not have =
a dagger glyph.=0A.fchar \[dg] *=0A.\".RP=0A.ie t .nr LL 6.5i=0A.el   .nr L=
L 91n=0A.nr LT \n[LL]=0A.nr PS 11=0A.nr VS 13=0A.ds FR 1=0A.ie t .nr PI 3.5=
n=0A.el   .nr PI 4n=0A.ND July 2021=0A.EH '%''July 2021'=0A.EF ''''=0A.OH '=
Using \f[I]groff\f[] with the \f[I]ms\f[] macros''%'=0A.OF ''''=0A.TL=0AUsi=
ng=0A.BI groff=0Awith the=0A.BI ms=0AMacro Package=0A.AU=0ALarry Kollar=0A.=
AI=0Akollar@alltel.net=0A.AB no=0AThe=0A.I ms=0A(\[lq]manuscript\[rq]) pack=
age is suitable for the composition of=0Aletters,=0Amemoranda,=0Areports,=
=0Aand books.=0A.=0AThese=0A.I groff=0Amacros feature cover page and table =
of contents generation,=0Aautomatic section numbering,=0Aseveral different =
paragraph styles,=0Aa variety of text styling options,=0Afootnotes,=0Amulti=
-column page layouts,=0Aand indexing.=0A.=0A.I ms=0Asupports the=0A.I tbl ,=
=0A.I eqn ,=0A.I pic ,=0Aand=0A.I refer=0Apreprocessors for inclusion of ta=
bles,=0Amathematical equations,=0Adiagrams,=0Aand standardized bibliographi=
c citations.=0A.=0AThis implementation is mostly compatible with the docume=
nted interface=0Aand behavior of AT&T Version\~7 Unix=0A.I ms .=0A.=0ASever=
al extensions from 4.2BSD (Berkeley)=0A.\" Few changes were made in 4.3, Ta=
hoe, Reno, or 4.4.=0Aand Version\~10 Research Unix have been recreated.=0A.=
AE=0A.=0A.=0A.\" ------------------------- End of cover page --------------=
----------=0A.NH 1=0AIntroduction=0A.XS=0AIntroduction=0A.XE=0A.=0A.=0A.LP=
=0AThe=0A.I ms=0Amacros are the oldest surviving package for=0A.I roff=0Asy=
stems.\**=0A.=0A.FS=0AAlthough manual pages are even older,=0Athe=0A.I man=
=0Amacros originated in Seventh Edition Unix (1979).=0A.=0A.I ms=0Ashipped =
with Sixth Edition (1975) and was documented by Mike Lesk in a=0ABell Labs =
internal memorandum.=0A.FE=0A.=0AWhile the=0A.I man=0Apackage was designed =
for brief documents to be perused at a terminal,=0Athe=0A.I ms=0Amacros are=
 also suitable for longer documents intended for printing and=0Apossible pu=
blication.=0A.=0A.=0A.PP=0AIn this document,=0Aa right arrow (\[->]) is use=
d to indicate a tab character in the input.=0A.=0A.=0A.NH 2=0ABasic informa=
tion=0A.XS=0A	Basic information=0A.XE=0A.=0A.=0A.LP=0A.I ms=0Aexposes many =
aspects of document layout to user control via=0A.I groff=0Aregisters and s=
trings.=0A.=0AMost=0A.I registers=0Ahave a default unit of measurement.=0A.=
=0ASpecifying a unit explicitly does not cause problems,=0Aand can avoid th=
em in complex situations.=0A.=0AThe following table summarizes typical unit=
s.=0A.=0A.=0A.TS=0Abox center;=0Acb cb=0Acf(CR) l .=0AUnit	Description=0A_=
=0Ai	inches (\[sd])=0Ac	centimeters=0Ap	points (1/72\[sd])=0AP	picas (1/6\[=
sd])=0Av	\[lq]vees\[rq]; height of a line using the current font=0An	\[lq]e=
ns\[rq]; width of an \[lq]n\[rq] using the current font=0Am	\[lq]ems\[rq]; =
width of an \[lq]M\[rq] using the current font=0A.TE=0A.=0A.=0A.PP=0ASet re=
gisters with the=0A.CW .nr=0Arequest=0Aand strings with the=0A.CW .ds=0Areq=
uest.=0A.=0A.=0A.TS=0Abox center;=0Alf(CR).=0A\&.nr PS 12 \[rs]" Use 12-poi=
nt type.=0A\&.ds FAM P \[rs]" Use Palatino font family.=0A.TE=0A.=0A.=0A.\"=
 ------------------------=0A.if t .bp=0A.NH 1=0AGeneral structure of an=0A.=
BI ms=0Adocument=0A.XS=0AGeneral structure of an=0A.I ms=0Adocument=0A.XE=
=0A.=0A.=0A.LP=0AThe=0A.I ms=0Amacro package expects a certain amount of st=
ructure,=0Abut not as much as packages such as=0A.I man=0Aor=0A.I mdoc .=0A=
=2E=0A.=0A.PP=0AThe simplest documents can begin with a paragraph macro=0A(=
such as=0A.CW .LP=0Aor=0A.CW .PP ),=0Aand consist of text separated by para=
graph macros=0Aor even blank lines.=0A.=0ALonger documents have a structure=
 as follows.=0A.=0A.=0A.IP "\fBDocument type\fP"=0AIf you call the=0A.CW .R=
P=0Amacro at the beginning of your document,=0A.I ms=0Aprints the document =
description on its own page;=0Aotherwise it prints the information=0A(if an=
y)=0Aon the first page with your document text immediately following.=0A.=
=0ASome document types found in other=0A.I ms=0Aimplementations are specifi=
c to AT&T or Berkeley,=0Aand are not supported in=0A.I "groff ms" .=0A.=0A.=
=0A.IP "\fBFormat and layout\fP"=0ABy setting registers,=0Ayou can change y=
our document's type (font and size),=0Amargins, spacing, headers and footer=
s, and footnotes.=0A.=0ASee section \[lq]Document control settings\[rq] bel=
ow.=0A.=0A.=0A.IP "\fBDocument description\fP"=0AA document description con=
sists of any of:=0Aa title,=0Aone or more authors' names and affiliated ins=
titutions,=0Aan abstract, and a date or other identifier.=0A.=0ASee section=
 \[lq]Document description macros\[rq] below.=0A.=0A.=0A.IP "\fBBody\fP"=0A=
The main matter of your document follows its description=0A(if any).=0A.=0A=
You can use the=0A.I ms=0Amacros to write reports, letters, books, and so f=
orth.=0AThe package is designed for structured documents,=0Aconsisting of p=
aragraphs interspersed with headings=0Aand augmented by lists, footnotes, t=
ables, and other=0Acommon constructs.=0A.=0ASee section \[lq]Body text\[rq]=
 below.=0A.=0A.=0A.IP "\fBTable of contents\fP"=0ALonger documents include =
a table of contents,=0Awhich you can invoke by placing the=0A.CW .TC=0Amacr=
o at the end of your document.\**=0A.FS=0AThe=0A.I ms=0Amacros have minimal=
 indexing facilities, consisting of the=0A.CW .IX=0Amacro, which prints an =
entry on standard error.=0A.FE=0A.=0APrinting the table of contents at the =
end is necessary since=0AGNU=0A.I troff=0Ais a single-pass text formatter;=
=0Ait thus cannot determine the page number of a division of the text until=
=0Ait has been set and output.=0A.=0ASince=0A.I ms=0Aoutput was intended fo=
r hardcopy,=0Athe standard procedure was to manually relocate the pages con=
taining=0Athe table of contents between the cover page and the=0Abody text.=
=0A.=0A.=0A.\" ------------------------=0A.if t .bp=0A.NH 1=0ADocument cont=
rol settings=0A.XS=0ADocument control settings=0A.XE=0A.=0A.=0A.LP=0AA list=
 of document control registers and strings follows.=0A.=0AThey are presente=
d in the syntax used to interpolate them.=0A.=0AFor any parameter whose def=
ault is unsatisfactory,=0Adefine its register or string before calling any=
=0A.I ms=0Amacro other than=0A.CW RP .=0A.=0A.=0A.TS H=0Abox;=0Acb | cb cb =
cb cb=0Al | lf(CR) lx l lf(CR).=0AType	Parameter	Definition	Effective	Defau=
lt=0A_=0A.TH=0AMargins	\[rs]n[PO]	Page offset (left margin)	next page	1i=0A=
\^	\[rs]n[LL]	Line length	next paragraph	6i=0A\^	\[rs]n[LT]	Title line leng=
th	next paragraph	6i=0A\^	\[rs]n[HM]	Top (header) margin	next page	1i=0A\^	=
\[rs]n[FM]	Bottom (footer) margin	next page	1i=0A_=0AT{=0ATitles=0A.br=0A(h=
eaders,=0A.br=0Afooters)=0AT}	\[rs]*[LH]	Left header text	next header	\f[I]=
empty=0A\^	\[rs]*[CH]	Center header text	next header	\-\[rs]n[%]\-=0A\^	\[r=
s]*[RH]	Right header text	next header	\f[I]empty=0A\^	\[rs]*[LF]	Left foote=
r text	next footer	\f[I]empty=0A\^	\[rs]*[CF]	Center footer text	next foote=
r	\f[I]empty=0A\^	\[rs]*[RF]	Right footer text	next footer	\f[I]empty=0A_=
=0AText	\[rs]n[PS]	Point size	next paragraph	10p=0A\^	\[rs]n[VS]	Vertical s=
pacing (leading)	next paragraph	12p=0A\^	\[rs]n[HY]	Hyphenation mode	next p=
aragraph	6=0A\^	\[rs]*[FAM]	Font family	next paragraph	T=0A_=0AParagraphs	\=
[rs]n[PI]	Indentation	next paragraph	5n=0A\^	\[rs]n[PD]	Paragraph distance =
(spacing)	next paragraph	0.3v \f[R](\f[]1v\f[R])=0A\^	\[rs]n[QI]	Quotation =
indentation	next paragraph	5n=0A\^	\[rs]n[PORPHANS]	# of initial lines kept=
	next paragraph	1=0A_=0AHeadings	\[rs]n[PSINCR]	Point size increment	next h=
eading	1p=0A\^	\[rs]n[GROWPS]	Size increase level limit	next heading	0=0A\^=
	\[rs]n[HORPHANS]	# of following lines kept	next heading	1=0A\^	\[rs]*[SN\-=
STYLE]	Numbering style (alias)	next heading	\[rs]*[SN\-DOT]=0A_=0AFootnotes=
	\[rs]n[FI]	Indentation	next footnote	2n=0A\^	\[rs]n[FF]	Format	next footno=
te	0=0A\^	\[rs]n[FPS]	Point size	next footnote	\[rs]n[PS]\-2p=0A\^	\[rs]n[F=
VS]	Vertical spacing (leading)	next footnote	\[rs]n[FPS]+2p=0A\^	\[rs]n[FPD=
]	Paragraph distance (spacing)	next footnote	\[rs]n[PD]/2=0A\^	\[rs]*[FR]	L=
ine length ratio	\f[I]special	11/12=0A_=0ADisplays	\[rs]n[DD]	Display dista=
nce (spacing)	\f[I]special	0.5v \f[R](\f[]1v\f[R])=0A\^	\[rs]n[DI]	Display =
indentation	\f[I]special	0.5i=0A_=0AOther	\[rs]n[MINGW]	Minimum gutter widt=
h	next page	2n=0A.TE=0A.=0A.=0A.LP=0AFor entries marked=0A.I special=0Ain t=
he \[lq]Effective\[rq] column,=0Asee the discussion in the applicable secti=
on below.=0A.=0AThe=0A.CW PD=0Aand=0A.CW DD=0Aregisters use the larger valu=
e if the vertical resolution of the output=0Adevice is too coarse for the s=
maller one;=0Ausually,=0Athis is the case only for output to terminals and =
emulators thereof.=0A.=0A.=0A.\" ------------------------=0A.NH 2=0AFractio=
nal point sizes=0A.XS=0A	Fractional point sizes=0A.XE=0A.=0A.=0A.LP=0AAT&T=
=0A.I ms=0Asupported only integer values for the type size and vertical spa=
cing.=0A.=0ATo overcome this restriction,=0Afor the registers=0A.CW PS ,=0A=
=2ECW VS ,=0A.CW FPS ,=0Aand=0A.CW FVS ,=0A.I "groff ms"=0Ainterprets value=
s equal to or larger than\~1000 as decimal fractions=0Amultiplied by\~1000.=
=0A.=0AFor example,=0A.CW ".nr PS 10500" \[rq] \[lq]=0Asets the document's =
type size to 10.5\~points.=0A.=0AIn=0A.I ms=0Adocuments that don't need to =
be portable to other implementations,=0Ausing a scaling indicator,=0Aas in=
=0A.CW ".nr PS 10.5p" \[rq], \[lq]=0Ais preferable.=0A.=0A.=0A.\" ---------=
---------------=0A.bp=0A.NH 1=0ADocument description macros=0A.XS=0ADocumen=
t description macros=0A.XE=0A.=0A.=0A.LP=0AAll but the simplest documents b=
ear a title.\**=0A.=0A.FS=0ADistinguish a document title from \[lq]titles\[=
rq],=0Awhich are what=0A.I roff=0Asystems call headers and footers collecti=
vely.=0A.FE=0A.=0AAs their level of sophistication=0A(or complexity)=0Aincr=
eases,=0Athey tend to acquire dates of revision,=0Aexplicitly identified au=
thors,=0Asponsoring institutions for authors,=0Aand,=0Aat the rarefied heig=
hts,=0Aan abstract of their content.=0A.=0ADefine these data by using the m=
acros below in the order shown;=0A.CW .DA=0Aor=0A.CW .ND=0Acan be called to=
 set the document date=0A(or other identifier)=0Aat any time before (a) the=
 abstract,=0Aif present,=0Aor (b) its information is required in a header o=
r footer.=0A.=0AUse of these macros is optional,=0Aexcept that=0A.CW .TL=0A=
is mandatory if any of=0A.CW .RP ,=0A.CW .AU ,=0A.CW .AI ,=0Aor=0A.CW .AB=
=0Ais called,=0Aand=0A.CW .AE=0Ais mandatory if=0A.CW .AB=0Ais called.=0A.=
=0A.=0A.TS H=0Abox;=0Alb lb=0Alf(CR) lx.=0AMacro	Description=0A_=0A.TH=0A\&=
=2ERP \f[R][\f[]no\f[R]]	T{=0AUse the \[lq]report\[rq]=0A(AT&T: \[lq]releas=
ed paper\[rq])=0Aformat for your document,=0Acreating a separate cover page=
=2E=0A.=0AThe default arrangement is to print most of the document descript=
ion=0A(title,=0Aauthor names and institutions,=0Aand abstract,=0Abut not th=
e date)=0Aat the top of page\~1.=0A.=0AIf the optional=0A.CW no=0Aargument =
is given,=0A.I ms=0Aprints a cover page but does not repeat any of its info=
rmation on=0Apage\~1=0A(but see the=0A.CW DA=0Amacro below regarding the da=
te).=0AT}=0A_=0A\&.TL	T{=0ASpecify the document title.=0A.=0A.I ms=0Acollec=
ts text on input lines following a call to this macro into the=0Atitle unti=
l reaching an=0A.CW .AU ,=0A.CW .AB ,=0Aor heading or paragraph macro call.=
=0AT}=0A_=0A\&.AU	T{=0ASpecify an author's name.=0A.=0A.I ms=0Acollects tex=
t on input lines following a call to this macro into the=0Aauthor's name un=
til reaching an=0A.CW .AI ,=0A.CW .AB ,=0Aanother=0A.CW .AU ,=0Aor heading =
or paragraph macro call.=0A.=0ACall it repeatedly to specify multiple autho=
rs.=0AT}=0A_=0A\&.AI	T{=0ASpecify the preceding author's institution.=0A.=
=0AAn=0A.CW .AU=0Acall is usefully followed by at most one=0A.CW .AI=0Acall=
;=0Aif there are more,=0Athe last=0A.CW .AI=0Acall controls.=0A.=0A.I ms=0A=
collects text on input lines following a call to this macro into the=0Aauth=
or's institution until reaching an=0A.CW .AU ,=0A.CW .AB ,=0Aor heading or =
paragraph macro call.=0AT}=0A_=0A\&.DA \f[R][\f[I]x\f[] .\|.\|.\&]	T{=0APri=
nt the current date,=0Aor any=0A.I x , arguments\~=0Ain the center footer,=
=0Aand,=0Aif=0A.CW .RP=0Ais also called,=0Aleft-aligned after other documen=
t description information on the cover=0Apage.=0AT}=0A_=0A\&.ND \f[R][\f[I]=
x\f[] .\|.\|.\&]	T{=0APrint the current date,=0Aor any=0A.I x , arguments\~=
=0Aif=0A.CW .RP=0Ais also called,=0Aleft-aligned after other document descr=
iption information on the cover=0Apage.=0A.=0AThis is the=0A.I "groff ms"=
=0Adefault.=0AT}=0A_=0A\&.AB \f[R][\f[]no\f[R]]	T{=0ABegin the abstract.=0A=
=2E=0A.I ms=0Acollects text on input lines following a call to this macro i=
nto the=0Aabstract until reaching an=0A.CW .AE=0Acall.=0A.=0ABy default,=0A=
=2EI ms=0Aplaces the word \[lq]ABSTRACT\[rq] centered and in italics above =
the=0Atext of the abstract.=0A.=0AThe optional argument=0A.CW no=0Asuppress=
es this heading.=0AT}=0A_=0A\&.AE	End the abstract.=0A.TE=0A.=0A.=0A.KS=0A.=
LP=0AAn example document description,=0Ausing a cover page,=0Afollows.=0A.=
=0A.=0A.\" Wrap lines in the code example below at 64 columns.=0A.TS=0Abox =
center;=0Al.=0AT{=0A.nf=0A.CW=0A\&.RP=0A\&.TL=0AThe Inevitability of Code B=
loat in Commercial and Free Software=0A\&.AU=0AJ.\[rs]& Random Luser=0A\&.A=
I=0AUniversity of West Bumblefuzz=0A\&.AB=0AThis report examines the long-t=
erm growth of the code bases in=0Atwo large,=0Apopular software packages;=
=0Athe free Emacs and the commercial Microsoft Word.=0AWhile differences ap=
pear in the type or order of features added,=0Adue to the different methodo=
logies used,=0Athe results are the same in the end.=0A\&.PP=0AThe free soft=
ware approach is shown to be superior in that while=0Afree software can bec=
ome as bloated as commercial offerings,=0Afree software tends to have fewer=
 serious bugs and the added=0Afeatures are more in line with user demand.=
=0A\&.AE=0A.R=0A\&.\|.\|.\|the rest of the paper\|.\|.\|.=0A.fi=0AT}=0A.TE=
=0A.KE=0A.=0A.=0A.\" ------------------------=0A.bp=0A.NH 1=0ABody text=0A.=
XS=0ABody text=0A.XE=0A.=0A.=0A.LP=0AA variety of macros,=0Aregisters,=0Aan=
d strings can be used to structure and style the body of your=0Adocument.=
=0A.=0AExamples include paragraphs,=0Aheadings,=0Afootnotes,=0Aand inclusio=
ns of material such as tables and figures.=0A.=0A.=0A.KS=0A.NH 2=0AText set=
tings=0A.XS=0A	Text settings=0A.XE=0A.=0A.=0A.LP=0AThe=0A.CW FAM=0Astring s=
ets the font family for body text.=0A.=0AIf this string is undefined at ini=
tialization,=0Ait is set to=0A.CW T \[rq] \[lq]=0A(Times).=0A.=0ASetting=0A=
=2ECW \[rs]*[FAM]=0Abefore the first call of a sectioning,=0Aparagraphing,=
=0Aor (non-date) document description macro also applies it to headers,=0Af=
ooters,=0Aand footnotes=0A(as well as the body text).=0A.=0A.=0A.PP=0AThe h=
yphenation flags=0A(as used by the=0A.CW hy=0Arequest)=0Aare set using the=
=0A.CW HY=0Aregister.=0A.KE=0A.=0A.=0A.KS=0A.NH 2=0AParagraphs=0A.XS=0A	Par=
agraphs=0A.XE=0A.=0A.=0A.LP=0ASeveral paragraph types are available,=0Adiff=
ering in how indentation=0Aapplies to them:=0Ato left,=0Aright,=0Aor both m=
argins;=0Ato the first output line of the paragraph,=0Aall output lines,=0A=
or all but the first.=0A.=0AAll paragraphing macro calls cause the insertio=
n of vertical space in=0Athe amount stored in the=0A.CW PD=0Aregister,=0Aex=
cept at page or column breaks.=0A.KE=0A.=0A.=0A.PP=0AThe=0A.CW PORPHANS=0Ar=
egister defines the minimum number of initial lines of any paragraph=0Athat=
 must be kept together to avoid orphaned lines at the bottom of a=0Apage.=
=0A.=0AIf a new paragraph is started close to the bottom of a page,=0Aand t=
here is insufficient space to accommodate=0A.CW \[rs]n[PORPHANS]=0Alines be=
fore an automatic page break,=0Athen a page break is forced before the star=
t of the paragraph.=0A.=0AThis is a GNU extension.=0A.=0A.=0A.TS H=0Abox;=
=0Alb lb=0Alf(CR) lx.=0AMacro	Description=0A_=0A.TH=0A\&.LP	Set a paragraph=
 without any (additional) indentation.=0A_=0A\&.PP	T{=0ASet a paragraph wit=
h a first-line left indentation in the amount stored=0Ain the=0A.CW PI=0Are=
gister.=0AT}=0A_=0A\&.IP \f[R][\f[I]marker\f[] [\f[I]width\f[]]]	T{=0ASet a=
 paragraph with a left indentation.=0A.=0AThe optional=0A.I marker=0Ais not=
 indented and is empty by default.=0A.=0AIt has several applications;=0Asee=
 subsection \[lq]Lists\[rq] below.=0A.=0A.I width=0Aoverrides the default i=
ndentation amount stored in=0A.CW \[rs]n[PI] ;=0Aits default unit is=0A.CW =
n \[rq]. \[lq]=0A.=0AOnce specified,=0A.I width=0Aapplies to further=0A.CW =
=2EIP=0Acalls until specified again or a heading or different paragraphing =
macro=0Ais called.=0AT}=0A_=0A\&.QP	T{=0ASet a paragraph indented from both=
 left and right margins by=0A.CW \[rs]n[QI] .=0A.=0AThis macro and register=
 are Berkeley extensions.=0AT}=0A_=0AT{=0A\&.QS=0A.br=0A\&.QE=0AT}	T{=0ABeg=
in=0A.CW QS ) (=0Aand end=0A.CW QE ) (=0Aa region where each paragraph is i=
ndented from both margins by=0A.CW \[rs]n[QI] .=0A.=0AThe text between=0A.C=
W .QS=0Aand=0A.CW .QE=0Acan be structured further by use of other paragraph=
ing macros.=0A.=0AThese macros are GNU extensions.=0AT}=0A_=0A\&.XP	T{=0ASe=
t an \[lq]exdented\[rq] paragraph\[em]one with a left indentation of=0A.CW =
\[rs]n[PI]=0Aon every line=0A.I except=0Athe first=0A(also known as a hangi=
ng indent).=0A.=0AThis is a Berkeley extension.=0AT}=0A.TE=0A.=0A.=0A.KS=0A=
=2EPP=0AThe following example illustrates several different paragraph macro=
s.=0A.=0A.=0A.TS=0Abox center;=0Al.=0AT{=0A.nf=0A.CW=0A\&.NH 2=0ACases used=
 in the 2001 study=0A\&.LP=0ATwo software releases were considered for this=
 report.=0A\&.PP=0AThe first is commercial software;=0Athe second is free.=
=0A\&.IP \[rs][bu]=0AMicrosoft Word for Windows,=0Astarting with version 1.=
0 through the current version=0A(Word 2000).=0A\&.IP \[rs][bu]=0AGNU Emacs,=
=0Afrom its first appearance as a standalone editor through the=0Acurrent v=
ersion (v20).=0ASee [Bloggs 2002] for details.=0A\&.QP=0AFranklin\[aq]s Law=
 applied to software:=0Asoftware expands to outgrow both RAM and disk space=
 over time.=0A\&.SH=0ABibliography=0A\&.XP=0ABloggs, Joseph R.,=0A\&.I "Eve=
ryone\[aq]s a Critic" ,=0AUnderground Press, March 2002.=0AA definitive wor=
k that answers all questions and criticisms=0Aabout the quality and usabili=
ty of free software.=0A.R=0A.fi=0AT}=0A.TE=0A.KE=0A.=0A.=0A.NH 2=0AHeadings=
=0A.XS=0A	Headings=0A.XE=0A.=0A.=0A.LP=0AUse headings to create a hierarchi=
cal structure for your document.=0A.=0AThe=0A.I ms=0Amacros print headings =
in=0A.B bold=0Ausing the same font family and,=0Aby default,=0Apoint size a=
s the body text.=0A.=0AHeadings are available with and without automatic nu=
mbering.=0A.=0AText lines after heading macros are treated as part of the h=
eading,=0Arendered on the same output line in the same style.=0A.=0A.=0A.TS=
=0Abox;=0Acb cb=0Alf(CR) lx .=0AMacro	Description=0A_=0A\&.NH \f[I]level\f[=
]	T{=0AAutomatically numbered heading.=0A.=0AThe=0A.I level=0Aargument inst=
ructs=0A.I ms=0Ato number headings in the form=0A.CW=0A.I a .\c=0A.I b .\c=
=0A.R=0A.I c .\|.\|.,=0Ato any depth desired,=0Awith the numbering of each =
level increasing automatically and being=0Areset to zero when a more signif=
icant level is increased.=0A.=0A\[lq]1\[rq]\~is the most significant or coa=
rsest division of the=0Adocument.=0A.=0AOnly nonzero values are output.=0A.=
=0AIf you specify heading levels with a gap in an ascending sequence,=0Asuc=
h as by=0A.CW ".NH\~1" \[rq] \[lq]=0Aand then=0A.CW ".NH\~3" \[rq] \[lq]=0A=
as the next such call,=0A.I "groff ms"=0Aemits a warning on the standard er=
ror stream.=0AT}=0A\&.NH S \f[I]heading-level-index\f[]\f[R] .\|.\|.\f[]	T{=
=0AAlternatively,=0Aa first argument=0A.CW S "" of\~=0Acan be given,=0Afoll=
owed by integral arguments to number the levels of the heading=0Aexplicitly=
=2E=0A.=0AFurther automatic numbering,=0Aif used,=0Aresumes using the speci=
fied heading level indices as their predecessors.=0A.=0AThis feature is a G=
NU extension.=0AT}=0A.TE=0A.=0A.=0A.PP=0AAn example may be illustrative.=0A=
=2E=0A.=0A.TS=0Abox center;=0Acb | cb=0Alf(CR) | lB.=0AInput	Result=0A_=0AT=
{=0A.nf=0A\&.NH 1=0AAnimalia=0A\&.NH 2=0AArthropoda=0A\&.NH 3=0ACrustacea=
=0A\&.NH 2=0AChordata=0A\&.NH S 6 6 6=0ADaimonia=0A\&.NH 1=0APlantae=0A.fi=
=0AT}	T{=0A.nf=0A1.  Animalia=0A.sp=0A1.1.  Arthropoda=0A.sp=0A1.1.1.  Crus=
tacea=0A.sp=0A1.2.  Chordata=0A.sp=0A6.6.6.  Daimonia=0A.sp=0A7.  Plantae=
=0A.fi=0AT}=0A.TE=0A.=0A.=0A.PP=0AAfter invocation of=0A.CW .NH ,=0Athe ass=
igned number is made available in the strings=0A.CW SN\-DOT=0A(as it appear=
s in a printed heading with default formatting,=0Afollowed by a terminating=
 period)=0Aand=0A.CW SN\-NO\-DOT=0A(with the terminating period omitted).=
=0A.=0AThese are GNU extensions.=0A.=0A.=0A.PP=0AYou can control the style =
used to print numbered headings by defining an=0Aappropriate alias for the =
string=0A.CW SN\-STYLE .=0A.=0ABy default,=0A.CW \[rs]*[SN\-STYLE]=0Ais ali=
ased to=0A.CW \[rs]*[SN\-DOT] .=0A.=0AIf you prefer to omit the terminating=
 period from numbers appearing in=0Anumbered headings,=0Ayou may define the=
 alias as follows.=0A.=0A.=0A.TS=0Abox center;=0Alf(CR).=0A\&.als SN\-STYLE=
 SN\-NO\-DOT=0A.TE=0A.=0A.=0A.LP=0AAny such change in numbering style becom=
es effective from the next use=0Aof=0A.CW .NH=0Afollowing redefinition of t=
he alias for=0A.CW \[rs]*[SN\-STYLE] .=0A.=0A.=0A.TS=0Abox;=0Acb cb=0Alf(CR=
) lx .=0AMacro	Description=0A_=0A\&.SH [\f[I]level\f[]]	T{=0AUnnumbered hea=
ding.=0A.=0AThe optional=0A.I level=0Aargument is a GNU extension indicatin=
g the heading level corresponding=0Ato the=0A.I level=0Aargument of=0A.CW .=
NH .=0A.=0AIt matches the point size at which the heading is printed to tha=
t of a=0Anumbered heading at the same level when the=0A.CW \[rs]n[GROWPS]=
=0Aand=0A.CW \[rs]n[PSINCR]=0Aheading size adjustment mechanism is in effec=
t.=0AT}=0A.TE=0A.=0A.=0A.PP=0AThe=0A.CW PSINCR=0Aregister defines an increm=
ent in point size to be applied to a heading=0Aat a=0A.I level=0Amore signi=
ficant=0A(numerically less)=0Athan the value specified in=0A.CW \[rs]n[GROW=
PS] .=0A.=0AThe value of=0A.CW \[rs]n[PSINCR]=0Ashould be specified in poin=
ts with the=0A.CW p=0Ascaling indicator and may include a fractional compon=
ent;=0Afor example,=0A.=0A.=0A.TS=0Abox center;=0Alf(CR).=0A\&.nr PSINCR 1.=
5p=0A.TE=0A.=0A.=0A.LP=0Asets a point size increment of 1.5 points.=0A.=0A.=
=0A.PP=0AThe=0A.CW GROWPS=0Aregister defines the heading level at which the=
 point size increment set=0Aby=0A.CW \[rs]n[PSINCR]=0Abecomes effective.=0A=
=2E=0AFor each heading=0A.I level=0Abelow the value of=0A.CW \[rs]n[GROWPS]=
 ,=0Athe point size is increased by=0A.CW \[rs]n[PSINCR] .=0A.=0ASetting=0A=
=2ECW \[rs]n[GROWPS]=0Ato a value less than\~2 disables the incremental hea=
ding size feature.=0A.=0A.=0A.PP=0AIn other words,=0Aif the=0A.CW GROWPS=0A=
register is greater than the=0A.I level=0Aargument to a=0A.CW .NH=0Aor=0A.C=
W .SH=0Acall,=0Athe point size of a heading produced by these macros increa=
ses by=0A.CW \[rs]n[PSINCR]=0Aunits over=0A.CW \[rs]n[PS]=0Amultiplied by t=
he difference of=0A.CW \[rs]n[GROWPS]=0Aand=0A.I level .=0A.=0A.=0AFor exam=
ple,=0Athe sequence=0A.=0A.TS=0Abox center;=0Alf(CR).=0A\&.nr PS 10=0A\&.nr=
 GROWPS 3=0A\&.nr PSINCR 1.5p=0A\&.NH 1=0ACarnivora=0A\&.NH 2=0AFelinae=0A\=
&.NH 3=0AFelis catus=0A\&.SH 2=0AMachairodontinae=0A.TE=0A.=0A.=0A.LP=0Awil=
l cause \[lq]1. Carnivora\[rq] to be printed in 13-point text,=0Afollowed b=
y \[lq]1.1. Felinae\[rq] in 11.5-point text,=0Awhile \[lq]1.1.1. Felis catu=
s\[rq] and all more deeply nested=0Aheading levels will remain in the 10-po=
int text specified by the=0A.CW PS=0Aregister.=0A.=0A\[lq]Machairodontinae\=
[rq] is printed at 11.5 points,=0Asince it corresponds to heading level\~2.=
=0A.=0A.=0A.PP=0AThe=0A.CW \[rs]n[HORPHANS]=0Aregister operates in conjunct=
ion with the=0A.CW NH=0Aand=0A.CW SH=0Amacros to inhibit the printing of or=
phaned headings at the bottom of a=0Apage;=0Ait specifies the minimum numbe=
r of lines of the subsequent paragraph=0Athat must be kept on the same page=
 as the heading.=0A.=0AIf insufficient space remains on the current page to=
 accommodate the=0Aheading and this number of lines of paragraph text,=0Aa =
page break is forced before the heading is printed.=0A.=0AAny display macro=
 or=0A.I tbl ,=0A.I pic ,=0Aor=0A.I eqn=0Aregion between the heading and th=
e subsequent paragraph suppresses this=0Agrouping.=0A.=0A.=0A.\" The next t=
able is huge and we need a lot of room for it, but we=0A.\" can't use a kee=
p because it's a boxed repeated-heading table.  Flush=0A.\" the pending out=
put line and demand half a page.=0A.br=0A.ne (\n[.p]u / 2u)=0A.NH 2=0AHighl=
ighting=0A.XS=0A	Highlighting=0A.XE=0A.=0A.=0A.LP=0AThe=0A.I ms=0Amacros pr=
ovide a variety of methods to highlight or emphasize text.=0A.=0A.=0A.TS H=
=0Abox;=0Alb lb=0Alf(CR) lx.=0AMacro	Description=0A_=0A.TH=0A\&.B [txt [pos=
t [pre]]]	T{=0ASets its first argument in=0A.B "bold type" .=0A.=0AIf you s=
pecify a second argument,=0A.I groff=0Aprints it in the previous font after=
 the bold text,=0Awith no intervening space=0A(this allows you to set punct=
uation after the highlighted text without=0Ahighlighting the punctuation).=
=0A.=0ASimilarly,=0Ait prints the third argument=0A(if any)=0Ain the previo=
us font=0A.B before=0Athe first argument.=0A.=0AFor example,=0A.=0A.=0A.sp =
\n[PD]u=0A.ti +3n=0A\&.B foo ) (=0A.=0A.=0A.sp \n[PD]u=0Aprints=0A.B foo ).=
 (=0A.=0A.=0A.sp \n[PD]u=0AIf you give this macro no arguments,=0A.I groff=
=0Aprints all text following in bold until the next highlighting,=0Aparagra=
ph,=0Aor heading macro.=0AT}=0A_=0A\&.R [txt [post [pre]]]	T{=0ASets its fi=
rst argument in roman=0A(or regular)=0Atype.=0A.=0AIt operates similarly to=
 the=0A.CW .B=0Amacro otherwise.=0AT}=0A_=0A\&.I [txt [post [pre]]]	T{=0ASe=
ts its first argument in=0A.I "italic type" .=0A.=0AIt operates similarly t=
o the=0A.CW .B=0Amacro otherwise.=0AT}=0A_=0A\&.BI [txt [post [pre]]]	T{=0A=
Sets its first argument in=0A.BI "bold italic type" .=0A.=0AIt operates sim=
ilarly to the=0A.CW .B=0Amacro otherwise.=0A.=0AThis is a Version\~10 Resea=
rch Unix extension.=0A.\" possibly V9, but definitely not Berkeley=0AT}=0A_=
=0A\&.CW [txt [post [pre]]]	T{=0ASets its first argument in a=0A.CW constan=
t-width=0A(monospaced) roman typeface.=0A.=0AIt operates similarly to the=
=0A.CW .B=0Amacro otherwise.=0A.=0AThis is a Version\~10 Research Unix exte=
nsion.=0A.\" possibly V9, but definitely not Berkeley=0AT}=0A_=0A\&.BX [txt=
]	T{=0APrints=0A.I txt=0Aand draws a=0A.BX box=0Aaround it.=0A.=0AOn termin=
al devices,=0Areverse video is used instead=0A(see the implementation note =
below).=0A.=0AIf you want the argument to contain space,=0Ause non-breaking=
 space escapes of appropriate width=0A.CW \[rs]\[ti] , (=0A.CW \[rs]\[ha] ,=
=0A.CW \[rs]| ,=0A.CW \[rs]0 ),=0Aor=0A.CW \[rs]h .=0AT}=0A_=0A\&.UL [txt [=
post]]	T{=0APrints its first argument with an=0A.UL underline .=0A.=0AIf yo=
u specify a second argument,=0A.I groff=0Aprints it in the previous font af=
ter the underlined text,=0Awith no intervening space.=0AT}=0A_=0A\&.LG	T{=
=0APrints all text following in=0A.LG=0Alarger type=0A.NL=0A(2 points large=
r than the current point size)=0Auntil=0Athe next font size,=0Ahighlighting=
,=0Aparagraph,=0Aor heading macro.=0A.=0AYou can=0A.LG=0Aspecify this macro=
=0A.LG=0Amultiple times=0A.NL=0Ato enlarge the point size as needed.=0AT}=
=0A_=0A\&.SM	T{=0APrints all text following in=0A.SM=0Asmaller type=0A.NL=
=0A(2 points smaller than the current point size)=0Auntil=0Athe next type s=
ize,=0Ahighlighting,=0Aparagraph,=0Aor heading macro.=0A.=0AYou can=0A.SM=
=0Aspecify this macro=0A.SM=0Amultiple times=0A.NL=0Ato reduce the point si=
ze as needed.=0AT}=0A_=0A\&.NL	T{=0APrints all text following in the normal=
 point size=0A(that is,=0Athe value of the=0A.CW PS=0Aregister).=0AT}=0A.TE=
=0A.=0A.=0A.PP=0ARather than calling the=0A.CW CW=0Amacro,=0Ain=0A.I "groff=
 ms"=0Ayou might prefer to change the font family to Courier\[em]a monospac=
ed=0Atypeface\[em]by setting=0A.CW \[rs]*[FAM]=0Ato=0A.CW C \[rq]. \[lq]=0A=
=2E=0AYou can then use all four style macros above,=0Areturning to the defa=
ult family (Times) with=0A.CW ".ds FAM T" \[rq]. \[lq]=0A.=0ABecause=0A.CW =
\[rs]*[FAM]=0Atakes effect at the next paragraph,=0Athis document uses=0A.C=
W .CW=0Ato \[lq]inline\[rq] a change to the font family,=0Amarking syntacti=
cal elements of=0A.I ms=0Aand=0A.I groff .=0A.=0A.=0A.PP=0A.I "groff ms"=0A=
also supports strings to begin and end super- and subscripting.=0A.=0AThese=
 are all GNU extensions.=0A.=0A.=0A.TS=0Abox;=0Alb lb=0Alf(CR) lx.=0AString=
	Description=0A_=0A\[rs]*{	Begin superscripting.=0A\[rs]*}	End superscripti=
ng.=0A_=0A\[rs]*<	Begin subscripting.=0A\[rs]*>	End subscripting.=0A.TE=0A.=
=0A.=0A.nr PS -2=0A.nr VS -2=0A.LP=0A.B1=0A.hy 0=0A.I "Implementation note:=
"=0AIn=0A.CW nroff=0Amode,=0Athe=0A.CW BX=0Amacro \[lq]boxes\[rq] its argum=
ent by bracketing it with=0A.I groff=0Aextension escapes to set the foregro=
und color to black and the=0Abackground to white and then reset them to the=
ir previous values;=0Athe terminal output driver,=0A.I grotty (1),=0Aconver=
ts these to ISO\~6429 color escapes,=0Awhich may be ignored or mishandled b=
y some terminals,=0Aor may be disabled by=0A.I grotty 's=0A.CW \-c=0Aoption=
=2E=0A.=0AFurther,=0Aif the terminal is set up to use these colors in those=
 roles already,=0A.CW .BX=0Awill cause no visible effect in the output.=0A.=
=0ASurmounting these challenges would require adding features to=0A.I grott=
y ,=0Afor instance to provide a mechanism to request ISO\~6429's=0A\[lq]sta=
ndout\[rq] mode \" That's "smso" and "rmso" in terminfo.=0A(often supported=
 on monochrome terminals),=0Aor to replace the presumed support of the term=
inal for ISO\~6429 escapes=0Awith the use of a library that can query the c=
apabilities of the=0Aterminal and adapt the output sent to the device accor=
dingly.=0A.=0A(Practically,=0Athis likely means adding a dependency on=0A.C=
W libtinfo .)=0A.=0AContact the=0A.I groff=0Adevelopment mailing list if yo=
u'd like to contribute.=0A.sp \n[PD]/2=0A.B2=0A.nr PS +2=0A.nr VS +2=0A.=0A=
=2E=0A.NH 2=0ALists=0A.XS=0A	Lists=0A.XE=0A.=0A.=0A.LP=0AThe=0A.I marker=0A=
argument to the=0A.CW IP=0Amacro can be employed to present a variety of li=
sts;=0Afor instance,=0Ayou can use a bullet glyph=0A.CW \[rs][bu] ) (=0Afor=
 unordered lists,=0Aa number=0A(or auto-incrementing register)=0Afor number=
ed lists,=0Aor a word or phrase for glossary-style or definition lists.=0A.=
=0A.=0A.TS H=0Abox center;=0Acb cb=0Alf(CR) l .=0AInput	Result=0A_=0A.TH=0A=
T{=0A.nf=0AA bulleted list:=0A\&.IP \[rs][bu] 2n=0Alawyers=0A\&.IP \[rs][bu=
]=0Aguns=0A\&.IP \[rs][bu]=0Amoney=0A.fi=0AT}	T{=0AA bulleted list:=0A.IP \=
[bu] 2=0Alawyers=0A.IP \[bu]=0Aguns=0A.IP \[bu]=0Amoney=0AT}=0A_=0AT{=0A.nf=
=0A\&.nr step 1 1=0AA numbered list:=0A\&.IP \\n[step] 3n=0Alawyers=0A\&.IP=
 \\n+[step]=0Aguns=0A\&.IP \\n+[step]=0Amoney=0A.fi=0AT}	T{=0A.nr step 1 1=
=0AA numbered list:=0A.IP \n[step]. 3=0Alawyers=0A.IP \n+[step].=0Aguns=0A.=
IP \n+[step].=0Amoney=0AT}=0A_=0AT{=0A.nf=0AA glossary-style list:=0A\&.IP =
lawyers 0.4i=0ATwo or more attorneys.=0A\&.IP guns=0AFirearms,=0Apreferably=
 large-caliber.=0A\&.IP money=0AGotta pay for those=0Alawyers and guns!=0A.=
fi=0AT}	T{=0AA glossary-style list:=0A.=0A.IP lawyers 0.4i=0ATwo or more at=
torneys.=0A.IP guns=0AFirearms,=0Apreferably large-caliber.=0A.IP money=0AG=
otta pay for those lawyers and guns!=0AT}=0A.TE=0A.=0A.=0A.PP=0AIn the last=
 example above,=0Aobserve how the=0A.CW IP=0Amacro places the definition on=
 the same line as the term if it has=0Aenough space.=0A.=0AIf this is not w=
hat you want,=0Athere are a few workarounds we will illustrate by modifying=
 the example.=0A.=0AFirst,=0Ayou can use a=0A.CW br=0Arequest to force a br=
eak after printing the term or label.=0A.=0ASecond,=0Ayou could apply the=
=0A.CW \[rs]p=0Aescape sequence to force a break.=0A.=0AThe space following=
 the escape is important;=0Aif you omit it,=0A.I groff=0Aprints the first w=
ord of the paragraph text on the same line as the term=0Aor label=0A(if it =
fits)=0A.I then=0Abreaks the line.=0A.=0AFinally,=0Ayou may append unbreaka=
ble horizontal space to the term or label with=0Athe=0A.CW \[rs]h=0Aescape;=
=0Ausing the same amount as the indentation will ensure that it's too wide=
=0Afor=0A.I groff=0Ato treat it as \[lq]fitting\[rq] on the same line as th=
e paragraph text.=0A.=0A.=0A.TS=0Abox center;=0Acb | cb | cb=0Alf(CR) | lf(=
CR)  | lf(CR).=0AApproach #1	Approach #2	Approach #3=0A_=0AT{=0A.nf=0A\&.IP=
 guns=0A\&.br=0AFirearms,=0A.fi=0AT}	T{=0A.nf=0A\&.IP guns=0A\[rs]p Firearm=
s,=0A.fi=0AT}	T{=0A.nf=0A\&.IP guns\[rs]h\[aq]0.4i\[aq]=0AFirearms,=0A.fi=
=0AT}=0A_=0A.T&=0Acb s s=0Al s s.=0AResult=0A_=0AT{=0AA glossary-style list=
:=0A.=0A.IP lawyers 0.4i=0ATwo or more attorneys.=0A.IP guns\h\[aq]0.4i\[aq=
] 0.4i=0AFirearms,=0Apreferably large-caliber.=0A.IP money=0AGotta pay for =
those lawyers and guns!=0AT}=0A.TE=0A.=0A.=0A.NH 2=0AIndented regions=0A.XS=
=0A	Indented regions=0A.XE=0A.=0A.=0A.LP=0AYou may need to indent a region =
of text while still letting=0A.I groff=0Aautomatically break lines and fill=
 the text.=0A.=0A.=0A.TS=0Abox;=0Acb cb=0Alf(CR) lx .=0AMacro	Description=
=0A_=0A\&.RS	T{=0ABegin a region where headings,=0Aparagraphs,=0Aand displa=
ys are indented by=0A.CW \[rs]n[PI] .=0AT}=0A\&.RE	T{=0AEnd the most recent=
 indented region.=0AT}=0A.TE=0A.=0A.=0A.PP=0AYou can use indented regions t=
o line up text under hanging and indented=0Aparagraphs.=0A.=0AFor example,=
=0Ayou may wish to nest lists.=0A.=0A.=0A.TS=0Abox center;=0Acb cb=0Alf(CR)=
8 l .=0AInput	Result=0A_=0AT{=0A.nf=0A.CW=0A\&.IP \\[bu] 2=0ALawyers:=0A\&.=
RS=0A\&.IP \\[bu]=0ADewey,=0A\&.IP \\[bu]=0ACheatham,=0Aand=0A\&.IP \\[bu]=
=0AHowe.=0A\&.RE=0A\&.IP \\[bu]=0AGuns=0A.R=0A\&.\|.\|.=0A.fi=0AT}	T{=0A.IP=
 \[bu] 2=0ALawyers:=0A.RS=0A.IP \[bu]=0ADewey,=0A.IP \[bu]=0ACheatham,=0Aan=
d=0A.IP \[bu]=0AHowe.=0A.RE=0A.IP \[bu]=0AGuns=0A\&.\|.\|.=0AT}=0A.TE=0A.=
=0A.=0A.NH 2=0AKeeps, boxed keeps, and displays=0A.XS=0A	Keeps, boxed keeps=
, and displays=0A.XE=0A.=0A.=0A.LP=0AOn occasion,=0Ayou may want to=0A.I ke=
ep=0Aseveral lines of text,=0Aor a region of a document,=0Atogether on a si=
ngle page,=0Apreventing an automatic page break within certain boundaries.=
=0A.=0AThis can cause a page break to occur earlier than it normally would.=
=0A.=0AFor example,=0Ayou may want to keep two paragraphs together,=0Aor a =
paragraph that refers to a table,=0Alist,=0Aor figure adjacent to the item =
it discusses.=0A.=0AThe=0A.I ms=0Amacros provide the=0A.CW KS=0Aand=0A.CW K=
E=0Amacros for this purpose.=0A.=0A.=0A.PP=0AYou can alternatively specify =
a=0A.I "floating keep" ;=0Aif a keep cannot fit on the current page,=0A.I m=
s=0Aholds its contents and allows material following the keep=0A(in the sou=
rce document)=0Ato fill the remainder of the current page.=0A.=0AWhen the p=
age breaks,=0Awhether by an explicit=0A.CW bp=0Arequest or by reaching the =
end of the page,=0A.I ms=0Aputs the floating keep at the beginning of the n=
ext page.=0A.=0AThis is useful for placing large graphics or tables that do=
 not need to=0Aappear exactly where they occur in the source document.=0A.=
=0A.=0A.TS=0Abox;=0Acb cb=0Alf(CR) lx .=0AMacro	Description=0A_=0A\&.KS	Beg=
in a keep.=0A\&.KF	Begin a floating keep.=0A_=0A\&.KE	End (floating) keep.=
=0A.TE=0A.=0A.=0A.PP=0AAs an alternative to the keep mechanism,=0Athe=0A.CW=
 ne=0Arequest forces a page break if there is not at least the amount of=0A=
vertical space specified in its argument remaining on the page.=0A.=0AOne a=
pplication of=0A.CW ne=0Ais to reserve space on the page for a figure or il=
lustration to be=0Aincluded later.=0A.=0A.=0A.PP=0AA keep can also be=0A.I =
boxed .=0A.=0AText in a box is automatically placed in a diversion (keep).=
=0A.=0A.=0A.TS=0Abox;=0Acb cb=0Alf(CR) lx .=0AMacro	Description=0A_=0A\&.B1=
	Begin a keep with a box drawn around it.=0A\&.B2	End boxed keep.=0A.TE=0A.=
=0A.=0A.LP=0ABox macros cause line breaks;=0Aif you need to box a word or p=
hrase within a line,=0Asee the=0A.CW BX=0Amacro in section \[lq]Highlightin=
g\[rq] above.=0A.=0ABox lines are drawn as close as possible to the text th=
ey enclose so=0Athat they are usable within paragraphs.=0A.=0AIf you wish t=
o box one or more paragraphs,=0Ayou may improve the appearance by calling=
=0A.CW .B1=0Aafter the first paragraphing macro,=0Aand by adding a small am=
ount of vertical space before calling=0A.CW .B2 .=0A.=0A.=0A.TS=0Abox cente=
r;=0Alf(CR).=0A\&.LP=0A\&.B1=0A\&.I Warning:=0AHappy Fun Ball may suddenly =
accelerate to dangerous speeds.=0A\&.sp \[rs]n[PD]/2=0A\&.B2=0A.TE=0A.=0A.=
=0A.LP=0AIf you want a box to float,=0Ayou will need to enclose the=0A.CW .=
B1=0Aand=0A.CW .B2=0Acalls within a pair of=0A.CW .KF=0Aand=0A.CW .KE=0Acal=
ls.=0A.=0A.=0A.PP=0A.I Displays=0Aturn off filling;=0Alines of verse or pro=
gram code are shown with their lines broken as in=0Athe source document wit=
hout requiring=0A.CW br=0Arequests between lines.=0A.=0ADisplays can be kep=
t on a single page or allowed to break across pages.=0A.=0AThe=0A.CW DS=0Am=
acro begins a kept display of the layout specified in its first=0Aargument;=
=0Anon-kept displays are begun with dedicated macros corresponding to their=
=0Alayout.=0A.=0A.=0A.TS=0Abox;=0Acb s | cb=0Acb cb | ^=0Alf(CR) lf(CR) | l=
x .=0ADisplay macro	Description=0AWith keep	Without keep=0A_=0A\&.DS L	\&.L=
D	Begin left-aligned display.=0A\&.DS I \f[R][\,\f[I]indent\/\f[]]	\=0A\&.I=
D \f[R][\,\f[I]indent\/\f[]]	T{=0ABegin display indented by=0A.I indent=0Ai=
f given,=0A.CW \[rs]n[DI]=0Aotherwise.=0AT}=0A\&.DS B	\&.BD	T{=0ABegin bloc=
k display=0A(left-aligned with longest line centered).=0AT}=0A\&.DS C	\&.CD=
	Begin centered display.=0A\&.DS R	\&.RD	T{=0ABegin right-aligned display.=
=0AThis is a GNU extension.=0AT}=0A_=0A.T&=0Acf(CR) s | lx .=0A\&.ED	End an=
y display.=0A.TE=0A.=0A.=0A.PP=0AThe distance stored in=0A.CW \[rs]n[DD]=0A=
is inserted before and after each pair of display macros;=0Athis is a Berke=
ley extension.=0A.=0AThe=0A.CW \[rs]n[DI]=0Aindentation is applied to only =
to displays created with=0A.CW ".DS I" \[rq] \[lq]=0Aand=0A.CW .ID ;=0Athis=
 is a GNU extension.=0A.=0AChanges to either register take effect at the ne=
xt display boundary.=0A.=0A.=0A.\" ----------------------------=0A.KS=0A.NH=
 2=0ATables, figures, equations, and references=0A.XS=0A	Tables, figures, e=
quations, and references=0A.XE=0A.LP=0AThe=0A.I ms=0Amacros support the sta=
ndard=0A.I groff=0Apreprocessors:=0A.I tbl ,=0A.I pic ,=0A.I eqn ,=0Aand=0A=
=2EI refer .=0A.=0AThe=0A.CW \[rs]n[DD]=0Adistance is also applied to regio=
ns of the document preprocessed with=0A.I tbl ,=0A.I pic ,=0Aand=0A.I eqn .=
=0A.=0AMark text meant for preprocessors by enclosing it in pairs of tags a=
s=0Afollows,=0Awith no space between the dot and the macro name.=0A.=0A.=0A=
=2ETS=0Abox;=0Acb cb=0Alf(CR) lx .=0ATag pair	Description=0A_=0AT{=0A\&.TS=
=0A.R=0A.CW H ] [=0A.CW=0A.br=0A\&.TE=0AT}	T{=0ADenote a table to be proces=
sed by the=0A.I tbl=0Apreprocessor.=0A.=0AThe optional=0A.CW H=0Aargument t=
o=0A.CW .TS=0Ainstructs=0A.I groff=0Ato repeat table rows=0A(often column h=
eadings)=0Aat the top of each new page the table spans,=0Aif applicable;=0A=
calling the=0A.CW TH=0Amacro marks the end of such rows.=0AT}=0A_=0AT{=0A\&=
=2EPS=0A.br=0A\&.PE=0AT}	T{=0ADenote a graphic to be processed by the=0A.I =
pic=0Apreprocessor.=0A.=0AYou can create=0A.I pic=0Ainput manually or by us=
ing a program such as=0A.I xfig (1).=0AT}=0A_=0AT{=0A\&.EQ=0A.R=0A.I align =
] [=0A.CW=0A.br=0A\&.EN=0AT}	T{=0ADenote an equation to be processed by the=
=0A.I eqn=0Apreprocessor.=0A.=0AThe equation is center-aligned by default;=
=0Athe optional=0A.I align=0Aargument can be=0A.CW C ,=0A.CW L ,=0Aor=0A.CW=
 I=0Ato center,=0Aleft-align,=0Aor indent it by=0A.CW \[rs]n[DI] ,=0Arespec=
tively.=0AT}=0A_=0AT{=0A\&.[=0A.br=0A\&.]=0AT}	T{=0ADenote a reference to b=
e processed by the=0A.I refer=0Apreprocessor.=0A.=0AThe GNU=0A.I refer (1)=
=0Aman page provides a comprehensive reference to the preprocessor and the=
=0Aformat of the bibliographic database.=0AT}=0A.TE=0A.KE=0A.=0A.=0A.KS=0A.=
NH 3=0AAn example multi-page table=0A.XS=0A		An example multi-page table=0A=
=2EXE=0A.=0A.=0A.LP=0AThe following is an example of how to set up a table =
that may print=0Aacross two or more pages.=0A.=0A.=0A.TS=0Abox center;=0Al =
=2E=0AT{=0A.nf=0A.CW=0A\&.TS H=0Aallbox expand;=0Acb | cb .=0APart\[->]Desc=
ription=0A_=0A\&.TH=0A\&.T&=0Al | l .=0AGH-1978\[->]Fribulating gonkulator=
=0A.R=0A\&.\|.\|.\|the rest of the table follows\|.\|.\|.=0A.CW=0A\&.TE=0A.=
R=0A.fi=0AT}=0A.TE=0A.KE=0A.=0A.=0A.PP=0AAttempting to place a multi-page t=
able inside a keep can lead to=0Aunpleasant results,=0Aparticularly if the=
=0A.I tbl=0A.CW allbox=0Aoption is used.=0A.=0A.=0A.KS=0A.NH 2=0AFootnotes=
=0A.XS=0A	Footnotes=0A.XE=0A.=0A.=0A.LP=0A.\" The following sentence is use=
d below as an example as well.  Keep it=0A.\" in sync.=0AA footnote is typi=
cally anchored to a place in the text with a=0A.I marker ,=0Awhich is a sma=
ll integer\**,=0A.FS=0Alike this numeric footnote=0A.FE=0Aa symbol\[dg],=0A=
=2EFS \[dg]=0Alike this symbolic footnote=0A.FE=0Aor arbitrary user-specifi=
ed text.=0A.KE=0A.=0A.=0A.TS=0Abox;=0Alb lb=0Alf(CR) lx.=0AString	Descripti=
on=0A_=0A\[rs]**	T{=0APlace an automatically numbered footnote marker in th=
e text.=0A.=0AEach time this string is interpolated,=0Athe number it produc=
es increments by one.=0A.=0AAutomatic footnote numbers start at 1.=0A.=0ATh=
is is a Berkeley extension.=0AT}=0A.TE=0A.=0A.=0A.PP=0AEnclose the footnote=
 text in=0A.CW FS=0Aand=0A.CW FE=0Amacro calls to set it at the nearest ava=
ilable \[lq]foot\[rq],=0Aor bottom,=0Aof a text column or page.=0A.=0A.=0A.=
TS=0Abox;=0Acb cb=0AlfCR lx .=0AMacro	Description=0A_=0A\&.FS \f[R][\f[I]ma=
rker\f[]]	T{=0ABegin a footnote.=0A.=0AA=0A.I marker=0Aargument is placed a=
t the beginning of the footnote text.=0A.=0AIf=0A.I marker=0Ais omitted,=0A=
the next pending automatic footnote number enqueued by interpolation of=0At=
he=0A.CW *=0Astring is used,=0Aand if none exists,=0Anothing is prefixed.=
=0A.=0AT}=0A_=0A\&.FE	End footnote text.=0A.TE=0A.=0A.=0A.PP=0AYou may not =
desire automatically numbered footnotes in spite of their=0Aconvenience.=0A=
=2E=0AYou can indicate a footnote with a symbol or other text by specifying=
=0Aits marker at the appropriate place=0A(for example,=0Aby using=0A.CW \[r=
s][dg]=0Afor the dagger glyph)=0A.I and=0Aas an argument to the=0A.CW FS=0A=
macro.=0A.=0ASuch manual marks should be repeated as arguments to=0A.CW .FS=
=0Aor as part of the footnote text to disambiguate their correspondence.=0A=
=2E=0AYou may wish to use=0A.CW \[rs]*{=0Aand=0A.CW \[rs]*}=0Ato superscrip=
t the marker at the anchor point,=0Ain the footnote text,=0Aor both.=0A.=0A=
=2E=0A.PP=0AThe following input was used to produce the first sentence in t=
his=0Asection.=0A.=0A.=0A.TS=0Abox center;=0AlfCR.=0AA footnote is anchored=
 to a place in the text with a=0A\&.I marker ,=0Awhich is a small integer\[=
rs]**,=0A\&.FS=0Alike this numeric footnote=0A\&.FE=0Aa symbol\[rs][dg],=0A=
\&.FS \[rs][dg]=0Alike this symbolic footnote=0A\&.FE=0Aor arbitrary user-s=
pecified text.=0A.TE=0A.=0A.=0A.PP=0AFootnotes can be safely used within ke=
eps and displays,=0Abut you should avoid using automatically numbered footn=
otes within=0Afloating keeps.=0A.=0AYou can place a second=0A.CW \[rs]**=0A=
interpolation between a=0A.CW \[rs]**=0Aand its corresponding=0A.CW .FS=0Ac=
all as long as each=0A.CW .FS=0Acall occurs=0A.I after=0Athe corresponding=
=0A.CW \[rs]**=0Aand the occurrences of=0A.CW .FS=0Aare in the same order a=
s the corresponding occurrences of=0A.CW \[rs]** .=0A.=0A.=0A.PP=0AFootnote=
 text is formatted as paragraphs are,=0Ausing analogous parameters.=0A.=0AT=
he registers=0A.CW FI ,=0A.CW FPD ,=0A.CW FPS ,=0Aand=0A.CW FVS=0Acorrespon=
d to=0A.CW PI ,=0A.CW PD ,=0A.CW PS ,=0Aand=0A.CW VS ,=0Arespectively.=0A.=
=0A.=0A.KS=0A.PP=0AThe=0A.CW FF=0Aregister controls the formatting of autom=
atically numbered footnotes,=0Aand those for which=0A.CW .FS=0Ais given a m=
arker argument,=0Aat the bottom of a column or page as follows.=0A.=0A.=0A.=
TS=0Abox;=0Acb cb=0Alf(CR) lx .=0A\f[CB]FF\f[] value	Description=0A_=0A0	T{=
=0ASet an automatic number as a superscript=0A(on typesetter devices)=0Aor =
surrounded by square brackets=0A(on terminals).=0A.=0AThe footnote paragrap=
h is indented if there is an=0A.CW .FS=0Aargument or an automatic number.=
=0A.=0AThis is the default.=0AT}=0A1	T{=0ALike=0A.CW 0 ,=0Abut set the mark=
er as regular text,=0Aand follow an automatic number with a period.=0AT}=0A=
2	T{=0ALike=0A.CW 1 ,=0Abut without indentation.=0AT}=0A3	T{=0ALike=0A.CW 1=
 ,=0Abut set the footnote paragraph with the marker hanging.=0AT}=0A.TE=0A.=
KE=0A.=0A.=0A.PP=0AThe default footnote line length is 11/12ths of the norm=
al line length=0Afor compatibility with the expectations of historical=0A.I=
 ms=0Adocuments;=0Ayou may wish to set=0A.CW \[rs]*[FR]=0Ato=0A.CW 1=0Ato a=
lign with contemporary typesetting practices.=0A.=0AIn the past,\**=0A.FS=
=0AVersion\~7 Unix=0A.I ms ,=0Aits descendants,=0Aand GNU=0A.I ms=0Aprior t=
o=0A.I groff=0Aversion 1.23.0=0A.FE=0Aan=0A.CW FL=0Aregister was used for t=
he line length in footnotes;=0Ahowever,=0Asetting this register at document=
 initialization time had no effect on=0Athe footnote line length in multi-c=
olumn arrangements.\**=0A.=0A.FS=0AYou could reset it after each call to=0A=
=2ECW .1C ,=0A.CW .2C ,=0Aor=0A.CW .MC .=0A.FE=0A.=0A.=0A.PP=0A.CW \[rs]*[F=
R]=0Ashould be used in preference to=0A.CW \[rs]n[FL]=0Ain contemporary doc=
uments.=0A.=0AThe footnote line length is effectively computed as=0A.I colu=
mn-width "" \[lq]=0A.CW "\~*\~\[rs]*[FR]" \[rq].=0A.=0AIf an absolute footn=
ote line length is required,=0Arecall that arithmetic expressions in=0A.I r=
off=0Alanguages are evaluated from left to right.=0A.=0A.=0A.TS=0Abox cente=
r;=0Alf(CR).=0A\&.ds FR 0+3i \[rs]" Set footnote line length to 3 inches.=
=0A.TE=0A.=0A.=0A.LP \" continuing previous paragraph=0AChanges to the foot=
note length ratio=0A.CW \[rs]*[FR]=0Atake effect with the next footnote wri=
tten in single-column=0Aarrangements,=0Abut on the next page in multiple-co=
lumn contexts.=0A.=0A.=0A.\" ------------------------=0A.NH 1=0APage layout=
=0A.XS=0APage layout=0A.XE=0A.LP=0AThe default output from the=0A.I ms=0Ama=
cros provides a minimalist=0Apage layout:=0Ait prints a single column,=0Awi=
th the page number centered between hyphens at the top of each page.=0A.=0A=
It prints no footers.=0A.=0A.=0A.PP=0AYou can change the layout by setting =
appropriate registers and strings.=0A.=0A.=0A.NH 2=0AHeaders and footers=0A=
=2EXS=0A	Headers and footers=0A.XE=0A.=0A.=0A.LP=0AThere are multiple ways =
to produce headers and footers.=0A.=0AOne is to define the strings=0A.CW LH=
 ,=0A.CW CH ,=0Aand=0A.CW RH=0Ato set the left,=0Acenter,=0Aand right heade=
rs,=0Arespectively;=0Aand=0A.CW LF ,=0A.CW CF ,=0Aand=0A.CW RF=0Ato set the=
 left,=0Acenter,=0Aand right footers similarly.=0A.=0AThis approach works b=
est for documents that do not distinguish odd and=0Aeven pages.=0A.=0A.=0A.=
PP=0AAnother method is to call macros with arguments that set headers or=0A=
footers for odd or even pages;=0Athese variables produce four combinations,=
=0Aso four macros are available.=0A.=0AThey each take a delimiter separatin=
g the left,=0Acenter,=0Aand right header or footer texts from each other.=
=0A.=0AYou can replace the neutral apostrophes (\[aq]) with any character n=
ot=0Aappearing in the header or footer text.=0A.=0A.=0A.TS=0Abox;=0Alb lb=
=0Alf(CR) lx.=0AMacro	Description=0A_=0A\&.OH \[aq]\f[I]left\f[]\[aq]\f[I]c=
enter\f[]\[aq]\f[I]right\f[]\[aq]\=0A	Set the left, center, and right heade=
rs on odd-numbered pages.=0A\&.OF \[aq]\f[I]left\f[]\[aq]\f[I]center\f[]\[a=
q]\f[I]right\f[]\[aq]\=0A	Set the left, center, and right footers on odd-nu=
mbered pages.=0A\&.EH \[aq]\f[I]left\f[]\[aq]\f[I]center\f[]\[aq]\f[I]right=
\f[]\[aq]\=0A	Set the left, center, and right headers on even-numbered page=
s.=0A\&.EF \[aq]\f[I]left\f[]\[aq]\f[I]center\f[]\[aq]\f[I]right\f[]\[aq]\=
=0A	Set the left, center, and right footers on even-numbered pages.=0A.TE=
=0A.=0A.=0A.PP=0ABy default,=0A.I ms=0Aprints no header on any page numbere=
d \[lq]1\[rq]=0A(regardless of its assigned format).=0A.=0A.=0A.TS=0Abox;=
=0Alb lb=0Alf(CR) lx.=0AMacro	Description=0A_=0A\&.P1	T{=0APrint the header=
 on page\~1.=0A.=0ATo be effective,=0Athis macro must be called before the =
header trap is sprung on any page=0Anumbered \[lq]1\[rq];=0Ain practice,=0A=
unless your page numbering is unusual,=0Athis means that you should call it=
 early,=0Abefore=0A.CW .TL=0Aor any sectioning or paragraphing macro.=0A.=
=0AThis is a Berkeley extension.=0AT}=0A.TE=0A.=0A.=0A.PP=0AFor even greate=
r flexibility,=0A.I ms=0Ais designed to permit the redefinition of the macr=
os that are called=0Awhen the=0A.I groff=0Atraps that ordinarily cause the =
headers and footers to be output are=0Asprung.=0A.=0A.CW PT=0A(\[lq]page tr=
ap\[rq])=0Ais called by=0A.I ms=0Awhen the header is to be written,=0Aand=
=0A.CW BT=0A(\[lq]bottom trap\[rq])=0Awhen the footer is to be.=0A.=0AThe=
=0A.I roff=0Atrap that=0A.I ms=0Asets up to process the header also calls t=
he=0A(normally undefined)=0A.CW HD=0Amacro after=0A.CW .PT ;=0Ayou can defi=
ne=0A.CW .HD=0Aif you need additional processing after printing the header=
=0A(for example,=0Ato draw a line below it).=0A.=0AThe=0A.CW HD=0Ahook is a=
 Berkeley extension.=0A.=0AAny such macros you (re)define must implement an=
y desired specialization=0Afor odd-,=0Aeven-,=0Aor first-numbered pages.=0A=
=2E=0A.=0A.\" ------------------------=0A.KS=0A.NH 2=0ATab stops=0A.XS=0A	T=
ab stops=0A.XE=0A.=0A.=0A.LP=0AUse the=0A.CW ta=0Arequest to set tab stops =
as needed.=0A.=0A.=0A.TS=0Abox;=0Alb lb=0Alf(CR) lx.=0AMacro	Description=0A=
_=0A\&.TA	T{=0AReset the tab stops to the=0A.I ms=0Adefault=0A(every 5 ens)=
=2E=0A.=0ARedefine this macro to create a different set of default tab stop=
s.=0AT}=0A.TE=0A.KE=0A.=0A.=0A.\" ------------------------=0A.KS=0A.NH 2=0A=
Margins=0A.XS=0A	Margins=0A.XE=0A.=0A.=0A.LP=0AControl margins using regist=
ers.=0A.=0AThese are summarized in the \[lq]Margins\[rq] section of the tab=
le in=0Asection \[lq]Document control settings\[rq] above.=0A.=0AThere is n=
o explicit right margin setting;=0Athe combination of page offset=0A.CW \[r=
s]n[PO]=0Aand line length=0A.CW \[rs]n[LL]=0Aprovides the information neces=
sary to derive the right margin.=0A.KE=0A.=0A.=0A.KS=0A.NH 2=0AMultiple col=
umns=0A.XS=0A	Multiple columns=0A.XE=0A.=0A.=0A.LP=0AThe=0A.I ms=0Amacros c=
an set text in as many columns as will reasonably fit on the=0Apage.=0A.=0A=
The following macros are available.=0A.=0AAll of them force a page break if=
 a multi-column mode is already set.=0A.=0AHowever,=0Aif the current mode i=
s single-column,=0Astarting a multi-column mode does=0A.I not=0Aforce a pag=
e break.=0A.=0A.=0A.TS=0Abox;=0Acb cb=0Alf(CR) lx .=0AMacro	Description=0A_=
=0A\&.1C	Arrange page text in a single column (the default).=0A_=0A\&.2C	Ar=
range page text in two columns.=0A_=0A\&.MC \f[R][\f[I]column-width\f[] [\f=
[I]gutter-width\f[]]]	T{=0AArrange page text in multiple columns.=0A.=0AIf =
you specify no arguments,=0Ait is equivalent to the=0A.CW 2C=0Amacro.=0A.=
=0AOtherwise,=0A.I column-width=0Ais the width of each column and=0A.I gutt=
er-width=0Ais the minimum distance between columns.=0A.=0A.CW \[rs]n[MINGW]=
=0Ais the default minimum gutter width;=0Ait is a GNU extension.=0AT}=0A.TE=
=0A.KE=0A.=0A.=0A.NH 2=0ACreating a table of contents=0A.XS=0A	Creating a t=
able of contents=0A.XE=0A.LP=0AThe facilities in the=0A.I ms=0Amacro packag=
e for creating a table of contents=0Aare semi-automated at best.=0AAssuming=
 that you want the table of contents to=0Aconsist of the document's heading=
s, you need to=0Arepeat those headings wrapped in=0A.CW .XS=0Aand=0A.CW .XE=
=0Amacros.=0A.=0A.=0A.PP=0AIn addition,=0Athe=0A.CW XS=0Amacro does not kno=
w to indent a heading based on its level.=0A.=0AThe easiest way to work aro=
und this is to add tabs to the table of=0Acontents string.=0A.=0AThe follow=
ing is an example.=0A.=0A.=0A.TS=0Abox center;=0Al .=0AT{=0A.nf=0A.CW=0A\&.=
NH 1=0AIntroduction=0A\&.XS=0AIntroduction=0A\&.XE=0A.R=0A\&.\|.\|.=0A.CW=
=0A\&.NH 2=0AMethodology=0A\&.XS=0A\[->]Methodology=0A\&.XE=0A.R=0A\&.\|.\|=
=2E=0A.fi=0AT}=0A.TE=0A.=0A.=0A.LP=0AThe=0A.I "Groff and Friends HOWTO"=0Ai=
ncludes a=0A.I sed=0Ascript that automatically inserts=0A.CW .XS=0Aand=0A.C=
W .XE=0Aentries after each heading in a document.=0A.PP=0AAltering the=0A.C=
W .NH=0Amacro to automatically build the table of contents=0Ais perhaps ini=
tially more difficult, but would save=0Aa great deal of time in the long ru=
n if you use=0A.I ms=0Aregularly.=0A.\" ------------------------=0A.NH 1=0A=
Differences from AT&T=0A.BI ms=0A.XS=0ADifferences from AT&T=0A.I ms=0A.XE=
=0A.LP=0AThis section lists the (minor) differences between the=0A.I "groff=
 ms"=0Amacros and AT&T=0A.I ms=0Amacros.=0A.=0A.=0A.PP=0AThe internals of=
=0A.I "groff ms"=0Adiffer from the internals of AT&T=0A.I ms .=0A.=0ADocume=
nts that depend upon implementation details of AT&T=0A.I ms=0Amay not forma=
t properly with=0A.I "groff ms" .=0A.=0ASuch details include macros whose f=
unction was not documented in the=0AAT&T=0A.I ms=0Amanual [Lesk 1978].=0A.\=
" TODO: Use refer(1).=0A.\" XXX: We support RT anyway; maybe we should stop=
?=0A.=0A.=0A.PP=0A.I "groff ms"=0Adoes not work in GNU=0A.I troff 's \" GNU=
=0AAT&T compatibility mode.=0A.=0AIf loaded when that mode is enabled,=0Ait=
 aborts processing with a diagnostic message.=0A.=0A.=0A.PP=0A.I "groff ms"=
=0Auses the same header and footer defaults in both=0A.CW nroff=0Aand=0A.CW=
 troff=0Amodes=0Aas AT&T=0A.I ms=0Adoes in=0A.CW troff=0Amode;=0AAT&T's def=
ault in=0A.CW nroff=0Amode is to put the date,=0Ain U.S.\& traditional form=
at=0A(e.g.,=0A\[lq]January 1, 2021\[rq]),=0Ain the center footer=0A(the=0A.=
CW CF=0Astring).=0A.=0A.=0A.PP=0AMacros that cause=0A.I "groff ms"=0Ato int=
ernally reset its paragraph rendering parameters=0A(paragraphs,=0Aheadings,=
=0Aand displays,=0Aamong others)=0Amay change the indentation;=0Athey do so=
 not by incrementing or decrementing it,=0Abut by setting it absolutely.=0A=
=2E=0AThis can cause problems for documents that define additional macros o=
f=0Atheir own that try to manipulate indentation.=0A.=0AThe solution is to =
use,=0Anot the=0A.CW in=0Arequest,=0Abut=0A.CW .RS=0Aand=0A.CW .RE .=0A.=0A=
=2E=0A.PP=0ADisplays are left-aligned by default,=0Anot indented.=0A.=0AIn =
AT&T=0A.I ms ,=0A.CW .DS=0Ais synonymous with=0A.CW ".DS I" ;=0Ain=0A.I "gr=
off ms" ,=0Ait is synonymous with=0A.CW ".DS L" .=0A.=0A.=0A.PP=0ABlock dis=
plays were not documented in the AT&T=0A.I ms=0Amanual=0A(Berkeley correcte=
d this oversight),=0Abut Version\~7 Unix=0A.I ms=0Asupported them neverthel=
ess,=0Aas does=0A.I "groff ms"=0A(this is thus only an=0A.I apparent=0Adiff=
erence).=0A.=0A.=0A.PP=0ARight-aligned displays are available.=0A.=0AThe AT=
&T=0A.I ms=0Amanual observes that \[lq]it is tempting to assume that=0A.CW =
".DS R"=0Awill right adjust lines,=0Abut it doesn't work\[rq].=0A.=0AIn=0A.=
I "groff ms" ,=0Ait does.=0A.=0A.=0A.PP=0A.I "groff ms"=0Ahandles=0A.CW S \=
[rq] \[lq]=0Aas the first argument to the=0A.CW NH=0Amacro specially,=0Aall=
owing alteration of the automatic heading numbering sequence.=0A.=0A.=0A.PP=
=0A.I "groff ms"=0Asupports the=0A.CW PN=0Aregister,=0Abut it is not necess=
ary;=0Ayou can access the page number via the usual=0A.CW %=0Aregister and =
use the=0A.CW af=0Arequest to assign a different format to it if desired.\*=
*=0A.FS=0AIf you redefine the=0A.I ms=0A.CW PT=0Amacro \" I wouldn't mentio=
n that, but Lesk 1978 encourages doing so. :-/=0Aand desire special treatme=
nt of certain page numbers=0A(like=0A.CW 1 \[rq]), \[lq]=0Ayou may need to =
handle a non-Arabic page number format,=0Aas=0A.I "groff ms" 's=0A.CW .PT=
=0Adoes;=0Asee the macro package source.=0A.=0A.I "groff ms"=0Aaliases the=
=0A.CW PN=0Aregister to=0A.CW % .=0A.FE=0A.=0A.=0A.PP=0AThe AT&T=0A.I ms=0A=
manual documents registers=0A.CW CW=0Aand=0A.CW GW=0Aas setting the default=
 column width and \[lq]intercolumn gap\[rq],=0Arespectively,=0Aand which ap=
plied when=0A.CW .MC=0Awas called with fewer than two arguments.=0A.=0A.I "=
groff ms"=0Ainstead treats=0A.CW .MC=0Awithout arguments as synonymous with=
=0A.CW .2C ;=0Athere is thus no occasion for a default column width registe=
r.=0A.=0AFurther,=0Athe=0A.CW MINGW=0Aregister=0Aand the second argument to=
=0A.CW .MC=0Aspecify a=0A.I minimum=0Aspace between columns,=0Anot the fixe=
d gutter width of AT&T=0A.I ms .=0A.=0A.=0A.PP=0AThe register=0A.CW GS=0Ais=
 set to\~1 by the=0A.I "groff ms"=0Amacros,=0Abut is not used by the AT&T=
=0A.I ms=0Apackage.=0A.=0ADocuments that need to determine whether they are=
 being formatted with=0A.I "groff ms"=0Aor another implementation should te=
st this register.=0A.=0A.=0A.\" ------------------------=0A.NH 2=0AAT&T=0A.=
BI ms=0Amacros not appearing in=0A.BI "groff ms"=0A.XS=0A	AT&T=0A.I ms=0Ama=
cros not appearing in=0A.I "groff ms"=0A.XE=0A.LP=0AMacros missing from=0A.=
I "groff ms"=0Aare cover page macros specific to=0ABell Labs.=0AThe macros =
known to be missing are:=0A.IP \&.TM 0.5i=0ATechnical memorandum; a cover s=
heet style=0A.IP \&.IM=0AInternal memorandum; a cover sheet style=0A.IP \&.=
MR=0AMemo for record; a cover sheet style=0A.IP \&.MF=0AMemo for file; a co=
ver sheet style=0A.IP \&.EG=0AEngineer's notes; a cover sheet style=0A.IP \=
&.TR=0AComputing Science Tech Report; a cover sheet style=0A.IP \&.OK=0AOth=
er keywords=0A.IP \&.CS=0ACover sheet information=0A.IP \&.MH=0AA cover she=
et macro=0A.=0A.=0A.LP=0AVersion\~10=0A.\" possibly V9=0AResearch Unix supp=
orted a pair of=0A.CW P1=0Aand=0A.CW P2=0Amacros for setting code examples;=
=0A.I "groff ms"=0Adoes not.=0A.=0A.=0A.NH 2=0A.BI "groff ms"=0Amacros not =
appearing in=0AAT&T=0A.BI ms=0A.XS=0A	\c=0A.I "groff ms"=0Amacros not appea=
ring in=0AAT&T=0A.I ms=0A.XE=0A.=0A.=0A.LP=0AThe=0A.I "groff ms"=0Amacros h=
ave some minor extensions,=0Anot already discussed above,=0Acompared to the=
 AT&T=0A.I ms=0Amacros.=0A.=0A.IP \&.AM 0.5i=0AImproved accent marks.=0A.=
=0A.=0A.IP \&.IX=0AIndexing term=0A(printed on standard error).=0A.=0A.=0A.=
\" ------------------------=0A.NH 2=0ALocalization strings=0A.XS=0A	Localiz=
ation strings=0A.XE=0A.=0A.=0A.LP=0ARedefine the following strings to adapt=
 the=0A.I "groff ms"=0Amacro package to languages other than English.=0A.=
=0A.=0A.TS=0Abox center;=0Acb lb=0Alf(CR) lf(CR) .=0AString	Default=0A_=0A\=
[rs]*[REFERENCES]	References=0A\[rs]*[ABSTRACT]	\[rs]f[I]ABSTRACT\[rs]f[]=
=0A\[rs]*[TOC]	Table of Contents=0A\[rs]*[MONTH1]	January=0A\[rs]*[MONTH2]	=
February=0A\[rs]*[MONTH3]	March=0A\[rs]*[MONTH4]	April=0A\[rs]*[MONTH5]	May=
=0A\[rs]*[MONTH6]	June=0A\[rs]*[MONTH7]	July=0A\[rs]*[MONTH8]	August=0A\[rs=
]*[MONTH9]	September=0A\[rs]*[MONTH10]	October=0A\[rs]*[MONTH11]	November=
=0A\[rs]*[MONTH12]	December=0A.TE=0A.=0A.=0A.PP=0AThe default for=0A.CW \[r=
s]*[ABSTRACT]=0Aincludes font style escapes to set the word in italics.=0A.=
=0A.=0A.\" ------------------------=0A.if t .bp=0A.NH 1=0AAcknowledgements=
=0A.XS=0AAcknowledgements=0A.XE=0A.LP=0ATwo documents provided essential re=
ference material:=0A.IP \(bu=0AThe=0A.I "Groff and Friends HOWTO" ,=0A.R=0A=
by Dean Allen Provins.=0A.IP \(bu=0A.I "Using the -ms Macros with Troff and=
 Nroff" ,=0A.R=0Athe original AT&T document by M. E. Lesk.=0A.LP=0AWithout =
these documents close at hand,=0Awriting this document would have been a=0A=
much more difficult task.=0A.\" ------------------------=0A.\" Toc here at =
end...=0A.\" We need to fix the headers...=0A.TC=0A.=0A.=0A.\" Local Variab=
les:=0A.\" fill-column: 72=0A.\" mode: nroff=0A.\" End:=0A.\" vim: set file=
type=3Dgroff textwidth=3D72:=0A
--vatujfvxvsevjhjb--

--ybgnynhu5aghktla
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmEJL30ACgkQ0Z6cfXEm
bc6pLQ//XjQ8rNQeKamgsFZHK3lj0scTlxFI/TI4LsiHukJGXiuHTWb2W39DB5Md
lk1EOtEmZWpmSlNKsYCwklXO/BS1yKupDWaWy0qx1LCK4vjZ4bLcNzjed5GS5R4b
TCgjmoQ4O92DLNfZOfEXFO4pRSWRbuHHSU4VPAbUJGPLhzMQzkQCD0LnzXWAx7gJ
UNEM1NU/idO2nP+RQTIulMbieN9AMyumz97fk4SYOP5vUdz7im9coZoFe5KHiBHv
H5bZ7VTCUcASmgKrvO395kA6sj9bIVrsLUTgXS8cUOHVdBuhYUMFILQ5joeE6klU
LO2spxIfoHIurAo6SwPMxQmI13AIpruQECc/i8jqGKUpSHIPb3y0PPqYVyQ39AaQ
JaYIEZu3fCxowpU2bQ1p2QsgzzGOyG/OwE/ySjQi1EstytseU6BWJOGoFlJyOzyE
qqoNqXn5lGbNOJMnpqeFcg8D0VtkdMss2QNV/6hh2iN575ZUSnQpHO4kOVLQGxCn
QXPG9t6QOVc6AFAnV3qZHM1LQa1QfEh2gEuGkMJPgVc6ni68nCogdH2Nv6jFSKjJ
IAC7S4+2BVWgVZCciG9jQhXK2rqglgAnnLRfMgRPYB79iXdvBMoL7iWpzv2PVqSD
vxLwPzvRBFoCoINU4ZSbxJmQIrsDSuY2yDux3jCEhIuEPOsHwUU=
=E2iS
-----END PGP SIGNATURE-----

--ybgnynhu5aghktla--
