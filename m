Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2E8D0641F5D
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 21:03:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230015AbiLDUDF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 15:03:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35374 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229949AbiLDUDE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 15:03:04 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6444311C10
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 12:03:03 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id w15so15776851wrl.9
        for <linux-man@vger.kernel.org>; Sun, 04 Dec 2022 12:03:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gfoR22x1e83JKiXtzqZSfNUU1dZTsI6jEy3f3MNuofM=;
        b=hUpndnkTpf8Yg34UTovRMlhlzwyQxDUhtc6Dfey9KfuMmQpXPge9nO9X5w5sxIOP03
         Z+Y0Ny2o2Q3PKs0hiqbfNr6z+MrBEN5nfP6F3zTnQzWHkxXeAahqN7yVmolwI2w0W+gK
         /mfKjLm9Qn9/dEnj6jbpFDXy1N5ef0POLTQvtXI7yzhvdcbrwQEyUV6Jv8xKNSOCinhb
         z7Cwwj5TVeIqAC8TnleG7BMFCb/jp+/xMqrHk4fQeqJVpThPqB0yQxtW+/svZk2FJNyu
         EHLEZzmVHLB0MXFAobKaHvlo9jsD70cswYuIX/CP4be1iRBQg2qwMDbHqqgJvf1VCd02
         zVwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=gfoR22x1e83JKiXtzqZSfNUU1dZTsI6jEy3f3MNuofM=;
        b=10Sm/ejXHIo9fLaK/CRgnsW4ItKUj4tmdlreOCdp41eIO28norphp7bRRkmYc/YaE4
         rJh66iYb+B3ApUfYu1OdYUXSJPFDhs3XnsCVEXnhTh0fVoJ/UTc/MK6sD7fxXS7ucbq3
         cUHY/qfDSmb79mEZpd34BbbVV0JYfOtp/j2ZO0iQc9FRPMdCZfhEeUr2d1XDpKq9TdjI
         F7rTlXA+lw4Es5juFYKQTGV7hr9A377FINU6xXH8GH27KFg2rK3x/PzAC2mSRPzpv6ZD
         anC9yCJ+YvsNON6dma6byyvuyOc53Hz/ANueTx0xNIiUCu25uOI9LGsw+5eESN56IKbY
         wPdA==
X-Gm-Message-State: ANoB5pmC54XN/7dfROovsOu0x64L0tzcPN6uphKcFNhfeEcPuYcO64S8
        mrh6nXjdhlRbRpdDkBQU5RU=
X-Google-Smtp-Source: AA0mqf5TXlOPKGwt17mQc+0Phodp6Rfgy0C/oh3cdWiR3BtMJ3Nx92Ppc0NeDyDIhrzg7ivExbhyew==
X-Received: by 2002:adf:f550:0:b0:242:21dc:95f5 with SMTP id j16-20020adff550000000b0024221dc95f5mr15567973wrp.602.1670184181966;
        Sun, 04 Dec 2022 12:03:01 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id z10-20020adfec8a000000b00236576c8eddsm12480924wrn.12.2022.12.04.12.03.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 12:03:01 -0800 (PST)
Message-ID: <ff9e01f4-fdde-a76f-7495-290fc7f78ded@gmail.com>
Date:   Sun, 4 Dec 2022 21:03:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page time_namespaces.7
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20221204090717.GA780@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221204090717.GA780@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------gahWhYqquUIGpA2MBOFHDkB8"
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------gahWhYqquUIGpA2MBOFHDkB8
Content-Type: multipart/mixed; boundary="------------H4qEjssn7sc1G5lGZsbttOsv";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <ff9e01f4-fdde-a76f-7495-290fc7f78ded@gmail.com>
Subject: Re: Issue in man page time_namespaces.7
References: <20221204090717.GA780@Debian-50-lenny-64-minimal>
In-Reply-To: <20221204090717.GA780@Debian-50-lenny-64-minimal>

--------------H4qEjssn7sc1G5lGZsbttOsv
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSGVsZ2UsDQoNCk9uIDEyLzQvMjIgMTA6MDcsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6
DQo+IFdpdGhvdXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPiAN
Cj4gSXNzdWU6ICAgIC9wcm9jL1BJRC90aW1lbnNfb2Zmc2V0cyDihpIgL3Byb2MvW3BpZF0v
dGltZW5zX29mZnNldHM/DQo+IA0KPiAiL3Byb2MvUElEL3RpbWVuc19vZmZzZXRzIg0KPiAN
Cj4gIkFzc29jaWF0ZWQgd2l0aCBlYWNoIHRpbWUgbmFtZXNwYWNlIGFyZSBvZmZzZXRzLCBl
eHByZXNzZWQgd2l0aCByZXNwZWN0IHRvIg0KPiAidGhlIGluaXRpYWwgdGltZSBuYW1lc3Bh
Y2UsIHRoYXQgZGVmaW5lIHRoZSB2YWx1ZXMgb2YgdGhlIG1vbm90b25pYyBhbmQgYm9vdC0i
DQo+ICJ0aW1lIGNsb2NrcyBpbiB0aGF0IG5hbWVzcGFjZS4gIFRoZXNlIG9mZnNldHMgYXJl
IGV4cG9zZWQgdmlhIHRoZSBmaWxlIEk8LyINCj4gInByb2MvUElEL3RpbWVuc19vZmZzZXRz
Pi4gIFdpdGhpbiB0aGlzIGZpbGUsIHRoZSBvZmZzZXRzIGFyZSBleHByZXNzZWQgYXMiDQo+
ICJsaW5lcyBjb25zaXN0aW5nIG9mIHRocmVlIHNwYWNlLWRlbGltaXRlZCBmaWVsZHM6Ig0K
DQpJIHdhbnQgdG8gZml4IHRoaXMgaW5jb25zaXN0ZW5jeSBpbiBhbGwgb2YgdGhlIHBhZ2Vz
LCBhcyBJIGRpZCB3aXRoICdrZXJuZWwgeC55JyANCi0+ICdMaW51eCB4LnknLiAgSG93ZXZl
ciwgdGhhdCdzIGdvaW5nIHRvIHRha2UgYSBsb3Qgb2YgdGltZSwgc28gSSdsbCBkZWZlciB0
aGlzIA0KZm9yIHRoZSBmdXR1cmUuICBJJ2xsIGRlY2lkZSBpZiBJIHB1dCB0aGlzIGJlZm9y
ZSB0aGUgZnJlZXplIG9yIG5vdCBkZXBlbmRpbmcgb24gDQpob3cgbXVjaCB0aW1lIEkgaGF2
ZS4NCg0KUGxlYXNlIHBpbmcgbWUgaW4gc29tZSB0aW1lIGlmIEkgaGF2ZW4ndCBmaXhlZCBp
dC4gIFRoYW5rcyENCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxl
amFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------H4qEjssn7sc1G5lGZsbttOsv--

--------------gahWhYqquUIGpA2MBOFHDkB8
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOM/PQACgkQnowa+77/
2zJSew//bRvPct/I596ocHFHivJCXik88kKtxTYiRO1Bewm+u5CIdJ0XUTFAlIqM
+VtnijLc0dxjUtjMiyk6NpsmwWKFKHPJzjmdvbGlAOkAp5ZS8PcC2oQFel+P2qH3
TMCHARzcnjVneuy+f8ztOTd3pXJaIeAmKV9O1go8gUQucnh5s/GS14mX0tOhH+Uq
SMeBbRSp3FeI2pIKNylSKdIbxMrvqXz/4X2dAUUDLWXjgF+a5PJvPyyUNr7MrcT2
NzSrj+NfTI2IA+5FpT/vwpuPBdhlEWKm+u8chLwH0YTswNzVBvRJTD7ixiXR4si4
lVJ5xBCvEj0GJi89Jx12EiGzdeqlXTp1gbwcBCa4t5rsSvcbFvTYN9n15Qcy0+1M
52vJyys8g7fkpr2FhuYqYgWm4kRnFOYOEIVhrAs8GoT0VqLTB83xTLuZa1EB2YIO
eYSWk5nPRFNaQVHMOmPM9QVt5HHhNqfuOVz0flo289nQ8fVS7FRTK3mxGAP0We5j
tf0npZ9ehm9ilEtzkLmESnfnhprsMAfsq4EY3T0KTcUIvlOth3ZQ0R53eLPVgECo
2c763BU7El+kK6gIFIUu8l6zqpb/NfOY2tBEtlwbumeN9UOQsJnC4CN/EYzcWFJA
mnCu0sECP+148kps+yFuY99B/iPRXpK/ia2+ChzBdEB61M0CfxU=
=Hj2w
-----END PGP SIGNATURE-----

--------------gahWhYqquUIGpA2MBOFHDkB8--
