Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7894253D6A4
	for <lists+linux-man@lfdr.de>; Sat,  4 Jun 2022 14:03:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240994AbiFDMDv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 4 Jun 2022 08:03:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44148 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231638AbiFDMDv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 4 Jun 2022 08:03:51 -0400
X-Greylist: delayed 1232 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sat, 04 Jun 2022 05:03:47 PDT
Received: from palmdale.lirum.at (palmdale.lirum.at [88.99.186.141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6ADC81AD8D
        for <linux-man@vger.kernel.org>; Sat,  4 Jun 2022 05:03:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=quelltextlich.at; s=20150713mail; h=In-Reply-To:Content-Type:MIME-Version:
        References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
        Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
         bh=npdGDQPXRerA9sHkIJcS0t1cZXqaBv5h39VJprxoTFo=; b=Fa2yaIOVKpAEXUB/a24t8vcdA
        muzb5l7yoMPYAa0QbOGfr0P9WO1+7kDOSbNmPoi+Kh0WWhFeTWCV+WLkBYnbCIUPAZdrvLaXbD1nm
        eH2V7J9zHXFsr2AzJHJRWZ79DMfQFir7hXLrraPJWTSBUduaEsl8A1mgDvCSAAY9LfSic/wPnd70r
        3dsf3a5yDN6nQYkzKiszRQYl+p4MqUxeFIh389B42cpCHEN6TpvR1p+CbftSw6knOqrf9YbWLrLuP
        nk9dqWuvt8yIKAyxd4Bplzc3V3fIm41sqW/ppXDx3UD6/y6a8G/gCwwBQJUiKejVuJC/pMg95fkhz
        kni/WOcRw==;
Authentication-Results: palmdale.lirum.at;
        iprev=fail smtp.remote-ip=192.168.231.18
Received: from [192.168.231.18] (helo=localhost)
        by palmdale.lirum.at with esmtp (Sendmail 6.22)
        (envelope-from <christian@quelltextlich.at>)
        id 1nxSBS-0006px-An; Sat, 04 Jun 2022 11:43:10 +0000
Date:   Sat, 4 Jun 2022 13:43:10 +0200
From:   Christian Aistleitner <christian@quelltextlich.at>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Mike Frysinger <vapier@gentoo.org>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        John Marshall <John.W.Marshall@glasgow.ac.uk>
Subject: Re: Man-pages Git repository
Message-ID: <20220604114310.GA27475@quelltextlich.at>
References: <A165C0C4-6879-49AB-8CF1-C1258C3F8773@glasgow.ac.uk>
 <2d3cff38-ba32-b382-c043-397af12d286b@gmail.com>
 <YjjquYSCEnlFr0PJ@vapier>
 <408859e3-dbf2-09a8-e404-210f4280d90b@gmail.com>
 <20220322094950.GA3775@quelltextlich.at>
 <a3a53704-84fe-7fc8-55d4-46094dc38ef2@gmail.com>
 <8a672358-07d0-3a64-30b0-5e25a46f1b80@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="LQksG6bCIzRHxTLp"
Content-Disposition: inline
In-Reply-To: <8a672358-07d0-3a64-30b0-5e25a46f1b80@gmail.com>
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_20,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--LQksG6bCIzRHxTLp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

On Sat, Jun 04, 2022 at 03:26:41AM +0200, Alejandro Colomar wrote:
> I now have push access to kernel.org, [...]

Woohoo! \o/


> [ github mirror ]
> that the reason it originated is fading [...]

Agreed.
I dropped my github mirror of your personal repo.
Thanks for the heads-up!


Have fun,
Christian



--=20
---- quelltextlich e.U. ---- \\ ---- Christian Aistleitner ----
                           Companies' registry: 360296y in Linz
Christian Aistleitner
Kefermarkterstrasze 6a/3    Email:   christian@quelltextlich.at
4293 Gutau, Austria         Phone:         +43 677 / 633 47 998
                            Homepage: https://quelltextlich.at/
---------------------------------------------------------------

--LQksG6bCIzRHxTLp
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iQIcBAEBCgAGBQJim0VOAAoJENZuSqrKBYDKSDYP/1HrfAZYr4EQDWLW/VycMquk
KM/YylMZQXrY93dQEXqKfhQpOwYK+Kpg4KcisrIwC75+ePCVs9oHLyC4uPdnlNE7
OKvvX0js3uyd+G5jKvDDwaMRJyn52/4w4ZKOMfWAxD/s//d+2US6kPp/rL1fROEP
/T+gHFfaAgsdd6uJC9s6KQ5ZAG4RZWuN1tsN6uvf1yef+gnbErwZE0bZK0lyVfuN
W8eTTxjsa0v6KprDXIf5sOIPwdgaQ2nirxSKXMnIDg4ooYS/mgF/w1e6SgJsqwbt
mdtuS5sB1/ZnPpPunKa7SpDJ6oexWdXiUN34ryRMNhB5bNi9D5/IrnSimeUHa7+K
dAtl5lX8K3txQ3nwCZSKyGwL3cIJQBV48nnQ7SZrDLxd0q/4kr5ri8u/RGBtc6c/
Rh6uLwmTJt2HfY8ODxN59iSq9O3shBDa9Xdu5drgsQm7woMPHlWtddKYO+hlWZsg
2g2o7gVZZZU/CK1SxszHKH1qZNTF+g8qa05AwfhTdcUTPr7q562KQL0x+YK+aJOr
dRXz5f/bD+VRk4sN3vrvK4uQxD+3lk+mtDVJblMJEhiUiHYJho1W4Prn/sBmJSck
aDgUPiG5ODUGrRKRSb0pNod6pbF2NPNlWEcKTqKzOhJmWuQOIi/3VC574tahXEG0
KtgrniCzNaUFCiYdn035
=Kr0O
-----END PGP SIGNATURE-----

--LQksG6bCIzRHxTLp--
