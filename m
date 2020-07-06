Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3A422215555
	for <lists+linux-man@lfdr.de>; Mon,  6 Jul 2020 12:16:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728628AbgGFKQO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Jul 2020 06:16:14 -0400
Received: from luckmann.name ([213.239.213.133]:54993 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1728283AbgGFKQN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Jul 2020 06:16:13 -0400
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E5805E.000000005F02F9EC.000068C7; Mon, 06 Jul 2020 12:16:12 +0200
Date:   Mon, 6 Jul 2020 12:16:12 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: Errors in man pages, resolver.3: Typo?
Message-ID: <20200706101611.GA26790@Debian-50-lenny-64-minimal>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-26823-1594030572-0001-2"
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

--=_luckmann.name-26823-1594030572-0001-2
Content-Type: text/plain; charset=us-ascii
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

Man page: resolver.3
Issue: 2x res_query? Shouldn't it be res_nquery once?

"The following functions are lower-level routines used by B<res_query>()/"
"B<res_query>()."

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-26823-1594030572-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAl8C+esACgkQQbqlJmgq
5nCZuQ/+J54uXiNW/7MEtSi5dgCVTVmrY0lyifm65wogiOuovbiOHpNmhEGbetzp
fa6y01JQQJKniueqpP2fhTjGG2+oS8IfNKqTQpaGQz5gaonWipJXEE12ABgZUanV
kQpDaqSBZWbReADjp7Ckmxdl5IcAM8fBEQogsoURP2L+2F6X/A/RHNRwzuQnb7+W
IIvjRbBzJUd3X3YiIdtQ+GF59mrynsXycWQdBN+iBPzWwSCbNi+SKOB4L9emVHho
ns9HCR9u74z9NpT+07l4p8JnbGjSbE16nE2kM5S5zLP/o+hfxf5pByhFURMScN5A
Bj9U2RcsXz3xJpahY4J+xzOVn9OJS22no/hTBEEeo9fHepZ6B7zcbzJ6PUcSe/k3
XJsEJmxgeaYfBu5SYhDW7W3H+Ad6e6OC99Qvh2++DfTd7FHkeNFcI91f+5bDbbAv
+OO0gGYuCNwz01VF/Wtaq1midGLQz/nPoLKL1r4t1xSGPMB6zx3//WqradWv7Lq3
HA6W6OapOOkP75L54/Uwu0gXPV1vCHxuh3y2s6a0or/ewiaGuNmduxxcgySkWCYa
eRLSqQE9YIFWMzCNBtheYlr81bBp6oS5h6IP2Wv2KOBAj9Y2M2ovMBBm8QuvSNfk
kfJsMIwG7/h4phAa4FoU+F9KcLPp9+bh6wCiCXJBp9klV6fpkn8=
=kFGs
-----END PGP SIGNATURE-----

--=_luckmann.name-26823-1594030572-0001-2--
