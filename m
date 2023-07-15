Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A66557549A4
	for <lists+linux-man@lfdr.de>; Sat, 15 Jul 2023 17:11:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229852AbjGOPLm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 Jul 2023 11:11:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58620 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229815AbjGOPLm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 Jul 2023 11:11:42 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3076C2D55
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 08:11:41 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id B6FBC60BB9
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 15:11:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 87443C433C7;
        Sat, 15 Jul 2023 15:11:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689433900;
        bh=dg9NzfHVQS+5+7E/6l9y1YW2QYsR1vBn5kV+ygJV6q0=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=jxsMqJnskg7sD58C0kkfAIU3P+SAvAwuveEiU8y/qLtXLQRnNF6Pl0BTLQhZ1FAUE
         zAdUt0UOC/GzwYJ68fHekePwfwSKo8ls4Zb8M0NS8s/tB7rXddO6QPcIx5vxrzTOxG
         RuNJIzqJUfaIDXzZcW7fZb0ydrn9CdeY8kRSRsd1Fk7+cGalD5SVjHztd6X77A8AnL
         G40JY+gEenQirWTew/BZsFS2Ksbm2qbmnTgvDXLj5P+TCdRbMQ0ve/TZNdIUP5j/it
         bGD+OkflIe/IyfUDQUzTT/PbfBgV6dMiMSguHiOGN22vM+nsHdp0HcbE2KeYeU+vg9
         Hy7ErwRYvzXzg==
Message-ID: <0f1a0d18-d89d-0c1e-229a-a057e5c77b6a@kernel.org>
Date:   Sat, 15 Jul 2023 17:11:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v2] pipe.7: document read()s with O_NONBLOCK
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <ff0e5304-2571-2f83-52c6-c07dbed65d3c@kernel.org>
 <fomznwcpuyco5gc43fipa6tve32yh7rhtzjfsj3ivpmnmmvmxv@gs52k2jhlflu>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <fomznwcpuyco5gc43fipa6tve32yh7rhtzjfsj3ivpmnmmvmxv@gs52k2jhlflu>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------yb96r0ZX60KvTg19l8nR36ul"
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------yb96r0ZX60KvTg19l8nR36ul
Content-Type: multipart/mixed; boundary="------------VAIK2N0RkB0bYCKRGI5Z722J";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <0f1a0d18-d89d-0c1e-229a-a057e5c77b6a@kernel.org>
Subject: Re: [PATCH v2] pipe.7: document read()s with O_NONBLOCK
References: <ff0e5304-2571-2f83-52c6-c07dbed65d3c@kernel.org>
 <fomznwcpuyco5gc43fipa6tve32yh7rhtzjfsj3ivpmnmmvmxv@gs52k2jhlflu>
In-Reply-To: <fomznwcpuyco5gc43fipa6tve32yh7rhtzjfsj3ivpmnmmvmxv@gs52k2jhlflu>

--------------VAIK2N0RkB0bYCKRGI5Z722J
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2023-07-09 21:45, =D0=BD=D0=B0=D0=B1 wrote:
> Which don't behave like you may expect them to.

What is the way that you expected or might have expected,
and how does this differ?  I'm curious.

>=20
> Quoth Issue 8 Draft 3:
> 60746  When attempting to read from an empty pipe or FIFO:
> 60747    =E2=80=A2 If no process has the pipe open for writing, read( )=
 shall return 0 to indicate end-of-file.
> 60748    =E2=80=A2 If some process has the pipe open for writing and O_=
NONBLOCK is set, read( ) shall return
> 60749      =E2=88=921 and set errno to [EAGAIN].
> 60750    =E2=80=A2 If some process has the pipe open for writing and O_=
NONBLOCK is clear, read( ) shall
> 60751      block the calling thread until some data is written or the p=
ipe is closed by all processes that
> 60752      had the pipe open for writing.
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>
> ---
> Killed the "oddities" line. But yes, I'm sure.
> /I/ had the luxury of knowing to go to the standard,
> other users will give up.

Ok.

Cheers,
Alex

>=20
>  man7/pipe.7 | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
>=20
> diff --git a/man7/pipe.7 b/man7/pipe.7
> index c3e06bdab..91554fa3c 100644
> --- a/man7/pipe.7
> +++ b/man7/pipe.7
> @@ -56,12 +56,19 @@ .SS I/O on pipes and FIFOs
>  .BR write (2)
>  blocks until sufficient data has been read from the pipe
>  to allow the write to complete.
> +.PP
>  Nonblocking I/O is possible by using the
>  .BR fcntl (2)
>  .B F_SETFL
>  operation to enable the
>  .B O_NONBLOCK
> -open file status flag.
> +open file status flag or by opening a
> +.BR fifo (7)
> +with
> +.BR O_NONBLOCK .
> +If any process has the pipe open for writing, reads fail with
> +.BR EAGAIN ;
> +otherwise\[em]with no potential writers\[em]reads succeed and return e=
mpty.
>  .PP
>  The communication channel provided by a pipe is a
>  .IR "byte stream" :

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------VAIK2N0RkB0bYCKRGI5Z722J--

--------------yb96r0ZX60KvTg19l8nR36ul
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmSytykACgkQnowa+77/
2zIWtA/8CkVV9Ioud08utEUnyVcolNiQWk1d/lBpagUh5PdJyM8KQOUlY02weNgI
/AtiEz4v/mrnQILuOlNhJcUfPvtSEx5QC+pMVBiHuIxzbCFHorbsfvwotEjkeXX2
1SMugsEd8kkBiQOA6iAaalc7iYE8UkBiOcKhf/B7Xe490dbYlD5VvrU7+Xt91pQO
AoJArjRQSKTkYPrVmW6EfMu/el9tcV/d7pCSG7CZ0FzwHEO3BdFVLnYDdk3dhl8n
7EWq9/Rgt91bvFjGM938VRhPgw3zN9jtmnFaVQjicgWJ4tBTOuz+dn0XNnyWMFuz
PBljiE/0Eq4PwRDOMbawtXdcuINu/k2e3/0gJT3H2bY7q/mph0ppfJvR+BLwXUzH
y+gANmOUZuo9w2dw+bF8FIbCWZDUSyThaiBmqrn2jsV9CUrviHUNgzykdapzk1lL
992OnlBVBdOB8j2zC93nYZZLzlX5AL75VqAvkmdU6QCMeMoUZNQgs7EZDoI7AZVx
4re86IOejMtMgkoi+qQV6guhQ8EFWp17z+fCsVdnU3oeSAuB6nVYoSDM3jMbcXfi
8rF5l7uoBjIZ1BzFhmYRaHhlQA3bCOM2dUky19YZSC1hjK4pVgEDjdhG9JiRv6W8
4x3dvysucgea4ae/UDGBVkxAEI2ux9ck9aUQajUm7IuWOVbGQKw=
=MdXN
-----END PGP SIGNATURE-----

--------------yb96r0ZX60KvTg19l8nR36ul--
