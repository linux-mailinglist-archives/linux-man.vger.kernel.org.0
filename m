Return-Path: <linux-man+bounces-724-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AF6489C931
	for <lists+linux-man@lfdr.de>; Mon,  8 Apr 2024 17:59:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3F6661C22139
	for <lists+linux-man@lfdr.de>; Mon,  8 Apr 2024 15:59:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E51071411C9;
	Mon,  8 Apr 2024 15:59:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Gnl/qUoI"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C53541420D4
	for <linux-man@vger.kernel.org>; Mon,  8 Apr 2024 15:59:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712591970; cv=none; b=L5YCvCz/ktsFz/GZeD/EVWCTEEvkNmnwQH+2lzhRrOd+xw6fhdkKu+SXbt6QNLyMAs8+4Z53A18FYkybfzPw9CbXwcXDtF56ZOM6vp+cZn1bsuymfPvbFrhIo0rnCIdNW9IEad5Vz5uk2GHxjXmIsxMqu/8LrVx3lyxMxsFTlDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712591970; c=relaxed/simple;
	bh=Tzvima33u/wQ79MtBIvtl3IO2p1V5t/niuFNTY6D7eU=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=EB4erqw7Tdg0KgEl8FThC9CrunEbOI/kKS/y44JE/Zf1ar0CbDiZVLQWHJDMo9G0Ly6EKSIXVuMOad5Uz5gXmIhzdinktSxMNuySB0DUp3/iaPMM4UqR9yD/cuyNksd2C5JrlUavFu+Ka0HvAtGqKsGRIuC41cNM+Kg6n6O2SfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Gnl/qUoI; arc=none smtp.client-ip=209.85.210.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-6ea147a6a95so594221a34.3
        for <linux-man@vger.kernel.org>; Mon, 08 Apr 2024 08:59:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712591968; x=1713196768; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7aMcOu2q+u/qCcci0Oa1aSzZi0ww1MV+HuVejZwQDFI=;
        b=Gnl/qUoIvUerTHBo1R2aOaAXicg99VbCdSQpV+tZQPyeCzGOCPo6ppZdLVMNpdMgMz
         S1kN1a6ctwp5I2LbU+6zlK+hp7CmCoFC5LIuFmT+hH3i4SDetWlZNXAZwFuIs7hBT59q
         oJCHwi/lTnLBJ9Cr6UOJVCPKCxJ6V9CICyTCrNACPS0jfAMh3Zzuy0pAvRVgU3LejfQZ
         noizdRzb41PVd1JM6Tu8qXQXryisDp6swJsOm1KyJ2QMG7BJWg6rKkfKqGbmn/S0SkNQ
         1RZDYuyleJKRDI1vyWItk50HavcGu79XfsNlYCRUFfjxhNAl+MViVgz549VQoDNSz1AB
         ErSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712591968; x=1713196768;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7aMcOu2q+u/qCcci0Oa1aSzZi0ww1MV+HuVejZwQDFI=;
        b=QsCz8IEjWU/upqWCLEOoOxv5wCSGmw0N/GF2kk4Y1fQjnQMOi1HVvr7KYFTSw+ibuE
         WNYFvdZKu9ATdS87qY1OJaiK4xxih0Nr/xvKoKlhr4lhp+FuLkB4ZkA5Fi27kA9zoiKr
         Fr2uZS+tYrH40ASzMAJLg16A3EvkVf4VgJ8hd6XR26MfK4fW49FYk7pNuJVBMdlLgMIQ
         9FDjQvTZxCQ7zJeOkAuTDKi7sWmDwUeOw7sMw2wgIdLdzW7q2w4nPG6UR/4DMZaS2Q/X
         pQ4NYgwDo95+TlHuZm1bzKTBvlXepLQnK9GshaciFDwhGXjyCsOar6Sr9ncsz+iyjtM1
         +NGg==
X-Forwarded-Encrypted: i=1; AJvYcCWLTua7S7nem8H9tOwr292BiSp6FRA5pH4/tJDgwOjWVcirqIFf7/005BI+eMkyx1emJBoKfFSGzqcO0I9oH5P/Dm/pcjs7njOg
X-Gm-Message-State: AOJu0Yy7hRePJMzMqU9CU1O9nNA8vVFRocwYw087FAnJKa4p7/dw4X5M
	8wWOX42au05OasoZgYosLmvdT2rbxzoDcrveZCtgJxpustaESQgG
X-Google-Smtp-Source: AGHT+IFXGEv1rF0jRva60t7d9bE4I4atxrPfv4t2weVxTQW/Y21DCr4XFs5FuDpnXnh5eADbf74/Wg==
X-Received: by 2002:a05:6808:18a5:b0:3c5:e8f0:e928 with SMTP id bi37-20020a05680818a500b003c5e8f0e928mr6760953oib.15.1712591967643;
        Mon, 08 Apr 2024 08:59:27 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id a10-20020a05680802ca00b003c5f042c93esm558368oid.26.2024.04.08.08.59.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Apr 2024 08:59:27 -0700 (PDT)
Date: Mon, 8 Apr 2024 10:59:25 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Paul Eggert <eggert@cs.ucla.edu>, Alejandro Colomar <alx@kernel.org>
Cc: Time zone mailing list <tz@iana.org>, dickey@his.com,
	linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: [PATCH v2] tzfile.5: Fix indentation
Message-ID: <20240408155925.vf4huybv22aiqohm@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2rlyslbxbe4yjim5"
Content-Disposition: inline
In-Reply-To: <f34c6ff3-3b22-4e64-9eea-5009280f56fa@cs.ucla.edu>
 <ZhOrbl8GE4WhXGvD@debian>


--2rlyslbxbe4yjim5
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[Caveat lector: this is not a short email and I hyperlink to multiple
longer ones]

Hi Paul & Alex,

At 2024-04-07T23:33:38-0700, Paul Eggert wrote:
> On 2024-03-18 01:35, Alejandro Colomar wrote:
> > Hmm, while Ossana's indents might be a bit excessive, TZDB's might
> > be too short.  Maybe I would RS 4 spaces instead of 2 before the
> > tag.
>=20
> That'd be too long for the nroff case. The nroff case is a bit too
> long already. It looks like the following in the current TZDB version:
>=20
>  The goals of this section are:
>=20
>    o  to  help  TZif  writers output files that avoid common pitfalls in
>       older or buggy TZif readers,
>=20
>    o  to help TZif readers avoid  common  pitfalls  when  reading  files
>       generated by future TZif writers, and
>=20
> ... and if there were four spaces (instead of two) around the bullets,
> it'd be too much white space.
>=20
> Of course we could indent more or less depending on whether it's nroff
> or troff, but that's complexity I'd rather avoid.

Depending on what you want, you can apply a scaling unit to the
measurement.  On terminals, 1 em equals 1 en, but on typesetters they're
different (1 en is one half em).

This doesn't work for Thomas Dickey's case, unfortunately, where he
wants _wider_ spacing on terminals than typesetters.

For example:

man/curs_addwstr.3x:.de bP
man/curs_addwstr.3x-.ie n  .IP \(bu 4
man/curs_addwstr.3x-.el    .IP \(bu 2
man/curs_addwstr.3x-..

> > > There are other things not to like about the man page PDF output.
> > > The man pages are confused about when to use constant-width fonts
> > > vs varying-width fonts.
> >=20
> > Can you please point to an example of this?  I try to be consistent,
> > but probably there are still cases that I haven't fixed due to lack
> > of time.
>=20
> See the attached, which is the output of "groff -man -Tpdf zdump.8".
>=20
> First, I had to do shenanigans like this:
>=20
>   .ie \n(.g .ds - \f(CR-\fP
>   .el .ds - \-
>=20
> and later use \*- every time I wanted to specify a zdump option like
> -v.  Using plain "-v" in zdump.8 doesn't work, because it generates a
> hyphen in troff mode and hyphens are too narow. Using "\-v" doesn't
> work, because it generates a mathematical minus sign in the PDF, which
> differs from "-", which means you can't easily search for "-v" in the
> PDF. So I have to use "\*-v" with the above code. And this means the
> "-" is in a different font than the "v".

Like Alex, I am curious why the PDF CMap isn't solving the
copy-and-paste part of this problem.

> On page 2, there are some examples in constant width font to make
> things line up. But shouldn't we be using constant width font for all
> code?

I'd say no.  For code _displays_, sure.  Inline?  That's less certain.
Used _judiciously_, the way Brian Kernighan does, it's fine.  mdoc
mavens like to pound the table, trumpeting the superiority of their
"semantic" macros.  The problem is that for many years, the coupling of
macros of code/literal semantic denotation to the Courier typeface led
to _horrible_ typography in groff, because things like the square
brackets in "synopsis language" weren't in Courier--logically enough,
because they're not "literal"--but this made it difficult to tell how
wide the spaces you were looking at were, or if space was even present
between a bracket and a semantically muscular adjacent code item.

I submit that mdoc advocates lost sight of basic readability.  I guess
it was more fun (and quite possibly more remunerative from an employer)
performing automated transformations on semantic tags than attending to
the basics of typesetting.  (I'm no great practitioner myself!  But I
assume I'm not alone in preferring to be able to tell whether a space is
present at a given location in the text, especially if it's showing me
how to type in a Unix command, which follow varying conventions.)

I recently drove a bulldozer through this nonsense in groff Git HEAD and
am steeling myself for a summons to the International Criminal Court on
charges of "semantic heresy" levied by people who don't even use groff
anyway, but mandoc(1).

(mandoc(1)'s solution to the typesetting problem is to format HTML and
then use a third-party tool to convert HTML to a PDF.)

https://lists.gnu.org/archive/html/groff/2024-03/msg00163.html

> That's what the rest of the world is doing nowadays (or, if you
> want to be fancy, a sans serif font that stands out in a different
> way). But Linux man page fonts are still stuck with a style defined by
> the limitations of the 1970s C/A/T phototypesetter
> <https://en.wikipedia.org/wiki/CAT_(phototypesetter)> and are using
> Times Bold and Times Italic to refer to program and file names.

Not exactly.  With groff, you can remap these font names.  I recently
showed a groff mailing list subscriber who _hates_ monospaced fonts (and
especially Courier) how to customize the way it's rendered in his
system.

<https://lists.gnu.org/archive/html/groff/2024-03/msg00181.html>:
>>> ... I don't think many people hate monospaced fonts as much as you
>>> do.  I won't change the default but I will do my best to ensure that
>>> you can perform the font substitutions you desire.  In fact I think
>>> I have.
>>>
>>> Here's a recipe that works with groff 1.23.0 and Git HEAD.
>>>=20
>>> $ git di tmac/
>>> diff --git a/tmac/man.local b/tmac/man.local
>>> index 8f75330bf..491bda1ee 100644
>>> --- a/tmac/man.local
>>> +++ b/tmac/man.local
>>> @@ -21,6 +21,12 @@
>>>  .\"   4: x-man-doc://1/groff   -- ManOpen (Mac OS X pre-2005)
>>>  .\" Set this register to configure which the `MR` macro uses.
>>>  .\" .nr an*MR-URL-format 1
>>> +.
>>> +.ftr CR AR
>>> +.ftr CB AB
>>> +.ftr CI AI
>>> +.ftr CBI ABI
>>> +.ds an*example-family A\"
>>>  .\"
>>>  .\" Local Variables:
>>>  .\" mode: nroff
>>>=20
>>> (The `ftr` requests are necessary to snag "manual" font selections
>>> with `ft` requests or, more likely, `\f` escape sequences, and to
>>> handle tbl(1) tables using those font names.)
>>>=20
>>> Apply the foregoing patch to wherever your man.local is installed.
>>> The "Files" section of groff_man(7) in groff 1.23.0 (or Git) should
>>> tell you where it is.

> Also, it should be ragged right, in both nroff and troff output.

This _also_ came up just in the past month or so on the groff list.

https://lists.gnu.org/archive/html/groff/2024-03/msg00079.html

Short version: historical practice in this area has been divergent with
respect to nroff output, and overwhelmingly against your preference with
respect to troff.  (That doesn't mean you're _wrong_.  But you might be
iconoclastic.)

> Right-adjusted text looks nicer but is less functional, and man pages
> should be all about function. (See the reference below.)

"All about" can be enlisted to do entirely too much work here, but I
agree with the principle.

> > > The lines are too long to read comfortably; this is inherent to
> > > how a good font squeezes in more text.
> >=20
> > I'm not sure I understand this.  Do you mean there are too many
> > letters in a line in the Linux man-pages PDF or too few?
>=20
> Too many. I'm getting about 100 characters per line in the PDF, which
> is on the extreme high end of the usual recommendations (it should be
> closer to 60 characters per line). There's no single answer here of
> course (opinions do differ), but the man page lines are pretty clearly
> too long in the PDFs.

One straightforward means of addressing this problem is simply to
typeset the manual at a larger type size.  Say, 11 or 12 points.
groff's supported that for a couple of decades.  For these sizes, Werner
Lemberg even chose vertical spacing counterparts inspired by TeX.

groff_man(7):
     -rStype=E2=80=90size
              Use type=E2=80=90size for the document=E2=80=99s body text; a=
cceptable
              values are 10, 11, or 12 points.  See subsection =E2=80=9CFont
              style macros=E2=80=9D above for the default.

> See:
>=20
> Nanavati AA, Bias RG. Optimal line length in reading - a literature revie=
w.
> Visible Language. 2005;39(2):120-44.
> https://journals.uc.edu/index.php/vl/article/view/5765

I've got this queued up to read during a doctor's appointment today.
(More like a waiting room appointment.)

I have a personal shell function that exercises the new groff man `PO`
register to use the default line length but center the man page in the
terminal window, and have been enjoying it for months.

An inevitable problem we will face in trying to set man pages on
narrower lines is the heavy use of tables and other means of filling
disablement by page authors.  No sooner did they get a feel for the
additional 13n additional elbow room that groff gave them (over
historical *roffs' 65n), than they started overrunning that limit too.

Documenters of C wanted function synopses to look just so, and turned
off filling to get it.  Other page authors wanted to depict what the
terminal would look like, and ran roughshod over considerations of
circumstances under which a man page might actually be typeset.

I wouldn't be at all averse to reimposing a 65n line length limit as a
_style_ recommendation.  And I think I know where to poke the formatter
to get it to emit a warning diagnostic if the line length is overrun
when filling is disabled.  (This would be kin to TeX's notoriously
discouraging "overfull hbox" warnings, but if I can't write a diagnostic
message more intelligible than that, I'll put in for retirement.)

At 2024-04-08T10:31:32+0200, Alejandro Colomar wrote:
> Hmmm, with a set of macros C CR RC CI and IC to use them it could be a
> good idea.  Branden, how does it look to you?  I don't think CB and BC
> would be necessary.

I don't like that idea at all.  I don't want to add _any_ more font
macros to man(7).

Incidentally, Eighth or Ninth Edition Unix man(7) did the foregoing,
with a "literal" font named "L" in the package.  (It mapped to Courier,
as I recall.)  Stepping up an abstraction level was good.  Growing
another dimension in the vector space of font macros was less good.  Not
being taken up anywhere else is neither good nor bad, but may be
suggestive.

However, that doesn't mean we must surrender to futility.  My idea for
attacking this is the user-definable "tag class".

https://lists.gnu.org/archive/html/groff/2023-10/msg00034.html

> > Too many. I'm getting about 100 characters per line in the PDF,
> > which is on the extreme high end of the usual recommendations (it
> > should be closer to 60 characters per line).
>=20
> Completely agree.  CC +=3D groff.  Branden, do you think we can fix that
> somehow?  Literally, the first thing I thought about the Linux
> man-pages PDF when I saw it was "Lines are so long that it's hard for
> me to read them.".  Well, it was the second; I first saw the front
> page, which was beautiful; that thought was the first one when I say
> the first page after the front.

Pass `-rS11` (or -rS12) to the formatter when building and see if you
like the result.

Regards,
Branden

--2rlyslbxbe4yjim5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmYUFFYACgkQ0Z6cfXEm
bc626A//RzN8t4R1rnaNa8MwzXdT5+b8JP3HPUIaUutQgZFjXjyVYRZGKbcXuThj
T/N7zLQVcw89eXl4YA9Ot+20ujh5b/dfIDw1L19UR0OVpFqUdNb3j152KKs+s84y
GspcSNDZXXz9rC3IBSHGlLQxh9mzFahjc1IE/sO6D3npaumIepI5A7fRfqHLw0ar
j6tMae4pyi0kXHfQ/xqOdVoP0zEfB4ivruh7fyywqg34n7BybGqi/DHUOMN60HMo
192BFY8RxZ6tnhvISNi1oeOtRTz7EyoVrJhyo7WwUf5dBAw9Y/jWxV4v1fy9FjN2
s50nqOj87Vjrb0Ur2JL4NzitWIh34/N3mjPjSuI6j/Orq/EJ/VmBOqWMDI8xG52D
jzzWAZr23+JzFzL5+b3bNz52rYwAb6oW8MCWeajlDOlSokh23aZkOuKiTiP/okSP
T/wpHThdjRyYqCV8xuLJvKn1C7gKnzS0erHB/h/3vgPG5QaKehELNVbnhfMKwBsg
J4vbdzwx/MUqqMRdMLNTncK7oLZ6RX0xOuQhi5Zbo53vIg34LnEuOjlLelSpAJkq
lh/vbhF5LAPRFlX2M8480mgam693c83v/OOzbWDTdW9hq9Cp1qG7anQfh8x13nxR
SLw1VpEA2C67lJh13M2DndKzm3elx0DXLe4WOCdpKK0IcqzXXqQ=
=askL
-----END PGP SIGNATURE-----

--2rlyslbxbe4yjim5--

