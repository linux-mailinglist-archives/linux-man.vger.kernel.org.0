Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5B2BB641FA2
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 21:51:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230177AbiLDUvO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 15:51:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60616 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230108AbiLDUvN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 15:51:13 -0500
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A5E3C12609
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 12:51:12 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E5E0DE.00000000638CFEDC.00003D96; Sun, 04 Dec 2022 21:11:08 +0100
Date:   Sun, 4 Dec 2022 21:11:08 +0100
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: Issue in man page cgroup_namespaces.7
Message-ID: <20221204201107.GE15305@Debian-50-lenny-64-minimal>
References: <20221204090718.GA877@Debian-50-lenny-64-minimal>
 <08577b8c-950d-d090-4efb-7ebbd4114f11@gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-15766-1670184668-0001-2"
Content-Disposition: inline
In-Reply-To: <08577b8c-950d-d090-4efb-7ebbd4114f11@gmail.com>
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

--=_luckmann.name-15766-1670184668-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alejandro,
On Sun, Dec 04, 2022 at 09:07:45PM +0100, Alejandro Colomar wrote:
> On 12/4/22 10:07, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    user ID =E2=86=92 UID
>=20
> IMO, (and I believe Branden will agree), user ID is more informative than
> UID. If any change, I'd apply some consistency in the other direction (do=
n't
> know how much inconsistent the pages are regarding that): UID -> user ID.
>=20
> So, WONTFIX.  Thanks for the reports!

Noted.

However, you might consider making the link once, i.e. on first
occurence do
user ID =E2=86=92 user ID (UID)

Greetings

         Helge


--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-15766-1670184668-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmOM/tsACgkQQbqlJmgq
5nBpoxAAlV84sPipKhvjCV/gEJ0KaAm61E3a8bmikUEytKsEjwHmEp1J32I7rf+q
hRAF+KJUcZ/QBS9fNABmFRXDQJp9sVruFWpRHfLsu/+kk1HZEOtmlCjoydII7HVv
zHOH7QE3W7zkd+BZBpdH2XZTNmNgIkZyAcVCDPmyNqTwplJIZ6M3S73Qbp6QEL4Z
eA9nBR0C7O4BuEIU7O1sMXnw0BQaWx/qahdisgnczEF3H2ov6TzTk3lAjLLhtqIH
2wO/y7M/RLQK71yxMpt4KZ+NnZzQ3sIqGwHLKNXPpyV5LuQs8APT8cdDJma2eDhW
vYhmN87H85cHAHMdQa84j9I1Gh/vVFTh8i1ZfqSYpjDYbQiICIXj+MhJexMvZLrD
ni2uJdApJsUU5IXctC8ipm+FXVcYigxgux9/GZgqQuDM479DGzOpEREEyxpwpQXN
BbiZgiN184xDYoUoQ5vnvcAR6dv6BC1MJWI9dkIhAwr7d0z516sV3db4EUWRI3Vp
Pk/fHh7aiy1hEvd1DF6DtnQ4UuDZcRkSy+68OpYlL+/U8/B3v0cmld19YlwHNVPv
wLHR3fwOue+mG6p6OFU3lK4pPK/Io8Eo/Ok9oc0R4NStNHIOA0tB+SZ2pBRfmvXf
JzXIApuzMdWCLlFwgYjmxrUoB6HQFbFXrLwIZJKyxHOkIk5OG7I=
=CXBH
-----END PGP SIGNATURE-----

--=_luckmann.name-15766-1670184668-0001-2--
