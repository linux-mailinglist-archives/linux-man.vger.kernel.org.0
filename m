Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 97340641FA9
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 21:53:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230108AbiLDUxJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 15:53:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33774 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230117AbiLDUxI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 15:53:08 -0500
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B8F5E0C3
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 12:53:06 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E5E0DC.00000000638CFE25.00003D12; Sun, 04 Dec 2022 21:08:05 +0100
Date:   Sun, 4 Dec 2022 21:08:05 +0100
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page time_namespaces.7
Message-ID: <20221204200804.GD15305@Debian-50-lenny-64-minimal>
References: <20221204090717.GA780@Debian-50-lenny-64-minimal>
 <ff9e01f4-fdde-a76f-7495-290fc7f78ded@gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-15634-1670184485-0001-2"
Content-Disposition: inline
In-Reply-To: <ff9e01f4-fdde-a76f-7495-290fc7f78ded@gmail.com>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=0.4 required=5.0 tests=BAYES_00,CK_HELO_GENERIC,
        HELO_DYNAMIC_IPADDR,SPF_HELO_NONE,SPF_NONE,URIBL_SBL_A autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-15634-1670184485-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alejandro,
On Sun, Dec 04, 2022 at 09:03:00PM +0100, Alejandro Colomar wrote:
> On 12/4/22 10:07, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    /proc/PID/timens_offsets =E2=86=92 /proc/[pid]/timens_offsets?
> >=20
> > "/proc/PID/timens_offsets"
> >=20
> > "Associated with each time namespace are offsets, expressed with respec=
t to"
> > "the initial time namespace, that define the values of the monotonic an=
d boot-"
> > "time clocks in that namespace.  These offsets are exposed via the file=
 I</"
> > "proc/PID/timens_offsets>.  Within this file, the offsets are expressed=
 as"
> > "lines consisting of three space-delimited fields:"
>=20
> I want to fix this inconsistency in all of the pages, as I did with 'kern=
el
> x.y' -> 'Linux x.y'.  However, that's going to take a lot of time, so I'll
> defer this for the future.  I'll decide if I put this before the freeze or
> not depending on how much time I have.
>=20
> Please ping me in some time if I haven't fixed it.  Thanks!

I don't think it is urgent. So make the "easy" ones first.

Thanks for taking care!

Greetings

        Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-15634-1670184485-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmOM/iQACgkQQbqlJmgq
5nD3HQ/+MrNeveRED9R6ototvW9f4z9ONft/S4W4FlIlOECq1XIildNV9dB+GFPR
RE84rMfN2I7W1Ix+gQVUPx55u5brPD1NnSe0gLP++GPbKw+DbbOct5AeoVdCRpzt
MF5HD8TX0RseHt9T/dZeePiiAajwkko19kUIau0MTutzANE1+hK/o4iA/CwL5N5u
LIiNNGF05MgiFjjO4+lkw3nyW6q1ZAEbVM0VS8gKI3//qzSAAHExQhG7tOySn+Oy
J4NMzj2aJdWEH/f1mDrQaGsmyA5XH2Al+m486RcprSkEzm+OFmyzNRqJV9tdpP2d
fr5q9BFCIeoe54AaBrPzirKMT26F2MMO7RBwoO5bvCASCakyYG5/xeCf1Z5udJXG
a0YK7rEsr+zPkBTt8u82w+CFilWN2DZO+axAVGBvABPooRt3DB6+cLKuprAMOn8I
LdMaoBLJJwhPtRzO5xi5RIpBp37OH8Xoj8lwVm6z80VY3GDUSBtEAlLn6e4et7YI
7yST+FdV1085220GaXlHAIqJm1y/8VLnur4VudG4nwLkZwzlsCrges+cpqIwlo/h
vVt19iggiGbXORJM5RL8O7MN6hoyVXgG/ZbBoQS/bDDCcOCJPwJzbFqR/5L+ceuc
Ut/pHXTYr6MyVGaTQNtNsvixhoEVhL9WCSl/yvC1PYblaCI3CnQ=
=zHyw
-----END PGP SIGNATURE-----

--=_luckmann.name-15634-1670184485-0001-2--
