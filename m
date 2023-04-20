Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6F6C96E96B8
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 16:13:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229769AbjDTONY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 10:13:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38644 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229470AbjDTONX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 10:13:23 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 771323C30
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 07:13:22 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 2BF2A61F0;
        Thu, 20 Apr 2023 16:13:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1682000000;
        bh=Uji6JehOeHRJyiKIfR8ten6zylpDzFe0BS13UgYCq48=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=XHK5yszTzvnCnDWs95j4Cra3SIejRkAkiDgjxpJUx9AMMRWJC3wes3YdMspGyMRvL
         fHAi5I5Oh532ejN3G6HjDkVtjPgC8j5NokbpStynpiFT8KJdBmsrwZ00Eo/P1uYdx3
         fEuhNEnMMpzab3Ip3EhhNWMtpqPXeV0aEVSFIebX+V3dGY7F0JCXChg/zWxoN/OHvZ
         6v2Gg/2EAtHuIS+jX4SYF+vSg/SgB14hZbqS7KOlZvujwitVb+dxSsHHnSCwQfY4Rl
         scsq7NMBfygxsBf47Xsli+gzYvTRkq5yQ3SFViC1I5oCzO5NU2XXNX+YYsJxRK0Tm+
         1EXVGLKHIgZXA==
Date:   Thu, 20 Apr 2023 16:13:19 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v3 5/9] adjtimex.2, clone.2, mprotect.2, open.2,
 syscall.2, regex.3: ffix, wfix
Message-ID: <qzjivps3swm2epxrojx2kmxxb3x3bjcd2wipeudqtvkfjzjiiz@bdz4gc2r2gef>
References: <47fdd2db-cf65-2ffd-1b33-d1f8e3a62b5b@gmail.com>
 <45hc4nxirbxf5oe23noyfpg4w24vtwfpnye5y5sgozy5j3i22a@5hueh33r4bos>
 <d1d90b61-9d3e-e124-c0fb-19d426540416@gmail.com>
 <e320c8d0-aea2-02d8-674f-a92171dff98c@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="2pq3r64udxntvtei"
Content-Disposition: inline
In-Reply-To: <e320c8d0-aea2-02d8-674f-a92171dff98c@gmail.com>
User-Agent: NeoMutt/20230407
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RDNS_DYNAMIC,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--2pq3r64udxntvtei
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

On Thu, Apr 20, 2023 at 03:03:24PM +0200, Alejandro Colomar wrote:
> >> diff --git a/man2/adjtimex.2 b/man2/adjtimex.2
> >> index 523347de2..40b05cb0e 100644
> >> --- a/man2/adjtimex.2
> >> +++ b/man2/adjtimex.2
> >> @@ -90,7 +90,7 @@ the constants used for
> BTW, another thing you might find useful is this:
>=20
> $ cat ~/.config/git/attributes=20
> *.[1-8]* diff=3Dman
>=20
> And then in your .gitconfig:
>=20
> [diff "man"]
> 	xfuncname =3D "^\\.S[SH] .*$"
That's great tech, thanks.

> You may want to use a regex that also works for mdoc(7).
mdoc uses .Sh and .Ss, so:
	xfuncname =3D "^\\.S[SHsh] .*"

Best,

--2pq3r64udxntvtei
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRBSHwACgkQvP0LAY0m
WPFaBRAArHXottw5k6bX3NFggjXYsHflzdWI+6sS57yUxb2P/RQmGIjTHUZ66t1C
bk1JgVrWjzGyUUYlC7AR3NvH9lbc7jslftHwZJ4WmlQK9HkXadzaO4QW1TRFy6J3
V/GHyYrTgDxbLmX9wy0Uw0Y/+nLI+2xasw7Plt+DnoYdCE5F1ean1Gl+m803U9QX
LgXWveoMDYXbXs48Vw7Jo8dL5YE5pXhLHObJwLsLs6CpNJWRNrtSkK41u39CdyLc
QALAHzXwGa7VSSikPHLQzbziFjmGBUupDH+AvihpAXhlEXnH8bVd4ru5MefnMQGA
37OcmjJYHmZw3g7DvDIxoP6Ok/PsM8IgBUYzNZe3PHURCOdV7hgVPvi960NeI+lN
8TDYjHFx+cAA5XJAI3TzLCnWF/J5CrnJ0Vo2+IX0Qox9Ud2touF9WF+yb384cY4V
aL79e4MgCygbmFcHnrSSF8Cq6XXCcN8LrGAnKPtzu5YVFCcCVySOCQuTiwRfX4cW
0U5RfiSvATGaDHMLAzD7ASpNKGR0mr0CcMuaK0zNqHhqnoIItgKt1urKhcK7X7So
x5e1lnvWsowHXhdST/W2Hlv/nIjnNmuvgvRbFlBVghi7U6YMSwVvUP4zcE9jM281
r/ftb3vZ+Wkg5KmZVs5GjK004SaQqUEAXJMa8F1ntm5kFSCn/JY=
=Ij1k
-----END PGP SIGNATURE-----

--2pq3r64udxntvtei--
