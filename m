Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DD7BE1B7E13
	for <lists+linux-man@lfdr.de>; Fri, 24 Apr 2020 20:45:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729300AbgDXSpF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 24 Apr 2020 14:45:05 -0400
Received: from luckmann.name ([213.239.213.133]:46851 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1729121AbgDXSpE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 24 Apr 2020 14:45:04 -0400
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E56011.000000005EA333AE.00001E7D; Fri, 24 Apr 2020 20:45:02 +0200
Date:   Fri, 24 Apr 2020 20:45:01 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: signal(7): Wording
Message-ID: <20200424184501.GA7401@Debian-50-lenny-64-minimal>
References: <20200419064824.GA31956@Debian-50-lenny-64-minimal>
 <b9cc503c-c302-2675-ba76-3d4b7ee6666e@gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-7805-1587753902-0001-2"
Content-Disposition: inline
In-Reply-To: <b9cc503c-c302-2675-ba76-3d4b7ee6666e@gmail.com>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-7805-1587753902-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Michael,
On Mon, Apr 20, 2020 at 10:26:06AM +0200, Michael Kerrisk (man-pages) wrote:
> On 4/19/20 8:48 AM, Helge Kreutzmann wrote:
> > **
> >=20
> > Current wording hard to read:
> >=20
> > a)
> > "\"Input\" socket interfaces, when a timeout (B<SO_RCVTIMEO>)  has been=
 set "
> > "on the socket using B<setsockopt>(2): B<accept>(2), B<recv>(2), "
> > "B<recvfrom>(2), B<recvmmsg>(2)  (also with a non-NULL I<timeout> argum=
ent), "
> > "and B<recvmsg>(2)."
> >=20
> > b)
> > "\"Output\" socket interfaces, when a timeout (B<SO_RCVTIMEO>)  has bee=
n set "
> > "on the socket using B<setsockopt>(2): B<connect>(2), B<send>(2), "
> > "B<sendto>(2), and B<sendmsg>(2), if a send timeout (B<SO_SNDTIMEO>)  h=
as "
> > "been set."
>=20
> Please explain the problem in more detail.

I first read it in isolation in the po format and could not really
make good sense of the sentences, now I read it in context using man
and I see what they mean. Probably the translator had the same
problem.

No, the sentences are fine.=20

Sorry for the noise, please close the report.

Greetings

        Helge


--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-7805-1587753902-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAl6jM6gACgkQQbqlJmgq
5nD8Iw//WvCObeuBIQqaADiKeGQU2jwq6HdgZ2Nx4u/1U5lH2qCR8JK3vATfCN12
+Qhr6DI4Ci/v24yLVj8QFn93PaxOXC7n+TfdmxIuFY7X37EEi58CKUzIVeyWz1f0
8XPxaKH0lNdvfwnu8FEocSRvYgUSS4yMxZnpp2oNX+K6L/DrAkS+lcbVV+TjSuUE
KeyU/TZU7tjRffmbE/jm4LGjLK61OiulcFKe8BtD8DYQRBW9gHCo0dt+5m29FxZ7
jp3NEt2j0vlFnoT1GakP7ESmuW1PZY+/mm2a3nr7+jXsDUFDP5oA1/bmTdMEGWPb
1DoKwJnmVKpJrQCkiDKXZUJPiQTyQxQrXhuw7Yl6L8tXv0f7Fp+c25QFhRrRXfZd
rH6R1io126r/+662EvOLMvXdku0im31h/LC+B6RPZlp7E69hRhou95lUAZNO00W5
TbmbzMW02NwN234ppj+pMFSnaQqpdpbZ1Irtj/eTM3/IH1Deio5y3jW7Ww/7rTfO
TWA0+AT5hajZLE0Gmeb2gfIPMNK1XNpthgINzbbdS9U4gV3fp+hY0xSWLaMjkAFk
3asefia4+s9f8ryceoSRkiDN8XtdDlLUT5w23x6Gslw1XIWH4vRhp6GVw5yqbjk+
w0Ye+L3a9Z1tL2UFU69Xne/tUWR4R8zupVSnk/gmPJdc0rcSpGQ=
=qQPL
-----END PGP SIGNATURE-----

--=_luckmann.name-7805-1587753902-0001-2--
