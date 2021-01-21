Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BAAB82FE2E1
	for <lists+linux-man@lfdr.de>; Thu, 21 Jan 2021 07:31:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726301AbhAUGaz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 21 Jan 2021 01:30:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58462 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726575AbhAUGNo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 21 Jan 2021 01:13:44 -0500
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com [IPv6:2607:f8b0:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A2BA8C061794
        for <linux-man@vger.kernel.org>; Wed, 20 Jan 2021 22:12:05 -0800 (PST)
Received: by mail-pf1-x42c.google.com with SMTP id u67so898082pfb.3
        for <linux-man@vger.kernel.org>; Wed, 20 Jan 2021 22:12:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=LiWgXCD0ttgsGF3yrIZbKYXhKs+st9Uchfi9Fd5bQRY=;
        b=W79opi4NqOlmkGkrZZJq0M8jJoX7dCLeWq12y7POstKbxV87tcofZDlF4Uk+W6T3N1
         XWZZf6i9w4uhCwQ0EGDOIJ3LbGONvy8MZZhTMhf3hEjGyKGL7mxYMtr/+tZDfj0Lik5Z
         +0q61utSTlOAxAji/qV1GKwUK+QTCgfh4dCQAXzSDq36vjtre/muvan6BrProhDGPbEQ
         cHwdY/bVmzWiL9lM5c66HtUuDQ3F77XecZIasX7/lvjFIBAwQy9H4JVfpIynGrC1Jzfp
         joNZll9i14aPzvUojmPZNzqz/9MP6vpulzLhEE2Gig0ZQuw2ZMdDcHyXpk7e83A21/nc
         bkvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=LiWgXCD0ttgsGF3yrIZbKYXhKs+st9Uchfi9Fd5bQRY=;
        b=aVOGvYMOwCU+5wrjJzZcU6jXEQk3AV/vOW923TY1zw2h0Db7SqKPTKbfO/M3x/tu0t
         WY59o3NP6LSgA5+j0mTd8dKQqQJubZH/BVAhjyAgcs9GedgkgamkqCcSqVRNV00CwRyv
         T6EPr/+STE28JlYfiZwJgco251rcvyzVWrFf/pxINY6kpKeosYRLnHXJBfgMez4LrDNc
         IlbMEOCUNQ8wW6mMYPrccXJ3jkr5asp9OPAo8Qgf+xiH9QX/OFPT/WmCckQ0/CXRMQw6
         K2sfztwDnfk4S6F/PBdoy4RZnhDfMUQmjyjNMss3/SaqHeEUTZWLXyD9lO4uHfatVaiv
         e6AQ==
X-Gm-Message-State: AOAM532zD5667RAUub3WEM1VeEOixdcuqYDWb5aiakBFBq9kqBeM5HUL
        4z43AEb0WOuXfL52H2NlEd4=
X-Google-Smtp-Source: ABdhPJwVl2Nol9Ma2kGYmVTej27J6Gi3S8adRsRHFaqm3I18kXsVAV2yllG1cnntMPGwVO4aNcFCJA==
X-Received: by 2002:a65:624a:: with SMTP id q10mr13020219pgv.194.1611209525010;
        Wed, 20 Jan 2021 22:12:05 -0800 (PST)
Received: from localhost.localdomain ([1.144.182.205])
        by smtp.gmail.com with ESMTPSA id c23sm4496632pgc.72.2021.01.20.22.12.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Jan 2021 22:12:04 -0800 (PST)
Date:   Thu, 21 Jan 2021 17:12:00 +1100
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>, groff@gnu.org
Subject: Re: Escaping hyphens ("real" minus signs in groff)
Message-ID: <20210121061158.5ul7226fgbrmodbt@localhost.localdomain>
References: <CAKgNAkihGY5W178QYHcRvs0f0E4HMQdWir9KOJsEzVF=1wi-sQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="ynbamfascbqr6bgr"
Content-Disposition: inline
In-Reply-To: <CAKgNAkihGY5W178QYHcRvs0f0E4HMQdWir9KOJsEzVF=1wi-sQ@mail.gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--ynbamfascbqr6bgr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[looping in groff@ because I'm characterizing an unresolved argument and
people may want to dispute my claims]

Hi Michael!

At 2021-01-20T22:03:12+0100, Michael Kerrisk (man-pages) wrote:
> Hi Branden,
>=20
> I wonder if I might ask for your input...
>=20
> For some time now, man-pages(7) has the text (mostly put there by me):
>=20
>    Generating optimal glyphs
>        Where a real minus character is required (e.g., for  numbers  such
>        as  -1,  for  man  page cross references such as utf-8(7), or when
>        writing options that have a leading dash, such as in  ls -l),  use
>        the following form in the man page source:
>=20
>            \-
>=20
>        This guideline applies also to code examples.
>=20
> (You even helped with this text a little, adding the piece about
> manual page cross-references.)
>=20
> I'm having some doubts about this text. The doubts were triggered
> after I noticed that many code snippets (inside .EX/.EE blocks) don't
> follow this recommendation. I was about to apply a large patch that
> fixed that when I began to wonder: is it even necessary?

Short answer: yes, I would do that.

Long answer
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

There are people who would argue (I've heard mostly from BSD people)
that man pages should "DWIM", and always render a "-" as an ASCII 45
hyphen-minus regardless of context, and while we're at it, it should
stop having non-ASCII glyph mappings for `, ', ^, and ~ as well.  I
resist this, as it's contrary to troff's semantics for these characters
since the early 1970s.

My most recent contretemps with people about this can be found starting
here:
	https://lists.gnu.org/archive/html/groff/2020-10/msg00158.html

The former groff maintainer and lead developer, Werner Lemberg, agrees
with me on this point, but some people whose *roff horizons seem to
extend only as far as man pages are passionately opposed.

The issue was not resolved on the groff mailing list and may not ever
be; the instant discussion got derailed by several peoples' fascination
with the Sun Gallant Demi font.  :-/

I share all this because it is a contentious issue and I cannot pretend
to represent my view as a universal consensus.  It is, however, I think,
the opinion shared by people with a fair knowledge of *roff systems and
who perceive the man(7) macro language as an application of a
typesetting system and not an isolated domain-specific language for man
pages.

I got fatigued of the fight before I could share my findings about
historical Unix manuals going back to Version 2.  I get the feeling
people don't really care; they'll happily wield the club of historical
continuity when it works in their favor, and discard it as irrelevant
when it doesn't.  But I can't say _I've_ never been guilty of that
inconsistency...

> Some thoughts/questions:
>=20
> * I believe that when rendering to a terminal, the use of "\-" is
> equivalent to just "-"; they both render as a real minus sign (ASCISS
> 055). Right?

It depends on the capabilities of the terminal, and specifically whether
it supports any hyphen, dash, or minus glyphs apart from ASCII 055.
None of ASCII or the ISO 8859 encodings did, and Windows-1252, which
does, is not a popular terminal encoding among Unix/Linux users.

But Unicode also does, and Unicode _is_ popular.  If you write a "raw"
roff document and render it to a UTF-8 terminal, you will be able to see
a difference.

Example:

$ printf "UTF-8 \\-1\n" | groff -Tutf8 | cat -s

Back when people started using UTF-8 terminals, confusion of - and \- in
man pages was even more rampant than it is today, and groff added
directives to the man(7) implementation[1] to deliberately degrade
glyphs to ASCII.

=2E\" For UTF-8, map some characters conservatively for the sake
=2E\" of easy cut and paste.
=2E
=2Eif '\*[.T]'utf8' \{\
=2E  rchar \- - ' `
=2E
=2E  char \- \N'45'
=2E  char  - \N'45'
=2E  char  ' \N'39'
=2E  char  ` \N'96'
=2E\}

It was intended as a stopgap measure, but thanks to development on groff
slowing down and its maintainer retiring from the role, it's remained
the case for about a decade, and some people now regard the stopgap as
an eternal truth that must be preserved, lest all writers of
documentation defect to Markdown or something.

The above probably should have been placed in the man.local file
instead[2][3], to encourage system administrators to make transitions
away from the stopgap as their sites or distributions deemed suitable.
I have proposed this very thing for the next groff release, 1.23.0, but
even that met with stiff resistance from the BSD camp.  They want cement
poured over the code snippet above.

> * When rendering to PDF, then "\-" and "-" certainly produce different
> results: the former produces a long dash, while the other produces a
> rather short dash.

Yes.  Specifically, the issue depends on whether a _font_ distinguishes
a hyphen from a minus sign.  (To a typographer, there's _no such thing_
as a "hyphen-minus", the ISO name for ASCII 055--or at least there
wasn't until computer character encodings forced compromises onto the
world.) But matters are made muddy by the fact that terminal emulators
impose another layer between the typesetter (*roff) and the fonts used
to draw glyphs.  groff's solution is to use the encoding of the locale
as a proxy for font coverage, which works well only if the font has
coverage for all the glyphs of interest to a document.  Over time this
has become increasingly true for fonts widely used in terminal emulators
and glyphs commonly encountered in practical documents like man
pages.[4]

> Certainly, when writing say "-1" in running text (i.e., not in a
> .EX/.EE code example), one should use "\-1", since without the "\",
> the dash in front of the "1" is rather anaemically small when rendered
> in PDF.

Yes.

> The same is true when writing options strings such as "ls -l". We
> should use "ls \-l" to avoid an anaemic hyphen in PDF.

Yes.

> When writing man-pages xrefs (e.g., utf-8), the use of "\-" produces a
> dash that is almost too long for my taste, but is preferable to the
> result from using "-", where the rendered dash is too small.

I share your discomfort with the length of the dash in man page xrefs,
and also your assessment that it's the lesser evil.

Another issue to consider is that as PDF rendering technology has
improved on Linux, it has become possible to copy and paste from PDF
documents into a terminal window.  In my opinion we should make this
work as well as we can.  Expert Linux users may not ever do this,
wondering why anyone would ever try; new Linux users will quite
reasonably expect to be able to do it.

> Inside code blocks (.EX/.EE) is there any reason to use "\-" rather
> than just "-"? Long ago I think I convinced myself that "\-" should be
> used, but now I am not at all sure that it's necessary. Maybe I forgot
> something, and you might remind me why "\-" is needed (and I will make
> sure to add the reason to man-pages(7)).

Yes; the main reason is so that copy-and-paste from code examples in
your man pages will work if people _don't_ use the degraded character
translations in man.local, which are marked as optional.

And I mean copy-and-paste not just from PDF but from a terminal window.

=2EEX and .EE, originating in the Version 9 Research Unix man macros, are
"semantic" but they don't _do_ very much.  They don't change
character-to-glyph mappings; they change the font family (on typesetter
devices like PDF, not terminals) and turn off filling.

> Are there any other things I've missed with respect to "\-" vs "=3D"?

Probably, but nothing I can think of right now.  <laugh>  It's a vexing
issue.

To get back to the question you originally posed, I think the change you
suggested (to consistently use \- in .EX/.EE regions) is sound, and will
not frustrate correct rendering even on systems that flatten the
distinction between the minus (\-) and hyphen (-) characters.

Please follow up with any further questions and I will do my best to
answer them.

Regards,
Branden

[1] tmac/an-old.tmac
[2] Debian does this in its /etc/groff/man.local:

[...]
  .if n \{\
[...]
  .  \" Debian: Strictly, "-" is a hyphen while "\-" is a minus sign, and t=
he
  .  \" former may not always be rendered in the form expected for things l=
ike
  .  \" command-line options.  Uncomment this if you want to make sure that
  .  \" manual pages you're writing are clear of this problem.
  .\" uncommented by Branden, 2019-06-16 --GBR
  .   if '\*[.T]'utf8' \
  .     char - \[hy]
  .
  .  \" Debian: "\-" is more commonly used for option dashes than for minus
  .  \" signs in manual pages, so map it to plain "-" for HTML/XHTML output
  .  \" rather than letting it be rendered as "&minus;".
  .  ie '\*[.T]'html' \
  .    char \- \N'45'
  .  el \{\
  .    if '\*[.T]'xhtml' \
  .      char \- \N'45'
  .  \}
  .\}

As you can see, I uncommented my local copy so that I could see if the
wrong glyphs were being used in man pages.  A large part of my work on
groff upstream has been on making the man pages better examples for
other man page writers to follow.

[3] As can be seen from the groff mailing list thread, Ingo Schwarze of
OpenBSD rejects the notion of man.local as a file suitable for site
administrators to customize.  I don't know enough about OpenBSD to
rationalize this view.

[4] To check the coverage of your terminal emulator's font, try the
command "man groff_char".  It contains a specimen of every defined groff
"special character" and in my opinion is a reasonable test of practical
glyph coverage[5].  For man pages, it's probably overpowered, even, but
man pages are merely the leading application of *roff, not the only one.

[5] I've largely rewritten the page for groff 1.23.0 (forthcoming)
because I was unhappy with what I perceived as its lack of clarity.  A
recent snapshot at the man-pages Web site[6] is a useful preview, but
(unless you use something like lynx or w3m) it won't tell you anything
about the glyph coverage of your _terminal_'s font.  In any event, the
glyph repertoire has not changed from groff 1.22.4.

[6] https://man7.org/linux/man-pages/man7/groff_char.7.html

--ynbamfascbqr6bgr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmAJGycACgkQ0Z6cfXEm
bc5yCA//TXrKtE5TamcIYOmeaai3m6gBB+JstaN/y37est3hB5AUHpZhhPTfwzT/
aGmdl6pM+MMLfg5f+eQ+S3XyITm+vGdjsA60s+cO6o3hOUCgijtkaEFOPr6Mlw6+
7aM934zUXo1p08gNf8yei9kKuLY5RJuOdUrpT/uTlbifOWOjghXVhewgsRWhe3Js
qNn7JK3AFKK44KyAT+4vDwJamhy+szAgnPVJ3hxViA3tkY+POsknIJeNTFabRObv
DdETgWpfY36id/18pS4sMTETy7yQfOk2966NBadv54vIWxVPb2VwlaPELR77wUXL
btdS5iU9rh/UFj8IrRPXqYzNJZHQstdtcnO6iSQZtzwXBQC5XL1dSADu1GXMFbhC
o48qZF1uL5HFYdxbHj68A8q2iB7Edc+lFBRtdqNyGlk76X5p0z1pfBkyCnANTq2Q
hMZGvgNxn3GdcVR7sFSdF1jLdkkgg6R8GcFR67p7I7uccs1oy/zZLuK13HQGsRGf
/+nOfo3lp8eTSoiOb1VRJAQA+HAZUEZAVAvePOITga9GkhrgSHiaElHSE+ygXPLI
nDnppn4+Tg6JcrffGtJtc3TIebOsjNqrpOWeuZOyGN0PT/Xr1QOXD48cBQK7GLKf
rEiVtELiU2QhPqPYTVE/N7c/MDa0T4bFZn1XTRLAE562/ssl++c=
=u8e9
-----END PGP SIGNATURE-----

--ynbamfascbqr6bgr--
