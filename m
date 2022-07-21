Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 84C7857CDDE
	for <lists+linux-man@lfdr.de>; Thu, 21 Jul 2022 16:39:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232064AbiGUOj2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 21 Jul 2022 10:39:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53546 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232122AbiGUOjZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 21 Jul 2022 10:39:25 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 6A51986C36
        for <linux-man@vger.kernel.org>; Thu, 21 Jul 2022 07:39:19 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id BCEB341A;
        Thu, 21 Jul 2022 16:39:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1658414355;
        bh=m86sX2yuOQKujsqv3U2LjMoCtEwKArz/BfJqkeXbli8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=C983tKsTr8fFYTwWx7Ve/8FMHHSisRdnYMvR91zou06PXdAPNOZ4B+G7OGASfu1Th
         2bepSAcqFxoxmUe5Ftxn7Ulum+aJJL3UiXPhtHYPL82FmiZSzjU+wWtvulOexW93CD
         fGdlMLFjr9R/w2RqH8nebWWBVEGeM5/eojaMko6aMdp9pZv7RHtiwCIqAr3OMm9GUw
         vM/XcYb5sSMxEVkxs+fDXC1Y+gHiKen9t7h1bJ7Vu9OzZuShaYGoVF094GkDunEiF1
         klPhpkFLH2QVsZtdfVOzcom1XjTsL1uVewBOXgIIaQBtAP+8EY0Amy+y8HiMHHyc/g
         5HaBXagovMMSuuxsMtM8dOXzefCtBitIMYs+RgtYLNWGxsyxtaoYKjM6zI82yQV4cq
         VUdMvZZHyvAoKwXsjoMDXmSqbwjK448kTJu2YjH/SifTd/F5a5SACqZxEchRA8+oNX
         fOUgWJP2C3b0l1zGdm9EQBfFsFqt4/saaTh9wAS37vtLfOIPgZHGSZ9Bi86FHs7yaD
         69hpzk/oz2xg2iu+Aug0GJDfjVxIqpjnd10QVYDnkkK3ewHL0q7GzTcF5YJdpvXSI4
         HfO5dVMAG0j4qvlm6rFzjh+ouXvb+GqKm0Kol6HytvI53IK2VThWfRGLdr9q1qoz0t
         oXiqdPU8n2GmF1bahScgo/AI=
Date:   Thu, 21 Jul 2022 16:39:14 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Subject: Re: Probably incorrect formatting in timespec.3type
Message-ID: <20220721143914.4dq2pra2m5jx6l32@tarta.nabijaczleweli.xyz>
References: <9ce9d847-07ec-967f-4ebb-2f27a7f042c3@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="h5x2jmrashq4oacj"
Content-Disposition: inline
In-Reply-To: <9ce9d847-07ec-967f-4ebb-2f27a7f042c3@gmail.com>
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        PDS_OTHER_BAD_TLD,RDNS_DYNAMIC,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--h5x2jmrashq4oacj
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

On Thu, Jul 21, 2022 at 03:38:46PM +0200, Alejandro Colomar wrote:
> Check timespec(3type) and search for 'syscall', followed by 'long', and
> confirm if the formatting is what you wanted to put or not.

It is:
  syscall is emphasised, since that's both the fundamental point
  and a subtle difference as compared to the very strong binding of
  the "long" which also designates a C type, and
  long is Some Object, not a type itself.

You may prefer sth like I[syscall] B[long]
(which I'd say is slightly worse because the whole point is that the
 syscall long is not long on X32, so the long is not literal),
but having them both be I would be misleading.

Best,
=D0=BD=D0=B0=D0=B1

--h5x2jmrashq4oacj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmLZZRAACgkQvP0LAY0m
WPHCFQ/7Bpmt6/a06gyYk767JkW1L0kdCX4r4V27YDveD/fITWytMXxfLZiHpyxM
x/ji+mix+zQMAs+tRFNA/cRKw6Glm5wt4uF09sq2bUhDilSQGWyDpE5Rh+YdAnfK
IRraEavvCoxPkE9VAuc1clv027hhIl/v1BpnfD5QsGeocm1YwJKdN0Tav/ysRS+B
4EtMnhV2S56HTOgeK8qI+CQYh4VLFWme/eTJdyWUSEx6EFexeYKBZdVlS5XMzKzk
uJDWXF39JA2qZoYNrdzo1lmFjN6EZUM/So4Rm9hMmDCFJxjhEqfjGG615StXxDPH
2cYW0p4LzZzNYx1+NMF47g876q4882uHsRCntMXd9H1xe39SLCx0jP/+yoLLV7J9
Q40WoHJjcUysZG8v5TJN1Bxm4f4DyNht3u27FFQKKGIbzeNVt4Oysp1eG6i14SYi
FThhMrpfXAWoUVuL1UC7jhR9xfVYMzPPgsKY2yP7WWfB80Mjhw1MPJKc0cbW9zs6
5E02KTOxtWi77h1V+aK0GTuUEY5eLPZbU2dDzgflGwRDyjpHGIKLkpA0iGAy+Q3p
gdGkXoNWwlabb4OYttB+uT2lBQaxfRjAI+8+l9k6n4XYTJvJHqimWlt7vbjiMPTv
Vt6RyoXtaYaDt0Vu+KOiO7TzAwRn0ChlpjPy6bJCcbLan5LvJmI=
=s8fG
-----END PGP SIGNATURE-----

--h5x2jmrashq4oacj--
