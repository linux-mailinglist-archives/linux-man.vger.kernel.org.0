Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B3D2C754D24
	for <lists+linux-man@lfdr.de>; Sun, 16 Jul 2023 04:22:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229787AbjGPCWX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 Jul 2023 22:22:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229460AbjGPCWX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 Jul 2023 22:22:23 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50209118
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 19:22:22 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id DDC9160C23
        for <linux-man@vger.kernel.org>; Sun, 16 Jul 2023 02:22:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC12CC433C8;
        Sun, 16 Jul 2023 02:22:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689474141;
        bh=T30azCvxi678W4R3aVqWhXY0dvsuNO7E35XZWrYczjg=;
        h=Date:To:From:Subject:From;
        b=F1s85asLUxVC72BmNsI2J7SnyjM9eC4q1fSJix6AmsiAb8ne5+Lw21oo2QGHhyuAM
         iIfVQNMoXMf3j61c/+jAryY9P0tQb0qEZrdED7l1x/Aoyy1NCQetlYMCeoItp+Ll7H
         NlKboDyEvF13Ewy4304TtPLP5JnLNlGe3/q9Cw1jOy48UtVlJbtQsaYH5NEwFxi+mD
         rzH2xdd4FsP10mci+ndDUbvwSjpHngq0Vl4f5Ah0DAjqqEUbHGydWIWzTtGyjfsfcP
         ewHsj/MhytUPIYjJ3uhJhJreJR9LQsZN5KSckPGKqLI62ChF9LKnWEo0SBwpubNxJa
         RrAR+UScH/3Vg==
Message-ID: <7111dade-2e26-eaf6-6ecd-13c3111d2b15@kernel.org>
Date:   Sun, 16 Jul 2023 04:22:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US
To:     linux-man <linux-man@vger.kernel.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
From:   Alejandro Colomar <alx@kernel.org>
Subject: Replace \f where appropriate
Organization: Linux
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------OBFCmHds7Y03pLiEb3cc8Nrz"
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------OBFCmHds7Y03pLiEb3cc8Nrz
Content-Type: multipart/mixed; boundary="------------pZeCf6XEiXQEfenI1vIPhAib";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: linux-man <linux-man@vger.kernel.org>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Message-ID: <7111dade-2e26-eaf6-6ecd-13c3111d2b15@kernel.org>
Subject: Replace \f where appropriate

--------------pZeCf6XEiXQEfenI1vIPhAib
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

As you may have noticed, we're now using the recent SPDX tags, which
were added in a recent SPDX release.  Next plan I have for the project
is to stop using \f escapes where unnecessary.  I'll start tomorrow,
and plan to take a few weeks.

$ grep -rn '\\f' | wc -l
4705

Branden, since this may affect your work in scripting the change to
start using the MR macro, I'll keep you updated about it.

Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------pZeCf6XEiXQEfenI1vIPhAib--

--------------OBFCmHds7Y03pLiEb3cc8Nrz
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmSzVFoACgkQnowa+77/
2zIZDxAAqRImoCGO2AQkIYumqbIog91mdYJOEM9XVg963NnNzHoLu2jqAUZjKB0A
xKUCgrAL41nUhKYM8r5hhHumycEKZrcX1tDsRktLN7ywgRlhuKrt09PPpwZrCLSL
7TyBom7w6wikyM5KzsO7DKNW2MuUntKQTbqA/pB4puPZ/4I9TkSU9JskPWx630sG
T6H+DN6uR1RPlTDzFYCvCqyil4sABOkzyH4dqc5nS+xcX/q2CCYQK5ThgZTcWae5
urop+yrynQ9yOodsEBlCaUV07fPPgS6N++hVxTn3goYGehf1vy35JJAIx9nPF4Uv
sjMZQt2gHLSSG87wRrlegXQB5RDM7fvyYzwaLirBBc3nEf/ccJwctkEPZt5KF4L4
th5tl4nptUsuEYH5LjhSmb2xufkVtcUM7o8y+Ze8nGQmJbt+P6c6I9FUglaow0oY
j+fVfwod4HllP+lbljAvw9sYtncjXisqS66G/o0MFj2ersPyLSCzzHYm+AjAU7Ev
4MMgd7hCOo/oOGpl3MSfJSdfmt4OCW94VknF0lbVzrjjbfzTA+kmZbB1jUym+5Nz
4j4KJQGz8a1Lk4Pan+GcGBTtiADdiEA0fddA/54U15+/qEj0ifPD99J0uXebaHoZ
T5+loQk0v9pG5qHuHeKBFif/TxVrN/KydQ7ElAAAPbpUAxQLBFs=
=I5fF
-----END PGP SIGNATURE-----

--------------OBFCmHds7Y03pLiEb3cc8Nrz--
