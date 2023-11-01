Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0B3CD7DE42A
	for <lists+linux-man@lfdr.de>; Wed,  1 Nov 2023 16:49:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231561AbjKAPtx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Nov 2023 11:49:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41872 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229498AbjKAPtw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Nov 2023 11:49:52 -0400
Received: from mail.helgefjell.de (unknown [IPv6:2a01:4f8:261:4d55::2])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E591123
        for <linux-man@vger.kernel.org>; Wed,  1 Nov 2023 08:49:46 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020152.0000000065427398.000FBEE9; Wed, 01 Nov 2023 15:49:44 +0000
Date:   Wed, 1 Nov 2023 15:49:44 +0000
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page motd.5
Message-ID: <ZUJzmBx5ymZgBED2@meinfjell.helgefjelltest.de>
References: <ZUJaY2kc5oHbc9TR@meinfjell.helgefjelltest.de>
 <ZUJy9p4iXH-t4OOy@debian>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-1031913-1698853784-0001-2"
Content-Disposition: inline
In-Reply-To: <ZUJy9p4iXH-t4OOy@debian>
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

--=_meinfjell-1031913-1698853784-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alejandro,
Am Wed, Nov 01, 2023 at 04:47:02PM +0100 schrieb Alejandro Colomar:
> On Wed, Nov 01, 2023 at 02:02:11PM +0000, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    B<issue>(5)  B<pam_motd>(8) =E2=86=92 B<issue>(5), B<pam_motd=
>(8)
> >=20
> > "B<login>(1), B<issue>(5)  B<pam_motd>(8)"
>=20
> I don't understand the report.  I don't find any pam_motd reference in
> motd(5).  See below:
>=20
> $ grep pam_motd man5/motd.5=20
> $ git log -S pam_motd -- man5/motd.5
> $

Then disregard this report and I need to check where this man page
actually comes from. Probably assigned here by error.

Greetings

        Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-1031913-1698853784-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmVCc5gACgkQQbqlJmgq
5nBRyQ//eYbe7QABh4uY8aSFkafHAmhlvzJ/adrm6DFoxdvkiioygjJ51xuMBgwm
bqRuNeUGq6/uNDwN5LBmE5SaptOKFNxBUFPFghtACcGMcKOySE2iH6lmTqwiKrZj
4OGYWo3zuGzvk5lUroCtTCr+jNNBkwB6WvBCHLN3oIkGvktS+2Lv3b7l+IlGMONi
mRtClKHvWleqEk9duSoL6/Y+YLYCjShJr4IQORd93a7y5+6SXtLCZN918h57jKlt
gRrp+uKGVUm6brAzF1npaJpFUmrJ2dQ93HRVZ4WOJ3UrtocxlSnHgJo+ffqJ2U0r
rBWNnq3citdW4DBpDhiXO3BzJauh9t/MIBpJ2nuSMOSaJoQNSPvMPyjEimBv90l8
pGrn1eH/NYek4OTdhckzTd/KPu5uQgHjKN+KK1NzawhKOee/HCF7PR/HgeYirTQm
QG9MvNnwTp77jev7NkI2jUYQz5zaULNz3um+wUENKXdVgBBGKwFU02MaCjUvTcRu
JEeLJNpduOy6FOMp867L9gB4mI1nOTSSodGIkxGyWFIj8nAB8LELlGmSPtWcqFHf
WwxMX1wyZUlXG1gja+rjf6OMoGlKfzv19VWhauJeqdeQpMFW4Z87pEMecsJffuK3
H1fx1Ne4e6Jt2i/r3JqIV1msp1DM8M6UhN/QtR9yvBnyONJypco=
=C0K/
-----END PGP SIGNATURE-----

--=_meinfjell-1031913-1698853784-0001-2--
