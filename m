Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6DF58779BB0
	for <lists+linux-man@lfdr.de>; Sat, 12 Aug 2023 01:57:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234270AbjHKX5F (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Aug 2023 19:57:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60006 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234177AbjHKX5F (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Aug 2023 19:57:05 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC4141719
        for <linux-man@vger.kernel.org>; Fri, 11 Aug 2023 16:57:04 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 59FCC645F3
        for <linux-man@vger.kernel.org>; Fri, 11 Aug 2023 23:57:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1DC7C433C8;
        Fri, 11 Aug 2023 23:57:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691798223;
        bh=Hk8F5gtAz/l6KsXR/STtWlrDlfCdM1HWSkhbnrF2wDM=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=Bj3SwB2YlalFkrZSX91WREDLTE6E9LAUFvsdmBniEhcbbO+H/F9TtATLbIrVdDB1+
         z07xhXkD2xtnDqGdUfJ4EnTa2WQSsPgKCDIF6jgrr4WGMaWdhprc2KiBB5WiowHoYm
         cult2nWlhT7T5YNu8wVza2xSx1jo6HQroBhLizZO11l7t+nmXhzy5wGj1jLauwozmG
         hxorGw8OcGhoLZdcUQDWH92IpEdRqQx7ChRo1buhr6IYXNKJkW6lc3S1kwVDLovJdC
         5nUszhrrw9uBZKOeV6Oe/aN2VVvZzg2v8fKqmUEn0GFi4qNPclvycrHkkJZYSzc50i
         jAq3q9d29/4eA==
Message-ID: <3b2be14d-4b79-9cb2-c3ef-610a5a6322ad@kernel.org>
Date:   Sat, 12 Aug 2023 01:57:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH] scripts/LinuxManBook/gropdf: use symlink instead of hard
 coded groff version
Content-Language: en-US
To:     Brian Inglis <Brian.Inglis@Shaw.ca>, linux-man@vger.kernel.org
Cc:     Deri <deri@chuzzlewit.myzen.co.uk>
References: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------JmyTaK88fTXt1F08z6nQiTWD"
X-Spam-Status: No, score=-8.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------JmyTaK88fTXt1F08z6nQiTWD
Content-Type: multipart/mixed; boundary="------------XYw7UK0EEioglUIcYgsjPhU4";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Brian Inglis <Brian.Inglis@Shaw.ca>, linux-man@vger.kernel.org
Cc: Deri <deri@chuzzlewit.myzen.co.uk>
Message-ID: <3b2be14d-4b79-9cb2-c3ef-610a5a6322ad@kernel.org>
Subject: Re: [PATCH] scripts/LinuxManBook/gropdf: use symlink instead of hard
 coded groff version
References: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca>
In-Reply-To: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca>

--------------XYw7UK0EEioglUIcYgsjPhU4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Brian,

On 2023-08-07 17:01, Brian Inglis wrote:
> man-pages custom script gropdf has hard coded groff version used in fon=
t path
> groff provides symlink current for version to avoid the issue; use it i=
n gropdf
> specify failing font path used to open font description file in error m=
essage
>=20
> Signed-off-by: Brian Inglis <Brian.Inglis@Shaw.ca>

Deri removed our gropdf(1) copy, so this patch is not necessary anymore. =
 :)

Cheers,
Alex

> ---
>  scripts/LinuxManBook/gropdf | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>=20
> diff --git a/scripts/LinuxManBook/gropdf b/scripts/LinuxManBook/gropdf
> index 8474e583f57d..fb205395015b 100755
> --- a/scripts/LinuxManBook/gropdf
> +++ b/scripts/LinuxManBook/gropdf
> @@ -58,8 +58,8 @@ else
> =20
>  my %cfg;
> =20
> -$cfg{GROFF_VERSION}=3D'1.22.4';
> -$cfg{GROFF_FONT_PATH}=3D'/usr/share/groff/site-font:/usr/share/groff/1=
=2E22.4/font:/usr/lib/font';
> +$cfg{GROFF_VERSION}=3D'current';
> +$cfg{GROFF_FONT_PATH}=3D"/usr/share/groff/site-font:/usr/share/groff/$=
cfg{GROFF_VERSION}/font:/usr/lib/font";
>  $cfg{RT_SEP}=3D':';
>  binmode(STDOUT);
> =20
> @@ -690,7 +690,7 @@ sub LoadDesc
>      my $f;
> =20
>      OpenFile(\$f,$fontdir,"DESC");
> -    Msg(1,"Failed to open 'DESC'") if !defined($f);
> +    Msg(1,"Failed to open 'DESC' in '$fontdir'") if !defined($f);
> =20
>      while (<$f>)
>      {

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------XYw7UK0EEioglUIcYgsjPhU4--

--------------JmyTaK88fTXt1F08z6nQiTWD
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTWys0ACgkQnowa+77/
2zL5AQ/7BxkMx+KSjTbbW6i4g/EvqrvJZrBpGSQzsCDNjA0hbCmq1d63M9VvOaou
+3jiv8XHxWWSV/ntQfi12RoQSQ/qH+IfZS5Sc2Ye1iGxCCTF2IjqoMY3S1yaxqMI
zhBloUtaTAL5Nih2esP0x5pbxu8PEsQqE7H/5BSaVzurppi3fu+MkqW8tSL08SMc
xVJkTel/ZsN4h3VgNtNY8yVRgKtq/XvJUrEfu5/w01AguOKAhS/v84Ev7hcokg6E
66F3V3Ftx5cmzolNPCLKix7+Icjb6f1qw6yo8/ZCPfKT8HcyA9z+LQ8lhdU6+aCp
Lc0wu68bcoOLx2SZ6zXVo3hBe1Pe/JIApn2Mb73jehAmVwOc1unD8aHq4a2lNQb+
Avfz5TDVAoQUNO95p+BNddw2Fm4Px06YrmWjZ70NpPXdAYqLhnusVFflCbsSSF0b
Y62cqB8ZEP6WMlXqgJtbAOXZtbO1bgNBUtrDtSfOdo0wpjV/RE03EvScQRIxQtKp
jfgbAMrZZW8QsC/gpRo44X74+VNsgdKanXXrApjDbbrZMCCJjwVPvttmAmm4Ru6d
dYg7HnjwOSJgRAN+yd0NRQxSu4wQKZ1DQEum4smmw2v9PSXmbAxF+VFCzmQ+hIg6
hjvTLEtbzsN7p4sAvymYxt4jlpaxT6MjdOFsU3JkVaREh6i73lE=
=7VfU
-----END PGP SIGNATURE-----

--------------JmyTaK88fTXt1F08z6nQiTWD--
