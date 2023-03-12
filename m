Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 548DA6B633F
	for <lists+linux-man@lfdr.de>; Sun, 12 Mar 2023 06:06:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229499AbjCLFGi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 12 Mar 2023 00:06:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229450AbjCLFGh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 12 Mar 2023 00:06:37 -0500
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B88455D45B
        for <linux-man@vger.kernel.org>; Sat, 11 Mar 2023 21:06:36 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E5403E.00000000640D5DDA.00002E99; Sun, 12 Mar 2023 06:06:34 +0100
Date:   Sun, 12 Mar 2023 06:06:34 +0100
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page user_namespaces.7
Message-ID: <20230312050634.GC7927@Debian-50-lenny-64-minimal>
References: <20230311171357.GA4865@Debian-50-lenny-64-minimal>
 <3df156e0-99c8-8844-d1eb-ad0b349c5fb2@gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-11929-1678597594-0001-2"
Content-Disposition: inline
In-Reply-To: <3df156e0-99c8-8844-d1eb-ad0b349c5fb2@gmail.com>
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

--=_luckmann.name-11929-1678597594-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alex,
On Sun, Mar 12, 2023 at 12:25:12AM +0100, Alejandro Colomar wrote:
> Hi Helge,
>=20
> On 3/11/23 18:13, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    /proc/I<pid>/setgroups =E2=86=92 I</proc/>pidI</setgroups
>=20
> I don't find this.  Please report with more context.

       Writing "deny" to the /proc/pid/setgroups file before writing to /pr=
oc/pid/gid_map will permanently disable setgroups(2) in a user namespace an=
d allow writing to /proc/pid/gid_map without having the CAP_SETGID capabili=
ty in the
       parent user namespace.

   The /proc/pid/setgroups file
       The /proc/pid/setgroups file displays the string "allow" if processe=
s in the user namespace that contains the process pid are permitted to empl=
oy the setgroups(2) system call; it displays "deny" if setgroups(2) is not =
permitted
       in that user namespace.  Note that regardless of the value in the /p=
roc/pid/setgroups file (and regardless of the process's capabilities), call=
s to setgroups(2) are also not permitted if /proc/pid/gid_map has not yet b=
een set.

> Cheers,
>=20
> Alex
>=20
> >=20
> > "The /proc/I<pid>/setgroups file"


I assume this is as intended, i.e. like in the other bug report=20
where you said you fixed it the other way around?

Then I add a WONTFIX, of course.

Greetings

           Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-11929-1678597594-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmQNXdoACgkQQbqlJmgq
5nBdURAAiTIP5/3YDoAqcocIbuPxItF2p/CUTTn+GPNK58hunCdzUqFWb28MtwxN
M28prOezWR749Y77uEQlqIcfByRyrIEnOTmcIhUpU03NUoZrYqy38QevFsC2nP2U
uuM7/BxpHndDPieYtst5Jef4Gmxd1sDCEQCylKs56YaNq/NyafxFxBKyKZnmHv4D
0QNZJAN1n4m52XAVURaM2vYQeC+g6DupV5Sjr8B0cjInnPITR+Po0XhKoENl+FUf
kSDLGMU78JERFs3k6CzvfHRRlkFUiq6sPtRCKCitNlzFllYHexYPpJS4rG+/zBuM
2wpH0Fjvx+RTbQ2Ls9KSgdKAHihZO5Du6I1VcIjfagRP2evq4EsdOMvM182w3iMY
x1nP6lH8BVdKT6U2l09NS80VCDGJph3DlKKyLQyIEuu4eSPiQiO1mKKDc86/1kqt
ooiwy8bCkZK+rq2mEUnUWvF/9JGfTMh/bAYXL465UrABdpr9OJ45dmaJWmS7H+Rw
aHYwFCkQZEvybPx258P40ADUxXELK4rLYlhsMARjqKPlhFyImljXGd/SiiIhyiuL
7Y6UHQAobgkbQJepfhc511dgPe7ZxP9srPeidn/sbQ/uMdlsUuSOi1Sbw+VUITMW
bNIJ5/RmPz4dYlUOtojPBGIYSHkM2NH4u+eq+QEEAVj2fNX6QyY=
=E7Ic
-----END PGP SIGNATURE-----

--=_luckmann.name-11929-1678597594-0001-2--
