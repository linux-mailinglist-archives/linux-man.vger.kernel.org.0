Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8F22A77A1A6
	for <lists+linux-man@lfdr.de>; Sat, 12 Aug 2023 20:09:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229451AbjHLSJE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Aug 2023 14:09:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229446AbjHLSJD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Aug 2023 14:09:03 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B55C710E3
        for <linux-man@vger.kernel.org>; Sat, 12 Aug 2023 11:09:06 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 4F74F616A5
        for <linux-man@vger.kernel.org>; Sat, 12 Aug 2023 18:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A95BDC433C8;
        Sat, 12 Aug 2023 18:09:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691863745;
        bh=vP24RWW4nj9PL+zDxOLjN+LI7SS/yNNcOM3S/5DX9to=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=ZuHo7w6J7uUC5G4AXRTQV+30KLsyM8RlXYxEu9dUvh/CTON/XQVllDzI1ad5qAnk3
         REwikHwGQRTy53apUuWedluNzj7Zk+wE4ANRlzvL5Zkfw4M/8Lfwi809oxExCjFqFs
         sdxImM6Go9Ylp3VKaqWoQL9agMdBDliwxIs1yx8G7k0OeJ3i/Zwrx67ShNocDRetcr
         OxxTS6ypRxdkPPa5Ul3HuJoD1pharzupnho7rGBe2NhSlIICAvio/oSfemkWprFae9
         tWa004Tc2LsxJulU+ObVmlM6XVsFuZA6sSbQ/5kcb0O1ok6FFxJ7F6eZpP7RCjMMjX
         0PrBqFOJuTZCg==
Message-ID: <98679f80-dd4c-c8a5-14ca-c4fa7f1f4bb3@kernel.org>
Date:   Sat, 12 Aug 2023 20:09:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH] proc.5: add Seccomp_filters entry
Content-Language: en-US
To:     Stefan Puiu <stefan.puiu@gmail.com>,
        Sascha Grunert <saschagrunert@gmail.com>
Cc:     lnx-man <linux-man@vger.kernel.org>,
        Kees Cook <keescook@chromium.org>
References: <20230811082627.403498-1-saschagrunert@gmail.com>
 <CACKs7VATxovBTn3Ez5Ys-MUo0cKSO8YnfDRSFv5gj2c0SuXsbA@mail.gmail.com>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <CACKs7VATxovBTn3Ez5Ys-MUo0cKSO8YnfDRSFv5gj2c0SuXsbA@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------wlIwW7p9fUz98dNKtQ9tUmqW"
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------wlIwW7p9fUz98dNKtQ9tUmqW
Content-Type: multipart/mixed; boundary="------------QRRjZyBmtsIWk9qpY5g4jiyG";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Stefan Puiu <stefan.puiu@gmail.com>,
 Sascha Grunert <saschagrunert@gmail.com>
Cc: lnx-man <linux-man@vger.kernel.org>, Kees Cook <keescook@chromium.org>
Message-ID: <98679f80-dd4c-c8a5-14ca-c4fa7f1f4bb3@kernel.org>
Subject: Re: [PATCH] proc.5: add Seccomp_filters entry
References: <20230811082627.403498-1-saschagrunert@gmail.com>
 <CACKs7VATxovBTn3Ez5Ys-MUo0cKSO8YnfDRSFv5gj2c0SuXsbA@mail.gmail.com>
In-Reply-To: <CACKs7VATxovBTn3Ez5Ys-MUo0cKSO8YnfDRSFv5gj2c0SuXsbA@mail.gmail.com>

--------------QRRjZyBmtsIWk9qpY5g4jiyG
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2023-08-11 15:53, Stefan Puiu wrote:
> Hi Sasha,
>=20
> Small nit below.
>=20
>=20
> vin., 11 aug. 2023, 11:44 Sascha Grunert <saschagrunert@gmail.com> a sc=
ris:
>=20
>> The field exists since Linux 5.9 (818c03) but have not been documented=

>> yet.
>>
>> Signed-off-by: Sascha Grunert <saschagrunert@gmail.com>
>> ---
>>  man5/proc.5 | 7 +++++++
>>  1 file changed, 7 insertions(+)
>>
>> diff --git a/man5/proc.5 b/man5/proc.5
>> index 04b45ccb7..c80b93e24 100644
>> --- a/man5/proc.5
>> +++ b/man5/proc.5
>> @@ -2551,6 +2551,7 @@ CapBnd: ffffffffffffffff
>>  CapAmb:        0000000000000000
>>  NoNewPrivs:     0
>>  Seccomp:        0
>> +Seccomp_filters:        0
>>  Speculation_Store_Bypass:       vulnerable
>>  Cpus_allowed:   00000001
>>  Cpus_allowed_list:      0
>> @@ -2809,6 +2810,12 @@ This field is provided only if the kernel was b=
uilt
>> with the
>>  .B CONFIG_SECCOMP
>>  kernel configuration option enabled.
>>  .TP
>> +.I Seccomp_filters
>> +.\" commit c818c03b661cd769e035e41673d5543ba2ebda64
>> +Number of attached seccomp filters to the process
>> +(since Linux 5.9, see
>> +.BR seccomp (2)).
>> +.TP
>>
>=20
> I think "number of seccomp filters attached to..." sounds better, thoug=
h
> I'm not a native English speaker.

+1

>=20
> Stefan.
>=20
>  .I Speculation_Store_Bypass
>>  .\" commit fae1fa0fc6cca8beee3ab8ed71d54f9a78fa3f64
>>  Speculation flaw mitigation state
>> --
>> 2.41.0
>>
>>
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------QRRjZyBmtsIWk9qpY5g4jiyG--

--------------wlIwW7p9fUz98dNKtQ9tUmqW
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTXyr4ACgkQnowa+77/
2zKoJBAAlQU3mD6AZS8ycqaiFpbaYZ8fKieEKkImAgmaxmM1YYJlfc+D3MXqH+jk
NbDrck7dP9QH4NL7/NeGlGsXc21P2UsMbIYwDBpUw6wEACzB5c9i2TEj4i4AV8Ab
5RUpuNYUW4GHHKZphDlVNH7Gn6llXi7+UQJLNt3R+WUl3cqJyScYN3LMR21ji6YS
59lA6VWmt2kNKk3fTZUo+tm3AfbpSDKwO8cPoWoLWWSN+X9EY58Fsl7w8wDSX6X+
+kqQpBJ9WMv+DRYlRVqiyQw97HTsC2BBLhLEKwYwNRdNd0WJqhr5PlOuJgnhYSEA
lTwJ3gji9/EOQZRv80FxmO/b+W6Pxp2RMYYbbc+mmuBhg1zJTlUc4Jw4RnUZ7gBH
33H7Q5vfIvgUQUibmXW127wIUlhC+eEq6aJoT/gcGQp7B7k2CrSipCMKcsco4hAp
1yLoE/Hh7gngbbngkRl3Dp6VCYO024kj5M0Jz2v7wm3W0jMwOfCT4Xr297CVa2zp
402Is/tiQ6SWbpYkRdUoudToEalKwoT13mucZye7LC8ohy/9a/pFGgZAPFzeND0U
+3LGiihQLnxDWhtnfa1DVX8l7pruvM/1ZR+B2axAc7cnT7zl3WKDIuowdza6t0wa
AaGFzgvvYSGdQ5Wtx0+6HG7ZK7J+XgDX/tx/+p+wPL41ldydtII=
=5zz1
-----END PGP SIGNATURE-----

--------------wlIwW7p9fUz98dNKtQ9tUmqW--
