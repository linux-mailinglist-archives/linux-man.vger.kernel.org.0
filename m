Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 721066B63A6
	for <lists+linux-man@lfdr.de>; Sun, 12 Mar 2023 08:21:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229509AbjCLHVy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 12 Mar 2023 03:21:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43170 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229437AbjCLHVx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 12 Mar 2023 03:21:53 -0400
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21E17559CA
        for <linux-man@vger.kernel.org>; Sat, 11 Mar 2023 23:21:50 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E540EA.00000000640D63BF.000070D9; Sun, 12 Mar 2023 06:31:43 +0100
Date:   Sun, 12 Mar 2023 06:31:43 +0100
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page boot.7
Message-ID: <20230312053143.GH7927@Debian-50-lenny-64-minimal>
References: <20230311171357.GA4913@Debian-50-lenny-64-minimal>
 <06e77b4a-f42d-b1c7-5e13-9757b0df1d08@gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-28889-1678599103-0001-2"
Content-Disposition: inline
In-Reply-To: <06e77b4a-f42d-b1c7-5e13-9757b0df1d08@gmail.com>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=0.1 required=5.0 tests=BAYES_00,CK_HELO_GENERIC,
        HELO_DYNAMIC_IPADDR,SPF_HELO_NONE,SPF_NONE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-28889-1678599103-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alex,
On Sun, Mar 12, 2023 at 12:31:37AM +0100, Alejandro Colomar wrote:
> On 3/11/23 18:13, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    This is true only on x86 and Lilo is probably not much used a=
nymore; also systemd has its own (?) bootloader
>=20
> Please propose a fix for the wording.

> > "In Linux, the OS loader is often either B<lilo>(8)  or B<grub>(8)."

I'm no subject matter experts (contrary to you), we are translators
observering potential (!) incorrect statements.

In another bug report one or two years ago, the last remaining lilo
"maintainer" told me the project is *dead* and he is just the last one
answering e-mails. And some distros stopped shipping lilo already; I
personally haven't used it for decades.

I don't know much about the boot loader from systemd. I basically just
translated the man page systemd-boot(7).=20

Having said this, the most straigtforward fix could be:

either B<lilo>(8)  or B<grub>(8) =E2=86=92 B<grub>(8)


Or you could additionally add more content:

Other boot loaders exist, like B<systemd-boot>(7) and the
old B<lilo>(8).


Greetings

           Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-28889-1678599103-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmQNY78ACgkQQbqlJmgq
5nCN5g//TXQr/qejgEKkcBexoOKr0gTq9P+XJHdJlol0V6upYbuJWnuOesvmk1UR
s3WWGlFQkWOwgtaPoUJdQ+9EFCJdgoanLlLB2EYsqk8JKnWJ11xr8JUkbyipIOBP
QNBbV/lqj7d9ftq1mQzNf1QcnyM8XndXcqgQrhut2PWdlC+kujByYQT7GBTk5BzE
8Lc0TWFcXZjohyZfMgr4gCFVbhkWODm73AB5WdfPfRmQaSca2JiSaM4Y+PP3DEOd
4C0sbUZDo0MJHVxFOzCGlCiO5Ft2r6v5+BNN1mnXS7xBwk9fuV9GzZqZYl5sZZol
VcXJScqWSkNLXQvjezd+wd5FRBkNfk281nSIsgZ6vAPXy3OICBXgCH3OAkLCt1TA
XRbD0+7ccztPvChNKpjuWbNlchBRua1q9E6LTmY0WFUQ+EgNGgol7dONl9wYBipg
4dkHXuVJyUnApBPgel8XLkQ/QMbq6FEMhkFU0pDHoXlDdV/l/hkn6Y+RLE9pIu4Y
AOmA6WVlzcG+dh9m6N0W1FB0gEVB/HgyaDfYmSEd2vUmES3Xmh0audIKo+G62CfU
peV0B02L4qGcFYJKMOhJRvGt6RU64S7OJU3/Oeujvpax+FNgk8sXgi/bAZdfxkuk
yRf9FHe/u223+HMWTUuSSlsFY98Cxgo1rapV6G/mcrPlUJZIq6Q=
=yYje
-----END PGP SIGNATURE-----

--=_luckmann.name-28889-1678599103-0001-2--
