Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 950246803B7
	for <lists+linux-man@lfdr.de>; Mon, 30 Jan 2023 03:05:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235406AbjA3CFW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 29 Jan 2023 21:05:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38226 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235421AbjA3CFU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 29 Jan 2023 21:05:20 -0500
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 92A5B359A
        for <linux-man@vger.kernel.org>; Sun, 29 Jan 2023 18:05:17 -0800 (PST)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 1ED01BB8;
        Mon, 30 Jan 2023 03:05:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1675044314;
        bh=pZnPlnnPcIB4JAL8VLakWToWFma5sZCWv4pXk1wo484=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=EOcNpCql5NpQN7q6wjFTdM1EXmbonIzWWpn96NNhYRLRex6DX79lK4MDaANpvJSrp
         Bp1yP8g4n9gFzC5+gytu9W/KLDGeWqqd5UT1Txe1JEO1SE015fEhqmAFbH9BBLmm32
         jQDcVOcn4+guqFLH7Omehq+JAw/s5pCDdTDnKenGIMbtyYVN/x2SqKtnIDyEpuhPZt
         Vg0JnbbEt317vT7fwb40E+Q3H2cSO049Ef7Mua8OGKm2OTjjLOSZLG6yiWSZM0BaWt
         mgaK/9WLbMgsKJPcfg9IcMhsN0f8kbqp/XhpqTmkB/zG34mcXtKiul7k/kzUdClzFJ
         9gx3Hh5QNeUpw==
Date:   Mon, 30 Jan 2023 03:05:12 +0100
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v2 1/3] timespec.3type: tv_nsec is impl-def-type, glibc
 llong not a bug
Message-ID: <20230130020512.bces77ao7xty4iyy@tarta.nabijaczleweli.xyz>
References: <20230129162944.353r46pnt6fbcqeg@tarta.nabijaczleweli.xyz>
 <dd82d5ab07d5a0aafee6a1166a757a22c39f52af.1675009892.git.nabijaczleweli@nabijaczleweli.xyz>
 <9962eefe-0125-d847-ae47-d25658a75610@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="y3qp6l6hi2jri3x5"
Content-Disposition: inline
In-Reply-To: <9962eefe-0125-d847-ae47-d25658a75610@gmail.com>
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        PDS_RDNS_DYNAMIC_FP,RDNS_DYNAMIC,SPF_HELO_PASS,SPF_PASS,
        T_PDS_OTHER_BAD_TLD autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--y3qp6l6hi2jri3x5
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

On Sun, Jan 29, 2023 at 05:41:56PM +0100, Alejandro Colomar wrote:
> On 1/29/23 17:31, =D0=BD=D0=B0=D0=B1 wrote:
> > +.PP
> > +.I tv_nsec
> > +is of an implementation-defined signed type capable of holding the spe=
cified range.
> Would you mind using interval here?
I don't think it makes sense here? Since (a) this is the standards
phrasing and (b) the /range/ of values is represented by an interval.

We could just as well say "all integers between 0 and 999`999`999",
or "integers at least 0 and smaller 1e9", which are both identical,
but aren't intervals per se. Or consider a similar case,
where the range would be "[0, 2^31-1] =E2=88=AA {EOF}" =E2=80=92
you wouldn't call that an interval, but it's a valid set expression;
timespec.3type is just a degenerate case.

In general, we're concerned with the logical object here
("the domain" or, well "range [of values]"),
not the implementation detail ("it's spelled with an interval").

Plus, I'd never search for "interval",
but most people would probably grep for "range",
because that's the sanest spelling.

> > -This is a long-standing and long-enshrined glibc bug
> > -.UR https://sourceware.org/bugzilla/show_bug.cgi?id=3D16437
> > -.I #16437
> > -.UE ,
> > -and an incompatible extension to the standards;
> > -however, as even a 32-bit
> > -.I long
> > -can hold the entire
> > -.I tv_nsec
> > -range,
> > -it's always safe to forcibly down-cast it to the standard type.
> If the C standards and POSIX don't want to add a type for it, let us
> disagree with their decission.
Let's not. This is valid /right now/ in no-flag (so "gnu18"?)
Clang trunk and bullseye GCC:
-- >8 --
$ cc -Wall -Wextra a.c
$ cat a.c
#include <time.h>

static void nsecify(typeof((struct timespec){}.tv_nsec) * n) {
        *n *=3D 2;
}

int main() {
        struct timespec q =3D {};
        __auto_type w =3D &q.tv_nsec;
        nsecify(w);
}
-- >8 --

And in C23 you'll be able to s/__auto_type/auto/.

> Let's add a bug:
>=20
> There's no portable way to declare to pointer to tv_nsec, since you never
> know for sure if it will be long* or llong*.

Again, C23 has typeof() (kinda like decltype()), and on Clang trunk
  $ cc -Wall -Wextra a.c -std=3Dc2x
already compiles cleanly;
the "portable way to declare a pointer to tv_nsec"
is to spell it exactly as "i want a pointer to timespec::tv_nsec",
which is even better than a single-use typedef.

Best,
=D0=BD=D0=B0=D0=B1

https://twitter.com/__phantomderp/status/1619027523257667584
(that's the C standard project editor shitposting; it's a glamorous age)

https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3054.pdf
already has typeof and
https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3079.htm
has the latest notes on auto, which n3091 marks as "Accepted with
comment: wording from N3079 with editorial corrections."

--y3qp6l6hi2jri3x5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmPXJdYACgkQvP0LAY0m
WPElGhAAiKTAuInrFnLAYJg8MVD7bXvdDJWBqm55ZLIrQO/Tx1rm0Z5EqCv0ocp/
sHwe6hGCgqBhy2BARRI2Vrta5g53hWHoEiinZjEDmYT5SwlEfeIjMqgGPIPbqKsA
xSw6h1G2heV76nxv3hMLDiY7pyPrQwU7h8WYGZUTqQOKzUCz30i5w/eOx1g0mF4I
ZP2Z0j1DQg2FDJk++gAR5/W9ST1zQSgO9YeEtE+6R9RvCgBTmmcMtTsclTeCpPmj
YwfYup7Y5m848tUpskQq/240fpvhEtQS0jnJs4QfS5jAWfm+gJFg6dEveLgicDI5
aonFC4ZGZaFliykeAcFAjxPeWuY7nz3VAFkR7FfsALqIB4Cl9381wUdQNsc48l2M
9Fo5IBtGgG13zbgp4Q9mwrb0g2hfZqcioOUReL8K8TJVLcOcFzAm2HIhKmES3uMC
CRK0Xr3J+ARs9QMrM3Xv5GWdO//uf0W/R5T9ROVp1FYXYl0cZgX9jodiLwuvfpuv
wP8CGyfElWcgBLvImwthcMlVCaU4x5pQvLVUBTdOUiskUhyoy91MT9bqcn7n7ohV
TGhTtqD0muO0s8XAeGqhs7h4k1VCRYTa7mXQCfxL6YPfKSWrWKTJqr44kO0oMMR7
92UC82C4xi2rKs+kaYWkLyVXcvCPbJYUmcECORs/ZlEXCQVKZ6Y=
=RVc0
-----END PGP SIGNATURE-----

--y3qp6l6hi2jri3x5--
