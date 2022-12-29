Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 54A0D658F22
	for <lists+linux-man@lfdr.de>; Thu, 29 Dec 2022 17:40:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230022AbiL2QkB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Dec 2022 11:40:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233662AbiL2Qj6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 29 Dec 2022 11:39:58 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57A32BF6F
        for <linux-man@vger.kernel.org>; Thu, 29 Dec 2022 08:39:57 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id k22-20020a05600c1c9600b003d1ee3a6289so13545476wms.2
        for <linux-man@vger.kernel.org>; Thu, 29 Dec 2022 08:39:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S44io7vGzfQ8lj6LpDFLUNl8aJwIPkAUEJOrocXtrSk=;
        b=g24nO4qoKzN5XYKuVApAlKFK+sAYgnAGPsoi8sgPWUTZ9TlNBgILgGLYwqWQiHPzQf
         Mu5i1V+W4cpIJ4mezqzqVXiokqnrR9VA8Ql9OjyVypVN7nRouC3lXxJZ0KSqWP/ohgCh
         0rVL0Z8Hlls+/zKmyO3uyIEUpCmIYRCBJF93UHZ5GTQpdPqWrYGT3tK6hkhVFHeYovTR
         3E4ZLLMW109/bJtmu7cPbVgcGOuDyWsLLSB7Vq3jbn7/MMv+bqml9ubH/i8VUQUe919o
         CbSlzxogA28IeyWE5vR79LD0yZ5ihT2NmuGRF3FraoAgNnQi3BspcTeba7kjUlj0T4UQ
         RxDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=S44io7vGzfQ8lj6LpDFLUNl8aJwIPkAUEJOrocXtrSk=;
        b=f1Lf4xGjRCw5KniXIPDkUYQq623+dZ8tm2QThbJH5cHd/5EJ4dY41tWsnFeSkv9gBB
         dsSDyPmHaTOhe9fbFSn2LAIcP3TXsCiafcFK6fTLVPhTUsoUpkx7ga/a7dz26lJmrEQC
         cDEAlK8hpSR6Bnv00nC2wT55pb/ucrr08Vjov0jheWIYbnNnM5UImU1S1NZaVfvhdqdX
         Qb2aVMfQ9rDV+souyLeIVhtCaNZSBV5Ajc1JQSjqPkNUNsdqvhPP4Mm/QSpUXn2+ZjbC
         h/NShq488ZoJv74T4h/LuCQ112wpaUfDUbvHVi49y857OCvUmpG80SvgCtyb+CQ2yEcf
         zfiw==
X-Gm-Message-State: AFqh2kot+7EFBQQIeMyhauBAWwJZFfro/zpyrOq5oQKuC70gexamPZMW
        X6nNnScgh7fy45gPyAnRXHQ=
X-Google-Smtp-Source: AMrXdXtE1yKebENYucF86QrL3HEhRWbepOjJX32TLoqSpHghZCCcrZpR7sfkMMHKCPOqFpnWRFCdxA==
X-Received: by 2002:a05:600c:35d1:b0:3d3:58d1:2588 with SMTP id r17-20020a05600c35d100b003d358d12588mr21215549wmq.41.1672331995850;
        Thu, 29 Dec 2022 08:39:55 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id h23-20020a1ccc17000000b003d1e051f671sm24673499wmb.9.2022.12.29.08.39.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Dec 2022 08:39:55 -0800 (PST)
Message-ID: <9446d42e-c00e-d1ea-e8ac-06a14e8a2669@gmail.com>
Date:   Thu, 29 Dec 2022 17:39:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH] scanf.3: Do not mention the ERANGE error
Content-Language: en-US
To:     Zack Weinberg <zack@owlfolio.org>
Cc:     libc-alpha@sourceware.org, 'linux-man' <linux-man@vger.kernel.org>,
        Ian Abbott <abbotti@mev.co.uk>
References: <20221208123454.13132-1-abbotti@mev.co.uk>
 <5f490d45-b31e-279e-edcb-de4806b8ba54@gmail.com>
 <d1ecf57b-72cf-dbb4-3b4a-b19c7cdc93e9@mev.co.uk>
 <06f70d09-a258-7d6d-4a98-6a89ed761849@gmail.com>
 <6269173b-20cb-7b47-1ad9-6099a9baa052@owlfolio.org>
 <d65cff0c-7aba-8bb3-9a2f-3d07f20517b4@gmail.com>
 <ypikk02xv09c.fsf@owlfolio.org>
 <a7a60a45-afb2-2fae-f6b0-a26db649c09c@gmail.com>
 <ypikwn6uag11.fsf@owlfolio.org>
 <4fe9ed93-8fb9-64d0-26f1-a9560387d108@gmail.com>
 <ypikv8luogqp.wl-zack@owlfolio.org>
 <c5b7ba41-4c18-5d78-43c2-fc9f088298db@gmail.com>
 <ypikv8lugobi.wl-zack@owlfolio.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <ypikv8lugobi.wl-zack@owlfolio.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------j3zSUOuvtHOG00eRcUMfpdhp"
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
--------------j3zSUOuvtHOG00eRcUMfpdhp
Content-Type: multipart/mixed; boundary="------------AkDMlhdlQ75wWCxdS9Cgo4MT";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Zack Weinberg <zack@owlfolio.org>
Cc: libc-alpha@sourceware.org, 'linux-man' <linux-man@vger.kernel.org>,
 Ian Abbott <abbotti@mev.co.uk>
Message-ID: <9446d42e-c00e-d1ea-e8ac-06a14e8a2669@gmail.com>
Subject: Re: [PATCH] scanf.3: Do not mention the ERANGE error
References: <20221208123454.13132-1-abbotti@mev.co.uk>
 <5f490d45-b31e-279e-edcb-de4806b8ba54@gmail.com>
 <d1ecf57b-72cf-dbb4-3b4a-b19c7cdc93e9@mev.co.uk>
 <06f70d09-a258-7d6d-4a98-6a89ed761849@gmail.com>
 <6269173b-20cb-7b47-1ad9-6099a9baa052@owlfolio.org>
 <d65cff0c-7aba-8bb3-9a2f-3d07f20517b4@gmail.com>
 <ypikk02xv09c.fsf@owlfolio.org>
 <a7a60a45-afb2-2fae-f6b0-a26db649c09c@gmail.com>
 <ypikwn6uag11.fsf@owlfolio.org>
 <4fe9ed93-8fb9-64d0-26f1-a9560387d108@gmail.com>
 <ypikv8luogqp.wl-zack@owlfolio.org>
 <c5b7ba41-4c18-5d78-43c2-fc9f088298db@gmail.com>
 <ypikv8lugobi.wl-zack@owlfolio.org>
In-Reply-To: <ypikv8lugobi.wl-zack@owlfolio.org>

--------------AkDMlhdlQ75wWCxdS9Cgo4MT
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgWmFjaywNCg0KT24gMTIvMjkvMjIgMTc6MzUsIFphY2sgV2VpbmJlcmcgd3JvdGU6DQo+
IE9uIFRodSwgMjkgRGVjIDIwMjIgMDU6NDc6MDYgLTA1MDAsIEFsZWphbmRybyBDb2xvbWFy
IHdyb3RlOg0KPj4gT24gMTIvMjkvMjIgMDc6MzksIFphY2sgV2VpbmJlcmcgd3JvdGU6DQo+
Pj4gVG8gYmUgY2xlYXIsIEkgcGVyc29uYWxseSBkb27igJl0IGhhdmUgcGxhbnMgdG8gZG8g
YW55IG9mIHRoZSBhY3R1YWwNCj4+PiBwcm9ncmFtbWluZyBvciBzdGFuZGFyZC1jaGFuZ2lu
ZyB3b3JrIGludm9sdmVkIGhlcmUuICA6LSkNCj4+DQo+PiBBaCwgbm8sIEkgbWVhbnQgbW9y
ZSB0aGF0IHRoZSB3aG9sZSBzZXQgb2YgZ2xpYmMgbWFpbnRhaW5lcnMgaGFkIHRoYXQNCj4+
IGluIG1pbmQsIGFzIGEgbG9uZyB0ZXJtIHBsYW4gKGxpa2UgMTAgeWVhcnMgbWF5YmU/KS4N
Cj4gDQo+IE9oLCBPSy4gIFllYWgsIGNoYW5nZXMgdG8gdGhlIHN0YW5kYXJkIGNhbiBlYXNp
bHkgdGFrZSB0aGF0IGxvbmcuDQo+IA0KPj4gQmVmb3JlIHlvdSBzdGFydCB3cml0aW5nIHBh
dGNoZXMsIEknbSBjb25zaWRlcmluZyB0aGUgZm9sbG93aW5nLCB3aGljaA0KPj4gaXMgbXkg
d2F5IHRvIHNheSBkb24ndCB1c2UgdGhlc2UgZnVuY3Rpb25zIHdpdGhvdXQgZGVwcmVjYXRp
bmcgdGhlbToNCj4+DQo+PiBTcGxpdCBGSUxFIGFuZCBjaGFyKiBmdW5jdGlvbnMgaW50byBz
ZXBhcmF0ZSBtYW51YWwgcGFnZXMuICBJbiB0aGUgb25lDQo+PiBmb3IgW3Zdc3NjYW5mKDMp
LCBJJ2Qga2VlcCB0aGUgY3VycmVudCBkb2N1bWVudGF0aW9uLiAgSW4gdGhlIG9uZSBmb3IN
Cj4+IEZJTEUgZnVuY3Rpb25zLCBJJ2Qga2VlcCBpdCB2ZXJ5IHNob3J0LCBkZWZlcmluZyB0
byBzc2NhbmYoMykgZm9yDQo+PiBkb2N1bWVudGF0aW9uIG9mIHRoaW5ncyBsaWtlIGNvbnZl
cnNpb24gc3BlY2lmaWVycywgYW5kIHRoYXQgcGFnZQ0KPj4gd291bGQgb25seSBjb3ZlciB0
aGUgYnVnc15XZGlmZmVyZW5jZXMgdGhhdCBhcHBseSBvbmx5IHRvIEZJTEUNCj4+IGZ1bmN0
aW9ucy4NCj4gDQo+IFRoYXQgc2VlbXMgbGlrZSBhIGdvb2Qgd2F5IGZvcndhcmQgdG8gbWUu
DQoNCkkndmUgZG9uZSB0aGUgc3BsaXR0aW5nLiAgSWYgeW91IHdvdWxkIGxpa2UgdG8gcHJl
cGFyZSBhbnkgcGF0Y2hlcyBmb3IgYWRkaW5nIA0KQlVHUywgSSdsbCB0YWtlIHRoZW0gOikN
Cg0KQ2hlZXJzLA0KDQpBbGV4DQoNCj4gDQo+IHp3DQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxl
amFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------AkDMlhdlQ75wWCxdS9Cgo4MT--

--------------j3zSUOuvtHOG00eRcUMfpdhp
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOtwsQACgkQnowa+77/
2zJYBQ/7BQKFTR+YjnYVMGSqrMq1GEhC7dO7pS9P7zRVN/I0v4LrruzBpxUa0OuX
ESqPLhhhmfUlk+APJPLWUzrauYXer6EdPMOSXBhHtUlpte902kDW2rwMIkoSBchw
iUxmzmQ3EQxubxkQPc16Fg28pxrZVGdWVPefhNkgLQ3mTjk+GzT3Hhn+631Yd25T
hbI/yuhogD2Qtiz+6gN95ygLJDS25air7sUErHna1pyzTzyu7knCjULaEityhGmZ
AkBHX9VQ8nCOUWi2NsyHH77ReGFFtT8jNtpgOK9rFlLOXkbFe6A/pSeNMjHmFerK
jNuS2OpEDLKQkv6WA8bYP5BUO1AVeNJzxJ7S1BwazaV5Mdv3mwFewA2JedByP/ZK
kEJ0EPFmCKGIIrwwjFrnAujhm5LBOZkd3A143Fx9RfTChbfJ+3uWbIupcJtls4hq
pILMH/jjVYSsxH3UCJrbVPmNfKBGW6pxQhP6oQhwEcFjOOhZz43lKvmDK+BfY3uq
R+PejuCyzQdc5R4dB9axkZkyLtbIviMZ4ZiK0bD6DQtlTihAhbnqwMAuEL5zc7yr
k41IBg+zrbHfUbyABSre8JtE5wJVwjj9vne2yP3KlZW8sCaUC1peprww/MiUTjCs
FH6MpNXY+bzKgeDWgVT2qJwmMyoKXikX+GsJC0izDBqo4kHFOR0=
=0Xb5
-----END PGP SIGNATURE-----

--------------j3zSUOuvtHOG00eRcUMfpdhp--
