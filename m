Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1127E5ABF75
	for <lists+linux-man@lfdr.de>; Sat,  3 Sep 2022 17:09:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229734AbiICPJY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Sep 2022 11:09:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60740 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229455AbiICPJW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Sep 2022 11:09:22 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D853E18E2A
        for <linux-man@vger.kernel.org>; Sat,  3 Sep 2022 07:59:37 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id e20so5676079wri.13
        for <linux-man@vger.kernel.org>; Sat, 03 Sep 2022 07:59:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date;
        bh=2EdqQqGJNeQoFezEsL1Zwbv9DtqmguB1YWPrw0v28RE=;
        b=qFD0cW7micqKx9Vp26pIduKotpghRe75YiSbg/dm1L8K0bXufUjYHLyvaKyTAe0IyT
         O0Sn2IGnUH0lUaronoYpooSiD9NfiwV4jH5RWPWac9i+DAI78nG8y5v+24wX7DcJbuFi
         WTd0tKFJDSgQaqgfno3n8du7qH4tc5xOK7TS1jzuqqZuGwphQz3aGxpoqHS7ArDBWJrJ
         llrrAnzeLnpYN7h7tvIf5JnKZupqjUAtfvxpEBh1ledTBy4TqyQKMbqv1Z63oyarDv0X
         +KlnDsFkt/ShwQinT9bRPsOU54f5KpjUHCqwK8WJ03FmorW+xAZuZW/OZ/E/+V1HgDKU
         0ZcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date;
        bh=2EdqQqGJNeQoFezEsL1Zwbv9DtqmguB1YWPrw0v28RE=;
        b=tr2/CUtbIntlP5g1C3gEfhOwvlurcEy5sV0kRMVrDaPpweCRawDI30e5s2RBo+bCky
         eyUk1vPgLh3Cei7LjMvTNdHNqs2XbDtprNXsfN4JO/g5FeIhLb7ek+k34QyArxqq5+eh
         /KVRW1N5I01FDjKAV4qvjjMhFunTnVAOt1Cp7ciMrUoBSbL0yYjG9DY3TOFf6k55fNZP
         PBVvMCqp8irHlXDdG1OOuz3a9hvHGq4dM2/ghmxrBZeF1ZuAGqwvusQyIkg1IyQMe9I3
         zN+eKKXQ18YBUbxKdtVCYcocsRk40UszyIwiYZ9165tjHD6CoPgGf4DKY0C3mFLvlXCg
         smaw==
X-Gm-Message-State: ACgBeo1m2VsHIEYE7g9m54G3H5SJvl4Ocn+fivNk47jT/aEVdpkAWgCc
        TSVk7WlPdiVdB7s5YPQEWhA=
X-Google-Smtp-Source: AA6agR6nUDaUmCwzeQByLJGcZ+/lTyj4PISvu/12g4tqclyEjLUD/hwwQXvIClFWDA46u9eVOVLnlA==
X-Received: by 2002:adf:fc83:0:b0:226:d2d4:bc27 with SMTP id g3-20020adffc83000000b00226d2d4bc27mr17947718wrr.606.1662217176249;
        Sat, 03 Sep 2022 07:59:36 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id n6-20020a5d4006000000b00226d3e9f8f4sm3878910wrp.98.2022.09.03.07.59.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Sep 2022 07:59:35 -0700 (PDT)
Message-ID: <51f5a2f2-84c1-bc75-cf94-0cdc1771d37f@gmail.com>
Date:   Sat, 3 Sep 2022 16:59:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
Content-Language: en-US
To:     Martin Uecker <uecker@tugraz.at>
Cc:     Ingo Schwarze <schwarze@usta.de>,
        JeanHeyd Meneide <wg14@soasis.org>, linux-man@vger.kernel.org,
        gcc@gcc.gnu.org
References: <20220826210710.35237-1-alx.manpages@gmail.com>
 <Ywn7jMtB5ppSW0PB@asta-kit.de>
 <89d79095-d1cd-ab2b-00e4-caa31126751e@gmail.com>
 <YwoXTGD8ljB8Gg6s@asta-kit.de>
 <e29de088-ae10-bbc8-0bfd-90bbb63aaf06@gmail.com>
 <5ba53bad-019e-8a94-d61e-85b2f13223a9@gmail.com>
 <CACqA6+mfaj6Viw+LVOG=nE350gQhCwVKXRzycVru5Oi4EJzgTg@mail.gmail.com>
 <491a930d-47eb-7c86-c0c4-25eef4ac0be0@gmail.com>
 <2abccaa2-d472-4c5b-aea6-7a2dddd665da@gmail.com>
 <4475b350c2a4d60da540c0f3055f466640e6c409.camel@tugraz.at>
 <fcf6f3f7-f61d-9b91-bfeb-370849439ce3@gmail.com>
 <d524528c29f806b763a2d394abc1241f6b2dc0cb.camel@tugraz.at>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <d524528c29f806b763a2d394abc1241f6b2dc0cb.camel@tugraz.at>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0HYsLE3C4U9xRjB1TvJZeMX2"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------0HYsLE3C4U9xRjB1TvJZeMX2
Content-Type: multipart/mixed; boundary="------------RSXYE0wDvDUr1HEux5Ed0ZgD";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Martin Uecker <uecker@tugraz.at>
Cc: Ingo Schwarze <schwarze@usta.de>, JeanHeyd Meneide <wg14@soasis.org>,
 linux-man@vger.kernel.org, gcc@gcc.gnu.org
Message-ID: <51f5a2f2-84c1-bc75-cf94-0cdc1771d37f@gmail.com>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
References: <20220826210710.35237-1-alx.manpages@gmail.com>
 <Ywn7jMtB5ppSW0PB@asta-kit.de>
 <89d79095-d1cd-ab2b-00e4-caa31126751e@gmail.com>
 <YwoXTGD8ljB8Gg6s@asta-kit.de>
 <e29de088-ae10-bbc8-0bfd-90bbb63aaf06@gmail.com>
 <5ba53bad-019e-8a94-d61e-85b2f13223a9@gmail.com>
 <CACqA6+mfaj6Viw+LVOG=nE350gQhCwVKXRzycVru5Oi4EJzgTg@mail.gmail.com>
 <491a930d-47eb-7c86-c0c4-25eef4ac0be0@gmail.com>
 <2abccaa2-d472-4c5b-aea6-7a2dddd665da@gmail.com>
 <4475b350c2a4d60da540c0f3055f466640e6c409.camel@tugraz.at>
 <fcf6f3f7-f61d-9b91-bfeb-370849439ce3@gmail.com>
 <d524528c29f806b763a2d394abc1241f6b2dc0cb.camel@tugraz.at>
In-Reply-To: <d524528c29f806b763a2d394abc1241f6b2dc0cb.camel@tugraz.at>

--------------RSXYE0wDvDUr1HEux5Ed0ZgD
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgTWFydGluLA0KDQpPbiA5LzMvMjIgMTY6MzUsIE1hcnRpbiBVZWNrZXIgd3JvdGU6DQo+
IEFtIFNhbXN0YWcsIGRlbiAwMy4wOS4yMDIyLCAxNTo0MSArMDIwMCBzY2hyaWViIEFsZWph
bmRybyBDb2xvbWFyOg0KPj4gSGkgTWFydGluLA0KPj4NCj4+IE9uIDkvMy8yMiAxNDo0Nywg
TWFydGluIFVlY2tlciB3cm90ZToNCj4+IFsuLi5dDQo+Pg0KPj4+IEdDQyB3aWxsIHdhcm4g
aWYgdGhlIGJvdW5kIGlzIHNwZWNpZmllZCBpbmNvbnNpc3RlbnRseSBiZXR3ZWVuDQo+Pj4g
ZGVjbGFyYXRpb25zIGFuZCBhbHNvIGVtaXQgd2FybmluZ3MgaWYgaXQgY2FuIHNlZSB0aGF0
IGEgYnVmZmVyDQo+Pj4gd2hpY2ggaXMgcGFzc2VkIGlzIHRvbyBzbWFsbDoNCj4+Pg0KPj4+
IGh0dHBzOi8vZ29kYm9sdC5vcmcvei9Qc2pQRzFudjcNCj4+DQo+PiBUaGF0J3MgdmVyeSBn
b29kIG5ld3MhDQo+Pg0KPj4gQlRXLCBpdCdzIG5pY2UgdG8gc2VlIHRoYXQgR0NDIGRvZXNu
J3QgbmVlZCAnc3RhdGljJyBmb3IgYXJyYXkNCj4+IHBhcmFtZXRlcnMuICBJIG5ldmVyIHVu
ZGVyc3Rvb2Qgd2hhdCB0aGUgc3RhdGljIGtleXdvcmQgYWRkcyB0aGVyZS4NCj4+IFRoZXJl
J3Mgbm8gd2F5IG9uZSBjYW4gc3BlY2lmeSBhbiBhcnJheSBzaXplIGFuIG1lYW4gYW55dGhp
bmcgb3RoZXIgdGhhbg0KPj4gcmVxdWlyaW5nIHRoYXQsIGZvciBhIG5vbi1udWxsIHBvaW50
ZXIsIHRoZSBhcnJheSBzaG91bGQgaGF2ZSBhdCBsZWFzdA0KPj4gdGhhdCBzaXplLg0KPiAN
Cj4gIEZyb20gdGhlIEMgc3RhbmRhcmQncyBwb2ludCBvZiB2aWV3LA0KPiANCj4gdm9pZCBm
b28oaW50IG4sIGNoYXIgYnVmW25dKTsNCj4gDQo+IGlzIHNlbWFudGljYWxseSBlcXVpdmFs
ZW50IHRvDQo+IA0KPiB2b2lkIGZvbyhpbnQsIGNoYXIgKmJ1Zik7DQo+IA0KPiBhbmQgd2l0
aG91dCAnc3RhdGljJyB0aGUgJ24nIGhhcyBubyBmdXJ0aGVyIG1lYW5pbmcNCj4gKHRoaXMg
aXMgZGlmZmVyZW50IGZvciBwb2ludGVycyB0byBhcnJheXMpLg0KDQpJIGtub3cuICBJIGp1
c3QgZG9uJ3QgdW5kZXJzdGFuZCB0aGUgcmF0aW9uYWxlIGZvciB0aGF0IGRlY2lzc2lvbi4g
Oi8NCg0KPiANCj4gVGhlIHN0YXRpYyBrZXl3b3JkIGltcGxpZXMgdGhhdCB0aGUgcG9pbnRl
ciBpcyBiZSB2YWxpZCBhbmQNCj4gbm9uLXplcm8gYW5kIHRoYXQgdGhlcmUgbXVzdCBiZSBh
dCBsZWFzdCAnbicgZWxlbWVudHMNCj4gYWNjZXNzaWJsZSwgc28gaW4gc29tZSBzZW5zZSBp
dCBpcyBzdHJvbmdlciAoaXQgaW1wbGllcw0KPiBhbGlkIG5vbi16ZXJvIHBvaW50ZXJzKSwg
YnV0IGF0IHRoZSBzYW1lIHRpbWUgaXQgZG9lcyBub3QNCj4gaW1wbHkgYSBib3VuZC4NCg0K
VGhhdCBzdHJvbmdlciBtZWFuaW5nLCBJIHRoaW5rIGlzIGEgbWlzdGFrZSBieSB0aGUgc3Rh
bmRhcmQuDQpCYXNpY2FsbHksIFtzdGF0aWMgbl0gbWVhbnMgdGhlIHNhbWUgYXMgW25dIGNv
bWJpbmVkIHdpdGggW1tnbnU6Om5vbm51bGxdXS4NCldoYXQgdGhlIHN0YW5kYXJkIHNob3Vs
ZCBoYXZlIGRvbmUgd291bGQgYmUgdG8ga2VlcCB0aG9zZSB0d28gdGhpbmdzIA0Kc2VwYXJh
dGUsIHNpbmNlIG9uZSBtYXkgd2FudCB0byBkZWNsYXJlIG5vbi1udWxsIG5vbi1hcnJheSBw
b2ludGVycywgb3IgDQpwb3NzaWJseS1udWxsIGFycmF5IG9uZXMuICBTbyB0aGUgc3RhbmRh
cmQgc2hvdWxkIGhhdmUgc3RhbmRhcmRpemVkIHNvbWUgDQpmb3JtIG9mIG5vbm51bGwgZm9y
IHRoYXQuICBCdXQgdGhlIHJlY2VudCBkaXNjdXNzaW9uIGFib3V0IHByZXNlbnRpbmcgDQpu
b25udWxsIHBvaW50ZXJzIGFzIFtzdGF0aWMgMV0gaXMgaG9ycmlibGUuICBCdXQgbGV0J3Mg
d2FpdCB0aWxsIHRoZSANCmZ1dHVyZSBob3BlZnVsbHkgZml4ZXMgdGhpcy4NCg0KPiANCj4g
QnV0IEkgYWdyZWUgdGhhdCAnbicgd2l0aG91dCAnc3RhdGljJyBzaG91bGQgc2ltcGx5IGlt
cGx5DQo+IGEgYm91bmQgYW5kIEkgdGhpbmsgd2Ugc2hvdWxkIHVzZSBpdCB0aGlzIHdheSBl
dmVuIHdoZW4NCj4gdGhlIHN0YW5kYXJkIGN1cnJlbnRseSBkb2VzIG5vdCBhdHRhY2ggYSBt
ZWFuaW5nIHRvIGl0Lg0KDQpZZXAuDQoNClsuLi5dDQoNCj4+IFdoYXQgYWJvdXQgdGFraW5n
IHNvbWV0aGluZyBmcm9tIEsmUiBmdW5jdGlvbnMgZm9yIHRoaXM/Og0KPj4NCj4+IGludCBm
b28ocTsgdzsgaW50IGFbcV0sIGludCBxLCBpbnQgc1t3XSwgaW50IHcpOw0KPj4NCj4+IEJ5
IG5vdCBzcGVjaWZ5aW5nIHRoZSB0eXBlcywgdGhlIHN5bnRheCBpcyBhZ2FpbiBzaG9ydC4N
Cj4+IFRoaXMgaXMgbGVmdC10by1yaWdodCwgc28gbm8gcHJvYmxlbXMgd2l0aCBnbG9iYWwg
dmFyaWFibGVzLCBhbmQgbm8gbmVlZA0KPj4gZm9yIGNvbXBsZXggcGFyc2Vycy4NCj4+IEFs
c28sIGJ5IG5vdCBzcGVjaWZ5aW5nIHR5cGVzLCBub3cgaXQncyBtb3JlIG9idmlvdXMgdG8g
dGhlIG5ha2VkIGV5ZQ0KPj4gdGhhdCB0aGVyZSdzIGEgZGlmZmVyZW5jZToNCj4gDQo+IEkg
YW0gb2sgd2l0aCB0aGUgc3ludGF4LCBidXQgSSBhbSBub3Qgc3VyZSBob3cgdGhpcyB3b3Vs
ZA0KPiB3b3JrLiBJZiB0aGUgdHlwZSBpcyBkZXRlcm1pbmVkIG9ubHkgbGF0ZXIgeW91IHdv
dWxkIHN0aWxsDQo+IGhhdmUgdG8gY2hhbmdlIHBhcnNlcnMgKHNvbWUgQyBjb21waWxlcnMg
ZG8gdHlwZQ0KPiBjaGVja2luZyAgYW5kIGZvbGRpbmcgZHVyaW5nIHBhcnNpbmcsIHNvIG5l
ZWQgdGhlIHR5cGVzDQo+IHRvIGJlIGtub3duIGR1cmluZyBwYXJzaW5nKSBhbmQgeW91IGFs
c28gc3RpbGwgaGF2ZSB0aGUNCj4gcHJvYmxlbSB3aXRoIHRoZSBtdXR1YWwgZGVwZW5kZW5j
aWVzLg0KDQpUaGlzIHN5bnRheCByZXNlbWJsZXMgYSBsb3QgSyZSIHN5bnRheC4gIEFueSBD
IGNvbXBpbGVyIHRoYXQgc3VwcG9ydHMgDQp0aGVtIChhbmQgSSBndWVzcyBtb3N0IGNvbXBp
bGVycyBvdXQgdGhlcmUgZG8pIHNob3VsZCBiZSBlYXNpbHkgDQpjb252ZXJ0aWJsZSB0byBz
dXBwb3J0IHRoaXMgc3ludGF4IChhdCBsZWFzdCBtb3JlIGVhc2lseSB0aGFuIG90aGVyIA0K
YWx0ZXJuYXRpdmVzKS4gIEJ1dCB0aGlzIGlzIGp1c3QgYSBndWVzcy4NCg0KPiANCj4gV2Ug
dGhvdWdodCBhYm91dCB1c2luZyB0aGlzIHN5bnRheA0KPiANCj4gaW50IGZvbyhjaGFyIGJ1
Zlsubl0sIGludCBuKTsNCj4gDQo+IGJlY2F1c2UgaXQgaXMgbmV3IHN5bnRheCB3aGljaCBt
ZWFucyB3ZSBjYW4gcmVzdHJpY3QgdGhlDQo+IHNpemUgdG8gYmUgdGhlIG5hbWUgb2YgYSBw
YXJhbWV0ZXIgaW5zdGVhZCBvZiBhbGxvd2luZw0KPiBhcmJpdHJhcnkgZXhwcmVzc2lvbnMs
IHdoaWNoIHRoZW4gbWFrZXMgZm9yd2FyZCByZWZlcmVuY2VzDQo+IGxlc3MgcHJvYmxlbWF0
aWMuICBJdCBpcyBhbHNvIGNvbnNpc3RlbnQgd2l0aCBkZXNpZ25hdG9ycyBpbg0KPiBpbml0
aWFsaXplcnMgYW5kIGNvdWxkIGFsc28gYmUgZXh0ZW5kIHRvIGFubm90YXRlDQo+IGZsZXhp
YmxlIGFycmF5IG1lbWJlcnMgb3IgZm9yIHN0b3JpbmcgcG9pbnRlcnMgdG8gYXJyYXlzDQo+
IGluIHN0cnVjdHVyZXM6DQoNCkl0J3Mgbm90IGNyYXp5LiAgSSBkb24ndCBoYXZlIG11Y2gg
dG8gYXJndWUgYWdhaW5zdCBpdC4NCg0KPiANCj4gc3RydWN0IHsNCj4gICAgaW50IG47DQo+
ICAgIGNoYXIgYnVmWy5uXTsNCj4gfTsNCj4gDQo+IHN0cnVjdCB7DQo+ICAgIGludCBuOw0K
PiAgICBjaGFyICgqYnVmKVsubl07DQo+IH07DQoNClBlcmhhcHMgc29tZSBkb3VidHMgYWJv
dXQgaG93IHRoaXMgd291bGQgd29yayBmb3IgbmVzdGVkIHN0cnVjdHVyZXMsIGJ1dCANCm5v
dCB1bnJlYXNvbmFibGUuDQoNCkNoZWVycywNCg0KQWxleA0KDQotLSANCkFsZWphbmRybyBD
b2xvbWFyDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------RSXYE0wDvDUr1HEux5Ed0ZgD--

--------------0HYsLE3C4U9xRjB1TvJZeMX2
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmMTa8oACgkQnowa+77/
2zIAwRAAoyQuKSdvamtVE/h3brukMj50xZPsCsHpJAotlh/0DGKqzstTViGFbOdk
05DB1DBMfDzQHBhYrCd/PXio5b9v2lNyeq8eM7EF9NyQaB8T/uwpvNJG4/PwjCl9
/g3FaVHQQM8O+QO/b6l2qFSSesGGFgHua/5mnvndLTrRpfzrSCWQbUF5rMv2wBP1
itoOL3EiBdBtFMuZ77r2abq4xjTYbVODrlSIa65o+h4aBh37nPHfRGFNBzAqezUD
6hX6ZjBvx17K7SkDqnqFi/TUEHfN06Vsn4YKF/ErLBrSTyLB+fhSuFfg5RPFiDTM
ef6lAWYvz0CBE+UeCCQqHH6gjgF81aZlk2sF2hqaR/Kz4eRV4Qc4il8QP/WE3+rz
vS7rQTq1zYaO9e485ySIvljll4n0HIwCBVb1OkQpX91Wst80UBVyfopMAUvdsnxx
PIwrtWr/maknbFUC1QrSHOE7QgOQ55zFsS/7dSAEJsFT2KTf2L+07j/+KOtHKgI5
5eSM1SldL2E4CYxotjm6Oj2DlNcXIv0K+5K0IBvyK5uC2JAU1lXD5in2+u2+rqOG
nCm9kWU8ZHoLmHtaatiosnn0b5daYlSjodWD7PUv4DoyghWuSJjx6UZbDKXVpZb4
RIW5ryMXB+4gGZnPFgA84yiRX06oA4T5fo+2S6TtXBdNIIHeofs=
=AWpk
-----END PGP SIGNATURE-----

--------------0HYsLE3C4U9xRjB1TvJZeMX2--
