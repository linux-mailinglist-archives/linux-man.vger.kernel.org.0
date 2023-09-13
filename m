Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1971079EDEA
	for <lists+linux-man@lfdr.de>; Wed, 13 Sep 2023 18:03:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229516AbjIMQDl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 13 Sep 2023 12:03:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54886 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229441AbjIMQDk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 13 Sep 2023 12:03:40 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8CB4990
        for <linux-man@vger.kernel.org>; Wed, 13 Sep 2023 09:03:36 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ACB77C433C8;
        Wed, 13 Sep 2023 16:03:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1694621016;
        bh=3UNiPCU4mrRk7ZwWa3psmd6m+bX99nv956JT41SPwb0=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=VEoEo82Cvix3S/6Qa4t/wRgqwpSxaINck0u+y53LOTkvB+G16+OIRVe8ktU8xguLT
         aTxR41xwOxHfYiM3MgY9zwpOh7tSUV3zvs/6yULgAuYJz+uYEBveoERZNCnQ1lkc0E
         VBOMWBOY8MqAaBCCPNTu6raA4hklVswicAbYWvr7itAnInBxpu/MdE1vclUQOKFQJh
         8TILaq+RMcX2wrmn3MREXGZ0k1gUiW9VR0cGAbCgK1JFGBJidqbn0bqdRpW/X/WWOd
         fiSQJB2CYH2t16uHbMkpcHGIS1DoXdL9nshP/f8MJSKpPQsD0FiCuwJSQkCUyzutSp
         YcxPehmvdsgXw==
Message-ID: <669cf95a-625b-43c4-a99c-183067fb931b@kernel.org>
Date:   Wed, 13 Sep 2023 18:03:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] popen.3: wfix
Content-Language: en-US
To:     Tom Schwindl <schwindl@posteo.de>
Cc:     linux-man@vger.kernel.org
References: <20230905121822.17672-1-schwindl@posteo.de>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230905121822.17672-1-schwindl@posteo.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------z2V604pEohXsOSFhy0EOeXuu"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------z2V604pEohXsOSFhy0EOeXuu
Content-Type: multipart/mixed; boundary="------------LLZaGFu03fJ53nQRE03a3N2a";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Tom Schwindl <schwindl@posteo.de>
Cc: linux-man@vger.kernel.org
Message-ID: <669cf95a-625b-43c4-a99c-183067fb931b@kernel.org>
Subject: Re: [PATCH] popen.3: wfix
References: <20230905121822.17672-1-schwindl@posteo.de>
In-Reply-To: <20230905121822.17672-1-schwindl@posteo.de>

--------------LLZaGFu03fJ53nQRE03a3N2a
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Tom,

On 2023-09-05 14:18, Tom Schwindl wrote:
> ---

Patch applied (with the sign-off).

Thanks,
Alex

>  man3/popen.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man3/popen.3 b/man3/popen.3
> index 533561d60454..9530acfaa217 100644
> --- a/man3/popen.3
> +++ b/man3/popen.3
> @@ -188,7 +188,7 @@ before
>  .BR popen ().
>  .PP
>  Failure to execute the shell is indistinguishable from the shell's fai=
lure
> -to execute command, or an immediate exit of the command.
> +to execute the command, or an immediate exit of the command.
>  The only hint is an exit status of 127.
>  .\" .SH HISTORY
>  .\" A

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------LLZaGFu03fJ53nQRE03a3N2a--

--------------z2V604pEohXsOSFhy0EOeXuu
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUB3VYACgkQnowa+77/
2zIKqQ//bPO5mPUWr0u49i6RpSIyNvzhoBF2S6UTvQi9dVrlg0X4H6xgw/kUS7jx
XKder/Of0grN35u7DhYZLS9RkOlpkNIi3ln+8O4FXKy02PUSS7i6Tochb7VUsHMq
tN511RarEkmkHEDcjm8v1Zrqc9DohnG2ukeBLsZD9r9TpJhjROpm53Wv1zIouQuv
sQMEEL87vQl76CwPkTI/5JMhqYvHwbnMQ4iGANT25LZsZW0R2/jH0+nNuIQlpNtx
24DbwIW/Fvc0LxDp5Bu7tjI4V8rJXsSrALUPO+7jBR46J/aSyBAra/1p+gkpKZEp
PzO4Tbm9FmebyDvWnp3DMsbsYzMenk0EtrlnT99OSivkUV93OZNXA8nLYXw9gysC
OZn7w2FDOtpKttosWRI/lM4PyRwOR+CzhFR0W2xpLu1j8VFWMY6cqdxCwaDWX4RP
QOr7N44VGWGgZoqniNMxe1kSqNhhvS4P/kJFGHLQVOCGL7CtKXlws7tRlv9rrstJ
whyGE8QCbJ2tOHG0NYMfzgBDn7lrc3U7MannHa0ku16sjistILo0ZjPPrXPhHuIk
wFQGYPBgUzERCK2sn/B9W4KxSbayU77uWB5vQT7JsbjrysU6543qGGT9MzmP7jQy
kCup7KbwHG6isfUqXuilklEoyaSl7T3xiONdiBJhRco4TRKZoNI=
=SSfF
-----END PGP SIGNATURE-----

--------------z2V604pEohXsOSFhy0EOeXuu--
