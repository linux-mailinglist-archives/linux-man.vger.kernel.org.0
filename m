Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 06E646D34FD
	for <lists+linux-man@lfdr.de>; Sun,  2 Apr 2023 01:26:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229452AbjDAX0o (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 1 Apr 2023 19:26:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229448AbjDAX0n (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 1 Apr 2023 19:26:43 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id E6E213C3E
        for <linux-man@vger.kernel.org>; Sat,  1 Apr 2023 16:26:41 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id A06265218;
        Sun,  2 Apr 2023 01:26:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1680391587;
        bh=coTCVMjthZsFj1/MF5d/84T8RvI9Rjjso5lkDbWW+co=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=OJJ/HT1ZAHUXn9t2moZaNAFj1hVEFOUr71zkrAvbsbXXVVAIzVT3mQNMqDWHy3Enp
         HJhhLHmbtF7C8NH9XPJDhGddoYSUuSY9Nv7mCMP2UR5qAjKyc96Y3KFg/Uos334zr1
         Te7WgaDyAU3DeKtmHvwPyVxKu6Ep77p54RbibCenWhtjMuW4D7DoN43tnrWyWobH8C
         hbyfdWb/Ldn007g+KUlydEQXMAxrXrWjtjhHh/HNXeh5rX86pTRxRSxz9sYDPUq7HX
         GGcORlQzkmoxtpjAFKtAQdvKbjaz7xGqgBjAgir+jaZAhaozqQw4lI0SGitrgTLd8E
         36WDW+LbpXFXg==
Date:   Sun, 2 Apr 2023 01:26:26 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
Subject: Re: [PATCH 2/2] sysctl.7: create as .so man5/proc.5
Message-ID: <a6w73aiesdbkrfv336oyvqg4r3mg6jti3lmqymcmnid57u5g4g@iltxswmiebf4>
References: <792eaf9c-f43e-adc9-c7ae-b1ef9f28a7bf@gmail.com>
 <5d8c054990e567bdc9a4745c63eacedee4f22c97.1680300226.git.nabijaczleweli@nabijaczleweli.xyz>
 <7818bd3c-0351-a738-fd69-14b59838cbeb@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="6zcldjtgk3plhtx6"
Content-Disposition: inline
In-Reply-To: <7818bd3c-0351-a738-fd69-14b59838cbeb@gmail.com>
User-Agent: NeoMutt/20230322
X-Spam-Status: No, score=0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,PDS_RDNS_DYNAMIC_FP,RDNS_DYNAMIC,
        SPF_HELO_PASS,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--6zcldjtgk3plhtx6
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Apr 02, 2023 at 01:04:37AM +0200, Alejandro Colomar wrote:
> On 4/1/23 00:04, =D0=BD=D0=B0=D0=B1 wrote:
> > This way "whatis sysctl" shows the list of sysctls and documentation,
> > in addition to the syscall and program. Indeed, the latter two aren't
> > all that useful without the former.
> >=20
> > Not a single concrete file, and it's more of an interface =3D> goes in =
7.
> How about a SEE ALSO reference in the sysctl(8) page instead?  I had
> a look at that page, and it hints that you should look at proc(5)
> --it mentions /proc/sys/, although there's no explicit reference to
> proc(5)--.
Sure, forwarded as
  https://gitlab.com/procps-ng/procps/-/merge_requests/177

Best,
=D0=BD=D0=B0=D0=B1

--6zcldjtgk3plhtx6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmQovaIACgkQvP0LAY0m
WPG7aA/9E4n1v/1Z1e/bn+vSUkxWECl4/ZQOQQzA8o6j9SbhfFtKKGINukdEoxfq
tTZ30fFSNUzWOuoC/fSVHtH4g+MwjLnXYYNt3aQzQBAZKKV/s6P1WVDgJwrXZvJZ
SRXKboSGW4Ua0c95AC5rhJqDh0ZauX6MTr8fLhTaFPsFYzu6Wj21ZSErsnVpG4gx
wY3APWU+s8+N8ps77Dj2TN6zuLBnOBFjRyGgtrDeXml3AssWS0H3h+0xEk1VlPKE
P+ZVXmItaYOZYarhWLRy5GLHoBKLgXotcBTFXRNorn2wWWv26Zn4megeOHx8H5xU
aoRT/vd84MlMUHJFG3IOXGkiJs23ttCjp2Z6SCaNcImAqveU8cD/3Z6cZSRMldmY
Ifvr8yZGZF4ztX4P4jvgfR+Q7OkRWTuulbJe3gGWbj2TXB4R+DQyJRsBj2hmnlh/
eqILNH7ubyXRhJcHzxpeW2TdF+eGfYOelva5KeUY+nHIUH/YW+qs5FpZMhLjAkRo
T0Ftqrof56lmreNFwFUv54/ThpC2Zp1OF2kdOE2XqIAvN6VIgEgsCsvIu9VUEuld
IclZVll1kBhy2zLoIqiPmWOJlXFz7CyJxMHuh+kVwv9SVY/iHUoEJJ+gCLtieivX
PkiD/uqPBNCrzQw6eFEfoOCk+vg3ckJSN/5/t7t3WUDJnEBHinI=
=BIX2
-----END PGP SIGNATURE-----

--6zcldjtgk3plhtx6--
