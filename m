Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7B55C67838D
	for <lists+linux-man@lfdr.de>; Mon, 23 Jan 2023 18:47:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232427AbjAWRrr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 23 Jan 2023 12:47:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56064 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232248AbjAWRrq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 23 Jan 2023 12:47:46 -0500
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 42F6144BB
        for <linux-man@vger.kernel.org>; Mon, 23 Jan 2023 09:47:43 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E580F5.0000000063CEC83E.000003B4; Mon, 23 Jan 2023 18:47:42 +0100
Date:   Mon, 23 Jan 2023 18:47:42 +0100
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page boot.7
Message-ID: <20230123174741.GB32751@Debian-50-lenny-64-minimal>
References: <20230122193132.GA29262@Debian-50-lenny-64-minimal>
 <623dc3a0-e6d1-e8cf-9e69-06721c4fcbcd@gmail.com>
 <20230123065423.ih7jblasf2frt6bz@illithid>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-948-1674496062-0001-2"
Content-Disposition: inline
In-Reply-To: <20230123065423.ih7jblasf2frt6bz@illithid>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=0.3 required=5.0 tests=BAYES_00,CK_HELO_GENERIC,
        HELO_DYNAMIC_IPADDR,SPF_HELO_NONE,SPF_NONE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-948-1674496062-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alex,
hello Branden,
On Mon, Jan 23, 2023 at 12:54:23AM -0600, G. Branden Robinson wrote:
> At 2023-01-22T22:22:02+0100, Alejandro Colomar wrote:
> > On 1/22/23 20:31, Helge Kreutzmann wrote:
> > > Without further ado, the following was found:
> > >=20
> > > Issue 1:  runlevel 2 =E2=86=92 run-level 2
>=20
> > I believe the fix would be to use runlevel everywhere.  run-level is
> > not correct under any point of view, if I'm correct.

> I therefore recommend "run level".

I'm fine with either version. Currently, it is mixing both, so it
should "just" be unifrom (at least throught linux man pages).

Greetings

         Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-948-1674496062-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmPOyD0ACgkQQbqlJmgq
5nAZoA//cV+VROW44Xf6V1XxXqcd6MlEiOHOBWvJONN3Hhgwejfmb78fDA/GeW9X
MZecTeDjxi7ZL8GFR44qZeybMBPKkwFenCm83rQyKBffUXyBeH+HbsAxOTuIgPH6
9ZqQ0+nqL7n2N8SEzvEnLee7vd6KERd7JmySiHiM/j7wDXFatmJbgX/kv159/FwN
GFu932mr4QrrH5AKY7/Nut4EpLEA7V0uXDpOwqBKAouN4vcl0ugEbhYb55pJ9Iob
cl+jhKdmQgP5RXNV0eds1R1MD1n8dP6R1sUbpBGJ6gNIPJAZd8DXhV/uMTF1NfpQ
8L87VmGPyaAguk7cBEUBUJgh8wuAPLod0SU9Xsytg9h/YmiFfgL6r/HdIYUgiU3k
vvTgdeqbO4iLN733jf1ghQu4zh97OtJLscj5aQhwRqUmo0MKHWJr3yJ0BKIysz/s
R9LBNdrB6npCUX3gdAupznHc16Oyy7FEBL/5Muhg907UzcncvFNu04Zsk5mBcS+N
d5oDRxJwxqp5AvGIvJkC0dsPmGTTJjD/74jsNnVV1Jx3JWREXMDBlQvzVpW8S3yW
Q4z+rHGh5skJtlpKP+NC65cZLYZYFwqJP25bjUBz8ZplXD1HsoYpae6L+t3zHNph
BplKojiTU8aM41C6egBLxEG7RaZkZ4XWFFqsEOYvcy9pPUq5S4E=
=fW82
-----END PGP SIGNATURE-----

--=_luckmann.name-948-1674496062-0001-2--
