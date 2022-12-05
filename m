Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 109A4642E07
	for <lists+linux-man@lfdr.de>; Mon,  5 Dec 2022 17:57:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229970AbiLEQ5y (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Dec 2022 11:57:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230084AbiLEQ5v (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Dec 2022 11:57:51 -0500
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 42C03F53
        for <linux-man@vger.kernel.org>; Mon,  5 Dec 2022 08:57:50 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E5E0DC.00000000638E230D.0000166E; Mon, 05 Dec 2022 17:57:49 +0100
Date:   Mon, 5 Dec 2022 17:57:49 +0100
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page close.2
Message-ID: <20221205165749.GC5000@Debian-50-lenny-64-minimal>
References: <20221204090722.GA1155@Debian-50-lenny-64-minimal>
 <d8b948b4-4aa4-c391-9327-431e9f447527@gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-5742-1670259469-0001-2"
Content-Disposition: inline
In-Reply-To: <d8b948b4-4aa4-c391-9327-431e9f447527@gmail.com>
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

--=_luckmann.name-5742-1670259469-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alejandro,
On Sun, Dec 04, 2022 at 09:23:23PM +0100, Alejandro Colomar wrote:
> On 12/4/22 10:07, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    . the =E2=86=92 . The
>=20
> I don't find that issue in the text quoted below.  Please check.

Me neither. Apologies for the noise. I removed the FIXME.

Please disregard this report.

> > "On Linux (and possibly some other systems), the behavior is different:=
 the"
> > "blocking I/O system call holds a reference to the underlying open file"
> > "description, and this reference keeps the description open until the I=
/O"
> > "system call completes.  (See B<open>(2)  for a discussion of open file"
> > "descriptions.)  Thus, the blocking system call in the first thread may"
> > "successfully complete after the B<close>()  in the second thread."

Greetings

           Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-5742-1670259469-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmOOIwwACgkQQbqlJmgq
5nCgeg/+K6a6XEiVHk34tXH8XNVCWhJ2z5e7bi+aWzfqDQugsWYYNVyayadChYOL
B5ekcba0cK/r/87DyTreFDD3Onn+jmjpWbU/RBIVJMici/72mumq2np8hLWXc7Tw
niU2Gc9ThaQwdeFQVOpQozxfzewJU9De+s4zVYb8GqmWN6OL24OLtFjMttUeh7G1
O9HUFj94rSOKgl0NmJ7rvERNJyTRwJY1JfPMUwdrYsip1le+vjYXMg4UiExoIIcI
G6YQqDK7HbNwBaSs+PdaZh5+EL69yQ1OFtXYCriO+xnyKmfZMxk489ZGTcRfc8MI
BLTKZCsgji4K40IQ7c0R+3DiDAj9yt7DDsg1pYOcjQf3Toledtyq2Lv9zFMEkJMC
+LFMnSP58BWYapuRr9mcuWzEiPcxyaoeRBAekx6K/yyMGB7Zdo0Z+oPF/GwY2UL5
6m63+l1rgBV50gKcxNNMNyxkaak/piHWXvoZ5C08e84Be5t3E6KCnHGElq9R6UTm
TRfYXrx0JhdE/xFqt4DZB5bUeRAp8GNRmt9s6ai9xzdlpJpsklTihsVbHwmMJCaG
ZM+V+paACwNne7gnHF25tasfS7n0I7pblSgtUOJR8DBlYSW87QL5DeKSrpSIu94+
eB2aREK1u8H7ah3bKGD/iwl26QvUkRmfK84UcH9W6LinJ4vwMfU=
=hbS9
-----END PGP SIGNATURE-----

--=_luckmann.name-5742-1670259469-0001-2--
