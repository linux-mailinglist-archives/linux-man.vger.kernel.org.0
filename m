Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5EB76608FCE
	for <lists+linux-man@lfdr.de>; Sat, 22 Oct 2022 23:37:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230057AbiJVVhl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 22 Oct 2022 17:37:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43828 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230022AbiJVVhg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 22 Oct 2022 17:37:36 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5B8BFC1D8
        for <linux-man@vger.kernel.org>; Sat, 22 Oct 2022 14:37:21 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id m29-20020a05600c3b1d00b003c6bf423c71so7546974wms.0
        for <linux-man@vger.kernel.org>; Sat, 22 Oct 2022 14:37:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=It6UBPoSxJkGnY0tOwxGnQTBLuUXL//OHLjr/b10h7I=;
        b=foqCrM17GJ0rukBPXpGw3eq5wBFSY5y9ce4lcPARKeGgpDGeXF1tJL49wZuigZhLKf
         RetCuFatNn3tyImOxsJadwp9KokIgVuxW3iV3MAI1Cr3tumEKP2B4/z2YjG0eJkCXgY1
         JxqZaQdZYqTZYOIYSkXOooz6hwzcEpWhssL1UprUHxVdGg1haUS3UzQpAZ3yikEo9gjs
         TiZRGMfjEYdNv70pXZZKrKXy8GCyNo3mk2JjyxJum20WL6McWbwLKhoQ9seKUXiFNf8a
         UE+4/YgGJV1LbXquQE6wxhBx71C/loFEqPKm+PZVhXywq6HshyAR1vQJCtlOychAMU36
         tZaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=It6UBPoSxJkGnY0tOwxGnQTBLuUXL//OHLjr/b10h7I=;
        b=CWei2rwLtijUa31rENC1wYR14BbvE871cz38Oevbv431IFmjddAA3+J2D15jI3D9d5
         uAmgRd8z3TcYlClS4P1DnpPqNw8aofxT/PZCJIcQl+XJCFWaFilAJFYD6QsL3ELRF/o4
         fy0F/UfpvTWWXD0i8AOo4xluXzedpgOTFJSbfL5YO4HymQBSAJdiCHHx+4prVQ9EtDt8
         jJOL+Lst3WOrQAhs/nB1FFZU/O+N3zgvH3+3XQcPglEUglcoIWxKwpzj/jJO9jjffQ+F
         cYLy46KEGoBXmFtEPH0MsjqmFnkra0ScyxNU4xP+8vX9UGpshbEsghzpmDaH/81BQryH
         dK4w==
X-Gm-Message-State: ACrzQf10s9XwlzwFHW94gktt9sZ21sqm1SE+DFIdrZHW8kCruVEqYYQd
        /YISfbmlzql6elNlklYg3Mc/B+ts7fM=
X-Google-Smtp-Source: AMsMyM4QFiV81IztjrBuxMrvc7xCoU7iHbnHG1ylaOwuOXWviTqnU0H3EyR82sdnvoGJStoKkjuOJg==
X-Received: by 2002:a1c:7c06:0:b0:3c6:cc24:82c8 with SMTP id x6-20020a1c7c06000000b003c6cc2482c8mr16880081wmc.180.1666474639681;
        Sat, 22 Oct 2022 14:37:19 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id f15-20020a05600c154f00b003b4a68645e9sm3866160wmg.34.2022.10.22.14.37.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Oct 2022 14:37:19 -0700 (PDT)
Message-ID: <c50e6f4b-cfc9-a814-7fd9-5e80cb6885dd@gmail.com>
Date:   Sat, 22 Oct 2022 23:37:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH] printf.3: ffix
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     linux-man@vger.kernel.org
References: <20221021184106.7689-1-jwilk@jwilk.net>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221021184106.7689-1-jwilk@jwilk.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------qtqPi1WsRzFhPOV7PS24qZsB"
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
--------------qtqPi1WsRzFhPOV7PS24qZsB
Content-Type: multipart/mixed; boundary="------------l8lDqDR2woOFVWAeNeD5BUtP";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jakub Wilk <jwilk@jwilk.net>
Cc: linux-man@vger.kernel.org
Message-ID: <c50e6f4b-cfc9-a814-7fd9-5e80cb6885dd@gmail.com>
Subject: Re: [PATCH] printf.3: ffix
References: <20221021184106.7689-1-jwilk@jwilk.net>
In-Reply-To: <20221021184106.7689-1-jwilk@jwilk.net>

--------------l8lDqDR2woOFVWAeNeD5BUtP
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSmFrdWIsDQoNCk9uIDEwLzIxLzIyIDIwOjQxLCBKYWt1YiBXaWxrIHdyb3RlOg0KPiBT
aWduZWQtb2ZmLWJ5OiBKYWt1YiBXaWxrIDxqd2lsa0Bqd2lsay5uZXQ+DQo+IC0tLQ0KPiAg
IG1hbjMvcHJpbnRmLjMgfCA0ICsrLS0NCj4gICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRp
b25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL21hbjMvcHJpbnRm
LjMgYi9tYW4zL3ByaW50Zi4zDQo+IGluZGV4IDhmOTQ0MTkwYi4uODViNWI0MTczIDEwMDY0
NA0KPiAtLS0gYS9tYW4zL3ByaW50Zi4zDQo+ICsrKyBiL21hbjMvcHJpbnRmLjMNCj4gQEAg
LTE5Myw4ICsxOTMsOCBAQCBhbmQNCj4gICBiZWxvdykgYW5kIGVhY2ggY29udmVyc2lvbiBz
cGVjaWZpZXIgYXNrcyBmb3IgdGhlIG5leHQNCj4gICBhcmd1bWVudCAoYW5kIGl0IGlzIGFu
IGVycm9yIGlmIGluc3VmZmljaWVudGx5IG1hbnkgYXJndW1lbnRzIGFyZSBnaXZlbikuDQo+
ICAgT25lIGNhbiBhbHNvIHNwZWNpZnkgZXhwbGljaXRseSB3aGljaCBhcmd1bWVudCBpcyB0
YWtlbiwNCj4gLWF0IGVhY2ggcGxhY2Ugd2hlcmUgYW4gYXJndW1lbnQgaXMgcmVxdWlyZWQs
IGJ5IHdyaXRpbmcgIiVtJCIgaW5zdGVhZA0KPiAtb2YgXChhcSVcKGFxIGFuZCAiKm0kIiBp
bnN0ZWFkIG9mIFwoYXEqXChhcSwNCj4gK2F0IGVhY2ggcGxhY2Ugd2hlcmUgYW4gYXJndW1l
bnQgaXMgcmVxdWlyZWQsIGJ5IHdyaXRpbmcgIiVcZkltXGZQJCIgaW5zdGVhZA0KDQpJJ3Zl
IGFsd2F5cyBoYWQgZG91YnRzIGFib3V0IGhvdyB0aG9zZSB0aGluZ3Mgc2hvdWxkIGJlIGZv
cm1hdHRlZC4gIENvdWxkIHlvdSANCnBsZWFzZSBleHBsYWluIHdoeSB5b3UnZCBmb3JtYXQg
aXQgdGhhdCB3YXk/DQoNClRoYW5rcywNCg0KQWxleA0KDQo+ICtvZiBcKGFxJVwoYXEgYW5k
ICIqXGZJbVxmUCQiIGluc3RlYWQgb2YgXChhcSpcKGFxLA0KPiAgIHdoZXJlIHRoZSBkZWNp
bWFsIGludGVnZXIgXGZJbVxmUCBkZW5vdGVzDQo+ICAgdGhlIHBvc2l0aW9uIGluIHRoZSBh
cmd1bWVudCBsaXN0IG9mIHRoZSBkZXNpcmVkIGFyZ3VtZW50LCBpbmRleGVkIHN0YXJ0aW5n
DQo+ICAgZnJvbSAxLg0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVz
Lz4NCg==

--------------l8lDqDR2woOFVWAeNeD5BUtP--

--------------qtqPi1WsRzFhPOV7PS24qZsB
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNUYoYACgkQnowa+77/
2zIuxQ/9Hga8lWTUKvOEcQQZtLkWApFr9c38/HjFqAsKmUpEuFmS2mH6R8pzguoP
5nBrtv68oyWqzmKVehGFw0hq3PLJeCa1l0NxF1V+tC6yflBOQAKHffDwcbRWu3Tp
Nl8ixXhSG2Y/smvCB3Wpw8RAHngf27yhn8OpLxTdfbnyeSe2RUZQH6tuxKcJE2fa
lVlL6l/qg1FV6pFKB9DxoJmJbFtaIGCjN2W7eztAUL+C5HjkYVeZAUmFEj5S6N7T
pQPPAY8wbaDH/9rZ1PimdofHbL/ZGkq02SEDFiqNuCW9YoSqbPcOtPnS3YJr2ip6
cY+PFzRBlzrBnWUAW3tAHTA6LAtlgo/Dtd9xp4QGPCW/f6WOgWK879XJgZuazS/R
EpU7SXPxOuW9Rn4AUAYG5+28zeFqMZ9Thn5lVDRjNn9kaqbZv0vEWumy5DX+8hPv
5+uvMWwSaEeCASgmrNrRwmuLw4LeltjX8HqEQEpO4VJhxp8BOTU14dcAoWgJxa5X
DbEjfNCv8LvlbnB4nJDHd1w0lWAg16QQU5l2X9W+EIBo9mwEq8XSAwNmHE2/2aLn
Bv4T7qBnT3WPcbmxrxJqezYOL+FJ2djVmTkKFNgFwxeUjzw/w1NMwW/Iv5RPrkKB
0VTbM9Z4cl6DdLO0cr6TbfHsw2L/JxsJvzu08S8r8LMPVmAAOeM=
=5MJ+
-----END PGP SIGNATURE-----

--------------qtqPi1WsRzFhPOV7PS24qZsB--
