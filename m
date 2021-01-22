Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 71DEC2FFAFF
	for <lists+linux-man@lfdr.de>; Fri, 22 Jan 2021 04:24:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726030AbhAVDX7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 21 Jan 2021 22:23:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725984AbhAVDXt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 21 Jan 2021 22:23:49 -0500
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8107C0613D6
        for <linux-man@vger.kernel.org>; Thu, 21 Jan 2021 19:23:07 -0800 (PST)
Received: by mail-pj1-x102b.google.com with SMTP id j12so2902889pjy.5
        for <linux-man@vger.kernel.org>; Thu, 21 Jan 2021 19:23:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Oclp1lqeInLXE/FrKUQR77mNJZc0eObiy+5NTGJXQAk=;
        b=L5WRHB22W3YX3rB334tsqZFwh1VGIUeftZ6Ik9jvJYQm0NasnnlFe1/Er8IoY/wVPZ
         yLVABMUWbWkhokFEcVyCFAPmNHUHB0nkgTBDG+qYe68opnoY9DTXHk9dzM9ALtrv1gj1
         D6KzNT04yUR9ZixE3rNS6AQgOS3UvYnmJ/dfYzQcJ3FVoaKrvNyYvtpKX9G5d4vZ7DMu
         ChAOgWJxMVKBgL7/gV3XEqLfXAbvH/bumhYhYwz2Pse2jauwFy6n8xD0AuyrtwoylgEm
         Hj+lTi8kOFqHoHFN8LYFHELlHhajvgSMPyYX/jfXeNePUCszBqVx6EKQZL4dFdMw6sFf
         CtZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Oclp1lqeInLXE/FrKUQR77mNJZc0eObiy+5NTGJXQAk=;
        b=dYlHT16V/GfonuLnQZs9JyNoLqL1cI1Zyw9/XVXYCuMpMA3PSt0PWtOefYySxczwaZ
         1bhoul9U/FJF+UgYdLew6eyOG+2q0TYGbtJN+MJY3FbRExmNsEcFb+rV4cyX9lWWwTlh
         qBgdxHt/5QL2pRs+ZHp0zAfxao1TgB9Pw/h1cDjKDZIwhXnL5W6vXnfCl3EV7/DKCVu1
         qMk4nF+/mh4b48M88tdq/YwLPwAbrITWjir6Sbdnp02ox6aYGcuqf6RYC4q7+5jbW8iF
         xUflOZJAyVs4qd68Y7+30Ccd2gWkGpxfsOx0/PX/fwKGNCIIvf5QE8yHMKcbvn8RWVcC
         CHlg==
X-Gm-Message-State: AOAM5319uGokxt3t5x5mFOHtw/5R+0m3XTphjrcBniih7ldPAHHz4/0w
        IZnE1Q2ONGgUDa8nnOeDNK4=
X-Google-Smtp-Source: ABdhPJzqbQt9l/api4k/l/mWOVZFqpJvUGBQP7/1reFdHqxp1BFSnUz1ANN6PoI6rvKHnOukUPXOHA==
X-Received: by 2002:a17:90a:9915:: with SMTP id b21mr2874511pjp.101.1611285787256;
        Thu, 21 Jan 2021 19:23:07 -0800 (PST)
Received: from localhost.localdomain ([1.144.183.211])
        by smtp.gmail.com with ESMTPSA id a31sm6773640pgb.93.2021.01.21.19.23.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Jan 2021 19:23:06 -0800 (PST)
Date:   Fri, 22 Jan 2021 14:23:02 +1100
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH] posix.py: ffix: Correctly format URIs
Message-ID: <20210122032300.zsqf6uuznfbu6tij@localhost.localdomain>
References: <20210109195840.74472-1-colomar.6.4.3@gmail.com>
 <a1d2172c-3880-ac79-7df7-0f5fb0bc65af@gmail.com>
 <20210110065023.olvhi2gqjbmv7243@localhost.localdomain>
 <af78792f-9758-e3e6-9c65-c2f93f0fcfdd@gmail.com>
 <20210112205115.g3nuoodpn7xxpx5u@jwilk.net>
 <bdbf6dee-e74f-e2e3-8c44-4ce63d396aa1@gmail.com>
 <20210121201426.b6wfycjdegxce7fw@jwilk.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="sebaegpqwx4q25tk"
Content-Disposition: inline
In-Reply-To: <20210121201426.b6wfycjdegxce7fw@jwilk.net>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--sebaegpqwx4q25tk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2021-01-21T21:14:26+0100, Jakub Wilk wrote:
> > After seeing Branden's answer to Michael (Escaping hyphens), I've
> > seen groff_char(7), and I found that my tty correctly supports
> > U+2039 and U+203A.  I clearly see the symbols I would expect:
> > something quite similar to plain <>, but a bit more obtuse.
> >=20
> > In the XFCE terminal, I also see something quite expected: a
> > slightly smaller version of <>.
> >=20
> > But both show me very different characters for .UR/.UE.  tty
> > displays a diamond, and XFCE term displays (a weird version of)
> > round parentheses.
> >=20
> > So... does it mean there's a bug in .UR/.UE?
>=20
> Or a bug in Branden. ;-)
>=20
> Contrary to what he wrote, and what I parroted, .UR/.UE use U+27E8 and
> U+27E9 as delimiters.

Mea culpa.  I don't know where I got U+2039 and U+203A.  It wasn't from
checking groff_char(7), which correctly documents the special character
escapes.  (Which softens the blow--I'd rather be wrong on a mailing list
thread than in a man page.)

U+2039 and U+203A are "single {left,right}-pointing angle quotation
mark" per Unicode.  Their groff special character escapes are \[fo] and
\[fc], respectively.  (I don't know the mnemonic that inspired the
"f" in the name.)

U+27E8 and U+27E9 are "mathematical {left,right} angle bracket" per
Unicode.  Their groff special character escapes are \[la] and \[ra],
respectively.  I _assume_, without having interviewed Werner Lemberg or
Eric Raymond on the subject, that angle brackets were chosen for .UR/.UE
(and .MT/.ME) in continuity with existing practice elsewhere.

If your terminals' font coverage refuses to support U+27E[89]
reasonably, you can remap the characters.  This is good fodder for
man.local[1], recently discussed here in another thread.

=2Eif '\*[.T]'utf8' \{\
=2E  char \[la] \[Fo]
=2E  char \[ra] \[Fc]
=2E\}

=2E..or you can just put < and > in place of \[Fo] and \[Fc] if you
prefer.

(The conditional checks the output driver being used for rendering.  It
keeps the glyphs from being remapped for PostScript of PDF output, for
instance.)

It may happen that you want to alter the character mappings only for
some terminal types, perhaps because some terminal emulator uses fonts
with a meager glyph repertoire.  Here's an example of how to do a string
comparison against an environment variable.

=2Eif '\*[.T]'utf8'
=2E  if '\V[TERM]'linux' \{\
=2E    char \[la] \[Fo]
=2E    char \[ra] \[Fc]
=2E\}

In any event, if any font designed for use with terminal emulators
claims Unicode coverage and lacks glyphs for any of the special
character escapes in groff_char(7), I would regard that as a bug in the
font that should be reported to its maintainers.  The list of groff
special escapes has been stable for several years and is not expected to
change[2]; if I recall correctly, the previous groff maintainer Werner
Lemberg felt it should be frozen.

Regards,
Branden

[1] available at /etc/groff/man.local on Debian-based systems
[2] This does not mean that macro packages cannot extend the list, and
    in fact there is a pending contribution from Dorai Sitaram called
    rfc1345.tmac which adds all the digraphs from Vim (which are in turn
    based on RFC 1345) to the repertoire, and should be a nice
    convenience for users familiar with those.  I plan to merge it prior
    to the release of groff 1.23.0.  Authors of man pages intended for
    broad portability, however, should not source this macro file.  It
    remains to be seen what other implementations like Heirloom Doctools
    troff and mandoc do about it.

--sebaegpqwx4q25tk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmAKRQsACgkQ0Z6cfXEm
bc5vAQ/+MxxTPFb1Hcw5K+RAaGi2W0YSLwwE+YyVr8gIiKConewf0dE3D1Jf2CT/
l33NbTEvIO6co3afeJViTDWLA+ScYt4ATIX6Z9aw8eXfVYAp5LsRxXGzo8V4nlGD
3sZi3QEcF1My2Ekx1U4qvocure+xMlKbUDjJcK0vtQFBYdTu1kVhOxgnVzAwAX9W
dfmwdEwKZni6W8/EGSTLOeZ8oOUdsrVXZAkuw0JTyZPOfs3kKLWdgxbVkVF5/AA4
OLcQiKO0FALRf0km9h2wL1wMGj2BzySix3rxhLOgdkbYTj1/Ov+Wyd0piy3M4myZ
XVkvxe4MyKbG3/RFDCIQPzfD91MrvKjS7KMXgHrIiSL25CaqtXLRzqSDuCfyZoja
cQgTnm+kX15HfQ4CICeh15I+oWUEOAb/wbporAZNjoZOBXtpn6yeettoDJ6lYv5g
a57BXLsONGWpkXv9SqJX1upqVBRWSJYgdOMMdYT1B3TKCTSga2dPvbtmYq468v63
KbAWfGdtIYW5B9cEA9no5j7Kszj8OGZ012o0aoHf+kZNN9AlbSwj4r6xXiosIqVb
pQc23ZDCpIpM1KENyCYVebUeAuAQQOyZwxEAw+I46VUbJzbDzeBvbUPVvunreLrI
uVumfaWwTSkUmzHcvZLpppE2+33t6ZT0pbGthsc/NsLkc/FTmoA=
=VGN1
-----END PGP SIGNATURE-----

--sebaegpqwx4q25tk--
