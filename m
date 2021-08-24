Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0D76F3F5D8E
	for <lists+linux-man@lfdr.de>; Tue, 24 Aug 2021 13:58:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234787AbhHXL7a (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 24 Aug 2021 07:59:30 -0400
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:36944 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S236283AbhHXL7a (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 24 Aug 2021 07:59:30 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id B7F41360F14;
        Tue, 24 Aug 2021 13:58:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=nabijaczleweli.xyz;
        s=202006; t=1629806324;
        bh=spg1C2bwcwZLApkTWQnjVVK+4yMzLwa+jhplrEOeRXk=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=XsuYUoLeQ4bRaN6aELg+xTa0ob67UeP/RSiBPuh8kRhmFB6aqtla1DJRgPUwwYclX
         CiHP1JO9mP1dB7QVbjO/cClF2bT9tbTwlXA3+JX6hJjU7OdK5YvmJDP85BEdgyJhbJ
         R4Gm0DPtbYLa7vpxgOkVggLM9+2Gp0rUrSTxjvkg63FtA63anIi9Tl6c6yP9vqcdH9
         fb5EcAvsriK5PD0RUHIwyedC9EaXbZwhPZV3Bl7CmpOFw40PIuxdJqVDcg/vnLBe16
         6TGMuoo/XPQdeknSsN4U6Xab/BIKQbjehjsW4Jgwm/BKhW/gTeawF0tddLC6xs83dj
         E1afgNlYRBVsw==
Date:   Tue, 24 Aug 2021 13:58:43 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: Re: [PATCH 2/2] alloca.3: rewrite NOTES
Message-ID: <20210824115843.p3zjacmu5bx4vrmu@tarta.nabijaczleweli.xyz>
References: <ed9ad00910f264f8f9ecd266d398522077f4548f.1629752426.git.nabijaczleweli@nabijaczleweli.xyz>
 <c08c2bb9ccbbc097166f4815f8dea420e5fe1044.1629752426.git.nabijaczleweli@nabijaczleweli.xyz>
 <d2c606ce-468d-8545-30cc-d8dabeb48296@gmail.com>
 <20210824100444.kwl6jowo66zgqjps@localhost.localdomain>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="z4exa6y3ylfxeo5v"
Content-Disposition: inline
In-Reply-To: <20210824100444.kwl6jowo66zgqjps@localhost.localdomain>
User-Agent: NeoMutt/20210205
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--z4exa6y3ylfxeo5v
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 24, 2021 at 08:04:46PM +1000, G. Branden Robinson wrote:
> At 2021-08-24T11:50:57+0200, Michael Kerrisk (man-pages) wrote:
> > On 8/23/21 11:01 PM, =D0=BD=D0=B0=D0=B1 wrote:
> > > -option is given
> > > -.BR and
> > > -the header
> > > -.I <alloca.h>
> > > -is not included.
> > > -Otherwise, (without an \-ansi or \-std=3Dc* option) the glibc versio=
n of
> > > -.I <stdlib.h>
> > > -includes
> > > +are specified, in which case
> > >  .I <alloca.h>
> > > -and that contains the lines:
> > > +is required, lest an actual symbol dependency is emitted.
> > (That last line seems like a useful addition!)
> I agree, but I note that the verb should be in the subjunctive mood.
Not a clue what this means, but the "is" should be "be", I do agree.

> Also, is the word "actual" doing any work here?
Dunno; without standards conformance (-ansi, -std=3Dc*) alloca() is a
magical identifier, in that, if you compile this:
-- >8 --
extern void * alloca(unsigned long s);
int main() {
	alloca(20);
	puts("200");
}
-- >8 --

You get
-- >8 --
nabijaczleweli@tarta:~/uwu$ cc a.c -oa.o -c
a.c:4:2: warning: implicit declaration of function 'puts' is invalid in C99=
 [-Wimplicit-function-declaration]
        puts("200");
        ^
1 warning generated.
nabijaczleweli@tarta:~/uwu$ readelf -s a.o

Symbol table '.symtab' contains 6 entries:
   Num:    Value          Size Type    Bind   Vis      Ndx Name
     0: 0000000000000000     0 NOTYPE  LOCAL  DEFAULT  UND
     1: 0000000000000000     0 FILE    LOCAL  DEFAULT  ABS a.c
     2: 0000000000000000     0 SECTION LOCAL  DEFAULT    2
     3: 0000000000000000     0 SECTION LOCAL  DEFAULT    4
     4: 0000000000000000    33 FUNC    GLOBAL DEFAULT    2 main
     5: 0000000000000000     0 NOTYPE  GLOBAL DEFAULT  UND puts
-- >8 --
and if you drop the -c, it will link, run, and print "200".

If you do request standards conformance, however,
-- >8 --
nabijaczleweli@tarta:~/uwu$ cc a.c -oa.o -c -std=3Dc18
a.c:4:2: warning: implicit declaration of function 'puts' is invalid in C99=
 [-Wimplicit-function-declaration]
        puts("200");
        ^
1 warning generated.
nabijaczleweli@tarta:~/uwu$ readelf -s a.o

Symbol table '.symtab' contains 7 entries:
   Num:    Value          Size Type    Bind   Vis      Ndx Name
     0: 0000000000000000     0 NOTYPE  LOCAL  DEFAULT  UND
     1: 0000000000000000     0 FILE    LOCAL  DEFAULT  ABS a.c
     2: 0000000000000000     0 SECTION LOCAL  DEFAULT    2
     3: 0000000000000000     0 SECTION LOCAL  DEFAULT    4
     4: 0000000000000000    35 FUNC    GLOBAL DEFAULT    2 main
     5: 0000000000000000     0 NOTYPE  GLOBAL DEFAULT  UND alloca
     6: 0000000000000000     0 NOTYPE  GLOBAL DEFAULT  UND puts
-- >8 --
and, trivially,
-- >8 --
nabijaczleweli@tarta:~/uwu$ cc a.c -oa -std=3Dc18
a.c:4:2: warning: implicit declaration of function 'puts' is invalid in C99=
 [-Wimplicit-function-declaration]
        puts("200");
        ^
1 warning generated.
/bin/ld: /tmp/a-935faa.o: in function `main':
a.c:(.text+0xa): undefined reference to `alloca'
clang: error: linker command failed with exit code 1 (use -v to see invocat=
ion)
-- >8 --

C compilers are fully allowed to do magic, and this is some of this
magic: unless in ISO mode, it's impossible to ODR-use alloca().

> Thus:
> [[
> 	is required, lest a symbol dependency be emitted.
> ]]
Sure.

Best,
=D0=BD=D0=B0=D0=B1

--z4exa6y3ylfxeo5v
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmEk3vAACgkQvP0LAY0m
WPGuZQ//SY+/B6WqVICRQDel1+nveet1ERRFgUhQu2fmwK+K6bNFxUq5TfTO+IOn
zicskhLatMbLBYNPYRh3AsxHYWrjLbbc+cSdtdkM0ZQDgMHGZIMugcxqKs7FKMj/
ps2/0ZkdEcnYmedIvXoreSpYsW5sZFzzF+7yngGKG9KGmK9Zi/yeLr8BmLWhFZn8
irXbGTQOLjF2oHxqnr+YKTubo8VlAnK2kmNgIWjdNskqpWvelV+83yno9ABvaW2a
HULPtTIl/tuszVatAiF4E3X7gMiSEObmxlH3mmOy/q8eLegOtOBUcpnWjlmu767V
haHK4YBUaSZScFqesT7gyF6LWIkMMY4jx6i762aJCoUVZzuaYQ9Z+rkYJD2e5+e/
BanGeAyZmZtF3l+1CaCTcHu1vGdCh2fthVGUKYms2t/Stu57y6QWmWbIS/8IBD8y
XkZ4+bbYMS4dX9qBDCS0mmbCn63DD3QaxsBQ6LOZPL00WKIcLBAUNjJhslYLNUiD
Av+vua3sgOAy2NZbziPE07LOK9TQWPtc0C7powzvbE6H4fQMdAcnTjRQwq6QXACa
XTISiLCJCcC5PW9rL8T4icIICT/LQC0GMUkFk+QdcEEo0UpQtKU6dkgUxZyXovWO
L4HHizfxFzBwbsXxtpgceMyBlYJCn7xlnYqogZ8E8XsWq1Hx9Ac=
=RoVF
-----END PGP SIGNATURE-----

--z4exa6y3ylfxeo5v--
