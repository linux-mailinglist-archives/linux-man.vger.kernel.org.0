Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 83255215562
	for <lists+linux-man@lfdr.de>; Mon,  6 Jul 2020 12:17:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728630AbgGFKRv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Jul 2020 06:17:51 -0400
Received: from luckmann.name ([213.239.213.133]:54993 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1728713AbgGFKRu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Jul 2020 06:17:50 -0400
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E5805E.000000005F02FA46.00006966; Mon, 06 Jul 2020 12:17:42 +0200
Date:   Mon, 6 Jul 2020 12:17:42 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: Errors in man pages, here: strcmp.3, inconsistency
Message-ID: <20200706101741.GA26942@Debian-50-lenny-64-minimal>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-26982-1594030662-0001-2"
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

--=_luckmann.name-26982-1594030662-0001-2
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

Man page: strcmp.3
Issue: The programm output says byte, the fourth line in the code says char=
acters

"    if (res =3D=3D 0) {\n"
"        printf(\"E<lt>str1E<gt> and E<lt>str2E<gt> are equal\");\n"
"        if (argc E<gt> 3)\n"
"            printf(\" in the first %d characters\\en\", atoi(argv[3]));\n"
"        printf(\"\\en\");\n"
"    } else if (res E<lt> 0) {\n"
"        printf(\"E<lt>str1E<gt> is less than E<lt>str2E<gt> (%d)\\en\", re=
s);\n"
"    } else {\n"
"        printf(\"E<lt>str1E<gt> is greater than E<lt>str2E<gt> (%d)\\en\",=
 res);\n"
"    }\n"

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-26982-1594030662-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAl8C+kUACgkQQbqlJmgq
5nATwBAAhmBGn8a9/piQV0HXR6R6x4lJCQzEVQ3KYhaD3D9K/b7Xn12bh4yhipUQ
gLP37FGlPouScckxene3G+XHS2vi+GP0ORd9A83bO0I8wCdguSf8mzHrK2fnvxqn
FEowWJokDI8ltZwsobyQMppBDQhbMMYQEEh/jKTQ3Q/2inMv5KUB7RConZg8LBiG
z38VfRhf6jb3vY5uInHF1vSMxmAXMJi6CBEZjpS297VlG1MuR2VAvUDE/00l47FQ
zTzZfZLbV6mG+o5mVI+rxucNZ3zgT1Xq+NAcU+s3ZmcMOPkleLppK1cKsndTyiVq
Bp0QdKrWBkBZicWpe/VOnDyd47Bq8Kpo/8uTTiYaDQ9b2lLN9wIdiDRnfY+s1znF
lJiAjKqUrPna5XPq8n84Vm1389IUkLMCCZFQ6/Cilk0EDEDiEayObI9oa66TZpwG
EsjLNUea5KPmdiRnUnQgLFu7TFHgPrfeTbncHSr253s/51vV3dyYIHKf0K5HNwof
yIeYiEfA9NtCBlvfdON+0fGDRDRc51tYgqW/eGUDtTxosoITJtOVt/Nsc7w9z115
E5nSTo5aEkBVgMNcdVV5QCKuddgcA7b0DYEgfZroEV7WUWl9CYaazmOHz8AvoRzw
otzX3OD5GwFPRVPU8dSXQzeQwCy+f2/1QTYlqPbPuj46fpm2U+s=
=aahn
-----END PGP SIGNATURE-----

--=_luckmann.name-26982-1594030662-0001-2--
