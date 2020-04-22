Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1CFC11B4D74
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2020 21:38:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726071AbgDVTiM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 22 Apr 2020 15:38:12 -0400
Received: from luckmann.name ([213.239.213.133]:41189 "EHLO
        static.213-239-213-133.clients.your-server.de" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1725935AbgDVTiM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 22 Apr 2020 15:38:12 -0400
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E56034.000000005EA09D22.00006B91; Wed, 22 Apr 2020 21:38:10 +0200
Date:   Wed, 22 Apr 2020 21:38:10 +0200
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: dsp56k(4): Singular/Plural
Message-ID: <20200422193810.GG26557@Debian-50-lenny-64-minimal>
References: <20200419064756.GA30329@Debian-50-lenny-64-minimal>
 <0bf9fae9-e815-f3b4-38cf-74bcd0ba1ab3@gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-27537-1587584290-0001-2"
Content-Disposition: inline
In-Reply-To: <0bf9fae9-e815-f3b4-38cf-74bcd0ba1ab3@gmail.com>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-27537-1587584290-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hallo Michael,
On Mon, Apr 20, 2020 at 09:00:49AM +0200, Michael Kerrisk (man-pages) wrote:
> On 4/19/20 8:47 AM, Helge Kreutzmann wrote:
> > **
> >=20
> > Can there be more than one padding byte? If yes:
> > s/a null byte/null bytes/
> >=20
> > "sets the receive word size.  Allowed values are in the range 1 to 4, a=
nd is "
> > "the number of bytes that will be received at a time from the DSP56001.=
  "
> > "These data quantities will either truncated, or padded with a null byt=
e "
> > "(\\(aq\\e0\\(aq) to fit the native 24-bit data format of the DSP56001."
>=20
> I don't know the answer, sorry.

Thanks, I removed the mark and added the ambiguity to the translation
as well.

Greetings

       Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-27537-1587584290-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAl6gnSIACgkQQbqlJmgq
5nCS6xAAixYK1TrSTOppj874pUnWpQ8ZCRtW30plkkuwVK0Am+gNDCc43TJlcoWI
4TL99dghkdjCQndWeVKW5GEVrSJ9PkheUVasnn4Fh9lARcOzMFTugO0dCjBwY4OV
kkcabzDBwWlhKdy36/+SYqe8vmzuxwqCM3zl8PIDQc2ibdwa3DYq5+EJqcT/+ngs
C2TIZ5voTtMdFu7MCCK+ejl7FAtcwUJFtqU2gfwnxEHQ+MCctwDRah+FsjYw2ieQ
wd7zFTgVieB77ZPxWq5m1zlX2fCzrN/H+e2wp1wg4BhbZsDSbE2K5dGAuEYHVtb4
vAL2GKt9O0bpfxZk6RDFCEpK/oSUf5cJk6UrY3/3a1WQLx/Pxv7Frnxj3cf11j0a
izeWWRcGVoT2CN/4ncW0XCjVP49SbpdKAQ1r/upnysl8F4GKJQawImPjFOq74g6L
eUAQnO0wzzlY4Mm041WfkmakSqakF7aS4eSCXBpIJJ7vW3OTufjNxrqzcnDVAaY8
+JEoxwG2uc/uZZt8oOrX2Idb9wUVP8vGpusUNmcWa+/87rjYVEW8pwvDkmuCv0Jc
Y69nQVD6xd7ltpEHgiis1sRbo2pri+bHX6hfUBZfPXAvUXBLbtETPrGVrD6oKs8o
ztnfzQ70XKmrMgI0Q/HUf2nP+EDfsS8lNzlxz3nEfsyVPuxTi9I=
=DM5n
-----END PGP SIGNATURE-----

--=_luckmann.name-27537-1587584290-0001-2--
