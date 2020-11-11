Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8428A2AF473
	for <lists+linux-man@lfdr.de>; Wed, 11 Nov 2020 16:10:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725908AbgKKPKB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 11 Nov 2020 10:10:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40772 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725900AbgKKPKB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 11 Nov 2020 10:10:01 -0500
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com [IPv6:2607:f8b0:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D833C0613D1
        for <linux-man@vger.kernel.org>; Wed, 11 Nov 2020 07:10:01 -0800 (PST)
Received: by mail-pf1-x442.google.com with SMTP id a18so1787238pfl.3
        for <linux-man@vger.kernel.org>; Wed, 11 Nov 2020 07:10:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Ayfa7VOHQI5g3tctqLUfo6b2NgUH+oez7WQ5744ZtyY=;
        b=UD9SzxcA5vqdGToKN28WPD2JYRVoJQMshypTO+G8ai5cENUPxUKDJj+ZmQngaYDAZJ
         lQ8u48ikJWfa4N12XYZnL7saykc2cSclPlMDNRm4JumR/kZ78PnG9ba/FjJMhEFItE6Q
         9kkq8lPpz0d7uIXTqCq0Pzf536avX3Gm04AWXSyyKLIi7CgC5gajplaBR9PZ5JOaQ9eJ
         KgEWAhkpSCsDNiN7RGuXAY//v4RjTPhmqO8Oh5swE3jscF0/uQhZsRQQNT1zpj38BW9h
         MdzgLFig0TiwR2lGkWWJGc6f4+cxra7P3n1/owj481waRnwUrR4iL4wdHMl9pBe6VDod
         loUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Ayfa7VOHQI5g3tctqLUfo6b2NgUH+oez7WQ5744ZtyY=;
        b=W6wPmbuVVhfhYGv5/zTXvmYY5NZaVm04CKEOu8zkHli49Q2TYNNdSHwl3Okrc/yiFJ
         Uhbt27O8zU4BMa9f/5r7wr1jeaWUFS43vNxTHJAsdo8L6M9J6f1FEPQwM67RS09scQ+v
         5dWw9aDuzWk7OR/TuYEBqplJkAJnw8oVXuXNDoHA9rzRvxwkkZW2bH2oVW0iJ6cL9REn
         MF2MV+KWbAkiCOB0xxTp1X+5Uz9/fV0+4/D1G6sEkRvaDejiNdDlvPuWgQS2+TOCM9Ua
         LC/HpIlbsoGKU/7FXFSOD+9DJbq4mdyJrN5rby16fW3P8RenHRgUG4NIzT8upap0qkmx
         uJ7A==
X-Gm-Message-State: AOAM530I5l9l2ULAW7nxGvvLiPx6klmP+v0EyNAf9lE9HoJwv0bw8K9B
        68MfbOAf1I6xgd5eDJGl+bY=
X-Google-Smtp-Source: ABdhPJzkjDg1FaOY9n2lP6Ah0jRkJoT2yDq+gWX6QkP0tUpj5yRKSPZQedDO+WjbOgImQLqyzOdXXg==
X-Received: by 2002:a05:6a00:158b:b029:18b:fd84:956d with SMTP id u11-20020a056a00158bb029018bfd84956dmr15442430pfk.22.1605107400154;
        Wed, 11 Nov 2020 07:10:00 -0800 (PST)
Received: from localhost.localdomain ([1.144.244.28])
        by smtp.gmail.com with ESMTPSA id l133sm3054967pfd.112.2020.11.11.07.09.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Nov 2020 07:09:59 -0800 (PST)
Date:   Thu, 12 Nov 2020 02:09:54 +1100
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org, colomar.6.4.3@gmail.com
Subject: Re: .RS
Message-ID: <20201111150950.u7lf3xeulydbd2vr@localhost.localdomain>
References: <ae05d6bd-af93-9b49-25a6-e9c69ae402ec@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="2rwhltc337wjl3mm"
Content-Disposition: inline
In-Reply-To: <ae05d6bd-af93-9b49-25a6-e9c69ae402ec@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--2rwhltc337wjl3mm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex!

And hi to Michael, too.  I'm sorry I haven't responded to your pings
about a good idiom for inset code examples.  The main reason is that I
don't yet have one that satisfies all of your criteria.  The other is
that groff is heaving its vast bulk toward a release, and I've been in a
perfectionist frenzy trying to clear my plate of my personal release
goals for it.  This includes man pages totalling 323 pages (not counting
groff_mdoc(7)[1]), which might not sound all that daunting to the author
of the scale-tipping _LPMI_ codex.  :D

At 2020-11-11T15:22:27+0100, Alejandro Colomar (man-pages) wrote:
> Hi,
>=20
> We already talked about something similar some time ago.
>=20
> I see [.RS 4] and [.RS +4n] used in the man pages.
> And there are also [.in +4n] and I think I've also seen [.in 4].
> Is there any difference between [+4n] and a simple [4]?

Not usually.  *roff parameters can be dimensionless (like hyphenation
modes), but many of them, like page length, line length, page offset,
indent(ation), and many others, have dimensions.  groff, like AT&T troff
before it, supports the expression of dimensions in a variety of units,
including U.S. traditional, metric, and printer's units (points, picas).
Ultimately, internally, all these different units are converted to
"basic units" which are meaningless outside of the formatter (but you
sometimes see them in diagnostic messages).

So when you use a request or a built-in register that has a dimension
associated with it, you need to either know what units are required to
get predictable output, or _tell_ *roff what units you want to use.
The way you do that is with a letter called a "scaling indicator".

These are documented.  See the section "NUMERICAL EXPRESSIONS"[2] in
groff(7) for a complete list.

Requests and (some) registers have a "default scaling indicator".  These
are document with the corresponding item.

"n" refers to "ens", a typographer's unit that is, roughly half an "em",
and an "em" is the width of a lowercase "m" in the current font.  For
character-cell terminals, 1m equals 1n equals 1 character cell, so it's
pretty easy to get a handle on.

> Which is the preferred one?

That's a terrific question.  I've wavered on this issue myself.
Semantically, there is no difference between ".RS" (or ".in") "4" and
"4n"--because the default scaling indicator for this macro (or request)
is "n".

At present I kind of lean toward "4n" because I think it disserves man
page authors to get too far away from the knowledge that groff is a
_typesetting_ system as troff and nroff (and roff, and Saltzer's RUNOFF)
were before it.

If man pages were only ever rendered to character-cell terminals[3], I'd
probably just settle on ignoring scaling indicators.  In fact, I'm not
sure they existed in *roff languages before Ossanna wrote troff.  As I
understand it, on Teletypes and line printers, your horizontal dimension
was character cells, your vertical dimension was lines, and you had
special logic for reverse line feeds and half line feeds in either
direction, and that was as granular as things got.

> And BTW, does [.RS] do anything different than [.in]?

At its core, no--but it saves a lot of state so that you can nest
further .RS calls, and use .RE, and so that the sectioning macros (.SH
and .SS) can undo their effect without causing havoc.

> I guess the code implementing those macros is written somewhere.
> Where can I have a look at that code to see it myself?

Here's the bleeding edge version:

https://git.savannah.gnu.org/cgit/groff.git/tree/tmac/an-old.tmac

There is almost certainly a copy of this file, probably from groff
1.22.4 on your system.  On my Debian box, it's at
/usr/share/groff/1.22.4/tmac/an-old.tmac.

Thomas Dickey once complained about the lack of comments in this
file--he's right, the things that a casual user most needs commented,
are not.  I've tried to remedy that defect in groff_man(7), but a more
Doxygenish approach to the package source itself would also be a good
idea.

Regards,
Branden

[1] groff_mdoc(7) will _ship_, but a person _really_ doesn't want to
know why it's not in my page count.  Ask me if you want a challenge
involving possibly diversions and traps.

[2] In groff 1.23.0, to no longer be in shouty capitals.  :D

[3] I sometimes get into a bit of conflict with some man page writers
who care less than nothing for any output device that isn't a terminal.
I want to accommodate such people as much as I can without compromising
quality for those who want to want to see man pages properly typeset.

The most recent episode of contretemps involves the sad history of
ASCII, ISO 8859, Unicode, and how exactly ' and ` (and to a lesser
extent, ^ and ~) should be rendered.  Some painful choices were made in
the 1970s, and some procrastination was coddled in the 2000s, that have
people grumbling today.  People threaten that the masses will just "go
to Markdown" if ignorance is not coddled.  For people who really care
_only_ about terminal input, I'm not sure such an out-migration can be
stopped, or should be.  Proper typesetting carries a lot of complexity
and it's hard to justify that complexity to people who don't want what
it can accomplish.

About the only challenge Markdown faces is filling, and I'm sure there
are tools to handle that it in its much simpler problem domain.  That,
or people just resize or horizontally scroll their terminals.  The
mindset is a bit foreign to me.

--2rwhltc337wjl3mm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAl+r/rQACgkQ0Z6cfXEm
bc6uFA//TaUdWBn89X3GE1DdeZSrZDK5JwV/JjOrMuANE6Big0WCOqCeV3VHcnog
4rdjgrnTyFqtZ5LJMbbDHqIeeAV/iDLVOZnQsW1v6CEvZCVDnAjMYKNpAAgR/keU
fYb5qXy4urErZCloHVMcfgs0S2EQ8qHE7OFlLcZ1Q5czlXRJWyxwKegikGzQJDV0
N48FKD2zm3y0mX9H7maxXJlP4Pu+07Ve7syud99/BMoFsKOvyldyYhD0FBPduaNA
iXBV8r/E3Ak5ILxquSi0RiimXTi+Kveys9dgYBZ1ntpAW3khe+UH22dd/ZlwlGoT
U5ZkjwhjSyRNktu4Lh73ZNz7qFkYNKp+ALzDVYfQrnPb6PZQzW0e2Q5HI6sCoZ0n
/1Bs/yLsufqPRG9ZwZYNV4UcpV0QqIy7gHcnaaID5zqBh/bcz7J6aeInJoZtvZ15
QmCcy06yWAlyYt7scoh0vsoIwYSM6SCGDOdWi75+NaobKS189yDFdEXnClTADe84
omscXL4yfzwwV9Px3uYSNPx+tCykasxfoxTWxqyAs9E7QOvkAZxjsmVXTQgEWZNy
7PuEg9rtMRMK+2RiFzyB5Rsz7cj/rYKslT9PRdY4SCVkffI2Cz2Yo8B89QtS7jh9
qSstlvnGYqTFZ1c/p2yziWDOG1Be4m45yodF4dwvjFxDz9/9Qp0=
=58TX
-----END PGP SIGNATURE-----

--2rwhltc337wjl3mm--
