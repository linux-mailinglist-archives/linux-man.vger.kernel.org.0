Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7A82277FEF3
	for <lists+linux-man@lfdr.de>; Thu, 17 Aug 2023 22:22:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353290AbjHQUWV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 17 Aug 2023 16:22:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1354810AbjHQUV7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 17 Aug 2023 16:21:59 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B81FA30DF
        for <linux-man@vger.kernel.org>; Thu, 17 Aug 2023 13:21:58 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 3CAF661F59
        for <linux-man@vger.kernel.org>; Thu, 17 Aug 2023 20:21:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9ED13C433C8;
        Thu, 17 Aug 2023 20:21:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692303717;
        bh=aEHUGocB3NkVtaLZemkII8/agKJ7+UZULJ0vwVgNZOk=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=MlBqMmeHw/4siOKUQHqwZmqIq3UvOvlwk3MnFCd9bX3lqOeMzLuPDwC+UCPjE+QJV
         YAHsnAitz48M/gLHhHWAm5rUJCyTkfL8yIiY+wg1eaHENmmJvSRvVwUcEn/vM9V5Vp
         hrkjL2tmqm+lJV74T/s+Xz9z/lIvI/69D7Tih03L/4HUM5HuD61hcyzTEZz9OkZzK6
         BskKSaVV0ielSJ2JoqkY/tlTFPNd4iQ2US8Kpp3NJ10h2Z8nZAwaceNJD6bji4Oj5B
         Xl5zB+XL7gRG164NIQwLZddKXRbNQkP20VxRGgSPW4pEk/RKVGYYno+qlAzrHOkLDs
         fmZZXYPu8P4rw==
Message-ID: <13895972-21dd-39cf-d7bc-98747c9a6aac@kernel.org>
Date:   Thu, 17 Aug 2023 22:21:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH] man-pages-posix-2017/man1p/dd.1p: added missing
 ASCII-EBCDIC tables
Content-Language: en-US
To:     Eric Blake <eblake@redhat.com>
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Brian Inglis <Brian.Inglis@shaw.ca>,
        Linux Man-Pages <linux-man@vger.kernel.org>
References: <084cb8c0074b11327c68fb60b9c5c6238eed7df1.1691960082.git.Brian.Inglis@Shaw.ca>
 <c68f4010-e732-6519-a777-2744eb057887@kernel.org>
 <20230813222035.a5ybcqbpnzlapraz@illithid>
 <033cf8fb-5c84-d9eb-a01e-caff597a951b@kernel.org>
 <eb4161c1-6e57-a9d3-a3c3-fed5db55f004@kernel.org>
 <34ywwugg3sgxlmyrnovuh2co5qbok2dk32hug4r2drfcu3bp33@g62hj2icprgf>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <34ywwugg3sgxlmyrnovuh2co5qbok2dk32hug4r2drfcu3bp33@g62hj2icprgf>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------y23LfwIKQRGggQSmE48p8XcE"
X-Spam-Status: No, score=-6.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------y23LfwIKQRGggQSmE48p8XcE
Content-Type: multipart/mixed; boundary="------------AmZcYzzjUBcO8khpE59UCIZs";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Eric Blake <eblake@redhat.com>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Brian Inglis <Brian.Inglis@shaw.ca>,
 Linux Man-Pages <linux-man@vger.kernel.org>
Message-ID: <13895972-21dd-39cf-d7bc-98747c9a6aac@kernel.org>
Subject: Re: [PATCH] man-pages-posix-2017/man1p/dd.1p: added missing
 ASCII-EBCDIC tables
References: <084cb8c0074b11327c68fb60b9c5c6238eed7df1.1691960082.git.Brian.Inglis@Shaw.ca>
 <c68f4010-e732-6519-a777-2744eb057887@kernel.org>
 <20230813222035.a5ybcqbpnzlapraz@illithid>
 <033cf8fb-5c84-d9eb-a01e-caff597a951b@kernel.org>
 <eb4161c1-6e57-a9d3-a3c3-fed5db55f004@kernel.org>
 <34ywwugg3sgxlmyrnovuh2co5qbok2dk32hug4r2drfcu3bp33@g62hj2icprgf>
In-Reply-To: <34ywwugg3sgxlmyrnovuh2co5qbok2dk32hug4r2drfcu3bp33@g62hj2icprgf>

--------------AmZcYzzjUBcO8khpE59UCIZs
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Eric!

On 2023-08-17 17:23, Eric Blake wrote:

[...]

> I can also recommend contacting Andrew Josey (ajosey@opengroup.org -
> admin) and/or Geoff Clare (gwc@opengroup.org - most active committer
> in that project) of the Austin Group, to figure out if there is a way
> for you to get access to that repository.

Thank you very much!  Done.

[...]

>=20
> Based on my quick perusal, it is indeed .mm files that form the bulk
> of the content in that repository.  For example, even if you can't
> access the repository yet, I don't think there is any problem under
> the fair use doctrine for sharing a snippet of a recent commit:
>=20
> | commit 7fad34c5f734d7a54c6a5fa8124baf819c2b8de5
> | Author: Geoff Clare <gwc@opengroup.org>
> | Date:   Tue Aug 8 10:52:54 2023 +0100
> |=20
> |     Applied bug 1741
> |=20
> | diff --git a/Base/Text/Functions/getlocalename_l.mm b/Base/Text/Funct=
ions/getlocalename_l.mm
> | index 13af2a5..339bfc5 100644
> | --- a/Base/Text/Functions/getlocalename_l.mm
> | +++ b/Base/Text/Functions/getlocalename_l.mm
> | @@ -12,7 +12,9 @@ const char *getlocalename_l(int \f6category\fP, loc=
ale_t \f6locobj\fP);
> |  .sE
> |  .yE
> |  .mH DESCRIPTION
> | -The
> | +If
> | +.Ar category
> | +is not LC_ALL, the
> |  .Fn getlocalename_l
> |  function shall return the locale name for the given locale category =
of
> |  the locale object
> | ...
>=20

[...]

>=20
> I'm not forwarding this email directly, but I'm happy to be a liaison
> to connect you with other Austin Group members.

:)

Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------AmZcYzzjUBcO8khpE59UCIZs--

--------------y23LfwIKQRGggQSmE48p8XcE
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTegVsACgkQnowa+77/
2zIxrw//THA3cJhL1urivkUgm7h7UiOOm7aaxJr1Kj2O951uvSL8ZNiPLYkAU4yX
VIyIDqtIxcEWvBHPeDkzBmEQ6fDKiKKsX+IS/YV+eQkNJUe9E6WPWweXeqzbYTkK
9daVPtkaKYw4HM7j5D5QZaa6tNNgYFTcDhUIv1hXLhJkqAOdHmmeBYXEKpzNrGNA
S0tG/g8TrY3A7KOn4fcP8MkxOy2ucfc9OelsF7SO4xVTBTpGuw4P/QN8CBmn3dSs
i7UjpQP2jxyJGo0QpwwiNehvB4pIyCF9KLz8uhJExjbZ1CLK3lrsOp2ldB9cCVXM
+NyQFBdNYaZ61EM1oV61rByp4Vdvy3CNp30FS6riI6U66ByolBB/Mi6f+Ml9rY3z
Fd7EDzr2GcYAPTOERfdh9If/xqVtaU+WIK0xNwYnBfwHOsvPlO+DDbhlznRGkEyI
9RL2eYGFVBGiM8Z0FXC6soDm63CvIHBbzOptcg/TuOwQGfoipzAeHEkbu9GcXfcv
CXVBgRG64E4sBtP0SDp1q8nVRTa1YGnUdA+8oAPFTawMyhPvUOMiIAMtbdT3ohLI
iZj+DnaMalnzItbIrFrAWif41mC1VnuSA1DV/gJ+Y3xYRTCY/roHgnESMQzxiqXP
oLlOPlQEQ1xBoZ4qm2bcbNMJN8wclAZNQGiY2uwo4Z4PPqTQJUU=
=X/Xe
-----END PGP SIGNATURE-----

--------------y23LfwIKQRGggQSmE48p8XcE--
