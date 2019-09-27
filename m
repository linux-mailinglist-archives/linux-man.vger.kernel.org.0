Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B577DC0A8D
	for <lists+linux-man@lfdr.de>; Fri, 27 Sep 2019 19:45:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726294AbfI0Rpr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 27 Sep 2019 13:45:47 -0400
Received: from mail-qt1-f193.google.com ([209.85.160.193]:46856 "EHLO
        mail-qt1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727836AbfI0Rpq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 27 Sep 2019 13:45:46 -0400
Received: by mail-qt1-f193.google.com with SMTP id u22so8243004qtq.13
        for <linux-man@vger.kernel.org>; Fri, 27 Sep 2019 10:45:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=d2J0ECed7QeixtzZyRVraZC/eacMxKJVdDciYes/llU=;
        b=PbLCBnR9z+keaXIMA3p8o7bDMfn8E0dp3J4oTQnPuVK8+urDSlThKOvECTveMqCI4f
         LcvCj31BSQDlTe3OMrCZPN1raMBGy8C2zjTBVXhXL7pOIfjL4lXTImpZxLm1CTVt+azA
         DMi7yNJNViK3BxYeD7FZdeuw55LrBAMYLCy6lvV8EZnBmAAUlwz60hn1g8jOdSYvv/D2
         geb0re6y6MITlw9Rvrzn4mGrD9a0oLls42yagLx7I26RnGiw1Rsgv8oqgkrcrzV1gxF0
         oB2T314Za2P9/ujCwRWtuIR7aAKrZCCYNsc8KaVqBbDIrR5nZ1yv15f8TKXlcV9CKPKX
         k/zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=d2J0ECed7QeixtzZyRVraZC/eacMxKJVdDciYes/llU=;
        b=I0FQQbFraRQZ+t4EaqaLNDEm23+sIGy5npjIjlGi/1brfrMuyYf+pssPi4FJkWxk8z
         TAZAcM58HNWmocRwuAfnjEITbfTq6ti4Tnfzs/KBA1V0sw7XWkL2WcPRC75UO9O78QUw
         00AbNP66TFn6oRoDDoPF60LtJi6+FiqHaTa/+Qd35HvASVbVvLdiF/kO7B76Gjw9597z
         /A9Jq5iTv/KvyZJqYQ8I6S890+1/oOiTjvuOR3R5CS6X/VvGDgohMkWFOmX6DlWm+g/C
         yRrnvU2C7DJkC9IC2WDhmw9IHmcAcVeUrOUVHauZ3j1eIJJcWJgyWhtL0BFmT2EpXT71
         awpQ==
X-Gm-Message-State: APjAAAUQLopVaQ+cO6nTu22wOmEx1xZCUougOYxeF7bkjIpOmGJb+Stb
        H0R2jTE3h8HmaXwGY9d5yIPQ9hGm
X-Google-Smtp-Source: APXvYqx6TbiH9NcL+TrSKp47pMbukT6Z+GsufPLdMrMQEuQxFm1ss/L2pZJraC0G7QmqzwbrhC+VxA==
X-Received: by 2002:ac8:1bcb:: with SMTP id m11mr11328254qtk.122.1569606345507;
        Fri, 27 Sep 2019 10:45:45 -0700 (PDT)
Received: from localhost.localdomain ([38.127.166.254])
        by smtp.gmail.com with ESMTPSA id r55sm2869960qtj.86.2019.09.27.10.45.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Sep 2019 10:45:44 -0700 (PDT)
Date:   Sat, 28 Sep 2019 03:45:43 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Ian Hunter <ian@ianhunter.me>
Subject: Re: Error in read.1p
Message-ID: <20190927174541.cykfcoglc2v4ovud@localhost.localdomain>
References: <20190926181754.GA15754@comp.lan>
 <20190926182357.GA20390@comp.lan>
 <20190926204500.yywdgn3dnxnkzigu@localhost.localdomain>
 <20190927122734.GA8085@comp.lan>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="m5oihq3yuuh37kod"
Content-Disposition: inline
In-Reply-To: <20190927122734.GA8085@comp.lan>
User-Agent: NeoMutt/20180716
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--m5oihq3yuuh37kod
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Arkadiusz!

> > First is that the above pages are not maintained by the Linux
> > man-pages project.  They are maintained by the Austin Group, the
> > folks behind the POSIX standard.  They have an issue reporting
> > site[1].

Mmmm.  It looks like I was imprecise.  Details below.

> Good to know, I couldn't find read.1p in the repository.  But at the
> bottom of read.1p it says:
>=20
> "Any typographical or formatting errors that appear in this page are
> most likely to have been introduced during the conversion of the
> source files to man page format.  To report such errors, see
> https://www.kernel.org/doc/man-pages/reporting_bugs.html. "

Yes.  I don't have manpages-posix-2013a installed (because I'm a Debian
user and the package is in Debian's unofficial non-free package archive,
which I don't use).

But I grabbed the source package, unpacked it, and took a closer look.

The text of the man page sources is derived from the POSIX standard
which is copyrighted by IEEE, and not licensed for modification.

Nothing indicates who was responsible for the preparation of these man
page sources.  As you noted below, recent Austin Group bug traffic
suggests to me that they maintain nroff sources for at least part of the
IEEE 1003 standards documentation; whether these man pages were
generated or hand-written is not clear, but on inspection they're clean
enough to be the latter.

> I think this might make people want to report such bugs here.

You're right, it sure looks that way.  I was mistaken if I suggested you
came to the wrong place--the documentation clearly directs you here.
Other files in the distribution, like man-pages-posix-2013-a.Announce,
speak of "the Linux man-pages maintainer", and
man-pages-posix-2013-a.lsm identifies Michael Kerrisk as the maintainer.

> Also, I also wasn't able to find any mention of austingroupbugs.net
> neither in man-pages-posix-2013-a/README nor at
> https://www.kernel.org/doc/man-pages except for this
> http://man7.org/linux/man-pages/changelog.html (at least using
> Google's site: operator).  Could this information be put somewhere?

This is a good question for Michael.

> > I believe you will have to register on the site to actually file a
> > report, however.  (Issues can be _viewed_ anonymously.)
>=20
> Here http://austingroupbugs.net/view.php?id=3D1158 someone says that the
> issue is already solved in `troff source' but I don't know where to
> get it.

I suspect it is not publicly available at all.  If it is, I know nothing
about it.

> That didn't work for me because /etc/groff/man.local is never opened:

Hmm!  What happens when you type "man --version"?

On my Debian-based system, even just running "nroff -man" over an
(uncompressed) man page source file opens it (I tested it by adding:
=2Eab FOO
to /etc/groff/man.local).

> Adding .char \- \N'45' to ~/man.local didn't help.  And I already have
> this in /usr/share/groff/site-tmac/man.local:
>=20
> .  \" Map \- to the Unicode HYPHEN-MINUS character, to make
> .  \" searching in man pages easier.
> .  if '\*[.T]'utf8' \
> .    char \- \N'45'

The above conditional checks for the utf8 device; when you're using a
non-UTF-8 locale (like en_US), it will not be applied.  If it's not
applied even when you _are_ using a UTF-8 locale, that's a further data
point for our troubleshooting; see the end of this message.

> I have a hard time trying to understand the whole process and need
> some reading on the subject.

groff is the GNU implementation of a family of programming languages for
typesetting whose names end in "OFF" (from the expression "run off" [a
copy of a document]) that date back to the 1960s.  At some point it
became sophisticated enough to be Turing-complete, and grew sufficiently
complex (and powerful) that people started writing macro packages for
it.  Most man pages are written predominantly with the macros defined by
a package designed for on-line documentation and purposefully limited to
the abilities of the Teletype machines used as terminals at Bell Labs in
the 1970s.

In addition to macros, which are expanded by *roff itself at the time it
processes a document, a variety of preprocessors are available.  The
most famous of these originally came from Bell Labs as well, and were
also reimplemented by GNU.  These include "tbl" for formatting tables,
"eqn" and "pic", which define mini-languages for presenting mathematical
equations and diagrams, respectively; and "refer", which expands
bibliographic references from a database prepared by some companion
tools.  Tables are often seen in man pages; the others, less so, either
due to the limitations of traditional terminals or because Unix systems
tended to be distributed without supporting documentation or because a
tradition of citing references apart from other man pages in a scrupulous
way did not become entrenched in the Unix community, and that is in turn
possibly due to the fact that a curated global database of references
useful to the corpus of Unix man pages ever arose.  (Bell Labs had one;
I don't know if any distributions outside of it ever managed.)

After preprocessing, macro expansion, and interpretation of the *roff
language has occurred, the *roff command generates a representation of a
document in device-independent format of its own, popularly known as
ditroff (for "device-independent typesetter r(un)off").  This
intermediate format is then transformed by output drivers into a format
that is consumable by another device or program; examples include HP
LaserJet 4 printers, PostScript readers or devices, PDF viewers, HTML
documents, or text (perhaps with embedded ANSI SGR escape sequences that
exercise terminal features like bold or underscored glyphs).
Historically, many other output drivers have been written for other
*roff implementations.

> $ troff -v
> GNU troff (groff) version 1.22.3

groff 1.22.4 was released last December.  It includes many improvements
I and others have made to its man pages, though much work remains to be
done, especially on the larger pages.

Which distribution are you using?  The man page macros in groff load the
local settings.  It sounds like your distribution has something
misconfigured; either the macro package was patched to not load the
local settings, or something has defined the macro directory search path
in such a way that /etc/groff doesn't get inspected.  Or something
weirder is going on.

Does "echo $GROFF_TMAC_PATH" emit anything on your system?

Regards,
Branden

--m5oihq3yuuh37kod
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAl2OSrwACgkQ0Z6cfXEm
bc5OOQ/+OiDDsJ228cfd2gg2M+2+AdrMgSbk1kBNaF43gYaqNYnate68tuu63rRS
ZcIJlnRjNmTx0lbXVZxnVVLBntrZimKaPdefw8PXSO87foAsTMsYeSVCRHRdcaFh
AzET/e9V1xiBdrrRgLtkGGU4wfWNrmOF2blfspPdxV73UBcNZpzxn201Ajpy084T
PQ2vJnCUAw0mB6yq/B49s4VjXDSW5l8KdKfLA/2XMYv+IPUCtiExTjvUiFLZnZE/
K7epef5VrZ7SuN533ZcrrLYDCMnXYtAQkRHTKXc8Zhk/Tue47hY/dfu0Y+efllnY
EXzQiFk9r/IICbQZClTDEjSclVnMkI9qrmULjxFA/oO+Rw98B+G1zfDTP3zC8N/y
mLO1ihjshLx9bxPHJSCBbI6d8HatlGMHp6WPAt7ifwx0y0C8vMKsRfFOMQMOjZgN
MabfaKNc9Qsb8TIjcN8/w03fdTj/CvMO3kMPr0zJntgKupNVtztgcPIJtrQg40kF
PuKf0GWbK8p9NZEsI5OoSwcAHvm3l5I1B174zKxq0HVWp4owTa5TsNyN9PlCvofh
tlF3Emd9pLTXD/4vAwroesDb3gTshapDIIIK9dsdSa+iPidpgQrLhs60U83l1hJr
odxiFtx00a4xQgMFDlf8rlk70oV/17Dai0oLOOvM6t47MGEBDBw=
=Id3h
-----END PGP SIGNATURE-----

--m5oihq3yuuh37kod--
