Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A2B5D21553A
	for <lists+linux-man@lfdr.de>; Mon,  6 Jul 2020 12:12:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728776AbgGFKMv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Jul 2020 06:12:51 -0400
Received: from luckmann.name ([213.239.213.133]:54993 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1728299AbgGFKMv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Jul 2020 06:12:51 -0400
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E5805E.000000005F02F921.00006797; Mon, 06 Jul 2020 12:12:49 +0200
Date:   Mon, 6 Jul 2020 12:12:49 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: Errors in man pages, here: fork.2, markup
Message-ID: <20200706101249.GA26480@Debian-50-lenny-64-minimal>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-26519-1594030369-0001-2"
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

--=_luckmann.name-26519-1594030369-0001-2
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

Man page: fork.2
Issue:  any fork handlers =E2=86=92 any B<fork>() handlers

"Since version 2.3.3, rather than invoking the kernel's B<fork>()  system "
"call, the glibc B<fork>()  wrapper that is provided as part of the NPTL "
"threading implementation invokes B<clone>(2)  with flags that provide the "
"same effect as the traditional system call.  (A call to B<fork>()  is "
"equivalent to a call to B<clone>(2)  specifying I<flags> as just "
"B<SIGCHLD>.)  The glibc wrapper invokes any fork handlers that have been "
"established using B<pthread_atfork>(3)."

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-26519-1594030369-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAl8C+SEACgkQQbqlJmgq
5nBcmg//Yw5Pv7FDrcHDa6ObOUu/mrxqBM74C6GU/LQ/z02rVf4gWVo+8Qo7z2ww
BUC++jDuH6JICDkNBfQ58PT6dLcJE2t0vyOgXDshOZhx7n0h8tFTd91DsEBRkRSX
1DgxmtXTfpCHghgmVhyrOqokuPS1ihPziAyfexMipU5juyO7LR3SLvvnMCvqcuW4
A3mUWoz86eC0NOPkraJSQ0vq1fU3XY204E+HEinCpfHGEDCZ9PRMpSVQnhQoT+jQ
NG46lxEr6a/lVAZJxBMBM9QB8IBmsCVzosnIRpOHB2+yCeKW9huWT0r5w2XNxYKK
bwwNVPXWwB9A1VTR3uPAuqtMMXDhsBniNITNgqorTQdNa98jOHAfZBDiDMHnlGQL
RaWbANtzJ+puQ1/JM8j3eMVu8iphyx7H3CoP4ck9MRzqTpMJSvAax2BhQFf8g4Wl
ImHN3K9NIGG1wGq1+h5CzODPFzvrygUQeRy2pyybt4JOQmLaWdKZILav6MC5LinE
R6lrN88GtbfNM1Y9TzXWeDyAGyRYS2eUU2QOJcIayRMFdCHRNRMXfc41yzo/JRrs
zhtBYJsbPpj6AT4q9e4X/j1pVr9onkS/+FFYtB+C62vggwwaSwhAQVED9X+5NP9u
l+mmpnCJ1id8kjThA1YK39LK2Ard0eZp+HdjzCFSPOf1FQr7aT8=
=MUFH
-----END PGP SIGNATURE-----

--=_luckmann.name-26519-1594030369-0001-2--
