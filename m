Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3662B6771F2
	for <lists+linux-man@lfdr.de>; Sun, 22 Jan 2023 20:36:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229971AbjAVTgH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 22 Jan 2023 14:36:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53056 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229807AbjAVTgH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 22 Jan 2023 14:36:07 -0500
X-Greylist: delayed 303 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sun, 22 Jan 2023 11:36:03 PST
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B5511ABC6
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 11:36:03 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E5808C.0000000063CD8EF2.00006FF3; Sun, 22 Jan 2023 20:30:58 +0100
Date:   Sun, 22 Jan 2023 20:30:58 +0100
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     alx.manpages@gmail.com
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issues in man pages of linuxmanpages
Message-ID: <20230122193058.GA28553@Debian-50-lenny-64-minimal>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-28659-1674415858-0001-2"
Content-Disposition: inline
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=3.0 required=5.0 tests=BAYES_50,CK_HELO_GENERIC,
        HELO_DYNAMIC_IPADDR,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: ***
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-28659-1674415858-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Dear linuxmanpages maintainer,
the manpage-l10n project maintains a large number of translations of
man pages both from a large variety of sources (including
linuxmanpages) as well for a large variety of target languages.

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

As requested, the individual bug reports follow in dedicated e-mails
in a moment.

Greetings

          Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-28659-1674415858-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmPNjuwACgkQQbqlJmgq
5nA/Cg/9GUQoILpLzBscR5pQAmGJkZTFuOWiXT7yIxQ8Jl2dTVsN1FF91KW5B5eA
kozd9fQODjKfnHxDbNmdr1ELNvpegQd+diIJ5TkVLgzKLCx4SA1ExKozte9rsYh5
pOc8wwS/DSqVl3HwwBspftP/bJa5qaVUthX5w6mnvWC9w5VGBxBp5Bq+izzt6QfE
j8YiQVGjYAht2nDGt2HOFEeLaMaBNlcIEYLOLxQFZBzP9qMpIgWnhRMYPWcBlaxR
dt0fxsp26AkzPf3QszNph+pcfiR/5TtOj1EMrUBaQcw70Q6nMIkmb8jcZKrkkkDh
UFlOVY/i2EQElge+9/mSP038ms2Jxg85Wo7y0F7uldLblfKkNDadx2IWJjW5wXAN
QpxA33yqP8/LlqkhoMbsMal2LO+IDG/8p+s9OrKReFm7hRa3qztk1HV44QWgO7Dy
dNjyj4Ek2KgWTuJhvN6kyNmXuLSlgEXKUjU3HoHdXNa1mt/mFRfE9IHO1VFnnIBn
g9HS+YGKyv16owXVlXr4QX+WRiKBX6KuOI1+XfcJBjnhGdbnak4hoQobdXgT/22j
QktT6Y2A3TAQZxhHFfeZYxyyAcu9z2uWAc3TlAlyDKa74m7HRnTXruZYdZfcFC9c
uUtbpi/Kz7d1Vv/iY3t2ONmSejSd9O/TLUNSBx9qViRyxbID7so=
=CpcV
-----END PGP SIGNATURE-----

--=_luckmann.name-28659-1674415858-0001-2--
