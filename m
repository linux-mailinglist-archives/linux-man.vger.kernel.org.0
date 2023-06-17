Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3A454734076
	for <lists+linux-man@lfdr.de>; Sat, 17 Jun 2023 13:16:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233433AbjFQLQf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 17 Jun 2023 07:16:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40090 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229852AbjFQLQf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 17 Jun 2023 07:16:35 -0400
X-Greylist: delayed 302 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sat, 17 Jun 2023 04:16:33 PDT
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F8A5E6D
        for <linux-man@vger.kernel.org>; Sat, 17 Jun 2023 04:16:32 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E5805E.00000000648D94E1.00003D9E; Sat, 17 Jun 2023 13:11:29 +0200
Date:   Sat, 17 Jun 2023 13:11:29 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page boot.7
Message-ID: <20230617111129.GA15264@Debian-50-lenny-64-minimal>
References: <20230311171357.GA4913@Debian-50-lenny-64-minimal>
 <06e77b4a-f42d-b1c7-5e13-9757b0df1d08@gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-15774-1687000289-0001-2"
Content-Disposition: inline
In-Reply-To: <06e77b4a-f42d-b1c7-5e13-9757b0df1d08@gmail.com>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=0.3 required=5.0 tests=BAYES_00,CK_HELO_GENERIC,
        HELO_DYNAMIC_IPADDR,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-15774-1687000289-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alejandro,
On Sun, Mar 12, 2023 at 12:31:37AM +0100, Alejandro Colomar wrote:
> On 3/11/23 18:13, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    This is true only on x86 and Lilo is probably not much used a=
nymore; also systemd has its own (?) bootloader

Lilo has just been removed from Debian, so to my knowledge only Mageia
ships it.

> Please propose a fix for the wording.

Ok. To be conservative I would do the simple change:

> > "In Linux, the OS loader is often either B<lilo>(8)  or B<grub>(8)."

In Linux, the OS loader is often B<grub>(8).

Greetings

        Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-15774-1687000289-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmSNlNgACgkQQbqlJmgq
5nD/XA/8C2Pvk8c8bWGfx7Jf0Zfbp6dzR60lxFgeIhatmZLvBvuQLarLxRDDrQAg
Dw2Sl/NXnuQ1jSvkZgwOb27mtXVocTloq1TH6DdRxiQaVoI3tCc7VSDNjZXq8rmE
YfFBlaR0Yrij41zTgyfk9p+aJGXG887FKKXiExCssgoyYBIQqSKxHhImZ4IPNwIE
Y5t89+PJ+tG52aKyJjhQ8HjGsFgx2zEF8diPRBK8np0eXJEe3Q9LhkaAfdyhvQt7
RD3r3TKasLmMQZmAAS2EWgoYk1RoPZ8yxZN5hrV8RAzmQYAcxu9cy5mE34AbL387
eQLjG2+cH8fGxGwosJ68esQgWlFt/scm9FD92wJOplQ8Y69zdHRiK5mEj6gbhkT/
qkkzJJ5ZxSWLIl22tX2ujhDqCh2J2qBFB/WymUB8LFRHIF0xTmS0ZRrSwxB1fc6N
MeOkPM50LYMiu/+YmmKl+WK45S5pU7gHQg6g+DFGnDH4UmgwBk5jiC5X1rTzwCh0
93S4RYl3Sngqn5G+p65tw2HqusEPri46FGmceH68WekNo0L6Va9OVqUjAyvGyo3v
eJ5GIeBpKsIkrMfAV/Jsk3Et/OAKpO4gyJVZaudqWmfbNDZLcY9CGAQHBMXrD0Nd
+0xvz0MDSjiJeabbDNVowaxnmKwxx3EPVG0E4wJ3eDhukPPLs7E=
=1GwN
-----END PGP SIGNATURE-----

--=_luckmann.name-15774-1687000289-0001-2--
