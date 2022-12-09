Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BA2AF648996
	for <lists+linux-man@lfdr.de>; Fri,  9 Dec 2022 21:37:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229684AbiLIUh0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 9 Dec 2022 15:37:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34446 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229580AbiLIUhY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 9 Dec 2022 15:37:24 -0500
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com [IPv6:2607:f8b0:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F776A0F96
        for <linux-man@vger.kernel.org>; Fri,  9 Dec 2022 12:37:22 -0800 (PST)
Received: by mail-oi1-x22e.google.com with SMTP id s186so5592445oia.5
        for <linux-man@vger.kernel.org>; Fri, 09 Dec 2022 12:37:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=mvl17kSjs/Z2oqmQtK2Me6jzwe1/dcILh3QnQhXI3qA=;
        b=jFTMRjpl+vLUUpcAFLekmbRHM9ARS6LQs4W7QKwm3lWPKcdcYiHFRoT29dj0QIbF0r
         XO9ZEMfo3gsrVBgPnRe3VJUSonoVUU6CAA4Grorg/vTVUwgdvbdZ3s/GAv0JT09HvwmA
         RRZmulR/1gcdNJAGUMLr5fm1ACHb5mbi67jed7j8Asdln6jY9wQLDR+uHLlDP6Fmzsgb
         L2Ji0d2ANACt3jbWF0GPLDtzJJd3qGJCufp5Oa/AIGh5qkispLpsiba+KUR827eddQuY
         qVe5hdy+vakOr0LYHebsQtK1WAWBN5zR312LESkn7lux9JnGufbyxyzmhpY143TeECgl
         tdwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mvl17kSjs/Z2oqmQtK2Me6jzwe1/dcILh3QnQhXI3qA=;
        b=vQ80HMrCzqRarsCtaFoOBVh7oJ3XzCkTE7QKo1NoA/uMdiB91zmqfzW2t/4CJ6iWIH
         +jXL/f5sBBPlJzQZQMgvpbIsASz6Wxdh0oPl+OG1GUKCLT6T6J7T33MTTABZAN7hB/l5
         pGoB7vi9YT9pqat00FdsiRoO48080WRbSWjNsqWBAMe1tnir+veYa+zBVl8pACn8NR2s
         dHE2rT+i02yGumwf9N8mceHL2gERtzZLgzD0A0Z68Tt+BP3IvTVC726d8R5tjfIvzDFN
         9yTIPqq82yZJuWKwf02ETbIJ0yjf95dzQxhKni5ySfo5L1wNXOdeShv7IBaAW2uz4BKz
         skrA==
X-Gm-Message-State: ANoB5pl9TgG1WN72WvB765MXADTsXR8PJNDhEJJdiKjoHBGpbl2WTu5s
        ZVfn5qe3kQlDHRP4fnHi9Ca4zDFjegmfvg==
X-Google-Smtp-Source: AA0mqf63p91wtV7Keb8nAKq6xfkFnpWOkV5JuZOCa/NrkVKfYtBk4Yux7MEpvYK1BS6LU4dfROy4IQ==
X-Received: by 2002:a05:6808:1b14:b0:355:1de9:1730 with SMTP id bx20-20020a0568081b1400b003551de91730mr4535549oib.4.1670618241584;
        Fri, 09 Dec 2022 12:37:21 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id q4-20020a0568080ec400b0035c422bb303sm872798oiv.19.2022.12.09.12.37.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Dec 2022 12:37:21 -0800 (PST)
Date:   Fri, 9 Dec 2022 14:37:19 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Ingo Schwarze <schwarze@usta.de>,
        Colin Watson <cjwatson@debian.org>, linux-man@vger.kernel.org,
        Mario =?utf-8?Q?Bl=C3=A4ttermann?= <mario.blaettermann@gmail.com>,
        Marcos Fouces <marcos@debian.org>,
        "Dr. Tobias Quathamer" <toddy@debian.org>,
        Helge Kreutzmann <debian@helgefjell.de>
Subject: Re: Conflicting alias for some man pages
Message-ID: <20221209203719.yh5eosxv6ckgfuhz@illithid>
References: <20221203140116.GA15173@Debian-50-lenny-64-minimal>
 <1ac0914d-72f8-654b-c6b0-6be68f26a598@gmail.com>
 <4aaf7fb4-8d4b-e050-b376-9120d8c328ac@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="vw55wbmpz3nzepus"
Content-Disposition: inline
In-Reply-To: <4aaf7fb4-8d4b-e050-b376-9120d8c328ac@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--vw55wbmpz3nzepus
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2022-12-09T19:53:44+0100, Alejandro Colomar wrote:
> > > Could you remove these duplicates in your next upload?
> > >=20
> > > I found the following duplicates, I did not do an extensive search:
> > > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > > rindex - Both in index.3 and in string.3
> > > strncasecmp - Both in strcasecmp.3 and in string.3
> > > strncat - Both in strcat.3 and in string.3
> > > strncmp - Both in strcmp.3 and in string.3
> > > strncpy - Both in strcpy.3 and in string.3
> > > __fpurge - Both in fpurge.3 and in stdio_ext.3
> > > strcspn - Both in strspn.3 and in string.3
> > > strrchr - Both in strchr.3 and in string.3
> > > pselect - Both in select.2 and in select_tut.2
>=20
> Could you please confirm if this is a bug in the Linux man-pages, or is it
> something desirable?

I don't think it is a bug for multiple pages to have a mandb entry for
the same name.  The man(1) librarian is designed in expectation of that;
we have both printf(1) and printf(3), after all.

> I find it a bit weird that we need to specify a NAME only once.

There is no such need, and it would be impossible to enforce across
projects anyway.

> Then whatis(1) will not find the other pages that also talk
> about an interface (of course, ideally, only a page would describe an
> interface, but we know that's not reality).

apropos(1) and whatis(1) do indeed behave in a way that surprises me on
my Debian system (man-db 2.9.4-2).  I would have expected multiple
results.

What I expected:

$ whatis rindex
rindex (3)           - locate character in string
string (3)           - string operations
[...and maybe others I haven't thought of]

What I got:
rindex (3)           - locate character in string

I am not sure why further matches are being hidden.

"apropos" (synonym: "man -k") searches the page topics _and_ summary
descriptions, while "whatis" (synonym: "man -f") searches only the
topics.

However, given the string(3) page:

=2ESH NAME
stpcpy, strcasecmp, strcat, strchr, strcmp, strcoll, strcpy, strcspn,
strdup, strfry, strlen, strncat, strncmp, strncpy, strncasecmp, strpbrk,
strrchr, strsep, strspn, strstr, strtok, strxfrm, index, rindex
\- string operations

I don't see why "rindex" isn't treated as a match for "rindex".
"index", "strcoll", and "stpcpy" aren't either, so the position in the
topic list doesn't seem to matter.

I don't see anything ill-formed about the man pages in question, so I
can only assume this is either a man-db bug or an aspect of its behavior
that I don't understand.  But man-db's man(1) page suggests that my
expectations are correct.

--snip--
       man -k printf
           Search the short descriptions and manual page names for the
           keyword  printf  as  regular  expression.   Print  out  any
           matches.  Equivalent to apropos printf.

       man -f smail
           Lookup the manual pages referenced by smail and  print  out
           the   short  descriptions  of  any  found.   Equivalent  to
           whatis smail.
--snip--

Note the plurals.  So I will punt to Colin Watson here.

On another topic, I will stump again for the idea of having separate
strings.h(3) and string.h(3) pages instead of the single string(3) page
we see here.  :)

On yet another topic, the history of strcasecmp() seems incomplete, and
fails to motivate why "strings.h" (note the additional "s") even exists.

NOTES
       The strcasecmp() and strncasecmp() functions first appeared  in
       4.4BSD, where they were declared in <string.h>.  Thus, for rea=E2=80=
=90
       sons of historical compatibility, the glibc  <string.h>  header
       file also declares these functions, if the _DEFAULT_SOURCE (or,
       in glibc 2.19 and earlier, _BSD_SOURCE) feature test  macro  is
       defined.

They're older than the above indicates.  strings.h as a _file_ is at
least as old as 4.2BSD (1983),[1] a decade before 4.4BSD.
str{n,}casecmp() came in with 4.3BSD-Tahoe (June 1988).[2]  In
4.3BSD-Reno (June 1989), strings.h became a stump that loaded
<string.h>,[3] where it remained and after which the man-pages history
above picks up the story.

Want a patch?  Feel free to retitle the thread when following up on my
asides.

Regards,
Branden

[1] https://minnie.tuhs.org/cgi-bin/utree.pl?file=3D4.2BSD/usr/include/stri=
ngs.h
[2] https://minnie.tuhs.org/cgi-bin/utree.pl?file=3D4.3BSD-Tahoe/usr/includ=
e/strings.h
[3] https://minnie.tuhs.org/cgi-bin/utree.pl?file=3D4.3BSD-Reno/include/str=
ings.h

--vw55wbmpz3nzepus
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmOTnHcACgkQ0Z6cfXEm
bc7OCA//WWAG0S0swAYOziWDbz/5JwhsBHenwDUHoyZ6ko1++5S9H/F4zXgFfs/x
9eJL+LBP0/M0Q3bHGL3qkdJdg0xaOINeus8qNjynMnG+O8G8JLvvuEXXGSjLZsI9
a/1dql77asplcq6ef+uEzTvi9sEA2K0qRzs+poC4QxZkCYww8e1HafJqp5qjJ3Dw
jEj7i8FHVbnZKTYP6DvAQ1jTLc/gCNVN9OpzDmV7Y22blDR25q73PR+7oeG3hFsM
OV0Zil1nx36FItttu4rXkuPaQVN/Ei41YwAk2ejeFxmPF4hP9sfgHqrz0GU90x7L
3EKkJX+K5DZovzBm3clbnShMy7jJzmPsuXRfX8xmOux/8y9OV5iLzBHGugcrbl1Q
tuKEUR+m93xX0twRHYzK0koMdgnFZbSsjsoMnLU+oYSYfJzvtUXNhMfU11ekxw68
jpaubS7LL7G5lX4zNrU5M9Bck2scHwQk7acFZ2w1xmN33OLtNqsShRu1cQZXDM5+
NGiVixwUmkkpLqMKjtfSxyZZqv3jcu0pjewfCqFj/Wq/WCRlVk3AmuWknNYi6V6a
sxduoBuz6/tD+dEXsvJukTPFQhS1Bp0AudVNK2+10cnNZOqM0DaFQK/Khu/XV84S
YE64FYxSlXUSTQUaHl9TNwwQg83DvA48RhnVRXDTqSlNMG72YvM=
=U7Ev
-----END PGP SIGNATURE-----

--vw55wbmpz3nzepus--
