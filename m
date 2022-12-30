Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 01FA8659750
	for <lists+linux-man@lfdr.de>; Fri, 30 Dec 2022 11:31:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234529AbiL3KbW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Dec 2022 05:31:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53086 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230372AbiL3KbV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 30 Dec 2022 05:31:21 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A9506590
        for <linux-man@vger.kernel.org>; Fri, 30 Dec 2022 02:31:20 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id z16so3068514wrw.1
        for <linux-man@vger.kernel.org>; Fri, 30 Dec 2022 02:31:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-language:references:cc:to:from:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TaeaETXFEaMqocJ18HReL2YvgZeZybe+2r0v+M/F6wA=;
        b=Pb0zOePm2/6tkpt8kR4Mp1k+ggCUuGmTdZOhXhfftz+IV6absDNs+Bd8MZkZaRU37J
         YoWHG0dCFsuOsmSVl6MnpTyb7u5WvZWKSp3pLLajVxVA8qdk0iW5WEMYESfI6Kz+PBR5
         peL7a5MMjZbBt83m8QgLZKjzKSOT8XSRAsMIPxjcRWpr0VUWoHVZ6iLzL1xtNkf2hfKY
         QSFQuEdmg2gnqQznx+Z6to+zb5EAWnl9TLTZ1SZbE1Yj4L0813ayz6UrqMv8dqhMwgi5
         fgGiDMgsGrA/kHp3dKwSJdTPW1Ab/GJzBfzqrRxC0zfbWvEo836t6uW6Qs+yffCrKjL9
         uraw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-language:references:cc:to:from:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=TaeaETXFEaMqocJ18HReL2YvgZeZybe+2r0v+M/F6wA=;
        b=RAEhF0rLaFLghUDl+j3iXXEzwM0dQxzzm6LMcc7sZnEYSDdE8EgqLhEakzK/8wZUrR
         Cl7PAdisEWFjjr9vP5lR79VMpDa3lh+CIpTrwARSdbXzTwOOTXkIB74iCTcACyJ0674x
         +QFLlAmP+r5GQHkFC6Y6xlWm/wUNY3Sg2Xs7xi4Xv64VceMIvmM70CGTTNDloEUAvk7s
         ESVcCpAFbufbP7artdzHgdcIhjRSYETyaKOpP2dP8330wI9p2UaqQe2XdGpSENSTeTgv
         Jc1V7kbbaMXSYcE+HMaHMa1oU+6QaDr4jNCdVqzOgFV6CKswuJfHAjHhJILLSAb686Nv
         rg9g==
X-Gm-Message-State: AFqh2koLiLdHRk+rPt6muAAb4VKTYArE8QCWh57Yej1CjalvZ7qAT0FE
        vBss/vUinz/PHJPq7yw9ZG1XOvRNzlg=
X-Google-Smtp-Source: AMrXdXtlvqX/bpKpDGo8T3td1Wqt4jYEbOx1ui2jmbfPYhWlpwiLEYcODKRNpqliceNybc9OZuv0sA==
X-Received: by 2002:a5d:6d0f:0:b0:28b:456c:1b6d with SMTP id e15-20020a5d6d0f000000b0028b456c1b6dmr5630454wrq.55.1672396278732;
        Fri, 30 Dec 2022 02:31:18 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id i18-20020adff312000000b0024274a5db0asm20562756wro.2.2022.12.30.02.31.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Dec 2022 02:31:18 -0800 (PST)
Message-ID: <8a005132-e724-6388-1834-73ef832b2ed1@gmail.com>
Date:   Fri, 30 Dec 2022 11:31:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [manual]: rawmemchr(3) and UB
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     =?UTF-8?Q?Cristian_Rodr=c3=adguez?= <crrodriguez@opensuse.org>
Cc:     GNU C Library <libc-alpha@sourceware.org>,
        linux-man <linux-man@vger.kernel.org>
References: <82db6083-5daa-66f9-2a4e-2823168f1574@gmail.com>
 <CAPBLoAc94b1XG2mEea3-BS=fqmGvqu_EeRtJLvNDqD3F7fMj=A@mail.gmail.com>
 <9b215805-202d-9267-1fd9-57f994036f6f@gmail.com>
Content-Language: en-US
In-Reply-To: <9b215805-202d-9267-1fd9-57f994036f6f@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------9M1J06mqvhgvmcJ6q8tNl9lT"
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
--------------9M1J06mqvhgvmcJ6q8tNl9lT
Content-Type: multipart/mixed; boundary="------------0jjFypgMDUMYmpOxG40IOfbI";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?Q?Cristian_Rodr=c3=adguez?= <crrodriguez@opensuse.org>
Cc: GNU C Library <libc-alpha@sourceware.org>,
 linux-man <linux-man@vger.kernel.org>
Message-ID: <8a005132-e724-6388-1834-73ef832b2ed1@gmail.com>
Subject: Re: [manual]: rawmemchr(3) and UB
References: <82db6083-5daa-66f9-2a4e-2823168f1574@gmail.com>
 <CAPBLoAc94b1XG2mEea3-BS=fqmGvqu_EeRtJLvNDqD3F7fMj=A@mail.gmail.com>
 <9b215805-202d-9267-1fd9-57f994036f6f@gmail.com>
In-Reply-To: <9b215805-202d-9267-1fd9-57f994036f6f@gmail.com>

--------------0jjFypgMDUMYmpOxG40IOfbI
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQ3Jpc3RpYW4sDQoNCk9uIDEyLzI5LzIyIDIwOjUwLCBBbGVqYW5kcm8gQ29sb21hciB3
cm90ZToNCj4gT24gMTIvMjkvMjIgMjA6NDUsIENyaXN0aWFuIFJvZHLDrWd1ZXogd3JvdGU6
DQo+PiBPbiBUaHUsIERlYyAyOSwgMjAyMiBhdCA0OjIwIFBNIEFsZWphbmRybyBDb2xvbWFy
IHZpYSBMaWJjLWFscGhhDQo+PiA8bGliYy1hbHBoYUBzb3VyY2V3YXJlLm9yZz4gd3JvdGU6
DQoNClsuLi5dDQoNCj4+DQo+PiBUaGUgbGlicmFyeSBpdHNlbGYgdXNlcyB0aGlzIGZ1bmN0
aW9uIG1vc3RseSB0byBmaW5kIE5VTEwgYXMgYW4NCj4+IG9wdGltaXphdGlvbi4gVGhpcyBp
cyBhbGwgYmVmb3JlIEdDQyBoYW5kbGVkIGFsbCBvZiB0aGlzIHNvIGl0IGlzDQo+PiBtb3N0
bHkgb2Jzb2xldGUuDQo+PiBnY2MgcmVwbGFjZXMgbnVsbCBieXRlIHNlYXJjaGVzIHRoYXQg
dXNlIHN0cipjaHIgd2l0aCBzICsgc3RybGVuKHMpDQo+PiBhbmQgZXhwYW5kcyBtZW1jaHIg
Yz1udWxswqAgYW5kIHJhd21lbWNoci1saWtlIHBhdHRlcm5zIGlubGluZS4NCj4gDQo+IFlv
dSBtZWFuIHRoYXQgR0NDIGRvZXMgdGhlIGZvbGxvd2luZz86DQo+IA0KPiANCj4gaW5saW5l
IHNpemVfdA0KPiBzdHJsZW4oY29uc3QgY2hhciAqcykNCj4gew0KPiAgwqDCoMKgwqByZXR1
cm4gcmF3bWVtY2hyKHMsICdcMCcpOw0KT2J2aW91cyB0eXBvIGhlcmU6IEkgZm9yZ290IHRv
IHN1YnRyYWN0IHMuDQo+IH0NCj4gDQo+IA0KPiBJZiBzbywgZ3JlYXQsIGJlY2F1c2UgSSBh
bSB3cml0aW5nIGEgbGliYyByZXBsYWNlbWVudCwgYW5kIHdhcyBpbXBsZW1lbnRpbmcgDQo+
IHN0cmxlbigzKSBleGFjdGx5IGxpa2UgdGhhdCwgd2hpY2ggaXMgd2h5IEkgbmVlZGVkIHRo
ZSBkb2NzLsKgIEl0IG1heSBiZSANCj4gc29tZXRoaW5nIG5vdCB2ZXJ5IHVzZWZ1bCwgYnV0
IEkgZ3Vlc3MgaXQncyBzdGlsbCB2ZXJ5IHVzZWZ1bCBmb3IgbGliYyBpbnRlcm5hbHMuDQo+
IA0KDQpJdCBzZWVtcyBJIG1pc3VuZGVyc3Rvb2QgeW91ciBlbWFpbC4gIEkndmUgc2VlbiB0
aGF0IGdsaWJjIGltcGxlbWVudHMgDQpyYXdtZW1jaHIoMykgaW4gdGVybXMgb2Ygc3RybGVu
KDMpIGFuZCBtZW1jaHIoMykuICBTbyBpdCBzZWVtcyBiZXR0ZXIgdG8ganVzdCANCm5vdCBp
bXBsZW1lbnQgdGhpcyBmdW5jdGlvbiBpbiBteSBsaWJyYXJ5LCBhbmQgb3B0aW1pemUgc3Ry
bGVuKDMpIGRpcmVjdGx5LiAgVGhlIA0Kbm9uLSdcMCcgY2FzZSBzZWVtcyB1c2VsZXNzLCBz
byBwcm9iYWJseSBub3Qgd29ydGggdGhpcyBmdW5jdGlvbiB1bmxlc3MgSSBzZWUgYSANCnVz
ZSBmb3IgaXQuDQoNCkNoZWVycywNCg0KQWxleA0KDQotLSANCjxodHRwOi8vd3d3LmFsZWph
bmRyby1jb2xvbWFyLmVzLz4NCg==

--------------0jjFypgMDUMYmpOxG40IOfbI--

--------------9M1J06mqvhgvmcJ6q8tNl9lT
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOuve0ACgkQnowa+77/
2zJ+/RAAhMUEH/p8z1uHsNDcyX+WXmYnb03n/EA3Knbl+MyIj3NC4Pd9smZqS1n6
5M90VccPs2naum4RLvv9TPoqz9O1arsTR8gGI6vY63jhhnXRT9v5iWPhEfYs/LQG
5M4Sym/nDI8pa4auwCc3IDvfT7wGUSznjzgnqbW7bipOJMHFNzBtjwoSVLePQTMb
FxerZDIylKJtlokKZ/HywAFCczh6mtEZrV4XVppuIZsTj3GL8hK4yRhsoNWjc5Ry
xrVML/GyN05X4lp1PJLzoyf+KzlO8nGR1H/j38nFulNCTIk/BNvUNsEO2gzIIvhy
hkES9bAVbiEidCq+FeQC5hv414w7cRaS+CAyaTNwKXZZ4CRQwhypwFSPWPo1AVTj
CacWK4Tv8jJCwpu2ogATQ6E54+K4MVxdzY86cuqqw8Of5uAk94W6wr1Hc0keQFMo
zpblRYIpTXodcahKjyZSGNT7gRp4bkVYrwQrRrhiJ6HdSE5NG6TTkTeWy9aAoUFU
nARLAJ4L05/u2Ks3KXtU/to8VQi3UwmD9xU3wYxlppZgtOK0sfy1EUBcDgNX7sG3
qEF7vNu4G8HRuT2Nh9lv5MBJVRyGoH7dZzUSMnv6ZuPMoC+E1tCIg9ziH65kGfkF
onBEJ7vGua/G5Gw1R5k8Ng5qY3mKER/Ifqnxq/HddTTHbF8ninI=
=SxuD
-----END PGP SIGNATURE-----

--------------9M1J06mqvhgvmcJ6q8tNl9lT--
