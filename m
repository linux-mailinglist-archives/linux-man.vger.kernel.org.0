Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3FB5B3D4EFF
	for <lists+linux-man@lfdr.de>; Sun, 25 Jul 2021 19:13:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229689AbhGYQdF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jul 2021 12:33:05 -0400
Received: from luckmann.name ([213.239.213.133]:56899 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229545AbhGYQdF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Jul 2021 12:33:05 -0400
X-Greylist: delayed 302 seconds by postgrey-1.27 at vger.kernel.org; Sun, 25 Jul 2021 12:28:42 EDT
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000BD8021.0000000060FD9A91.00004137; Sun, 25 Jul 2021 19:08:33 +0200
Date:   Sun, 25 Jul 2021 19:08:33 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: Errors in man pages, here: proc.5
Message-ID: <20210725170833.GA16668@Debian-50-lenny-64-minimal>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-16695-1627232913-0001-2"
Content-Disposition: inline
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-16695-1627232913-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Dear Linux manpages maintainer,
the manpage-l10n project maintains a large number of translations of
man pages both from a large variety of sources (including Linux
Manpages) as well for a large variety of target languages.

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

Man page: proc.5
Issue: Is it "OOM kiling" or "OOM-killing" (with dash)? Both is used.

"The value of I<oom_score_adj> is added to the badness score before it is "
"used to determine which task to kill.  Acceptable values range from -1000 "
"(OOM_SCORE_ADJ_MIN) to +1000 (OOM_SCORE_ADJ_MAX).  This allows user space =
to "
"control the preference for OOM-killing, ranging from always preferring a "
"certain task or completely disabling it from OOM killing.  The lowest "
"possible value, -1000, is equivalent to disabling OOM-killing entirely for=
 "
"that task, since it will always report a badness score of 0."

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-16695-1627232913-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmD9mpEACgkQQbqlJmgq
5nCbSBAAkvdxjGYVPeccYdJQ0VQrTA5qQ7TLRUhLk6flesty9io4rwZJ9y5hCMCm
D2Z3RpJoFuKp52TsT4yFwNVxP21VHZOhLNglMQjYUGt5gORVz+Kd45J3nqnl3ZH8
jfpgWQWCIWMN1hjR3uMWoKeMiILerBSCysulX3PmtWWIQk0Pi7H7334dvQCXsMJg
qYxElQR1zsNHbs1866l1IjMSWW43q4ZeICfN38bazKY+h+g3pffHkvRBoPhEoouG
FpY1bp7wIHaNmq2+pltKUakNjnH57Ob+7l60x1V7cBQzV0J0A7pou3IjVUMvniNE
dR+we9fPTFEzCmsq7jMR+bb+HoEZuBkqBxvTzxmqe+tP/ErwzIQNyGQ3kER6Z2YN
utwONZW1a3730drgZG8BG+givCVmMQ0FV8zRrzhClmkLDV34h3fM+DHVIIocNcoY
kXIODnfCtsXUTJISZrffElee+wvl98IR+1HrOqRi/Xi0W8i3GwsWGJl82X1DWvK/
iRNgHD9x0PYidyVnwSCtY2Ltt20cK13kWhfsvEaPcnXGhwDUkADWeBNkUZmU7rJs
NQpZgv4vpgNsPmZQ6XI7XTuDl2yragpDgLj0uO4LftfLvCj4XXqudtP3hR9Xfmqm
bqxQNk3RmwfAkUxmvyLKvdgZEorirR+vRxeU/7NPMzm8fncJbL4=
=ZTk2
-----END PGP SIGNATURE-----

--=_luckmann.name-16695-1627232913-0001-2--
