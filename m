Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E917C1B1600
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 21:37:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726287AbgDTTh2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 15:37:28 -0400
Received: from luckmann.name ([213.239.213.133]:40689 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1725550AbgDTTh2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 15:37:28 -0400
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E56031.000000005E9DF9F7.00005078; Mon, 20 Apr 2020 21:37:27 +0200
Date:   Mon, 20 Apr 2020 21:37:27 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: fopen(3): Wording
Message-ID: <20200420193726.GD19913@Debian-50-lenny-64-minimal>
References: <20200419064800.GA30584@Debian-50-lenny-64-minimal>
 <dd5698f3-e83c-7c2a-097e-0c83b184c2b1@gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-20600-1587411447-0001-2"
Content-Disposition: inline
In-Reply-To: <dd5698f3-e83c-7c2a-097e-0c83b184c2b1@gmail.com>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-20600-1587411447-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Michael,
On Sun, Apr 19, 2020 at 09:31:04PM +0200, Michael Kerrisk (man-pages) wrote:
> On 4/19/20 8:48 AM, Helge Kreutzmann wrote:
> > Text is broken: "as if by"??
> >=20
> > "The file descriptor associated with the stream is opened as if by a ca=
ll to "
> > "B<open>(2)  with the following flags:"
>=20
> This is okay English--no problem here, as far as I can see.

I'm a good but not a native speaker. Could it be reworded as follows:

"The file descriptor associated with the stream is opened as if a call to "
"B<open>(2)  with the following flags would happen:"

Greetings

        Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-20600-1587411447-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAl6d+fYACgkQQbqlJmgq
5nAzsg/7Beuy8T4vewQzemzjXxOWAYjwMxCUutsYKCLz6cm6lNxsraARC/G3/5Wi
P6QUTsbiUohPFz/I2Fi0sfijxSc264uiL0BxwMFaWuSP45LugQ7aKS+cFG97tBEC
HGwJBbV77pDkLrASjK/6t83ddGqoN47kM+AfpQ5bzWfpEbfqVs83Sbl6xIf1EDm5
MQYWBOeTJ8KikwaOTCLEaLKrlAz9zVn1fb8pE7pm/VKbrHxvhUOyT7TfZXE/lxSN
3w5pJaDOwEUEfCXOVHpvh6CQmYAHhuy35o5MBYxgJO1ZjuTwljLpescXLq5Oun7Y
xpizan0uhRLAU6JVt/ZzbhfbAVJjzUVs7g3Mev0cXajjQr+w0PjCTg+VmrBf691O
0skqC06NePFWq2nmf0z9c2GW5D7AI3Kk/vh+dCbAUNqOMpu+kSy5RAdQ9yD+XOTC
Ro5A8DCBwplFiXkLnYBiTCooEiO/zIL/Y0qY1k7L7+iUyTtHI1gS6IvAyjxHEngs
NrU4WBZDxNfyA0qnbq5K5db7RgxfzZN2ZWwsbYKLMX0968VV4oGcHydfueelB9q/
nT9cYYKl/QLmi96slONYuyvRR+vUInrkwvDXGIhWGAAB9FyGCXIfIPzVp8nIxUuh
32m19HuhJYQo1LieCZWV0V1Sqzlo+9hAKRWpHUT/3fT2IYiwF6o=
=7qq0
-----END PGP SIGNATURE-----

--=_luckmann.name-20600-1587411447-0001-2--
