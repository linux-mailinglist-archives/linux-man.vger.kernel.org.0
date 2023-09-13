Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2D0BF79EF55
	for <lists+linux-man@lfdr.de>; Wed, 13 Sep 2023 18:49:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229508AbjIMQtl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 13 Sep 2023 12:49:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40798 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230413AbjIMQtb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 13 Sep 2023 12:49:31 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E7DFE268F
        for <linux-man@vger.kernel.org>; Wed, 13 Sep 2023 09:49:12 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A5006C433C7;
        Wed, 13 Sep 2023 16:49:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1694623752;
        bh=Ew9P86x2ucH6klv+Q0j34ZbG3EQ/mfdfn9iTEoitq0Y=;
        h=Date:Subject:To:References:Cc:From:In-Reply-To:From;
        b=QkBUaPW/yzkZl/e2LKtkOkbHuh3kCKuK8Kfe/3yKB5O34V0ycZoDN7fEks8G+cs3d
         YmAubtpooGfqkIB6Za/b9qDkI2Rn3vcsA11xRVrCAfLel0ur5tkPA9Y63DkDrKvCFU
         2ZUGsNruRzB04iekzyDU84nVEqNU357zLr+OqVHabWZ4m1ZkDlE6fJijzX9Zr/rBP+
         eEUDuQkFmX+EjlMBaDdFr7MC3RZMr4ny56QhtF9+3TA/bY71rmyzWqWz2fz28qpVSc
         GT4n0LoDWmKuGFzks07g1dOAX2cAfbf+hIWNddeOTsHW+ypLaO7e3ESkGFYtY8ExBb
         mSmyob4jDPUzg==
Message-ID: <6f2cf8dd-a7fd-4a2b-9f13-711e2bd8772c@kernel.org>
Date:   Wed, 13 Sep 2023 18:49:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ioctl_tty.2: Document CAP_SYS_ADMIN requirement for
 TIOCSTI
Content-Language: en-US
To:     =?UTF-8?Q?G=C3=BCnther_Noack?= <gnoack@google.com>,
        Samuel Thibault <samuel.thibault@ens-lyon.org>,
        linux-man@vger.kernel.org
References: <20230913110631.2680550-2-gnoack@google.com>
 <20230913121609.e6b54t7g5kgshaoz@begin>
Cc:     Kees Cook <keescook@chromium.org>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230913121609.e6b54t7g5kgshaoz@begin>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------wobxzncHicloangTcw4JWPzN"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------wobxzncHicloangTcw4JWPzN
Content-Type: multipart/mixed; boundary="------------tfHGQ5DZx6Ex06DugxuqWPWA";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: =?UTF-8?Q?G=C3=BCnther_Noack?= <gnoack@google.com>,
 Samuel Thibault <samuel.thibault@ens-lyon.org>, linux-man@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>
Message-ID: <6f2cf8dd-a7fd-4a2b-9f13-711e2bd8772c@kernel.org>
Subject: Re: [PATCH] ioctl_tty.2: Document CAP_SYS_ADMIN requirement for
 TIOCSTI
References: <20230913110631.2680550-2-gnoack@google.com>
 <20230913121609.e6b54t7g5kgshaoz@begin>
In-Reply-To: <20230913121609.e6b54t7g5kgshaoz@begin>

--------------tfHGQ5DZx6Ex06DugxuqWPWA
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi G=C3=BCnther, Samuel,

On 2023-09-13 14:16, Samuel Thibault wrote:
> G=C3=BCnther Noack, le mer. 13 sept. 2023 13:06:31 +0200, a ecrit:
>> Cc: Samuel Thibault <samuel.thibault@ens-lyon.org>
>> Cc: Kees Cook <keescook@chromium.org>
>> Signed-off-by: G=C3=BCnther Noack <gnoack@google.com>
>=20
> Reviewed-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

Patch applied.  Thanks for the patch, and the review!

Cheers,
Alex

>=20
>> ---
>>  man2/ioctl_tty.2 | 9 +++++++++
>>  1 file changed, 9 insertions(+)
>>
>> diff --git a/man2/ioctl_tty.2 b/man2/ioctl_tty.2
>> index 85577f80f..ebad97bcf 100644
>> --- a/man2/ioctl_tty.2
>> +++ b/man2/ioctl_tty.2
>> @@ -334,6 +334,15 @@ Argument:
>>  .BI "const char\~*" argp
>>  .IP
>>  Insert the given byte in the input queue.
>> +.IP
>> +Since Linux 6.2,
>> +.\" commit 690c8b804ad2eafbd35da5d3c95ad325ca7d5061
>> +.\" commit 83efeeeb3d04b22aaed1df99bc70a48fe9d22c4d
>> +this operation may require the
>> +.B CAP_SYS_ADMIN
>> +capability (if the
>> +.I dev.tty.legacy_tiocsti
>> +sysctl variable is set to false).
>>  .SS Redirecting console output
>>  .TP
>>  .B TIOCCONS
>> --=20
>> 2.42.0.283.g2d96d420d3-goog

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------tfHGQ5DZx6Ex06DugxuqWPWA--

--------------wobxzncHicloangTcw4JWPzN
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUB6AUACgkQnowa+77/
2zLVyRAAoOM+c1jvFQE0HEgZVzqBGeSSrd3HFQivyQUxDkYiB8syuVigaVXfFRac
WdP4ZClA+fZ6RWy/jL6kvv8VDtDvT+sOeL1g7g48ooUkNqIntvh753V2LyCPjwQ2
UXL/TKxxDWU821pMtBl+3x8nZGcBsonOFkBtFsO6iUaCYxiB3bCB5JHtyBA/ZDQo
BBDbn4NSHYjsHbjK9h0b5OfJaBojumk5nlAFjrBdgwP5c73Y/yRJqDvAllTfZTmJ
XjelJ434jc126HlhXKpcbqD1WHjmycYjmzkt1+aKpbd61jgdEJu/NMouGoVFA574
8BgBvM+a7ylYofG/N3tglCGQOgzgAQGpuniGl98bGBr7RRA/YnTidrVsrF0XrybA
Ye2RoBfMMBmSqv72m04ulJ7zgwA0E9qq8V6m85sDsaqIRBwsONLujqEjBHzNgT0p
KuLSr0HBxgZcMLqT6SJxMpc7mOKXkVzdPtBRZIYPytYD8PXhwkPqNf+lCKQC+Fha
kPYzmuNWRkVnTsJrdVerekfnIb38x553zhVAF77+lL2DMDxi87tP7RsN2folR4rz
9bEVHwi3mP+qGDoEQMkNP1jU0U75NY/iom8l/LwYYATMlpTdCYO5m1y+KbWIBLcI
IQcwOpRm7k66ppi4fL9FPz75NEjTmKAcKnKjrr1duzlrcTEgekQ=
=9V49
-----END PGP SIGNATURE-----

--------------wobxzncHicloangTcw4JWPzN--
