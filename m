Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 837EF4D7527
	for <lists+linux-man@lfdr.de>; Sun, 13 Mar 2022 13:39:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231381AbiCMMkN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Mar 2022 08:40:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230181AbiCMMkM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Mar 2022 08:40:12 -0400
X-Greylist: delayed 302 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sun, 13 Mar 2022 05:39:04 PDT
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with UTF8SMTPS id 49C182AC7D
        for <linux-man@vger.kernel.org>; Sun, 13 Mar 2022 05:39:03 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E54049.00000000622DE4B7.00005665; Sun, 13 Mar 2022 13:33:59 +0100
Date:   Sun, 13 Mar 2022 13:33:59 +0100
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     mtk.manpages@gmail.com
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Errors in man pages of linuxmanpages
Message-ID: <20220313123359.GA22031@Debian-50-lenny-64-minimal>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-22117-1647174839-0001-2"
Content-Disposition: inline
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=2.0 required=5.0 tests=BAYES_20,CK_HELO_GENERIC,
        HELO_DYNAMIC_IPADDR,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE,
        URIBL_SBL_A autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: **
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-22117-1647174839-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Dear Linux man pages maintainer(s),
the manpage-l10n project maintains a large number of translations of
man pages both from a large variety of sources (including linux
manpages) as well for a large variety of target languages.

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

The following mails will contain the individual reports (one per
issue) without this header.

Greetings

       Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-22117-1647174839-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmIt5LIACgkQQbqlJmgq
5nBAtA//SQPfZhPMJ63aw0Obaq1XGeOnRSyeZUchJ/01wdy0qgE5iL8EpfBqV6xE
0x8LelJhFMdHTwBG0Lt60VCfCiyHteKlkJUXcKzNuz5qnMxfbgxEsE3/QZTnsL5o
uR9Ndio8bF58YaAk23ew0XKikm/IiEbnT2Gmz/0vXQH8Mpdlbz7fiQ0IoBmwMo+g
kkZhoLQb2jFgIVvQbL2yW/uiMNn95uo1DM+MtUxqgzqUKCij3WPncakAEMIbCUED
bxwdzf89jkEBtd+UMlGN3htvKksNNraSh/b5lLBg/3n0/PVAAEGAInr8LEiJDXxu
Li8ab222VnEZAfQ5d2SaPPXPEX8tc+Gfs0abL+KNwpEd5Fl+BaZx1CVfNaWYD99r
//0x+cevPOqSFui5qAL3/3xRXOujQUfYL0bo9RYMplVwY5MmM8kKdvk69co8Ydzr
HpW9tYl4LuF4Cl+lZukzVqQrli/FCKEAHyw7UtGAmrXUn39XRWl98XHT24h9UllJ
UX3Vq93lnK+usgUaWBSOWBpaqpSS+UsEO7lHUQLjF8FFAru/Qi/pWuUw1dAsXOVM
A4DCqKruDEv+ZEH/eUmXqj87972atBtdyWQ9eSei7yj/VyjKrZSg190oaa1fS5rk
QR2VIEiG/Wf//C7q2kdVerxFJPzLs34XVozbFTE22W5pKj5pUms=
=O535
-----END PGP SIGNATURE-----

--=_luckmann.name-22117-1647174839-0001-2--
