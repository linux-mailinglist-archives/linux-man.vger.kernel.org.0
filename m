Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A1B71458FCA
	for <lists+linux-man@lfdr.de>; Mon, 22 Nov 2021 14:52:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239608AbhKVNz4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 22 Nov 2021 08:55:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37860 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239616AbhKVNzy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 22 Nov 2021 08:55:54 -0500
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61B07C061714
        for <linux-man@vger.kernel.org>; Mon, 22 Nov 2021 05:52:47 -0800 (PST)
Received: by mail-pf1-x434.google.com with SMTP id r130so16159653pfc.1
        for <linux-man@vger.kernel.org>; Mon, 22 Nov 2021 05:52:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=4zR4DXh86aIlh0UrXaQdpSA+dnAb7P+aoeO5Wt8AryU=;
        b=J1F4POMI12Sjx2vliNV+rKjVt2buC4dvMc9dKVM/Jhgi2xBgDUhoSHOjSS2eo6Z+5B
         Ffe42o9JaVdY3Eu9qCE0vndDtx3YW/ZqSt2CHyh8/DkJr5C9fyF+3DI+CKtSa140xXl+
         g1NCshz39rPrOuHjYLT9ubD9G3anCuNl/o+UM41D9fbvIjcxYcLvQudD0MGiYIeE1U3G
         b5n2p6ZmuDdXBPa6N/2If+gSNVLM5RZdCLCkG9lyN7M8bD7VEzi1tEBk/hGLuwCktOD0
         Xf10UI9PJA21Z+Lwx8iibHXVU7ITsDsypb4+YulFHxE04oTvvKGgAWOBg2CsFsNpflnM
         U7qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=4zR4DXh86aIlh0UrXaQdpSA+dnAb7P+aoeO5Wt8AryU=;
        b=fOFi73SifHHosUlBKN+PKQDPcrN1G5FYFsgQywh3xA7ZStlrLyQW/ZkZdC4EPQVjxy
         5saYw4JmsbrMtCuQhkyLmRZtw7uIKF1z+N7ThvYHT3I4RFv/GsUDY0mxYoP5TLY+JPv7
         H39kuKxVVuZUdmkm5iw2VTQu8RQ0RmgcHOmiFz1pHgmUIgkMiD0o8rDDmTU/XlZ/QQ+4
         lYMkp9rLe7RmCzNf5+H7VOC3coil2htomzPzUzlp/wuVUksAgbynnRrZAIMaQ9lKzbMC
         G3ctLBmFp/4myTzZkdPJyY9AgCWBR+58foW+EbWgV+l6ttiYs01tKaYAr/4F9F1pfkFd
         Xj0A==
X-Gm-Message-State: AOAM530PbdnhcXi+p7V3d60mDKwZOBbR1em5ZbWtSI7AQij/pdMs7YvS
        IDk+GQxjbQP5DJDjnK8KrNhcQt0xEuc=
X-Google-Smtp-Source: ABdhPJwsn5Tc3f/xgeBqVyxYsIwbeNrKxrF2Bksww1ML/dpaaV5wCmyGlR68gk+HVgZuDquIof7vWQ==
X-Received: by 2002:a05:6a00:1909:b0:49f:a0d0:abcf with SMTP id y9-20020a056a00190900b0049fa0d0abcfmr84930422pfi.70.1637589166779;
        Mon, 22 Nov 2021 05:52:46 -0800 (PST)
Received: from localhost.localdomain ([1.145.87.11])
        by smtp.gmail.com with ESMTPSA id 4sm6319146pgj.63.2021.11.22.05.52.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Nov 2021 05:52:46 -0800 (PST)
Date:   Tue, 23 Nov 2021 00:52:42 +1100
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
Subject: Re: Bold and italics, semantics and constness (was: [PATCH v2]
 mctp.7: Add man page for Linux MCTP support)
Message-ID: <20211122135240.frxwgjbif72akv3n@localhost.localdomain>
References: <20211111015323.3542313-1-jk@codeconstruct.com.au>
 <76dd85f7-ab8a-1dcc-5b1a-5eb9a87d23bc@gmail.com>
 <20211112093536.hvifxgdtb2y6jzge@localhost.localdomain>
 <3fe7250d-eca3-663e-8ffe-11f67c08a879@gmail.com>
 <20211122090614.phhlheldl75xbxu6@localhost.localdomain>
 <ae193c20-6b65-be9a-5670-d6868cbae431@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="4pvkzvowiffxrm7k"
Content-Disposition: inline
In-Reply-To: <ae193c20-6b65-be9a-5670-d6868cbae431@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--4pvkzvowiffxrm7k
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2021-11-22T12:50:55+0100, Alejandro Colomar (man-pages) wrote:
[much snipped]
> I have had a very bad (and luckily short) experience with
> Lean/Agile/XP/MVP.

Well, they're all different things.  Supposedly.  Perhaps not.  :-|

> If I can help sabotage that, I will happily and intentionally do.

Hustlers will always be flogging "revolutionary" innovations to
managers, and managers will always suck them up.  It's not even that
there are never any worthwhile ideas in these manifestos, it's just that
you can fit that subset on an index card and the margins in publishing
index cards isn't high enough to attract anyone's interest.

> Are we talking about libc, or C documentation in general?  Because
> libc doesn't have any 'const' variables at all, at least that I know
> of.

I was speaking in general, but the Austin Group is kicking around a
const struct member for 'tm' right now.[1]

> So we don't even need to care in the Linux man-pages.  Maybe manual
> pages for other C libraries can better decide what to do with those.

I have this sick idea that everything that can be const, should be.
It's better for both parallelism and, generally, robustness.

> I think we're talking about 2 different things:
>=20
> - 'const' variables
> - pointers to 'const'
>=20
> 'const' variables can never be cast away.  It's an error.

Agreed.

> $ cat pointer_to_const.c
> void bar(const int *p)
> {
> 	int *q;
>=20
> 	q =3D (int *)p;
> 	*q =3D 3;
> }
>=20
> This is allowed by the compiler, but it is Undefined Behavior _unless_
> the variable pointed to by 'p' is really not const.  Casting away
> const is IMO also braindamaged, so I don't consider it a valid thing.

I remember having to do this on rare occasions, but don't recollect the
details.  I'm uncertain whether I was working around a bad design or
just being a bad programmer.

There is of course the constant pointer to a constant object.

const int * const foo;

=2E..which, because people insist that type qualifiers must come before
type names so that declarations read slightly more like English, leads
them to ugly constructions like

const int *const foo;

to remind themselves which way the operator binds...when they _could_
just write things so that a simpler "noun-adjective" rule leads to a
correct parse in meatspace.

int const * const foo;

Klemens flogs this in _21st Century C_ (O'Reilly).

> One of the things that I like from C++ is that they correctly
> implemented const.  Hey, "asd" is 'char *' in C, but of course if you
> modify it, demons fly out of your nose!

With -fwritable-strings, they stay inside and poke your sinuses with
pitchforks...surely an improvement(?).

> Going back to formatting:
>=20
> Pointers to const are just variables.  Their value is the address of
> some const, but that's not important.  The important thing is that
> they are variables, and therefore, you use italics with them.

Okay, I'm with you so far...

> So the only thing that IMHO should be bold (apart from constants and
> macros that expand to constants) should be global 'const' variables:
>=20
> const int FOO =3D 3;
>=20
> which some people prefer over macros, and which in C++, one could
> write as:
>=20
> constexpr int FOO =3D 3;
>=20
> In the case above, I don't see a reason why one would want to
> differentiate that from say
>=20
> #define FOO  3

It's a good argument.  The only ones that I can marshal against it are
that in the first case, 'FOO' is a C object and an lvalue (which is
almost saying the same thing).  I don't know C++ well enough to address
the second example, but I'm learning C++98 so that I can deal better
with the groff code base, which is written "Annotated Reference Manual
C++", a dialect that is as old as groff itself (1990).

> But in function parameters, 'const' is useless in variables, since
> they already got a copy, so they won't alter the original.  And in
> pointers, const applies to the pointee, but the pointer itself is
> variable, so italics.

I think of 'const' in function definitions as asserting invariants.
Consider the following example, where I use two consts that it sounds
like you would not, to prevent 2 different forms of stupidity.

    void func(int const foo, int const * const bar) {
    //void func(int const foo, int const * bar) {
    //void func(int foo, int * bar) {
        foo =3D 3;  // prevented by 'int const foo'
        *bar =3D 4; // prevented by 'int const * bar'
        bar++;    // prevented by 'int const * const bar'
    }

    int main(int argc, char *argv[]) {
        int foo =3D 1;
        int bar =3D 2;
        func(foo, &bar);
        (void) printf("foo=3D%d, bar=3D%d\n", foo, bar);
    }

When you're writing a parser (groff has many of them), you pass 'const
char *' around all the time.  Often these pointers are ones you got back
=66rom strtok() or similar.  You can pass them to a function to do some
kind of validity checking--but do you want that pointer advanced through
the string by the helper function, or not?  If not, then you can make
the pointer const, and rely on the helper function to make a copy of it
if necessary.  If you do want it to advance the pointer, for instance if
it's a function that skips comments and/or white space, then you can
pass a non-const pointer, and it will give you back a pointer that is
aimed at the next valid input token.

Regards,
Branden

[1] https://austingroupbugs.net/view.php?id=3D1533#c5532

--4pvkzvowiffxrm7k
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmGboJcACgkQ0Z6cfXEm
bc5w6Q/8D4T+8drN7wvyE1YhAmZANQoS0W1vd1rL2f+XG1pU6lKayVB16FiBtYvj
Roz3NrZe/cQe/2Kx13uQVGXF5mLs3GQhFmcLB8q4cpXudm5tLCM7MuzmUrIq5x0o
no5oWMEG1YgkGR2j+cu4RRmvMrP61bqHLBnLz3E4SmXDiZdOmE4IMNLJAMA5LNX/
KnaHpaXWlVINlS6LXqep+KkUW/V+FCDab7bQuP4zjg/c5OpNdDFPyFvAH6BC1fRg
eXfV91AxjJeuSlAU8qZMwMQ10zm1tghHrv5m4GE/EkgC8GmxbF247ve6y6xf0iWB
IZNSnEdw+zrQbsxrr3oxsvjvSy3JBqlmatJAOMAaG9CkJXbALm1Dj+nVrFU+QBTZ
+sf0VIXczoCfCW/Ak+4D9RiMGPUZAJyYplGORj07Sc718UMRCMGKiudFs1M0UwVr
efhKedrn+3FcfrkxPH8AivqdCBAlb/gmyqGQWnOK9uuBFxuPEGmrffdeHo+2Qu1g
hN17c+Gde8y4aWOBX5juRa8gxSF/V03wmUwTOFdVVaHVDWpisstVy1qySzTy/gzl
3ReewZhDrZXeKzLZcKQYtfOBXHToKn0PZO6GHIVnrFmH4BKm19yj3SQLx33P7M0X
JpwlKhkcILbjoVWzbNByHTyVJdWc32QPGqZEI6uAe6Ypj1iv+Cg=
=jjOP
-----END PGP SIGNATURE-----

--4pvkzvowiffxrm7k--
