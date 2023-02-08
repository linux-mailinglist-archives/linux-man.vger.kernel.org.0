Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A772568EDE7
	for <lists+linux-man@lfdr.de>; Wed,  8 Feb 2023 12:27:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230040AbjBHL1z (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Feb 2023 06:27:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56636 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229739AbjBHL1y (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Feb 2023 06:27:54 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9AC228847
        for <linux-man@vger.kernel.org>; Wed,  8 Feb 2023 03:27:51 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id m14so16371639wrg.13
        for <linux-man@vger.kernel.org>; Wed, 08 Feb 2023 03:27:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RXmcYP7/rEwTmiG3PhpebCk+xrItIH2HGqIDdT0i5pw=;
        b=m/56e0oE5rYEFNTZwOBSCcGqdGLq+wMH045/0jPmVKW42jScfKgnqPLZLxSXMIRDxk
         7sB4314p00lZwqEqLroBWwyl0uKwMRoejUaxZHHLND5+rAa0zi4r2RKJth1rmHYxa9YO
         mDuVp40X5BHr0ZcvApkpS7N5rwMgZk8o6gjflBS3sIycpBhTp0SU13Ry1sXV51Hf6eBK
         eBYgcBCw4XWIxPQNbK/xvJ5Q71f30zyc/j2dCsLGIsVwKc3dsBxAizfk98FVIyHjUmsV
         2Zt3kzpPU48VIv8VaKkPDlR0IKvrDUf6E32H2l08TPdKNBv136OH80Z7ucI1lz1ET3ZT
         bxeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=RXmcYP7/rEwTmiG3PhpebCk+xrItIH2HGqIDdT0i5pw=;
        b=LjGKSr+EA9KzPNH8HTh6YTCK/5YYZMQzDSASjP7suyEoRYdln47D4gu2GxYAWMftRc
         wd95wWvaZNxNtEn1xzzWE3YiPNoixJKnJiFoaO2gCw8O7bjnEcWB3pcAfzFW2iOeINv3
         rsN2aNh6M5kmYOlOk2tN3yOnxVqxOMOoie1+GeYCyDgaD6g1bnyiFDp4IophRx3Y8yJs
         k5/yeNaPJgOzlNnaYcA5x9Mr1VhYjwM6zJpxqsk/b2t5AUcTwiRPr4sQPQIv/9PwhqOP
         THU/TZRGrBlF7wl+NCVbq1Vybth/q9lTUedEU6rE7uW1rKMafuhDJz7GmVGBAs/OSmrh
         a7fA==
X-Gm-Message-State: AO0yUKUljjNcEOEZt8+ljdUR1pE2Zadliv3dJHoGGTo7i5dvythKP0AC
        MOCHvdxj4LLbeZE+reIFYQ0=
X-Google-Smtp-Source: AK7set96dya8ePQMvvslEv1T5UFfwSzoa3cLfNOcrSGZ3WIKAxgfSSp1iHAck5tTs304pSGp7GUmgw==
X-Received: by 2002:a5d:56c3:0:b0:2bc:846a:8ead with SMTP id m3-20020a5d56c3000000b002bc846a8eadmr6284872wrw.37.1675855668581;
        Wed, 08 Feb 2023 03:27:48 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id s7-20020adfeb07000000b002bff1de8d4bsm13361180wrn.49.2023.02.08.03.27.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Feb 2023 03:27:48 -0800 (PST)
Message-ID: <b51078f8-0424-0e1c-2fc0-e953a735b893@gmail.com>
Date:   Wed, 8 Feb 2023 12:27:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 00/11] man2/: punctuate long numeric strings with digit
 separators
Content-Language: en-US
To:     Brian.Inglis@Shaw.ca, Linux Man-Pages <linux-man@vger.kernel.org>
References: <20230207203300.49894-1-Brian.Inglis@Shaw.ca>
 <fc3c60b1-ca32-7eb1-60e1-99308bce51cd@gmail.com>
 <0a15e67d-536b-fc1d-54a9-ac942b8e8564@Shaw.ca>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <0a15e67d-536b-fc1d-54a9-ac942b8e8564@Shaw.ca>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------OhfcKn5WhaSyUjcFV05dnWTi"
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------OhfcKn5WhaSyUjcFV05dnWTi
Content-Type: multipart/mixed; boundary="------------9BNRXazHSSIlVDb5rNQo9Zmb";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Brian.Inglis@Shaw.ca, Linux Man-Pages <linux-man@vger.kernel.org>
Message-ID: <b51078f8-0424-0e1c-2fc0-e953a735b893@gmail.com>
Subject: Re: [PATCH 00/11] man2/: punctuate long numeric strings with digit
 separators
References: <20230207203300.49894-1-Brian.Inglis@Shaw.ca>
 <fc3c60b1-ca32-7eb1-60e1-99308bce51cd@gmail.com>
 <0a15e67d-536b-fc1d-54a9-ac942b8e8564@Shaw.ca>
In-Reply-To: <0a15e67d-536b-fc1d-54a9-ac942b8e8564@Shaw.ca>

--------------9BNRXazHSSIlVDb5rNQo9Zmb
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Brian,

On 2/8/23 05:54, Brian Inglis wrote:
> Hi Alex,
>=20
> The problem was /etc/gitconfig [format] attach which is not invertible =
or=20
> overridable, expect perhaps with command line --inline: probably reques=
ted by=20
> some other project.

I never tried, but documentation says it's overridable:

       --attach[=3D<boundary>]
           Create multipart/mixed attachment, the first part of which is =
the
           commit message and the patch itself in the second part, with
           Content-Disposition: attachment.

       --no-attach
           Disable the creation of an attachment, overriding the configur=
ation
           setting.

Then there's

       --inline[=3D<boundary>]
           Create multipart/mixed attachment, the first part of which is =
the
           commit message and the patch itself in the second part, with
           Content-Disposition: inline.

but I'm not sure that's what I want.  Never tried.  Anyway, you can try a=
ny of both, and we'll see what arrives :)

>=20
> All patches 1-11 have identical content; MIME content-disposition is th=
e issue;=20
> as is setting parameters to allow a single successful series of sends v=
ia my ISP=20
> milter provider that considers patch series as just more email spam.

No worries; I understand ;)

>=20
> I will retry format-patch with -v2 --inline and send-email with longer =
delays.

Okay, thanks.

Cheers,

Alex
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------9BNRXazHSSIlVDb5rNQo9Zmb--

--------------OhfcKn5WhaSyUjcFV05dnWTi
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPjhzIACgkQnowa+77/
2zJshhAAoIVoY2LzM+mq/x5b222/9cSTxTCMkNsjADEmtt7jByp+OUF2BMp5RlL0
qdwLaleBBvvMgw4iO/4RilN3W/+JJO8Tyo08gAHAJIviZA0BlWVOSX7f/MQLKQUk
GgO3MeM76vbjJXWL69a+Iqc0elNsyUKIkJY6zqbxrZCsC5iRzBVHm9xkFtOzHTSe
5rAPgrKNMpWb0pEHDtjwPVBvj/0B6v1w90X/dQnHPV0wrYrfsj91dwaqXFzX/WNG
op0c7ptY7iWMQCPbHaCZ6jf8wxLXsSKxSn5sCGI7aNPMZeKjRBEY7IE2oukVqc8W
78zewcQywR5siOiIjSnKBdWOE0fwpIH3Da8x9uroZZnu/Wmf5ZmByNCVamHU7v5+
tewFHLAoerwJxetx0m5b3o2Lgn7x0nJyluwZPZuo880yht2V5Is6XN/r1EbqMeHJ
NRv+qVuqhToHGUC0LlIynVzKfK6helsHwoPgoDL4EBYTxuznGSAK8HuBR9Zrkbeh
utya9Sw+SZwQe1eDqLPwhSstPnzSR+Lz4J0RxCto3jAC5NbjuUJwy0Mm/zvQ0mU5
C5gPYn21ZQYrqsTDWdVIeUCoCqQCTu89Mfcv2be+i+0DejtvJ7vHc82SebNXXMTx
7YL9VouMvpZBdyoyFyccbi+O/7o+ux7oh2KNXBdPQ382S9tfM80=
=VnWa
-----END PGP SIGNATURE-----

--------------OhfcKn5WhaSyUjcFV05dnWTi--
