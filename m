Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1E92F7DE1F3
	for <lists+linux-man@lfdr.de>; Wed,  1 Nov 2023 15:14:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234937AbjKAOGi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Nov 2023 10:06:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57552 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235137AbjKAOGh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Nov 2023 10:06:37 -0400
Received: from mail.helgefjell.de (unknown [IPv6:2a01:4f8:261:4d55::2])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0FA4B11C
        for <linux-man@vger.kernel.org>; Wed,  1 Nov 2023 07:06:30 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020147.0000000065425A37.000FAA81; Wed, 01 Nov 2023 14:01:27 +0000
Date:   Wed, 1 Nov 2023 14:01:27 +0000
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     alx.manpages@gmail.com
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issues in man pages
Message-ID: <ZUJaN0MXnkja7UuN@meinfjell.helgefjelltest.de>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-1026689-1698847287-0001-2"
Content-Disposition: inline
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

--=_meinfjell-1026689-1698847287-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Dear man-pages maintainer,
the manpage-l10n project maintains a large number of translations of
man pages both from a large variety of sources (including man-pages)
as well for a large variety of target languages.

During their work translators notice different possible issues in the
original (english) man pages. Sometimes this is a straightforward
typo, sometimes a hard to read sentence, sometimes this is a
convention not held up and sometimes we simply do not understand the
original.

We use several distributions as sources and update regularly (at
least every 2 month). This means we are fairly recent (some
distributions like archlinux also update frequently) but might miss
the latest upstream version once in a while, so the error might be
already fixed. We apologize and ask you to close the issue immediately
if this should be the case, but given the huge volume of projects and
the very limited number of volunteers we are not able to double check
each and every issue.

Secondly we translators see the manpages in the neutral po format,
i.e. converted and harmonized, but not the original source (be it man,
groff, xml or other). So we cannot provide a true patch (where
possible), but only an approximation which you need to convert into
your source format.

Finally the issues I'm reporting have accumulated over time and are
not always discovered by me, so sometimes my description of the
problem my be a bit limited - do not hesitate to ask so we can clarify
them.

I'm now reporting the errors for your project. If future reports
should use another channel, please let me know.

The individual bugs now follow in separate e-mails.

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-1026689-1698847287-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmVCWjMACgkQQbqlJmgq
5nDLew/+P8yeWBPfK080paV90VLypunEB3eppwBgSnNeYwr1Hx59g7WjVs69NQry
XVphqMI+mz/IS5P3t26HItfIO45MDV1SWnUs3NohhGt+Zqd1KuxRj+vEJwfjTI2R
W5M6UT+/LhTPgh72mj05c80LlNYOh94ZLc8cvEb8c/pM8f4kqYmH2tD6HZn8x7fx
3/QV9MbbHuAc/NiuC4unnU9I0I/+Bxie79XCr/qMgPPTExt2q6CYwAYO+RTHhOje
/XW84HcbsQb/naEuuAqDHCOgmro3r4HKzIzKepuc08rRNt4bOqQo8lnrMahjFq8D
F+5fEAiw91BG9XCpa4rdsvYCtIpYZfa33+2EIGP7NSugYT9y9ugpk9mN1br6wb24
REDIlS9t1cfBURHwsteRFt7aVeGEiBNLuDPjD2EeGLmcJEJE+Iv/l8HMeFc3ZnRO
CmqXG/OskKZaa6Qatkv2bQIzv5Y+hD0raQzsoeVzgMeFw0KkiJvm7+R61VgFbY/C
kcSXr8HGxMskYQAmTkvXB/R7gdTKdLvdbBgC0odkzfB9oIkL8GRaKhk4xsXzgPZw
pYTN3yKdtj0MohZQefzeXLYV79UrbjRVXn8zAhU5bxgHirUy9VW4wXi9T7XwogkT
ido6yGiJdaR0aI99Cie6UptJRY8mZbfxHTvzVQ1XCLcTPq1e/jo=
=bPgN
-----END PGP SIGNATURE-----

--=_meinfjell-1026689-1698847287-0001-2--
