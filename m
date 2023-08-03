Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AD73E76E726
	for <lists+linux-man@lfdr.de>; Thu,  3 Aug 2023 13:42:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232651AbjHCLmN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 3 Aug 2023 07:42:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41304 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234154AbjHCLmM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 3 Aug 2023 07:42:12 -0400
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 942B02698
        for <linux-man@vger.kernel.org>; Thu,  3 Aug 2023 04:42:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202305; t=1691062926;
        bh=hKZHGLkGqENzW6wa+oqK73EU30LzqKkv48iPXjX8vXQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=O7Uy7IECJmoCpMpnJhq2iiiHkGweZFl7nIIJwr9oUYgUm/oPx5NY4phaLiLIXkCKE
         qxN8iNqCBWc1+1UKbpyfdU8/yHYVemBvjmZJx7xCUNzL1FjW6QXBdi1wO2toGv6sQL
         Si9zObEoo9YD5nADETYCCvOHPcMsmnocZpfy5bPCp6JAoOsJ2KsolpE76h066zu9V3
         SSlr7dBGrMmnB4iGHJ1KYbBAlJPX5o81EOFv04fM69W2b3mg2m84Qtc+w49/7a4AGb
         3TpWx+sap7HWgAXwC7o/QR+WLHYjb/150I6PeiYLM/ufMWzwlQvrb44zxIKmwbamb9
         JRGoM1mUmVTDQ==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 83F65524E;
        Thu,  3 Aug 2023 13:42:06 +0200 (CEST)
Date:   Thu, 3 Aug 2023 13:42:05 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man <linux-man@vger.kernel.org>
Subject: Re: Copyright for erofs.5
Message-ID: <5fa46ghw63mmhbc3go4pvgn2stcetko65lire6gm4exbxklmyu@qituembq5efj>
References: <13248286-9e34-ceca-8e37-2166a9d39c8d@kernel.org>
 <ups5demx3inur4cudbh44smelpfmsuc2j7alegk2jjcavoyhnd@4rkmms4ugjcf>
 <bb64eb67-293d-f294-ef56-355c8118caca@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="e6grh3r2djxxehmd"
Content-Disposition: inline
In-Reply-To: <bb64eb67-293d-f294-ef56-355c8118caca@kernel.org>
User-Agent: NeoMutt/20230517
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--e6grh3r2djxxehmd
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 03, 2023 at 12:34:44PM +0200, Alejandro Colomar wrote:
> On 2023-08-03 03:44, =D0=BD=D0=B0=D0=B1 wrote:
> > On Thu, Aug 03, 2023 at 02:06:08AM +0200, Alejandro Colomar wrote:
> >> I'm packaging manpages 6.05.01 for Debian, and while updating the
> >> d/copyright file, I noticed some glitch.  You attributed erofs.5 to
> >> mtk.
> > I copied it from another file (probably tmpfs.5) then edited it,
> > so I left the header as-is.
> >=20
> >> I guess that was a copy&paste error, isn't it?
> > Above my pay-grade to categorise this,
> > or to touch the header on a file I copied.
> Yeah, but you could have appended yourself.  I bet you wrote something
> that deserves a copyright, didn't you?  =3D)
Never. I'm an avid IP hater and much more so when it means stuffing
brands into headers. I'd release it into the public domain if I could.

Best,

--e6grh3r2djxxehmd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmTLko0ACgkQvP0LAY0m
WPE/tBAAqqS+hZCD2aibOhs5yLN4PvHhe0UDQGdQGguXvpV1ISyMwnmX9Elwvzp1
5PJkLofw2teucbBhJKVxLI27cldGq7bMhZNcZObXlTGZUlsJZqb1geolpVw1keVU
27HbWRfPAQzGWBgUucCNyHsPSGTVQkP31fADxWQTRCIjG7t68TQvdEQajcC+zGkh
P/Yw+AJAjJe6t0nyWWF7+eLF/t6G+A7BGXtj5DBUNjfUNXSzZ0812D1uUbpKa54d
aMm51TQILWR3Z5ip2XbrOM2gH4pz0g4Bo6vdowf4mWRDFeXh4QxfxntEEH4sUGM3
aQXHX15mUqg5s1MEt5/cbSRZMFKU7OOKNwibg0snbP6VTQad/b9j9Y4i+el6p33f
osUlBRF2jIMxX26BzsYbnb3ADDLO8xvE+H4VU4ttpi/9I9VLssU9TKHpIMCt9b66
7h/hGySNFKJl4l7ZKAmvBaglDlqvTR9FKTPIF3WMlr03ViF77xKVVEnBR6wydCBA
3joZbR7Dqmdv6PrpVgBlMXSOJeAiobEJvQYHJy5sTh4z3zBaiZBSvr5U5JYNvRjV
Sh1B8iqwK0QqPEmsL46DShO3zGEYNEm443bh8GGVgKoGa9X+giTdVnE0y0cuG+AQ
s/BJOXr4q8c+Vd0v866DxOxL+OIh2R8RvjPySTD1LA5/eAcfZOc=
=9jJL
-----END PGP SIGNATURE-----

--e6grh3r2djxxehmd--
