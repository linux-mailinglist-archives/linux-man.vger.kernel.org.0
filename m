Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A0900680E9F
	for <lists+linux-man@lfdr.de>; Mon, 30 Jan 2023 14:16:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236172AbjA3NP6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 30 Jan 2023 08:15:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235989AbjA3NP5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 30 Jan 2023 08:15:57 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 627E712050
        for <linux-man@vger.kernel.org>; Mon, 30 Jan 2023 05:15:53 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id k8-20020a05600c1c8800b003dc57ea0dfeso2011313wms.0
        for <linux-man@vger.kernel.org>; Mon, 30 Jan 2023 05:15:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pEwyibTFAMCbVoqN9Uo1MrLBybwUNapvo9pmwkMFbHM=;
        b=Kr7ntylxQtKuDfUDfYPrgUvElArlU3eUzEOd7sL5sv3ZkLXc8t29DgEuGUY7MKmJ1F
         3Wxg59Sas/hLsByXAsniX+4ssr7WVFNAYqyIQvKsorhKG6bTeT4mStbASOThFNYJliuM
         EhjCFnVY0odAbvIYyggfW8yJthZ3dGP4eq31wmRqKVNp+zQzT6FKRRtJKS8piL+Kic3l
         fp7ZwvkCIK9lf6Oy/gCqs+rr+9+jwswbZmu3dodZaHoN1sni1D71574yO2idoNkhgNCV
         zg/m/jSls13EewoYFOsEdV2s1h1v5VuNb+asZG+2k3JP9GkFpEzEWFGnGlVb0dk6yp6Z
         VCWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=pEwyibTFAMCbVoqN9Uo1MrLBybwUNapvo9pmwkMFbHM=;
        b=QUsZvM7l04YMMyLtQur48xziTJm0mtlJ6+jR0f1fIacDSkP/FCo1r6T3+2Sx88qeM2
         oECVXKoZRwy7mj+jVtoPtUuO8mNiMAovcD0YKj/J0p+8fHt8toVnjmJG4iDBWy+W9MOi
         kzPaYu62iYs3Rj5eGBjB3H0MXCYRDRKgxT82v+3mKzZGS+BHVkGLiPMmnyjRs/wBhP3N
         +y0E4G6sDh+LhjvFP3hMZmYtfCZv8+vJmwU6iEaEnO+SfodWEWNR9eDC3aGYxykc1+gH
         IqTppDbNrM8RLclxcf1n+o/OtqOptk/6BOnt/LYLs4SYNix0F949OX6CeQv5YQHjBEel
         5nIA==
X-Gm-Message-State: AO0yUKU7jWwgb1iZ87+fPJFu3CVDUvj2rgOb0l0FULoHIVAepfVLRS+M
        /3P5397vS/qnZrNM2CmP6STKeFdMMKY=
X-Google-Smtp-Source: AK7set8jrZ4O6i1nuMUiMstGJzraG3PrjDec4tgtbb8nxNXKkYChtx012tFwE0fIKT9ElC3vpbAdDw==
X-Received: by 2002:a05:600c:2949:b0:3dc:5805:9d75 with SMTP id n9-20020a05600c294900b003dc58059d75mr4158870wmd.18.1675084551960;
        Mon, 30 Jan 2023 05:15:51 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id i20-20020a1c5414000000b003dc3f3d77e3sm9959988wmb.7.2023.01.30.05.15.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Jan 2023 05:15:51 -0800 (PST)
Message-ID: <34f497d7-7aba-84b6-c9b8-1d8bbcf183e5@gmail.com>
Date:   Mon, 30 Jan 2023 14:15:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 1/3] timespec.3type: tv_nsec is impl-def-type, glibc llong
 not a bug
Content-Language: en-US
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
        linux-man@vger.kernel.org
References: <4a67167df30db6019a6320dc92a953f9df3f4db2.1674915219.git.nabijaczleweli@nabijaczleweli.xyz>
 <cfda064c-b3f0-d541-bbee-e3a72c0b3cf3@gmail.com>
 <20230130070838.5mgjdbrfhtlww5t7@jwilk.net>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230130070838.5mgjdbrfhtlww5t7@jwilk.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------OFrnTppdTbl2YM98FGXpDcOY"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------OFrnTppdTbl2YM98FGXpDcOY
Content-Type: multipart/mixed; boundary="------------GyjhWbeRIx4iwrivwd9SdE3d";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jakub Wilk <jwilk@jwilk.net>
Cc: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
 linux-man@vger.kernel.org
Message-ID: <34f497d7-7aba-84b6-c9b8-1d8bbcf183e5@gmail.com>
Subject: Re: [PATCH 1/3] timespec.3type: tv_nsec is impl-def-type, glibc llong
 not a bug
References: <4a67167df30db6019a6320dc92a953f9df3f4db2.1674915219.git.nabijaczleweli@nabijaczleweli.xyz>
 <cfda064c-b3f0-d541-bbee-e3a72c0b3cf3@gmail.com>
 <20230130070838.5mgjdbrfhtlww5t7@jwilk.net>
In-Reply-To: <20230130070838.5mgjdbrfhtlww5t7@jwilk.net>

--------------GyjhWbeRIx4iwrivwd9SdE3d
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSmFrdWIsDQoNCk9uIDEvMzAvMjMgMDg6MDgsIEpha3ViIFdpbGsgd3JvdGU6DQo+ICog
QWxlamFuZHJvIENvbG9tYXIgPGFseC5tYW5wYWdlc0BnbWFpbC5jb20+LCAyMDIzLTAxLTI5
IDE2OjQ4Og0KPj4+ICsuQlIgIsKgwqDCoCAvKlwoZGEqL8KgwqAgdHZfbnNlYzsiICLCoCAv
KiBOYW5vc2Vjb25kcyBbIiAwICIsICIgOTk5OTk5OTk5ICJdICovIg0KPj4NCj4+IEknbSB0
ZW1wdGVkIHRvIG1lcmdlIHRoaXMgcGF0Y2guwqAgSXQncyBzb29vIHF1dGUgLyrihpMqLw0K
PiANCj4gSSB3YW50IG1hbiBwYWdlcyBsZWdpYmxlLCBub3QgY3V0ZS4NCg0KSSBrbm93LCBJ
IGtub3cuDQoNCj4gUGxlYXNlIG1ha2UgaXQNCj4gDQo+ICDCoCAvKiBzZWUgYmVsb3cgKi8g
dHZfbnNlYw0KPiANCj4gb3IgbWF5YmUNCj4gDQo+ICDCoCBsb25nIC8qIGJ1dCBzZWUgYmVs
b3cgKi8gdHZfbnNlYw0KPiANCj4gKGdpdmVuIHRoYXQgQzIzIGlzIG5vdCBhIHRoaW5nIHll
dCkuDQoNClRoZSByZWFzb24gd2h5IEkgc2VyaW91c2x5IGNvbnNpZGVyZWQgLyrihpMqLyBp
cyB0aGF0IGl0IGlzIGEgYml0IHNob2NraW5nIHRvIHRoZSANCnJlYWRlciwgd2hpY2ggd2ls
bCBwcm9tcHQgaXQgdG8gcmVhZCB0aGUgcmVzdCBvZiB0aGUgcGFnZSB0byBzZWUgd2hhdCB0
aGUgaGVsbCANCnRoYXQgaXMuDQoNCkknbSB3b3JyaWVkIHRoYXQgaWYgd2UgbWFrZSBpdCBg
bG9uZ2AgcGx1cyBhIGNvbW1lbnQgdG8gc2VlIGJlbG93LCBtYW55IHdpbGwgDQppZ25vcmUg
aXQuDQoNCi8qIHNlZSBiZWxvdyAqLyB3aXRoIG5vIG1lbnRpb25zIHRvIGBsb25nYCBtaWdo
dCBiZSBhIHJlYXNvbmFibGUgYWx0ZXJuYXRpdmUuIA0KTWF5YmUgSSdkIHVzZSAvKiAuLi4g
Ki8NCg0KV2hhdCBkbyB5J2FsbCB0aGluayBhYm91dCBpdD8NCg0KQ2hlZXJzLA0KDQpBbGV4
DQoNCj4gDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------GyjhWbeRIx4iwrivwd9SdE3d--

--------------OFrnTppdTbl2YM98FGXpDcOY
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPXwwYACgkQnowa+77/
2zKbsg/+IFLxx1iYbw+8tCfhdQE/DvImo0WpP4VEqHZkkFvZXVhSz5IZ3O3hTB2i
0VXcM90ZtSR7JbNqIyLfFQ3yPk3DdMKY1sT/G/Ao+vDxH7U9r16+YrO8YUrJdLbf
zIZyuvF1IWQDp4TRh6yeQuHZUzVYwLRFFgXxEMQJZV7xNB4FG5UqO+nKzQmJ4EKC
TpjjtnyA8rFBFKkcVBT3m+y6uBfpOyKMnQ3hL6MBxNK+d/mDQZjE5LkBy8w7hZbc
CcrE5oEkxGMSi8/nQmiJGpLgTuGMZcFLjP96k0ydeJfsdLPskxgFtUd3ybitBB9X
I0V8PjYfE3sLuuo5aaE3dHi6L5xEMWMm+1aVeGGo36n7iv2eksAOglC9gEkFGqJR
SXDiLSZ8sC5CDJDAukbfa6ILVhZHO3E4SQHpFVSHnfuM4GtODo81jSINTav3A+xk
5G/6te8qaoypBYByuiFQwGpV/RO9KaNQQU+Pb8Ogo/E/0fBavtQ5zxD/J7OEmGkY
jsS19DDTxyv01htkrvf1JX9SvAbjHv+KoMYoVlyIQkaZLanklm38RjmpRUBR8ncB
0vHHPNghnyC1lq8RldPppzFZfr5zulSj+kGRnvFxW63Odpr6Ofy4XhBuoazuz077
9oRb9wS4uHpnVWzOZTIeiH0liN/X3yXXX6oubjTOtQ/XgisJo6o=
=jfIA
-----END PGP SIGNATURE-----

--------------OFrnTppdTbl2YM98FGXpDcOY--
