Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2F3B667455B
	for <lists+linux-man@lfdr.de>; Thu, 19 Jan 2023 23:01:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229941AbjASWBN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 19 Jan 2023 17:01:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42598 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229966AbjASWAd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 19 Jan 2023 17:00:33 -0500
Received: from stravinsky.debian.org (stravinsky.debian.org [IPv6:2001:41b8:202:deb::311:108])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3773DC130C
        for <linux-man@vger.kernel.org>; Thu, 19 Jan 2023 13:39:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
        s=smtpauto.stravinsky; h=X-Debian-User:Content-Type:MIME-Version:References:
        In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description;
        bh=UXuD9E5YBfadpIt7uy5oxY2QkLni4NJGWuOUbBoIj28=; b=HcsGLTFRaVGOSnHOJmCBMvYelZ
        /Ck54BheBytdE1fd2NL6FIXYoYNfCQgfXC6WIYO80klPCIGmnUgXtCRyNYjFfl7bkpuKgMBTtsnO3
        lePYLOfGxTiTyxmvvF5P7b1r9npeFdGGEFiDwzXDpvH3Rr2hQaOmMrhYKgWuKTvSDA3TM67ev4e/u
        j0JhTAjzihUNGvLcY6ReXS7aQ2Spvmjssp/abAACbtXF+uTJncmdyVJNJ3ODiKHyftZNfSdrw7AYx
        dWOFp8nr6QV2Pn85PGwwm/lfII/CwAYLAwV0gLvxvaXnmtoKo3m/WDqImYrcEvZ6h0Wl14IiOWIsc
        KramL7Ag==;
Received: from authenticated user
        by stravinsky.debian.org with esmtpsa (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (Exim 4.94.2)
        (envelope-from <rouca@debian.org>)
        id 1pIccZ-00BzBV-D8; Thu, 19 Jan 2023 21:38:58 +0000
From:   Bastien =?ISO-8859-1?Q?Roucari=E8s?= <rouca@debian.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        eblake <eblake@redhat.com>, Zack Weinberg <zack@owlfolio.org>,
        GNU C Library <libc-alpha@sourceware.org>
Subject: Re: struct sockaddr_storage, union (was: Improve getsockname)
Date:   Thu, 19 Jan 2023 21:38:54 +0000
Message-ID: <18201055.pzcD54PWfD@portable-bastien>
In-Reply-To: <b709c21f-2553-8679-fde9-49d7400ca4ca@gmail.com>
References: <2889739.XEG2VLDMQ1@portable-bastien> <3299211.1eNo6cvScQ@portable-bastien>
 <b709c21f-2553-8679-fde9-49d7400ca4ca@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2229899.pe9kkTBIjB";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
X-Debian-User: rouca
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE,UNPARSEABLE_RELAY autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--nextPart2229899.pe9kkTBIjB
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"; protected-headers="v1"
From: Bastien =?ISO-8859-1?Q?Roucari=E8s?= <rouca@debian.org>
To: Alejandro Colomar <alx.manpages@gmail.com>
Subject: Re: struct sockaddr_storage, union (was: Improve getsockname)
Date: Thu, 19 Jan 2023 21:38:38 +0000
Message-ID: <18201055.pzcD54PWfD@portable-bastien>
In-Reply-To: <b709c21f-2553-8679-fde9-49d7400ca4ca@gmail.com>
MIME-Version: 1.0

Le jeudi 19 janvier 2023, 21:19:49 UTC Alejandro Colomar a =C3=A9crit :
>=20
> On 1/19/23 22:00, Bastien Roucari=C3=A8s wrote:
> [...]
>=20
> >> <https://inbox.sourceware.org/libc-alpha/0f25d60f-f183-b518-b6c1-6d46a=
a63ee57@gmail.com/T/>
> >=20
> > I do not believe it is broken by design. It should be used with care an=
d warning.
> >=20
> > BTW if we go to the anonymous union way could we add at the end a _null=
_reserved_field. It will help for unix socket and the infamous sun_path cou=
ld not end with null...
> > May be it is too late from an ABI point of view, but for me the posix c=
ontract from an ABI point of view is that I said in the note  sockaddr_stor=
age  could grow but not be reduced.
>=20
> Yes, many types have seen such additions at the end of it over time.  In =
the=20
> Linux man-pages, I try to document all structures as "having at least the=
se=20
> members", but may grow over time.

In fact it is not needed and it is the best argument of struct sockaddr_sto=
rage
 printf("%li %li",sizeof(struct sockaddr_storage),sizeof(struct sockaddr_un=
));
give me 128 vs 110...

So if correctly documented and aliasing solved it will be the best of the w=
orld...

Moreover kernel expect it https://elixir.bootlin.com/linux/latest/source/ne=
t/unix/af_unix.c#L293

>=20
> >=20
> >   struct sockaddr_storage {
> > 	union {
> >   		sa_family_t          ss_family;
> >   		struct sockaddr      sa;
> >   		struct sockaddr_in   sin;
> >   		struct sockaddr_in6  sin6;
> >   		struct sockaddr_un   sun;
> >   	};
> >                         char __reserved_null;
>=20
> Such a field would make sense.  In fact, I believe the Linux internal=20
> implementation of _un must have something similar, since it ensures=20
> null-termination even if the user passes a non-terminated string, IIRC.
>=20
> >   };
> >=20
> [...]
>=20
> >> This is compatible:
> >>
> >> -  It had at least the `ss_family` field.  It's still there, at the sa=
me binary
> >> location.
> >> -  It has a size at least as large as any other sockaddr_* structure, =
and a
> >> suitable alignment.
> >> -  Old code still works with it just fine.
> >> -  New code will be able to avoid UB, and all casts, just by accessing=
 the right
> >> structure element.
> >> -  It's trivial to test at configure time if the implementation provid=
es this
> >> new definition of the structure.
> >=20
> > I agree I could even add a macro for autoconf-archive (I am upstream) a=
nd post a patch for gnulib.
>=20
> Nice; since it's backwards compatible, I'll (probably) suggest a patch fo=
r glibc.
>=20
> >=20
> >>>>
> >>>>> +.I sockaddr_storage
> >>>>> +structure is large enough to hold any of the other
> >>>>> +.I sockaddr_*
> >>>>> +variants and always well aligned. On return, it should be cast to =
the correct
> >>>>> +.I sockaddr_*
> >>>>
> >>>> The fact that it is correctly aligned, and a cast will work most of =
the time,
> >>>> isn't enough for strict aliasing rules.  The compiler is free to ass=
ume things,
> >>>> just by the fact that it's a different type.
> >>>
> >>> Ok any idea for writing this kind of stuff
> >>
> >> I'm thinking about writing something to several pages; will keep you a=
ll updated
> >> on important changes to the pages.
> >=20
> > Please exchange with me... It is really a pitffall for my student, so I=
 could help here.
>=20
> Sure.  Will do.
>=20
> Cheers,
>=20
> Alex
>=20
> >=20
> > Bastien
> >>
> >>
> >> Cheers,
> >>
> >> Alex
> >>
> >> --=20
> >> <http://www.alejandro-colomar.es/>
> >>
> >=20
>=20
> --=20
> <http://www.alejandro-colomar.es/>
>=20


--nextPart2229899.pe9kkTBIjB
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEXQGHuUCiRbrXsPVqADoaLapBCF8FAmPJuF4ACgkQADoaLapB
CF8GYRAAsmzBq+MEvDVH8Hw8kMfBIlxtuui6ToNEJT0IuxF9x6ilK+UTBjBBDrFO
hls1ro2HqtdG5gBItBUr7gyMqyGMv8PG6GRtvt7M6tfyuEjLi6AZn9vyE5s93eF3
ak23rWebQ5vG6JfqpXRtSCoJfIDpyZp+x8lA/xeDss8GhRbpfuUVuLpJljJkWEvZ
La9bseBqrIZEYonMJORCRapUWuDQLF11DxODkZsnjh+5qn4P9r+7rsASbsCTjs/j
fGV0Ue88H0QB6N9a5qFYetpZ8mAlTduYgK9vza0UCh0U26Lm8+jU3t9aInmxjF3H
a5I3Y1mMFr3wUgaUBcPXZebMTkYDe3+0ngptzRqXnkZAdtSEzjAdoseZ1mpye8ZK
/Dos6+HGQsItCnJz31Jxsc8D2Anxcr/wCQwSgdDEgOhwYM/SSwl3FJCRPvbHouFT
OC7qY7uLhJw9gFXtDMHaPGcKiF7O8p/rNuEI2LyEN0o3+Kue5EQnyozhvvTh+GbY
HlZ151lr8nuAI5xk83DcQiDjB3gvn+7JQc/J0CEznxdGwMX/Yj46hbbQQhV6h1mU
l+Y1YkhUbi1sEsG8DZnJEbpM6IimHtnzGYANzmdh2WBkTOpImQMwwxWVn7PkyC63
0Yn3ewPmksQ1wZ9Rv9GQVtX44JO8qUwUCjkDT5eNhHcqmW8gyxs=
=4hHg
-----END PGP SIGNATURE-----

--nextPart2229899.pe9kkTBIjB--

