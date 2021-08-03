Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3DF723DE9B8
	for <lists+linux-man@lfdr.de>; Tue,  3 Aug 2021 11:34:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234956AbhHCJea (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 3 Aug 2021 05:34:30 -0400
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:55234 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S234850AbhHCJe3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 3 Aug 2021 05:34:29 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 8739E360ED6;
        Tue,  3 Aug 2021 11:34:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=nabijaczleweli.xyz;
        s=202006; t=1627983254;
        bh=wzGPtHXWQ0zzbypcW99x0/+USE5Chw/4KOpcww1JdO8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Y/qOo3YGcNs/h1noEvctfYz1aqWolZpTLmJ5hlz4xCVW6iAM7f2UTt1AN58dNWotr
         qpXs4hOUUN5l7KxT4YHjInNFvxw6kkjEfdSo5qvZFQ4y7vTz2Bti6xj7UmXsnh8nmo
         X/53Xm3xfv5TTtu9rVUnsz/OqExbQDF4FRXknzqwEVfc2PyfhXzkOvMoqIlhWw9zay
         QNMw4t/YITKsfNs0msr35A3FclvShyX/UIkpkOlhn8vtCQu8WA7ghtfymOjRmBq5bN
         NkAp+FiuMLHwIU4gA4BGJlR6yfm+PTKTw/r5ejGN7w0t4HbVI3oyUR1q/FqE2Hkc+P
         +q9U4DX7AsilA==
Date:   Tue, 3 Aug 2021 11:34:13 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: NeoMutt + GMail signed patches (was Re: [PATCH 2/2] man-pages.7:
 Update non-breaking space advice.)
Message-ID: <20210803093413.ztdarccotobbbrht@tarta.nabijaczleweli.xyz>
References: <20210731034458.6s76okhgjxw42mpx@localhost.localdomain>
 <e097bf4a-7188-e810-7d3b-e4d1469397d3@gmail.com>
 <20210801101221.poigrttumltcdenl@localhost.localdomain>
 <233dc372-453f-713e-13ef-cb59721e806a@gmail.com>
 <20210801114156.w3hmedegg5574zho@localhost.localdomain>
 <02923f47-b594-ce8f-68e4-ed9fc0f915af@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="pz6jvsbd6cpmexaw"
Content-Disposition: inline
In-Reply-To: <02923f47-b594-ce8f-68e4-ed9fc0f915af@gmail.com>
User-Agent: NeoMutt/20210205
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--pz6jvsbd6cpmexaw
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 03, 2021 at 09:36:14AM +0200, Alejandro Colomar (man-pages) wro=
te:
> I found that Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
> also sends signed patches,

FWIW, there isn't much of a trick to it, all I do is have
	[format]
		headers =3D "X-Mutt-PGP: OS\n"
in .gitconfig, then (cmdline verbatim for the patch you quoted):
	git format-patch --to=3D'Alejandro Colomar <alx.manpages@gmail.com>' --cc=
=3D'linux-man@vger.kernel.org' --stdout HEAD^ >> ~/mail/mailboxes/Drafts/me=
ssages

And just recall it in NeoMutt, the special header enables PGP OppEnc
(I used to just enable it manually for a while with <smime-menu>,
 which works, but got very old very fast).

Copying format-patch into drafts is an explicitly supported
configuration, and has been for decades (cf. git-format-patch(1),
DISCUSSION, 2nd paragraph =E2=80=92 active ia64 development dates it,
rest in peace).

> and digging through the source of an email,
> I found she also uses NeoMutt + GMail.
> But her patches always apply.

@nabijaczleweli.xyz is my local Postfix instance,
but this does also work on GMail (copying the mail from a temporary
mailbox into the drafts is a little iffy, but works);
you're seeing a lot of GMail headers because GMail received it.

> Cheers,
> Alex

Best,
=D0=BD=D0=B0=D0=B1

--pz6jvsbd6cpmexaw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmEJDZIACgkQvP0LAY0m
WPHmxw/9GKP/0h76H6cNVPNn9JGmQ9UDBFC7pKCSx//tHym2HYT3DJFMCpP3XdSr
x9gurPSFOuNcHkmmnDFoYMeWCsD7Vp86VquKymh1doI/QPr+doC+xkgOarXfZD4y
ysceKFspzweYzYynN6x7vYhODIVLgdcWGv1bSvDkIQptdZZ+ayFXwhiqQ/M8187b
CM9yu7zrRCRfzxBrnaSfdoeCkboa07wB/kP0H7t00TKdhTSdCYCx3fAdvp13xb9h
awxoZRSh3Nz4sZbr8GkY5NDs14HIIsitT5g8LODBt6h0LBY+2W7BQQTLgPFVF158
ad4DFp6ZGRHYN7PwBaIRDvo9nKjf/Bg/NXnDbLWsxAa9jaYGmn3LvgzNyrF0Xi/m
VK7xQaGhskrAoWMkJxQN/1bRE8RLfrWGYHdkZYAEkFHmsJk3wng2cKBIhKLKYAmI
jsSgH/fHD+l2BIkRRNtTAD4d3rr/g7Obiv7oZSFPh6V+3hw5VI+Od1U1OkVkz3Uv
N5OulUArCP/WPGaZzcgzaBODgCmP21oFJM7HjEO9jwc++tf17tROo1+hUFT86Kfs
utpIuBoiud1B7TClmDzTBjKqgb8ICcBNJIdfNh0x2kvbhsW4nfWTP7rYmE1YZuYW
ypiHQ0ALmP3T6dmZmM8hVXrMxbuRGrD/tlrqWcE+iV09T0Xtkec=
=Tauy
-----END PGP SIGNATURE-----

--pz6jvsbd6cpmexaw--
