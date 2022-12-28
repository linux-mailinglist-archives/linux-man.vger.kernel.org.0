Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E3AFB6586E2
	for <lists+linux-man@lfdr.de>; Wed, 28 Dec 2022 22:04:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230239AbiL1VEX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Dec 2022 16:04:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36928 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230006AbiL1VEW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Dec 2022 16:04:22 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2BEC1262C
        for <linux-man@vger.kernel.org>; Wed, 28 Dec 2022 13:04:20 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id y16so15864329wrm.2
        for <linux-man@vger.kernel.org>; Wed, 28 Dec 2022 13:04:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7F0lLO3R//1doRLN0wmVnpM9X78WxvUIXS5LivkE2O0=;
        b=Nb86Ov/Pxo7c3eWhyzPN1neCnmIFIhCO7KOmc3PUIboT91RkI7RIkf0PZXq6klP0w0
         ZLry1tklKvUd/adcm9yPWaNaoKE9ejLv+QQDlxZp9XDAFwjyOo3yFpN4IOhvtPHlco+S
         QKZWTgoR8UdfRghDJwx22M4YRIp94Gc6zdteGAmZeujKDFn7dF8IK4w19/vi8w5K0VA9
         lI0Ot6ROpMZh5378YUasqIMJBhROHp04/HGDIEwR3iueq/gyUWOpyr8XrdMOCPvT8DXw
         QpfmJ767ImPVgSeIaQdUxLglseHQGR8IfbN/FrOdZJxB1dCLIp/lovpXi869bk52Iyls
         F6ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7F0lLO3R//1doRLN0wmVnpM9X78WxvUIXS5LivkE2O0=;
        b=xkt0rD4tpnwYBmbw6eok7hCy2DAYiRZ31ptJNMpWRLBgSCfAk1F7zzhBcOs7y54eDV
         P/tYrYWH4nOvLWJfYUmAmlQEZTyCUPfRYr+qw0i0DdB/HVXGq737SRaH7pLwZVAebTsn
         0NiTSSVxgJXxKHnT/2rFoNvEmrYxCiK80WmHjdPgHxRncZD0PdMCIDSe5534yubl+01E
         ab7/e9f9jXQ/cZpk8/CNVnmdiGwOVxIXN/gfbG/Gl8Eh9dKTNp/SExi+jb7jqUMKJ1e3
         Ikq0t8dd8ObuoLk2WeHhcbXkIRMhPo71tAZyzObpb/13bca8upvTcCZU/JmVUtov9Ucc
         8TSg==
X-Gm-Message-State: AFqh2kqz2rKfMCiA7CPJy1dlthNMpZfOVNKye9AWIY99djJFbP8KqRxX
        Ffzrtq7k+jorjyuFEukim+0=
X-Google-Smtp-Source: AMrXdXuR7NHN4urCxcrQeYM1aw0f+JW03Tixd6kqkuYCY+Ew/KmoBx6iUKUzUypNSlikF5HyLeBsxA==
X-Received: by 2002:a5d:6b8c:0:b0:242:7084:b1b1 with SMTP id n12-20020a5d6b8c000000b002427084b1b1mr17342836wrx.23.1672261459499;
        Wed, 28 Dec 2022 13:04:19 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id m17-20020a056000181100b002422202fa7fsm16075025wrh.39.2022.12.28.13.04.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Dec 2022 13:04:19 -0800 (PST)
Message-ID: <54a26539-30c6-b787-7741-39baa28f42cb@gmail.com>
Date:   Wed, 28 Dec 2022 22:04:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH] Add example to rand.3
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Jonny Grant <jg@jguk.org>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>,
        Florian Weimer <fweimer@redhat.com>
References: <105835f5-359c-2646-f609-e73459ee2d3b@jguk.org>
 <92e5ad68-d013-43f5-cc3e-459daea93a83@gmail.com>
 <589afb02-2a34-7ad8-62cb-94bccc13033e@jguk.org>
 <3af45047-1d30-c4e8-cb73-a70eed6927fe@gmail.com>
 <da69ac41-1ea0-b852-4e9a-3d27a10f2bd7@jguk.org>
 <b2ee2571-952e-4709-314d-ec4952a44ed8@gmail.com>
 <0c6b86cb-d471-2e35-89f3-840152c60aa2@gmail.com>
In-Reply-To: <0c6b86cb-d471-2e35-89f3-840152c60aa2@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------JeHLIcK5yeD7Ly5baPqb8prm"
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
--------------JeHLIcK5yeD7Ly5baPqb8prm
Content-Type: multipart/mixed; boundary="------------vekxXxOjDhjZrG9Q35cd3ewl";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jonny Grant <jg@jguk.org>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>,
 linux-man <linux-man@vger.kernel.org>,
 GNU C Library <libc-alpha@sourceware.org>,
 Florian Weimer <fweimer@redhat.com>
Message-ID: <54a26539-30c6-b787-7741-39baa28f42cb@gmail.com>
Subject: Re: [PATCH] Add example to rand.3
References: <105835f5-359c-2646-f609-e73459ee2d3b@jguk.org>
 <92e5ad68-d013-43f5-cc3e-459daea93a83@gmail.com>
 <589afb02-2a34-7ad8-62cb-94bccc13033e@jguk.org>
 <3af45047-1d30-c4e8-cb73-a70eed6927fe@gmail.com>
 <da69ac41-1ea0-b852-4e9a-3d27a10f2bd7@jguk.org>
 <b2ee2571-952e-4709-314d-ec4952a44ed8@gmail.com>
 <0c6b86cb-d471-2e35-89f3-840152c60aa2@gmail.com>
In-Reply-To: <0c6b86cb-d471-2e35-89f3-840152c60aa2@gmail.com>

--------------vekxXxOjDhjZrG9Q35cd3ewl
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEyLzI4LzIyIDIyOjAzLCBBbGVqYW5kcm8gQ29sb21hciB3cm90ZToNCj4gSGkg
Sm9ubnksDQo+IA0KPiBPbiAxMi8yOC8yMiAyMTo1NiwgQWxlamFuZHJvIENvbG9tYXIgd3Jv
dGU6DQo+PiBIaSBKb25ueSwNCj4+DQo+PiBPbiAxMi8yOC8yMiAyMTo1MSwgSm9ubnkgR3Jh
bnQgd3JvdGU6DQo+Pj4gWW91J3JlIGNvbXBsZXRlbHkgcmlnaHQuIEl0J3MgYSByZWFsIGlz
c3VlIGlmIHNvZnR3YXJlIHN0YXJ0cyBtdWx0aXBsZSB0aW1lcyANCj4+PiBwZXIgc2Vjb25k
LCBvciBleGVjdXRlcyBpbiBsZXNzIHRoYW4gb25lIHNlY29uZCBhbmQgdGhlbiBydW5zIGFn
YWluLiBPdXIgDQo+Pj4gc29mdHdhcmUgYWx3YXlzIHJ1bnMgZm9yIGF0IGxlYXN0IG1pbnV0
ZXMsIG1heWJlIGFub3RoZXIgY29kZSBzdWdnZXN0aW9uIGZvciANCj4+PiBhIHNlZWQgd291
bGQgYmUgZ29vZCBpbnN0ZWFkLCBsaWtlIGFyYzRyYW5kb20uIEkgZG8gbGlrZSB0aGF0IHJh
bmQoKSBvZmZlcnMgYSANCj4+PiByZXByb2R1Y2libGUgc2VxdWVuY2UsIHVzZWZ1bCB3aGVu
IGluIHNvbWUgb3RoZXIgc29mdHdhcmUgd2UgbG9nZ2VkIHRoZSBzZWVkIA0KPj4+IHZhbHVl
IHVzZWQuIHJhbmRvbS40IC0gL2Rldi9yYW5kb20gd291bGQgYmUgYSBiZXR0ZXIgc2VlZCB0
aGFuIHRpbWUoTlVMTCkgaWYgDQo+Pj4gcnVubmluZyB0aGUgcHJvZ3JhbSBtdWx0aXBsZSB0
aW1lcyBwZXIgc2Vjb25kLiBBbnl3YXksIHJhbmQoKSBpcyBvbmx5IA0KPj4+IHBzZXVkby1y
YW5kb20sIHV0aWxpc2luZyAvZGV2L3JhbmRvbSB3b3VsZCBiZSByZWFsbHkgbXVjaCBtb3Jl
IHJhbmRvbSwgYW5kIEkgDQo+Pj4gbGlrZSB0aGF0IHRoZSBzZWVkIGlzIHNhdmVkIGJldHdl
ZW4gcmVib290cy4NCj4+DQo+PiBBaGgsIEkgZGlkbid0IGNvbm5lY3QgdGhlIGRvdHMgdGhl
IG90aGVyIGRheSHCoCBXZSBkb24ndCBuZWVkIHRvIHdhaXQgZm9yIA0KPj4gZ2xpYmMuIGxp
YmJzZCBhbHJlYWR5IHByb3ZpZGVzIGFyYzRyYW5kb20gb24gR05VL0xpbnV4IHN5c3RlbXMs
IHNvIEkgY2FuIA0KPj4gYWxyZWFkeSByZWNvbW1lbmQgdXNpbmcgYXJjNHJhbmRvbSB0byBz
ZWVkIHNyYW5kKDMpLg0KPj4NCj4+IEknbGwgcHJlcGFyZSBhIHBhdGNoLi4uDQo+Pg0KPiAN
Cj4gSSB3aWxsIHByb2JhYmx5IGFwcGx5IHRoZSBmb2xsb3dpbmcgcGF0Y2guwqAgRG8geW91
IGhhdmUgYW55IGNvbW1lbnRzP8KgIERvZXMgaXQgDQo+IHByb3ZpZGUgdGhlIGluZm9ybWF0
aW9uIHlvdSB3YW50ZWQgdG8gYWRkPw0KPiANCj4gQ2hlZXJzLA0KPiANCj4gQWxleA0KPiAN
Cj4gZGlmZiAtLWdpdCBhL21hbjMvcmFuZC4zIGIvbWFuMy9yYW5kLjMNCj4gaW5kZXggNTcy
NDcxNzQ5Li4zNTBhODc1ZDggMTAwNjQ0DQo+IC0tLSBhL21hbjMvcmFuZC4zDQo+ICsrKyBi
L21hbjMvcmFuZC4zDQo+IEBAIC0xOTAsNiArMTkwLDkgQEAgLlNIIEVYQU1QTEVTDQo+ICDC
oHBzZXVkby1yYW5kb20gc2VxdWVuY2UgcHJvZHVjZWQgYnkNCj4gIMKgLkJSIHJhbmQgKCkN
Cj4gIMKgd2hlbiBnaXZlbiBhIHBhcnRpY3VsYXIgc2VlZC4NCj4gK1doZW4gdGhlIHNlZWQg
aXMNCj4gKy5JUiBcLTEgLA0KPiArdGhlIHByb2dyYW0gdXNlcyBhIHJhbmRvbSBzZWVkLg0K
PiAgwqAuUFANCj4gIMKgLmluICs0bg0KPiAgwqAuXCIgU1JDIEJFR0lOIChyYW5kLmMpDQo+
IEBAIC0yMTEsNyArMjE0LDExIEBAIC5TSCBFWEFNUExFUw0KPiAgwqDCoMKgwqAgc2VlZCA9
IGF0b2koYXJndlsxXSk7DQo+ICDCoMKgwqDCoCBubG9vcHMgPSBhdG9pKGFyZ3ZbMl0pOw0K
PiANCj4gLcKgwqDCoCBzcmFuZChzZWVkKTsNCj4gK8KgwqDCoCBpZiAoc2VlZCA9PSAtMSkN
Cj4gK8KgwqDCoMKgwqDCoMKgIHNyYW5kKHNyYzRyYW5kb20oKSk7DQoNCk9vcHMsIHR5cG8g
dGhlcmUNCg0KPiArwqDCoMKgIGVsc2UNCj4gK8KgwqDCoMKgwqDCoMKgIHNyYW5kKHNlZWQp
Ow0KPiArDQo+ICDCoMKgwqDCoCBmb3IgKHVuc2lnbmVkIGludCBqID0gMDsgaiA8IG5sb29w
czsgaisrKSB7DQo+ICDCoMKgwqDCoMKgwqDCoMKgIHIgPcKgIHJhbmQoKTsNCj4gIMKgwqDC
oMKgwqDCoMKgwqAgcHJpbnRmKCIlZFxlbiIsIHIpOw0KPiBAQCAtMjIzLDUgKzIzMCw2IEBA
IC5TSCBFWEFNUExFUw0KPiAgwqAuXCIgU1JDIEVORA0KPiAgwqAuaW4NCj4gIMKgLlNIIFNF
RSBBTFNPDQo+ICsuQlIgYXJjNHJhbmRvbSAoM2JzZCksDQo+ICDCoC5CUiBkcmFuZDQ4ICgz
KSwNCj4gIMKgLkJSIHJhbmRvbSAoMykNCj4gDQo+IA0KPiANCg0KLS0gDQo8aHR0cDovL3d3
dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------vekxXxOjDhjZrG9Q35cd3ewl--

--------------JeHLIcK5yeD7Ly5baPqb8prm
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOsr1EACgkQnowa+77/
2zIwOQ/9GwWTZ1OH6yjKD5mPajw+nPrYLBsq89cps7VJIpuyTTP+yDofiT5G9qzN
1uTyqjczT05iGZCdo3j9JnLQ1Dgg0LoE1pDxKV6tkShKEXTIudAc6qcOGvB7ucOF
6ME2QaLlYS2J5IepgQN5//JQO9pSQeqFQ5DL7dqen2or7aO+5uzh0VQH+M+zrDTj
9MiIzxoWV2rUYVfFmwCIY9KFZ9W9dP/lrLkght2PmXSGjg191y7QjCc1l4arXmqb
pDdtZUmnt1sTKC5936KzQ/vpr7+RsxMjKDE4hLfgc+qevxHUxOvNKhk/u7G5gzmG
ySBldhw9IFLvuG9NOuCF7w2OAFEqHvXsah8druvWTiDQXFFGk5Qo99wWJdw1ISDZ
z7mYKKICdg4Ut990n1dV+BbU+dwSe4yts86eSsrRcplV3ampDAE58VPRWAeNme/E
YK6rfUdrhce3bm4hSTpX2T8r8wX4uB9SxGwik0MqeWvlUDUDbZOX+IbuYwbWl8ce
cEWr+9/6KqmOQOxV3rBqhaH0oDmRQNnbB366qJ7bunUvb2An92YUxIoe7vlrZuwH
yhS3BauxeQdCSvdHDGFmPGtp/zj8fi4sp5PQ0tiAJSTi1jdFej7HXn8lcF9u3A3s
3dt+28udKnuaQhrJrtjJHSqtV6Qu1MDV9nSGi4HyzHRcMjdnCdA=
=0p5W
-----END PGP SIGNATURE-----

--------------JeHLIcK5yeD7Ly5baPqb8prm--
