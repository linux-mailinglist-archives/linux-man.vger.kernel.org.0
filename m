Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0389B600E4D
	for <lists+linux-man@lfdr.de>; Mon, 17 Oct 2022 13:56:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229959AbiJQL4X (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 17 Oct 2022 07:56:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45122 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230367AbiJQL4W (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 17 Oct 2022 07:56:22 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 67D69BF59
        for <linux-man@vger.kernel.org>; Mon, 17 Oct 2022 04:56:20 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 3FBA03A28;
        Mon, 17 Oct 2022 13:56:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1666007778;
        bh=Ia4vAkNnhuMjRlpP7dy9MfZSJRN/vnz25WEDHPfjmoo=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=H3PP8SjkIhW08Gr3Ne+4wzsg4mzJ3g/QCUCQWHLiJQ+GIe18qVg/V0l1/JZyZ0kwZ
         Ej/3fPvjIdOS4FKekfox9QcX3nTTngWIN481S6u5kn2+o9U0putaFdgtV2QSwIvuTk
         3/tfPJ5kCeufOTsUbzb+9wg1auQEsXJYH/Lpl6GDiix/aM4bYtHvmQ7SneFVC+hGY6
         LWcwkIEZQJswp9mvEQOtoimqLLxTePY+g0QbZ+5ezgSzVO/6cf8pdGoEmaOxUwK0d1
         k8N2Xf+TF5lSAPagHtA+35tM1jHRSwWD7looEObJeamGnC3+Q+iYeyuVY9GEQTufbU
         fsgcyfHuaBUOsA/gZCFSkA+J/uL11z4LDMadwNaJYpYljHnllmM5vWc2c9h+kwtaJb
         nje/mlHEMBxYoBrsPKBavVHh8HOsdjC7IKSrzD93/4WN5tBAsU3xKa8Y5+cLXU6BlV
         PAPgbWQ+Mn4QdgSsqC1xG3fhLFJleNe3WMLCd1VEK5wwuPgVRL9G9bouWHBPwLZajb
         AVCdXz+ppyS0SsiaXpJo6+zqGyHmEJ04TTj+tS2KCLP0hw5XTya0btauPK9Acq6lts
         Zi46wL4EarE6cnVcHOtiDXuTJ2TV4UxNUmqVAN3xdwGwwkXGf7G113rAlOr2NzqLhM
         RfIHkWokkCovmbZGk31UvmsY=
Date:   Mon, 17 Oct 2022 13:56:17 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alex Colomar <alx.manpages@gmail.com>
Cc:     Ingo Schwarze <schwarze@usta.de>, linux-man@vger.kernel.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Groff <groff@gnu.org>
Subject: Re: Subdirs of man*/ (was: [PATCH] ascii.7: chase down History to
 earliest) (refers: man -M tcl)
Message-ID: <20221017115617.glfmvgqyfr7umavr@tarta.nabijaczleweli.xyz>
References: <20221017012257.kb25curb3gajgsxd@tarta.nabijaczleweli.xyz>
 <9b96f437-63c7-3e68-dd62-5fdbd6612689@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="77r5uvpbwli663ak"
Content-Disposition: inline
In-Reply-To: <9b96f437-63c7-3e68-dd62-5fdbd6612689@gmail.com>
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        PDS_OTHER_BAD_TLD,PDS_RDNS_DYNAMIC_FP,RDNS_DYNAMIC,SPF_HELO_NONE,
        SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--77r5uvpbwli663ak
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

On Mon, Oct 17, 2022 at 01:10:51PM +0200, Alex Colomar wrote:
> [CC +=3D groff@, since it was CCd in the old conversation referred to her=
e]
>=20
> Hi Ingo,
>=20
> On 7/27/22 17:32, Ingo Schwarze wrote:
> > Alejandro Colomar wrote on Sun, Jul 24, 2022 at 06:17:40PM +0200:
> >> I wondered for a long time what happens if you create subdirs within a
> >> man? section.  How do man(1)s handle </usr/share/man/man3/python/foo.3=
>?
> > On *BSD systems, that typically means:
> >
> >    The architecture-specific library function foo(3)
> >    for the "python" hardware architecture.
> >
> > Here are a few examples from OpenBSD:
> >
> >    /usr/share/man/man1/sparc64/mksuncd.1
> >    /usr/share/man/man2/armv7/arm_sync_icache.2
> >    /usr/share/man/man2/i386/i386_iopl.2
> >    /usr/share/man/man3/octeon/cacheflush.3
> >    /usr/share/man/man3/sgi/get_fpc_csr.3
> >    /usr/share/man/man4/alpha/irongate.4
> >    /usr/share/man/man4/amd64/mpbios.4
> >    /usr/share/man/man4/luna88k/cbus.4
> >    /usr/share/man/man4/macppc/openpic.4
> >    /usr/share/man/man4/powerpc64/opalcons.4
> >    /usr/share/man/man4/riscv64/sfgpio.4
> >    /usr/share/man/man5/sparc64/ldom.conf.5
> >    /usr/share/man/man8/hppa/boot.8
> >    /usr/share/man/man8/macppc/pdisk.8
> >    /usr/share/man/man8/sgi/sgivol.8
> >    /usr/share/man/man8/sparc64/ldomctl.8
>=20
>=20
> On 10/17/22 03:22, =D0=BD=D0=B0=D0=B1 wrote:
> > Cf., well, the UNIX Programmer's Manual:
> >    https://www.tuhs.org/Archive/Distributions/Research/Dennis_v1/UNIX_P=
rogrammersManual_Nov71.pdf
> > PDF page 191; yes, the typographical convention here is insane, and
> > the contemprary-correct way to refer to this page from within the manual
> > would be /just/ "/etc/ascii", but, given the context, "/etc/ascii (VII)"
> > makes the most sense to me
>=20
> I just saw this and wondered if the subdirs in the past were used as just
> part of the manual page name...

This typographical convention disappeared as early as V2;
the top-right page numbers were all trimmed to basename space section
(/etc/ascii (VII)        becomes ascii (VII)
 /dev/tty0 ... tty5 (IV) becomes tty0 (IV)
 &c.)

Cf.
https://www.tuhs.org/Archive/Distributions/Research/Dennis_v2/v2man.pdf

In the BSD side of the proverbial family tree I don't see anything
similar to what you describe until 4.4BSD which has bsd.man.mk MANSUBDIR
and uses it to install to MANDIR/manN/MANSUBDIR/page.N, and uses it
reasonably broadly for vax/sparc/whatever.
I think this is as present-day?

I don't see any on-line manuals in the SysIII/SysVr[1234] dumps I have,
so I assume these were distributed as books only, so idk.
Seeing as no arch-specific subdirectories survive in the illumos gate,
arch-only features are sometimes annotated "(not in 3B2)" inline,
and that the more esoteric pages have their center-top-page
(where you'd get "General Commands Manual" or whatever nowadays)
say like "(not on PDP-11)"/"(PDP-11 only)"/"(VAX stand-alone only)"/
"(3B20S only)" but are otherwise part of the same big book I assume
that never happened there.

Without context idk what you mean specifically but I hope this shines
some light or whatever.

Best,
=D0=BD=D0=B0=D0=B1

--77r5uvpbwli663ak
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmNNQt4ACgkQvP0LAY0m
WPGryBAAqF0v0/ualZgnrMv6ot4LUuFGos7/Gk26PteiQWDoWTQYo2JJITDS7Px+
XGUjp9twEh2S5Fd0G/w7Wv5L4+YDoec3bxZsbgLoCKBLSdCu7LXzFbVumC3mF94R
oEi8o6hU9MJ5w5Omxn8hbUiuxQt8KwP3Px0ovimmKKMXJ9wTLbGaUEZCR1lLsbF3
Tongz0jMchKlZPi6mBDdUsXypF+YmGXaXPbcr6zQPVXaSNQqUIsVXFiQnG1iWZWM
PThd99FCNssMSyDDw8xMXPk9xNoKIHHeP0fhMsIGsObrlvzejDfuX6PFeKHbNg12
g9yP99XWVfcwAVzZ95NmEdKuAnMA4jGRfuxCPsN4RULe3nUavW9i805fXWvYgj5H
MEMOMcDHJU5AZPIbg9h2RHunqWkqoLxWTx6s+fWASqmqOqzfAo+eYVCTMCNraUic
atgX10ieY6xXL0Je+HsHAWBCbiWahw4UGRC0OoBiTd+FqY/S8clolUsxq/V1INWQ
MG4976rp8p+DcmUthc+pDAvlZaD6wy0FTu/LYSGAl+MT75Ks3mU0GjDGoOiEBQhV
r42DSJpggCNONs5Ap1tqSSSJ4xXKt8X4MxAJTrN0MfvbeoHV5PBqWKL6eCQA4/GO
LPufIn1k3Vt00trDcBdZXhrNxFX+5RkCabPtuML59DnitrbXcHY=
=jOL9
-----END PGP SIGNATURE-----

--77r5uvpbwli663ak--
