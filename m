Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3E69D7DE54C
	for <lists+linux-man@lfdr.de>; Wed,  1 Nov 2023 18:25:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232292AbjKARZx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Nov 2023 13:25:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59842 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344537AbjKARFg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Nov 2023 13:05:36 -0400
Received: from mail.helgefjell.de (unknown [IPv6:2a01:4f8:261:4d55::2])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BE5DFD
        for <linux-man@vger.kernel.org>; Wed,  1 Nov 2023 10:05:30 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002006F.0000000065428557.000FD0CF; Wed, 01 Nov 2023 17:05:27 +0000
Date:   Wed, 1 Nov 2023 17:05:27 +0000
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page hostname.7
Message-ID: <ZUKFV1p3pffJEHzz@meinfjell.helgefjelltest.de>
References: <ZUJaY9YthI-EXLzi@meinfjell.helgefjelltest.de>
 <ZUJxn0JHxBasvKGf@debian>
 <ZUJy3qmi9tRg0x-4@meinfjell.helgefjelltest.de>
 <ZUKEB7bFCE-btgFZ@debian>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-1036495-1698858327-0001-2"
Content-Disposition: inline
In-Reply-To: <ZUKEB7bFCE-btgFZ@debian>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-1036495-1698858327-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alejandro,
Am Wed, Nov 01, 2023 at 05:59:51PM +0100 schrieb Alejandro Colomar:
> On Wed, Nov 01, 2023 at 03:46:38PM +0000, Helge Kreutzmann wrote:
> > Hello Alejandro,
> > Am Wed, Nov 01, 2023 at 04:41:19PM +0100 schrieb Alejandro Colomar:
> > > On Wed, Nov 01, 2023 at 02:02:11PM +0000, Helge Kreutzmann wrote:
> > > > Without further ado, the following was found:
> > > >=20
> > > > Issue:    B<nsswitch.conf> =E2=86=92 I<nsswitch.conf>
> > >=20
> > > Please explain why.
> >=20
> > Filenames are usually in italics, not bold.
>=20
> If it's a filename, I think the full path would be better.  It could
> also be a manual page reference, in which case, it's lacking the section.
>=20
> I think the manual page reference would be better, but I'm not sure.
> What do you think?

Yes.

I'd prefer the latter, i.e. with section.

Greetings

        Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-1036495-1698858327-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmVChVEACgkQQbqlJmgq
5nDGPA/8DVysN5ULmFQBl23MSLxNzXKlAhMGhPKugywgDTbE5EtFXiiKQS/sqkrm
GdrxmZjMqkKrm7VUWN8u8s4bEtxibxpPCloczfB8Q2P6sVkEi3cftqvpAnZGoPOv
Bzibi6w5NbSWeK3aG2k/2hK8Bee7oD41QS7L6YqIQloDJmey5kLP3A62VRdeTB+i
ZKthMskyt4SO8fkbHwrE9DMi113Bin4dll+GrZKnfIbDHLCCXF1b+ZpBU6B3q76q
R9Eh8qK/wsZG7tHpd3AWtWoqKLzPMs90x6UMkPUoIdxWfcFyJ1FzkGMBww+ik3OK
6VG4da0KU6kME7xPbnATHLCBfgFYOD/aNOknKP2n2gmKoPXBdRNht/kd2h/eE45+
vFZ7xxlOJlipTbQhpiPSrm3OPEjnHtfQrrYLmKt/h3QVTkXleNujrQOzOm0mdsTw
d44XW3Taj3XnpgzlxlraqauFW/myrTA/6Rcp9gfXPZy9MLmwEG8YdXLEnQQ+b3j2
qJ+y9DBBbBB4T9HZSWcn8QLUBoF2iYA88eW/djWd9zCluXLwqq/nVQ4JsxFupGng
OWcJ/WXye1/BOcge7q65NLCOwjczpk5dihm+GrJxd5xtvrvg1RMs0Lo1xFDkHqIZ
J/peDqCi8nBIlxpHOS1aZJJJUFVzuQaZc91OC5IPJ9ItoKFNRLE=
=93oV
-----END PGP SIGNATURE-----

--=_meinfjell-1036495-1698858327-0001-2--
