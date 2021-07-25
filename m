Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C5C3A3D4EFB
	for <lists+linux-man@lfdr.de>; Sun, 25 Jul 2021 19:12:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229709AbhGYQcW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jul 2021 12:32:22 -0400
Received: from luckmann.name ([213.239.213.133]:56899 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229689AbhGYQcV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Jul 2021 12:32:21 -0400
X-Greylist: delayed 302 seconds by postgrey-1.27 at vger.kernel.org; Sun, 25 Jul 2021 12:28:42 EDT
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000BD8019.0000000060FD9A66.000040CB; Sun, 25 Jul 2021 19:07:50 +0200
Date:   Sun, 25 Jul 2021 19:07:50 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: Errors in man pages, here: locale.5
Message-ID: <20210725170750.GA16562@Debian-50-lenny-64-minimal>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-16587-1627232870-0001-2"
Content-Disposition: inline
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-16587-1627232870-0001-2
Content-Type: text/plain; charset=utf-8
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

Man page: locale.5
Issue: Better single-character string =E2=86=92 single character?

"followed by the single-character string that will be used as the decimal "
"delimiter when formatting monetary quantities."

"followed by the single-character string that will be used as a group "
"separator when formatting monetary quantities."

"followed by the single-character string that will be used as the decimal "
"delimiter when formatting numeric quantities."

"followed by the single-character string that will be used as a group "
"separator when formatting numeric quantities."

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-16587-1627232870-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmD9mmYACgkQQbqlJmgq
5nAF6Q/8DemWwXaZKg+bhVvr+0hg523wIYqu7DWy0gUjh+0wspOvgA/SppUpU50K
i8vCo3ToAENA3pS4JhEUBUUsRkGWBcNbVfygtUUgBB4DevQAMjDSiAwmRSPrTWbu
csemZ9s+1uaCRjPrAc1KcDdiSrbRTDhHWBw1dbs8bqNyF6HobTRBCohOR4IDXvq5
nHij2YIs5u4SUWbYLcEO4Ei4ItTEuPbN7TLUAOzH7dT/i7rAK6MbymGIyDGpeYvp
pTMmTQVw/gPJhfdOFPQKRWtzjjRD0dhv0n4TPkHHfluSU0R9jOzKjp0RwNvvyq3Z
nIZPq509QmA9rljdKjbZK4zNSRzooMXHtgv/M6KeWdUkS3go/JZ23UWnId0NEIBv
Wu+n7PrnzEVaufipJBtkv7wCJup1l94jNb39K5dSWMXRtY3Lj9DJHOp115+zlZ1u
MyHE1/IULmON3QtqSVRM57AhBH3JZIp4072/7GFs5hHlzV0G+pSFU8/R7MmZDnic
sk8YPscfTjPZQ571OYE4RQVNfMgk5sqYEePif2lNgcYIh/1hx5RgLR9q9tPogk40
CXgeau1jscoCm234txpFMM/JNEUjRV8cMIoXTuOjPonssxaNJZeP3JC/im2jNlol
NF3iQ4k95rWQ8Mors2sPIYRmI6wgoD3hgXLYsZZtUHv5uY1LarM=
=vCjg
-----END PGP SIGNATURE-----

--=_luckmann.name-16587-1627232870-0001-2--
