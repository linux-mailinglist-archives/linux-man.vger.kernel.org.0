Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A2476215548
	for <lists+linux-man@lfdr.de>; Mon,  6 Jul 2020 12:14:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728661AbgGFKOd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Jul 2020 06:14:33 -0400
Received: from luckmann.name ([213.239.213.133]:54993 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1728590AbgGFKOd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Jul 2020 06:14:33 -0400
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E5805E.000000005F02F987.00006833; Mon, 06 Jul 2020 12:14:31 +0200
Date:   Mon, 6 Jul 2020 12:14:31 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: Errors in man pages, herer: mmap.2, spelling
Message-ID: <20200706101431.GA26642@Debian-50-lenny-64-minimal>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-26675-1594030471-0001-2"
Content-Disposition: inline
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-26675-1594030471-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Dear linux man page maintainer,
the manpage-l10n project maintains a large number of translations of
man pages both from a large variety of sources (including linux man
pages) as well for a large variety of target languages.

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

**

Man page: mmap.2
Issue: Randolf =E2=86=92 Randolph

"Your favorite text book on operating systems for more information on paged=
 "
"memory (e.g., I<Modern Operating Systems> by Andrew S.\\& Tanenbaum, "
"I<Inside Linux> by Randolf Bentson, I<The Design of the UNIX Operating "
"System> by Maurice J.\\& Bach)"

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-26675-1594030471-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAl8C+YcACgkQQbqlJmgq
5nD8Xw//U/nY4IMKHAtT5L5m9zGvnr1HvvAUNId+lCdDASZ8kk7q7EgqlIp78XQm
gezZwPEICZG46qe0pEnfx9nSCO53VFfrR3c/EOMLW1ZzwUGKJExGXppEKiiDbZtH
zAnv4KufbBugr+ooS+j00a+DmyljCYmEOJjwg6j++1bPe/m18/WfQGkGJziEWj+E
nQeMlfopP/AYVrEOfVmfC11L1cc4zK4XtcKiKeZUqHUASTqXQGFjOAJ06IJeX8P/
oPZORfFbYlO2TdQxO5ROTVuB87Lc9auwQoeVTQycoqxrX/46CT4ilULV1A1raI7t
6dpWA9IV2fu6gvv1j9PaZb56M9So5ZgFUJDtRvy+2WlnGrRivLTnrrSgNNRRuoyV
q0GVR/euTfEcfPu49etXj+ePgMceeFQ5X8Y0Ei4j6aUJhgx8f9Sl5doxIZbrViLi
puO9+BFUO1J8DvCPMNwcnoXQ890W5vNS8W8Ky/bh7W23iKZooDthCfb0JSr+ae/z
bdxcjAasX42fka1O2L3a4jRA1rwb4sfqHNDIsyhnUFJe1YnvxQENmm4ZTaExhoAd
s665SaZhcHUSgrgmoFGqyn9xLoQ7zLeWO/f2z2V/6sI3P1BQYNde93jJ0PI196P3
nXiHh4XevFr7KAWZHsyGzVAtOKj6b9h63UFBm/TJoYuD0mV96TM=
=uxqy
-----END PGP SIGNATURE-----

--=_luckmann.name-26675-1594030471-0001-2--
