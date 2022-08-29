Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8106F5A5742
	for <lists+linux-man@lfdr.de>; Tue, 30 Aug 2022 00:48:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229477AbiH2Wsm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 29 Aug 2022 18:48:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56114 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229451AbiH2Wsm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 29 Aug 2022 18:48:42 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id D8FAC9DB63
        for <linux-man@vger.kernel.org>; Mon, 29 Aug 2022 15:48:38 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 2126424A2;
        Tue, 30 Aug 2022 00:48:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1661813317;
        bh=hgQ4smjY2uBHQShwxFK2tYubgocDGE5ZqALv9boMX2o=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=iNL51jdw3pjm50B/ptkJXHqEdTP9kK7b0C4fALIbg40IE68lOv65zdPVpNrAHSsLS
         etHnf0x8zcjoziVvEprpcZXEdakbMpZfeJpu/M6j9CgjFiekv2DfK4kqDhWlqbbwlh
         r3dP7wP3w3GYuO0jt3udu+EAKS1drNDem4AbNGKtFtqdnrECrp10AVtR9e8B1dtwOg
         FK3psAQ2O8TP5J9h4qsC6ON5uYW83TECh+sPEgrxahEtjwWtOIFubJ2293GidTLgNJ
         u7tYZxJfM/2L0Qf0lWUS8KmhxG/oAsJW8PME2ymjJZwQ8SQahDhsU6ZFox9brsqJLl
         V6jFm73VTRIa1scSBKgZQObfHgaRusFvmAFi4L/JL7BznqXBZLI00uf44iCXic47yv
         BWURdSnVu6k0WVh0w4z4VDXg2lH3nJI3gNq0EwRl+Jgt659eJCn/rjE2mXm4GE0YUd
         VvfjvD40L66JwkQ6TcioFmN91caf+Y2Rzb/oVbXeInQL9f5K7XZsbsmIYNlkbZ/BH2
         aEnHGTRsYbhIsKxrbEV4Nd4VZ1YyQEPxYf4+VWrCR1QRf24Ic/23iH+Z6lw+Wrz3tF
         Q/Wj+vMeycXmLeMxvXugSC3aElJgfphJJxheNNxbRyssESyya2kQGt6JE9ShnBPaLw
         VhAXHuKXidIvAS5Ezq9mfvr4=
Date:   Tue, 30 Aug 2022 00:48:36 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] cc_t.3type, speed_t.3type, tcflag_t.3type: document
 all together
Message-ID: <20220829224836.yzjr4mz55vptvva3@tarta.nabijaczleweli.xyz>
References: <ad1134a85b71db33671385502931aa61029ffc44.1661809591.git.nabijaczleweli@nabijaczleweli.xyz>
 <3cbbf2e5-6213-198f-4cab-c6f42204d471@gmail.com>
 <20220829223352.dkxto5dtp4txted6@tarta.nabijaczleweli.xyz>
 <fd28f474-90a1-9f81-677d-f70ce604bd81@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="nv5nt4gc7yslb3dw"
Content-Disposition: inline
In-Reply-To: <fd28f474-90a1-9f81-677d-f70ce604bd81@gmail.com>
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        PDS_OTHER_BAD_TLD,RDNS_DYNAMIC,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--nv5nt4gc7yslb3dw
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 30, 2022 at 12:36:37AM +0200, Alejandro Colomar wrote:
> I just realized you didn't sign the patches.  Will sign them on your beha=
lf
> if you want.

Yes, please :) I forgor =F0=9F=92=80

=D0=BD=D0=B0=D0=B1

--nv5nt4gc7yslb3dw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmMNQkEACgkQvP0LAY0m
WPE3GxAAsWc2bYSEvzkk+cgmzkZAhXFZX68v3+W3aAlw7lMFoAb3n2K6U/z3oxWr
QxjcwCTXTLYONysnfMgVLekEIR4hn63wkaCkc3GXyg94DHk8hbonYFwAMEzwIbvR
IbkgT0WFNGi5egoozX1ZMdh0e1AUd8iTKW9JasWFg5X7jkY1OUGBfpvmh93FN8Y5
0M4WLneTInaDc2jwbPhqtsUfe/8RbK3uMrBfWvABSC9ENarcmuzTzxxXPDkMpiBX
m8EaB6RmuSAu67xKSIA/ggMTgg2rDlawhxsV2o3rd7E82dbt3yEVqIjmrJRMW8wi
z5Zvp5ajdobk9UfylK/z/3mt1Fr68QrJcsupmSulsrsyL8+JimAixpc9qO2utfIX
/6u1cSQBsrpfgjSruZwnK8iULDb/vKfvuttDwFuCJI+IxJCiGURqJK3j0GmxNsJ7
bqs8KKSa19weZvo5Oi3gEhg9HZn7ebuLB5/4JUfc+2Q0Cjz/3IynE+9lGwPui0Fd
d2f5RFX/YT2Yczy81ZnjecIinUyN7XBQiVaZYX5yYFsQlrrVNVc5LCj1wmo8Xfyw
WEEaykRejGHi39lYNOFSyo2yL8jxRtF1ULy63IPGMFuiidxE8gAx1YP/uvkSnQ6R
4Li6ypl1q612RoxxxShpfdlDcyFfQmhMTOfudve0RKbDMVEYaX4=
=johq
-----END PGP SIGNATURE-----

--nv5nt4gc7yslb3dw--
