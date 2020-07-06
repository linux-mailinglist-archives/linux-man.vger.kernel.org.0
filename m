Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 51AAC215550
	for <lists+linux-man@lfdr.de>; Mon,  6 Jul 2020 12:15:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728638AbgGFKP2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Jul 2020 06:15:28 -0400
Received: from luckmann.name ([213.239.213.133]:54993 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1728628AbgGFKP2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Jul 2020 06:15:28 -0400
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E5805E.000000005F02F9BE.00006885; Mon, 06 Jul 2020 12:15:26 +0200
Date:   Mon, 6 Jul 2020 12:15:26 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: Errors in man pages, here: proc.5, self-reference
Message-ID: <20200706101526.GA26718@Debian-50-lenny-64-minimal>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-26757-1594030526-0001-2"
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

--=_luckmann.name-26757-1594030526-0001-2
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

Man page: proc.5
Issue: Reference to proc(5) in proc(5)?

"This file provides a superset of the B<prctl>(2)  B<PR_SET_NAME> and "
"B<PR_GET_NAME> operations, and is employed by B<pthread_setname_np>(3)  wh=
en "
"used to rename threads other than the caller.  The value in this file is "
"used for the I<%e> specifier in I</proc/sys/kernel/core_pattern>; see "
"B<proc>(5)."

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-26757-1594030526-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAl8C+b4ACgkQQbqlJmgq
5nDsEw//TcaX4AIPvJsx2Hax8SCkQyCBp57RkkAN1Becgq0dopj/EvC4/5H1roYk
6oBl6bhkogI0naSliTYmf/NteBHPjwoPTc/MrdtepNUgdQG0gjrWn9O9HUnnwUPL
xwiyEi555jmgTj+ofCbmAeWAarZlf46dJwmmz93v0XVyJzCGEIP57ZGmZS8/MrBk
IZLHRXDLWxEiT0MUvP/l/zhAi2lb9eoidviFPqq01F9L5R2Er+N8sZF4vTFsC+xi
qa8rEXg4q//OblyGgCFsBAs2hudcSdBkP6H8/yeE2/3ovJMHBN6DA8pfuz5IsMq3
C/oNS19DHJUffTDuLEjJAzRTTeUzWncV9OciApdl2668AjjJ236KkfRgNGPz9UYU
r77H7AGtEBqEemW8vFhCfImNP/CTn+Put2mECEsT4yzbBHDfnbbr+t+l1QMi+y7s
vRjQcHMQp5agln54/ZVfYOkMW1BKJnheJrkzvPWdaEGHyqBIImjdBXt9oPBvl9mE
2/1r4kPOhCDijmGasOdVhKsCYFibWby3J4anGP+o/uQUzj+EeN/udV/aqc1LXMLD
dDauQ1kit74PlVGfhu/pFBGYauJEXwlQwrPrh08lQ2RfCRLRQi3CT/nqgaLJ2mkF
K1sHFocw4yLwQDKk1cH12bXqzEzZdbRskDSS5szQ606GC87IFcg=
=omnr
-----END PGP SIGNATURE-----

--=_luckmann.name-26757-1594030526-0001-2--
