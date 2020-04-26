Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 417621B8F5E
	for <lists+linux-man@lfdr.de>; Sun, 26 Apr 2020 13:12:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726141AbgDZLMy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 26 Apr 2020 07:12:54 -0400
Received: from luckmann.name ([213.239.213.133]:33027 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1725965AbgDZLMy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 26 Apr 2020 07:12:54 -0400
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E5600C.000000005EA56CB4.000018F5; Sun, 26 Apr 2020 13:12:52 +0200
Date:   Sun, 26 Apr 2020 13:12:52 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: rename(2): Content
Message-ID: <20200426111252.GE2031@Debian-50-lenny-64-minimal>
References: <20200419064820.GA31701@Debian-50-lenny-64-minimal>
 <4a026c82-7dc1-164b-186d-b4dceb3ebea9@gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-6389-1587899572-0001-2"
Content-Disposition: inline
In-Reply-To: <4a026c82-7dc1-164b-186d-b4dceb3ebea9@gmail.com>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-6389-1587899572-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hallo Michael,
On Mon, Apr 20, 2020 at 11:40:26AM +0200, Michael Kerrisk (man-pages) wrote:
> On 4/19/20 8:48 AM, Helge Kreutzmann wrote:
> > **
> >=20
> > If newpath exists, this is already the reason for the failure?
> >=20
> > "If I<newpath> exists but the operation fails for some reason, B<rename=
>()  "
> > "guarantees to leave an instance of I<newpath> in place."
>=20
> I do not understand this report. Please elaborate.

Trying to 2nd guess what the original translator, who unfortunately is
no longer active, might have thought:

If you want to rename but the new path already exists, how can there
be other reasons for failure at all?=20

If this still does not make sense, please close this report without
changes, of course.

Greetings

           Helge
--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-6389-1587899572-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAl6lbLQACgkQQbqlJmgq
5nBeMw/+LItFVcQfISw44pat01XM1E7g1dzguE6CSqZLq0haR9U5b0H4v2imYOq0
O0alHU+AMTbOE/myUU2zqC+Y9DjmwlyjAZsbPCqVc6FwRKxk8WheAzZLpW23r/WM
de3HUKWtrlwxYkf/k+wj0y80TbIo8TFTW0EmdmdZDNHpUzauttCjJd7hFFie83EE
igEVIflNb2mW71qqz/+q+0bYuNrTjMHr22TOVcjt/0aAFnplHb9ilBKvSZwRc+ES
ZHv+/zSLhl05cOLiddT0tQyL6NZ1JwKAwywL2zvfl86CMuHX5LmTzkL+/4Ulr12Q
wMcdiPpbTDDZOIt1a/QV/H7MEHo8stiFliaFVVW6e1a4Iqrc0kMFz31OXKHaslgR
Nl6NJGmxavQBgLOHQ9GTm0NghHM35Nkd86iSAzLD76Awy7VVF23UNl3ztX26Rfmw
0bz++ZCGq6GU7wqaLLqBIK8ewukIh9EeX6fwimgXAdTlpSiOK64leIMIkXIVW/XC
iMZIgmj20KBBTBa0Ef1vLXwS5PHDsrk++u7nUv7Qhe0GQxcfld9XV4CXHYyp0EY0
LeetT176b0rh6tyRBw4STQ2lutgTcPMF2pkPnXU9k1UlXijK9XYCwG2z/tpaXGvw
l6UlYFocBEI6h0iKOH6Sfqk4hlACVsNAlKQohe9lEAVciUh8JwM=
=/Bs7
-----END PGP SIGNATURE-----

--=_luckmann.name-6389-1587899572-0001-2--
