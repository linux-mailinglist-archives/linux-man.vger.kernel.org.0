Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6479357989F
	for <lists+linux-man@lfdr.de>; Tue, 19 Jul 2022 13:39:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237117AbiGSLjC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Jul 2022 07:39:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42956 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233786AbiGSLjB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Jul 2022 07:39:01 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3F2B40BC8
        for <linux-man@vger.kernel.org>; Tue, 19 Jul 2022 04:39:00 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id j1so16714364wrs.4
        for <linux-man@vger.kernel.org>; Tue, 19 Jul 2022 04:39:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=49pNtKuY22zu3KMFK1AxV+aF/tUo1FpaDQXgFs1flNc=;
        b=Eoar+gmKN6IvUBVOx9eVrGChfM73c18yk8Z/Bj35hPtDb/y+Fe5LEurvHgk67qoISJ
         97g9uBwPv4wbOnURcIPKil9AFEc1FzZIbVj6QnH0gY/DGbuZgf6C0BhA2Qj+PSEUpwNA
         HZXxiYFUVT21VouPmKVAJS4f0m1uz70g5PCwLtsP0LEPryo5JRuMnQBSJ1j2d24D/S9e
         EZMrJiS3rcReVT5MjY/uukoVZWYXsvqHXhlGs+V9Z7jKNTYIZ651hMwifdK7ZtgO1RqT
         nqB5fbXtMuEeroGRKWs4xgZijiXfb+1T9clC7Ps/XiKTyLY9xHqLfGhPB4zIUqkyUVEq
         03aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=49pNtKuY22zu3KMFK1AxV+aF/tUo1FpaDQXgFs1flNc=;
        b=DevnsWbpFVgi3jL7Hbw/FYfCeat2dr1Hc4v4ASr8VX4jPuNLSWfiLnrUxp5WSGEbxv
         BBevihIvPjzwuikyzrchsmFtroNnt/6NU6g5kOlC16IKb87XDNUFURNRNFSpER4oM3p1
         vH0ILmFej8Yvytd/3ehVkCV9VpLVfoTi2+hlwIc/9iRC79JvMCZEXmipfZndioSliGRi
         5MdER19Ikj6jjnCINIiXp1UNK4uw8SasinGvaO7GRYrtFdaOLU1YALmDnxGFnQh2bAtZ
         HqBdsmjg7hZufn5uAhmMR1P9wJkmFyDY3dVxpVQ5yjVsSQrRrDBfcMO+R6a4XPyUSO7l
         VfCw==
X-Gm-Message-State: AJIora+M6fWRPrlSrivhrawVtiIf4m6CSlmsWd6m3tVnW7UlJFt2+Bpl
        bq8Yp/3wZRlIm+QCbOewZzABfQTvyu4=
X-Google-Smtp-Source: AGRyM1sFiTDYraUxDznbgm+YOXMb8xgqTvPdKT7hz1R0nbrRr4cdMMNc5CIqqkKdHkH+HDu6Dw767A==
X-Received: by 2002:a05:6000:2c6:b0:21d:bd44:5cd5 with SMTP id o6-20020a05600002c600b0021dbd445cd5mr25581473wry.408.1658230739340;
        Tue, 19 Jul 2022 04:38:59 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id t4-20020a1c7704000000b003a308e9a192sm16084331wmi.30.2022.07.19.04.38.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Jul 2022 04:38:58 -0700 (PDT)
Message-ID: <21ec4596-131d-46fd-21ad-738109928fc4@gmail.com>
Date:   Tue, 19 Jul 2022 13:38:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.2
Subject: Re: [PATCH 1/5] tm.3type: tfix
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <62c1b6748d2faa6263264b9fcaa064495357441b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <62c1b6748d2faa6263264b9fcaa064495357441b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------fVr3Owbf5BmRW8UoUbaRa0an"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------fVr3Owbf5BmRW8UoUbaRa0an
Content-Type: multipart/mixed; boundary="------------QG7860PPMUYipfuqr0LgX5c2";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <21ec4596-131d-46fd-21ad-738109928fc4@gmail.com>
Subject: Re: [PATCH 1/5] tm.3type: tfix
References: <62c1b6748d2faa6263264b9fcaa064495357441b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <62c1b6748d2faa6263264b9fcaa064495357441b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>

--------------QG7860PPMUYipfuqr0LgX5c2
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkg0L3QsNCxIQ0KDQpPbiA3LzE5LzIyIDAzOjU2LCDQvdCw0LEgd3JvdGU6DQo+IFNpZ25l
ZC1vZmYtYnk6IEFoZWxlbmlhIFppZW1pYcWEc2thIDxuYWJpamFjemxld2VsaUBuYWJpamFj
emxld2VsaS54eXo+DQoNClBhdGNoIGFwcGxpZWQuDQoNClRoYW5rcywNCg0KQWxleA0KDQo+
IC0tLQ0KPiAgIG1hbjMvdG0uM3R5cGUgfCAyICstDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDEg
aW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvbWFuMy90
bS4zdHlwZSBiL21hbjMvdG0uM3R5cGUNCj4gaW5kZXggMjhkNjIwOGZiLi44YWUzYTUzMWMg
MTAwNjQ0DQo+IC0tLSBhL21hbjMvdG0uM3R5cGUNCj4gKysrIGIvbWFuMy90bS4zdHlwZQ0K
PiBAQCAtMjQsNyArMjQsNyBAQCBTdGFuZGFyZCBDIGxpYnJhcnkNCj4gICAiICAgLyogRGF5
IG9mIHRoZSB3ZWVrIFsiIDAgIiwgIiA2ICJdIChTdW5kYXkgPSAiIDAgIikgKi8iDQo+ICAg
LkJSICIgICAgaW50ICB0bV95ZGF5OyIgXA0KPiAgICIgICAvKiBEYXkgb2YgdGhlIHllYXIg
WyIgMCAiLCAiIDM2NSAiXSAoSmFuLzAxID0gIiAwICIpICovIg0KPiAtLkJSICIgICAgaW50
ICB0bV9pc2RzdDsiICIgIC8qIERheWxpZ2hndCBzYXZpbmdzIGZsYWcgKi8iDQo+ICsuQlIg
IiAgICBpbnQgIHRtX2lzZHN0OyIgIiAgLyogRGF5bGlnaHQgc2F2aW5ncyBmbGFnICovIg0K
PiAgIC5CIH07DQo+ICAgLmZpDQo+ICAgLlNIIERFU0NSSVBUSU9ODQoNCi0tIA0KQWxlamFu
ZHJvIENvbG9tYXINCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------QG7860PPMUYipfuqr0LgX5c2--

--------------fVr3Owbf5BmRW8UoUbaRa0an
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLWl9EACgkQnowa+77/
2zKVpQ//dXYJKIJVWlQjOZBJ7wxYz2vW1J3RFEYb0/2krV9dDU/TFoHFwiYfuVB3
xtRLcVBpERXHXl7lcrW7gny/0FAX+zFqH40Tw5sKU+r1AAAmxzZQQnMS5w8W37dO
J1LbfjsKfNkpWuVcMealXqbtCmLk5oTKT4sv1reaURKxUjE4I1rXjfl85MYIv2oe
0x42U+xihTpCX8VB6qOegax8uaXFUvosCq8+Vc81ZKNLQJwpjSGSYo+Ckf0PPyCV
jsOVsfXiIiIHWHR9218yhl2ijmfpBUiD/w0WNvdmKDxmLD/wMIaNPCGd3WET+x3E
oMIZmuTnc6sIEv7NNui3oTl5+uA47EKOdI+toeYAEGpAi1gT/eeQlo7FdB2Ovc9i
28vCcROVMHJdNaPEXlOJ/3+615+9LeSReE5zL7/mlQVxwdi1P3Ykz8wtMZRjcVMP
P2+nXxboq/MNDeSBG1EueVJeCNckx3aMg6/M5QjYcq4LylAq4jPrXEmR2YOkuH1Z
2w5N8C5cRcNBlo4zVBMbV8ihtGo/UCwf2IzFdyYfEVKojxnlP3XkPPt/NpA35fjz
kZAkpkm0w3y1LHzY1MnnPOTFexl4Mi+J7Pvf8drGN8SvG+bFrnUG9H1UmephPNya
L0cpeHfVpbcE43DGYt9HqZC3dgiGpE4kZMO50Q2ekpWmKuG9a0s=
=xmqs
-----END PGP SIGNATURE-----

--------------fVr3Owbf5BmRW8UoUbaRa0an--
