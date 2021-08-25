Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 758FE3F7C23
	for <lists+linux-man@lfdr.de>; Wed, 25 Aug 2021 20:21:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234853AbhHYSWA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 25 Aug 2021 14:22:00 -0400
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:53628 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S232629AbhHYSV7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 25 Aug 2021 14:21:59 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id E83523610E2;
        Wed, 25 Aug 2021 20:21:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=nabijaczleweli.xyz;
        s=202006; t=1629915670;
        bh=IfoO0w5hr9QRRBREVAFC8qpihRr1iFRFCb+9UA+v2tc=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=F9/pOEkneFyG40AmpdjtNr/+IwuO0tfonVb9pXeQyNTM1jwAErC5XM1xSy5q1PZc8
         pi2WcMHMqYn+hjhKmoFHAeVPbmH0X1vHmuFRKNPUylQSVSz4+TgMx6X6Be9mvDhFux
         H7iOcrznofX9LpERsZCdMSGycKgtujYeD9gElD4CQ2ivgdhPzyBeYhuN/OPGkvqT0Q
         W53bsVatgVLeXH82+U0h6TuLJGyP3txcdJVotuc7MFplj0OuRRh/mrUqfnQzhq3PeN
         LOv1qOhMRfo8SIE60Emg4w+8cp5/XripWt07dmgHrZW9m32fRh0Pmk0DsMAbxNYjsX
         RI3RPjUkedQAA==
Date:   Wed, 25 Aug 2021 20:21:08 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: [PATCH 2/2] alloca.3: rewrite NOTES
Message-ID: <20210825182108.3pranfei3iwrghyd@tarta.nabijaczleweli.xyz>
References: <ed9ad00910f264f8f9ecd266d398522077f4548f.1629752426.git.nabijaczleweli@nabijaczleweli.xyz>
 <c08c2bb9ccbbc097166f4815f8dea420e5fe1044.1629752426.git.nabijaczleweli@nabijaczleweli.xyz>
 <d2c606ce-468d-8545-30cc-d8dabeb48296@gmail.com>
 <74071710-9981-21aa-4be8-b4ee988d7210@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="kvxczgymbeykpgj7"
Content-Disposition: inline
In-Reply-To: <74071710-9981-21aa-4be8-b4ee988d7210@gmail.com>
User-Agent: NeoMutt/20210205
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--kvxczgymbeykpgj7
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 24, 2021 at 12:33:56PM +0200, Alejandro Colomar (man-pages) wro=
te:
> Hello Ahelenia, (do you prefer =D0=BD=D0=B0=D0=B1 or Ahelenia?  What does=
 =D0=BD=D0=B0=D0=B1 mean, if I
> may ask? :)
Either works, prefer former, but this is neither the time nor the place
for nomenclatural epistemology.

> AFAIK, VLAs are 100% equivalent to alloca() (except for the obvious syntax
> differences).  And considering the VLA syntax is much nicer than alloca(),
> and is in the standard (IIRC, C99 added VLAs, and C11 declared them
> optional), what about adding a NOTES subsection that recommends (or at le=
ast
> mentions) VLAs?
>=20
> And they both share the problem of smashing the stack if you try to alloc=
ate
> an array to big (and none of them has a way to check if it will happen,
> AFAIK).
Well, the fundamental difference is that VLAs are arrays of objects with
odd semantics and alloca() (a) has an allocator-like interface and
(b) returns uninitialised memory, that, as you note in your second mail,
(c) escapes into a larger (function) scope.

Plus, I've usually found VLAs to be used by accident because something
in the array dimension wasn't as constexpr as expected (the macros
surrounding unix(7) SCM_RIGHTS on Darwin come to mind, try explaining
that to a conformant C++ compiler), while alloca() makes
the potentially-unbounded allocation obvious (and portable).

That being said, you do have a point, I'll mention VLAs in v2.

Best,
=D0=BD=D0=B0=D0=B1

--kvxczgymbeykpgj7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmEmihAACgkQvP0LAY0m
WPH2Gw//Z42vm1YxoNZgihsrm3ggfFPF2PXZozi5I50/LjZ/X3fRv7cXZATvYBlU
tPYEwIPH0q0MT0KVT6llyrzkxuxZrbGCY2QnnbfQ1Lk/Dv/VIEllQNt2yn+7OLM0
EQVYswRyAuGTaAjh0YIN/KBLpWJEPOZT2X6z05cJoko4TtKIH5DrwQ3d3uEbI3jZ
IScciOZR+lRv16aXVEanKUO9u4qz0vWazGaIdYc3qmfvQQChdwd7pVjyteE6Lbn7
3cccamCYrSboI1mSLv2u4TCVL4n0L5Sgmkna0r10LReVkHe6DWi4sJfcd1GxY8V7
SHTkg5vdshARqBa+PGWa8atfP2El9iujFeVO8GYqC/rkj9Bv0Gg3VP8/Nogdb2bp
BkasxEgNQHfZOygzh5UmV5tjSkAMPnWxen3GTem0PoHf/3nJvOAvQGXhwGkczhX8
MZmbutP78e8U2HY/GVpsyx2QnT2i+05sms1qFavLFRlM7223OoDhzy2OnDiKvgBv
oBTTRTMbxhchvN2Paquv1cBlf9dj225RMCd1TLDpxLSCU/tFf4vrfC+mcPO8AFls
BIF3U4wFN39U8W5urfFxJMlm5dFdLjOkDmpODDyJgJg8Jd08Frxh2gHonEzgGLAx
Yd46lRRatp97gPv6KktUAUWWyRahZ3C/XL3I3pKIqhiGBS9OFmE=
=l7xF
-----END PGP SIGNATURE-----

--kvxczgymbeykpgj7--
