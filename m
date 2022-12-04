Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C1141641D51
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 15:00:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229892AbiLDOAO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 09:00:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229805AbiLDOAN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 09:00:13 -0500
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E7B665EB
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 06:00:11 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E6207D.00000000638CA7E9.00000B09; Sun, 04 Dec 2022 15:00:09 +0100
Date:   Sun, 4 Dec 2022 15:00:09 +0100
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page mount_namespaces.7
Message-ID: <20221204140009.GD441@Debian-50-lenny-64-minimal>
References: <20221204090711.GA370@Debian-50-lenny-64-minimal>
 <4ac1d53f-ae77-0bc3-530c-7d1a29af78ff@gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-2825-1670162409-0001-2"
Content-Disposition: inline
In-Reply-To: <4ac1d53f-ae77-0bc3-530c-7d1a29af78ff@gmail.com>
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

--=_luckmann.name-2825-1670162409-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alejandro,
On Sun, Dec 04, 2022 at 01:25:07PM +0100, Alejandro Colomar wrote:
> On 12/4/22 10:07, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    mount point I<B> =E2=86=92 mount I<B>
> >=20
> > "Here, I<B> is the destination mount, and I<b> is a subdirectory path u=
nder"
> > "the mount point I<B>.  The propagation type of the resulting mount, I<=
B/b>,"
> > "follows the same rules as for a bind mount, where the propagation type=
 of"
> > "the source mount is considered always to be private."
>=20
> I'm not sure about this one.  If we change that wording, I'd like to make
> sure we don't lose any details in the information.  Please CC any related
> kernel developers, and suggest them review the documentation for more
> consistent language.

Until recently, there was "mount point" used all over this man pages.
This was changed to "mount" in one of the previous release of man
pages.

Thus I assumed that this one might have been overlooked.

I mark it WONTFIX for now, so it doesn't get reported again and maybe
you can clarify (if necessary) this in a later release.

Thanks!

Greetings

        Helge


--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-2825-1670162409-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmOMp+kACgkQQbqlJmgq
5nAdLA/9HIw5wzlYmgGzEjZRO2RYtxl71gwt2iUMhITD5bYXueV5aO9Bz0RYGQKb
+pY5uqdGr4u6pa9qWehTsdRsnWejGtIVFphFkkyphZQmhFSk2eby5Lm/44IF5CSk
sPvhEpUUZaVV57LqV66fJQkafX2wu1hiNQu0RqpIu03rCLzAO6ypgoWz4eWaS2in
GR17L6zzLO7N5B1ht+N5gUzeF6TlSmeDrFlh2ZsvQ/dd0piPJOtcedj9vUIWmHDb
c1n0SXgXotuCOu5ReWHAGcHD2RNOI44ITovCcly5lvXH9kxjaNYpZ9ipxw0ejFd1
dEjBSN/dKNLVkTFyVD0b4s9IoFUIBBxHj5QxH7o2+T5Gt2VhbbKyRiQPQvxtuY9x
FBRc6xt5/XjaFDB1SG1sZPGsgjiFSqgMHuVH9wuZT7qWfKwssT3+R6K3qE1tnlpJ
gtwdDRyyYXf1VIoBleQtoYhFT7oQj0/zyDfAXDL5AKU5/1BHWpqyKJlxSOVcIYwe
quRfK2lARHWB+6iBArfW1BDERsghy2e1CsPiewECcHTDf+u/UHL45aI2EBKKei2Q
QOLuJVaee2+gd6HsabdLG4dnEdyifHQQUT/5ciAsuDTvU5Rp4zBv8Ka4Lic+0EDf
kNJFWvrP7M9nmaKB5/YLs2uXtDss6A6SYeF/yA+l69UUgXQrGd8=
=NtJQ
-----END PGP SIGNATURE-----

--=_luckmann.name-2825-1670162409-0001-2--
