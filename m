Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6CD745B9C23
	for <lists+linux-man@lfdr.de>; Thu, 15 Sep 2022 15:40:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229617AbiIONkl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 15 Sep 2022 09:40:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229886AbiIONki (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 15 Sep 2022 09:40:38 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1AC304B0F2
        for <linux-man@vger.kernel.org>; Thu, 15 Sep 2022 06:40:37 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id i26so30412476lfp.11
        for <linux-man@vger.kernel.org>; Thu, 15 Sep 2022 06:40:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date;
        bh=iQLHiMQzucWCptuKQ6BSlm3PfcNu9xplY8mY2bdPg7g=;
        b=FeaqB+m9n1dkDHDNrfbFFqHSxhZG2hhFfV0YkUMtjtGTyIskgF0PWnd7U9eRJRQnQZ
         Q4Fehypqim3GCpOy4ThtV1fDjYjZMuXnvlIWNiAX/eEzUIcNwCqRO15FmGJ/tGzdO6Yz
         OvO57lz5YNyObwv0Pq4ThZ05krJSCl7OQ/uLgCyETc01XXCUsv1S1LJZX3AaF+RIkxPw
         lFC9498BlkqEJclsmUG/HK6LYrUznrBbp+1aYiVBAtRggmk7D7RQc4ohWlB8VDyjHcCA
         QXMvjoGiv91TS1LzltpuPnUsBYQwqzE1dYZTIApiKjuLU2IagZu37WFIj0ViMNrcRYgb
         X9dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date;
        bh=iQLHiMQzucWCptuKQ6BSlm3PfcNu9xplY8mY2bdPg7g=;
        b=Ap7y90G5zj6xWv1xZVOUBf/GwN/uRgIDOSdSpGy2Uen6+lF6jECf3kf6SB3QVUYrng
         gCEUaJ9gbEG9NqrS1F7wJsGEa5Rqm5PzZVydq8AHvRmfh/I9R0cKaa6iZ71uQ2q+3sF1
         AOmFCASp2jDH4e0EVYlsFCTyK8RiaC4CN3HGO8ZKKTUS2lk4ilqc8PaOQN8uB68x78rT
         LFCVKovNwGk2NvyXUyWmp1sLosPT+F1hLdOeaNA1/9se5zALgWqpyk3TdXa3crdPsZYs
         6B15jaRb3LOrBI6J1HXl7Xd3YlB1ePoh5PMLM2Fkc3ZRqu7c5Pf7+PbeonlgZsG90xYP
         dWzg==
X-Gm-Message-State: ACgBeo1D51mn3iop6lSBK0HBOmy9y2F7r/ld3k7QrXIQZCoZmZIxIhWD
        DQwM21M9aqp4+j1HlyFJ26+W/51Wwxr5bQ==
X-Google-Smtp-Source: AA6agR6YPwzv12Azpi0j2JtbKA3wWAGiZL7axTzsgKSTG4S8sWWI3lJRacT6mneXnlrllVwbVfZpkw==
X-Received: by 2002:a05:6512:3cd:b0:492:f0c2:60b7 with SMTP id w13-20020a05651203cd00b00492f0c260b7mr14902523lfp.639.1663249235251;
        Thu, 15 Sep 2022 06:40:35 -0700 (PDT)
Received: from [192.168.1.104] ([31.169.55.19])
        by smtp.gmail.com with ESMTPSA id x12-20020a056512078c00b00498fd423cc3sm1109414lfr.295.2022.09.15.06.40.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Sep 2022 06:40:34 -0700 (PDT)
Message-ID: <a8f7856e-d442-29de-e95b-99a0e932646e@gmail.com>
Date:   Thu, 15 Sep 2022 15:40:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: Revert 70ac1c478 ("src.mk, All pages: Move man* to man/")
Content-Language: en-US
To:     Petr Vorel <pvorel@suse.cz>, Stefan Puiu <stefan.puiu@gmail.com>
Cc:     Jakub Wilk <jwilk@jwilk.net>, lnx-man <linux-man@vger.kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
References: <YxcV4h+Xn7cd6+q2@pevik>
 <20220907205304.nlqce37l26gezjqi@jwilk.net>
 <7b9c2ab4-6cdc-b4fd-1001-8721083695fa@gmail.com>
 <CACKs7VADwh0Qs8Zo7=biVzpOhSgMt5xD1BSBXdg82sPAcdjYOg@mail.gmail.com>
 <Yxr9WN7f3FEqKVRg@pevik>
From:   Alex Colomar <alx.manpages@gmail.com>
In-Reply-To: <Yxr9WN7f3FEqKVRg@pevik>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------VVjia02VIoaO828AMG0UwqSW"
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------VVjia02VIoaO828AMG0UwqSW
Content-Type: multipart/mixed; boundary="------------icpb20ktKDivHmzwxL0GctzJ";
 protected-headers="v1"
From: Alex Colomar <alx.manpages@gmail.com>
To: Petr Vorel <pvorel@suse.cz>, Stefan Puiu <stefan.puiu@gmail.com>
Cc: Jakub Wilk <jwilk@jwilk.net>, lnx-man <linux-man@vger.kernel.org>,
 Michael Kerrisk <mtk.manpages@gmail.com>
Message-ID: <a8f7856e-d442-29de-e95b-99a0e932646e@gmail.com>
Subject: Re: Revert 70ac1c478 ("src.mk, All pages: Move man* to man/")
References: <YxcV4h+Xn7cd6+q2@pevik>
 <20220907205304.nlqce37l26gezjqi@jwilk.net>
 <7b9c2ab4-6cdc-b4fd-1001-8721083695fa@gmail.com>
 <CACKs7VADwh0Qs8Zo7=biVzpOhSgMt5xD1BSBXdg82sPAcdjYOg@mail.gmail.com>
 <Yxr9WN7f3FEqKVRg@pevik>
In-Reply-To: <Yxr9WN7f3FEqKVRg@pevik>

--------------icpb20ktKDivHmzwxL0GctzJ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgYWxsLA0KDQpPbiA5LzkvMjIgMTA6NDYsIFBldHIgVm9yZWwgd3JvdGU6DQo+PiBPbiBU
aHUsIFNlcCA4LCAyMDIyIGF0IDE6MjggQU0gQWxlamFuZHJvIENvbG9tYXIgPGFseC5tYW5w
YWdlc0BnbWFpbC5jb20+IHdyb3RlOg0KPj4+IE9uIDkvNy8yMiAyMjo1MywgSmFrdWIgV2ls
ayB3cm90ZToNCj4+Pj4gKiBQZXRyIFZvcmVsIDxwdm9yZWxAc3VzZS5jej4sIDIwMjItMDkt
MDYgMTE6NDE6DQo+Pj4+PiBBbHRob3VnaCBJIGFncmVlIHRoYXQgbnVtYmVyIG9mIG1hbiog
aXMgcXVpdGUgaGlnaCBhbmQgc2luZ2xlIG1hbg0KPj4+Pj4gZGlyZWN0b3J5IGxvb2tzIG5p
Y2VyLCBmcm9tIHByYWN0aWNhbCByZWFzb25zIEknZCBwcmVmZXIgdG8gcmV2ZXJ0DQo+Pj4+
PiB0aGlzIGNvbW1pdC4NCj4gDQo+Pj4+IEkgZG9uJ3QgbGlrZSB0aGUgbmV3IGxheW91dCBl
aXRoZXIuDQo+IA0KPj4+IFRoYW5rIHlvdSBib3RoIGZvciBzaGFyaW5nIHlvdXIgb3Bpbmlv
bi4gIEknbGwgcmV2ZXJ0IGl0LCB0aGVuLiAgTGV0IG1lDQo+Pj4gYSBmZXcgd2Vla3MgYmVm
b3JlIGRvaW5nIHRoYXQsIHNpbmNlIEknbSBpbiB0aGUgbWlkZGxlIG9mIHNvbWUgb3RoZXIg
YmlnDQo+Pj4gY2hhbmdlcyAoYWJvdXQgbGludC1jKSwgc28gdG8gbm90IGhhdmUgdG8gc3Rh
c2ggYW5kIGZpeCBjb25mbGljdHMgYXQNCj4+PiB0aGF0IHNjYWxlLiAgSWYgaW4gdGhlIG1l
YW50aW1lIHNvbWVvbmUgZmluZHMgdGhlIG5ldyBsYXlvdXQgbmljZSwNCj4+PiBwbGVhc2Ug
c3BlYWsgdXAgOikNCj4gDQo+PiBJIHRoaW5rIG9uZSBvdGhlciBhc3BlY3QgdG8gY29uc2lk
ZXIgaXMgdGhhdCBpdCBtYWtlcyBoaXN0b3J5DQo+PiBzZWFyY2hpbmcgaGFyZGVyLiBJZiB5
b3UgdHlwZSAnZ2l0IGxvZyA8ZmlsZT4nLCBieSBkZWZhdWx0IHlvdSBvbmx5DQo+PiBnZXQg
dGhlIGhpc3RvcnkgdG8gdGhlIGxhc3QgbW92ZS4gWW91IG5lZWQgJ2dpdCBsb2cgLS1mb2xs
b3cnIHRvIHNlZQ0KPj4gdGhlIHdob2xlIGhpc3RvcnkuIFRoZW4gaWYgeW91IHdhbnQgdG8g
ZG8gYSAnZ2l0IGJsYW1lJyBvbiBhbiBvbGQNCj4+IHZlcnNpb24gb2YgdGhlIGZpbGUsIHBy
ZS1tb3ZlLCBJIHRoaW5rIHlvdSBuZWVkIHRvIGZpbmQgdGhlIG9sZCBwYXRoDQo+PiBhbmQg
dXNlIHRoYXQuIElmIHRoZSBtYWludGFpbmVyJ3Mgb3BpbmlvbiBvZiB3aGVyZSBhIGZpbGUg
c2hvdWxkIGJlDQo+PiBjaGFuZ2VzIG9mdGVuLCB0aGF0IG1ha2VzIGl0IG1vcmUgZnVuIDop
Lg0KPiANCj4gWWVzLCBJIGhhdmUgZXhwZXJpZW5jZSBmcm9tIG90aGVyIHByb2plY3RzIHRo
YXQgbW92aW5nIGFyb3VuZCBkb2VzIG5vdCBoZWxwLg0KPiBCdXQgaGVyZSBzaW1wbGUgcmV2
ZXJ0IGlzIHdvcmtpbmcgd2VsbDoNCj4gJCBnaXQgcmV2ZXJ0IDcwYWMxYzQ3ODVmYzFlMTU4
YWIyMzQ5YTk2MmRiYTI1MjZiZjRmYmMNCj4gZ2l0IGlzIHNtYXJ0OiBuZXcgY2hhbmdlcyBp
biB1bnNoYXJlLjIgKDhmNGVkNjQ2MykgYW5kIGZhbm90aWZ5X21hcmsuMg0KPiAoYzA2OTQz
YmVlKSBkaWRuJ3QgY2F1c2UgYSBjb25mbGljdC4gQnV0IHN0aWxsLCBpZiB5b3UgZGVjaWRl
IG9uIHJldmVydCwgSSdkIGRvDQo+IGl0IGVhcmx5IChkb24ndCBwdXQgbmV3IGNvbW1pdHMg
YmVmb3JlIGl0KQ0KPiANCj4gJCBnaXQgbG9nIG1hbjIvX2V4aXQuMiAjIHNob3dzIHByZXZp
b3VzIGhpc3RvcnkNCj4gDQoNClJldmVydGVkIChiZWZvcmUgYW55IG90aGVyIHBhdGNoZXMp
Lg0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1j
b2xvbWFyLmVzLz4NCg==

--------------icpb20ktKDivHmzwxL0GctzJ--

--------------VVjia02VIoaO828AMG0UwqSW
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmMjK1EACgkQnowa+77/
2zLtxA//ectgy5z1SVgONUFYQW36HRg3oBQ5i4/Pp1sGd26uEWYWi+TpIkuaj8HL
lc02nUWnySwx1p3rNmmWY5VPlmGxHvJxiNKgAmT3HWDQpNqlV0I2BuqltZK7UF4I
Q6Ifzslh4RmwyzW8r3eVBm6BEoyebk2HyyN6n3319vsjiGmoSG/EMMM4WPDQ7taM
adhf7nbTc1KZNsRjpuruwba3vPGkmNML2qpEJEn/BudcrkqKssdOBAYF3L0EC4Az
1yEfXVw+2kALxZiFLvMgI9OsX9upFyQGrbWEUUJQm+MWGV8N41HoCLEXtj8J0Eht
XgmalvqNW12DFy0ULaPNj0UnTnx64N5nl+aE/cVQVnA5pbf+AHx0kIUgIpJgBeIK
paWdfuG345TocUr3iQm/sLXiVI9KDKlUGPOqAGW/wqJ3nhiNddZLyzc78gfg0GDz
FUCnD+DFk46rHi86SabPOE7Cu/WLp4HSSqx9Rrxx1b0vZ2X37o2laSGgA8HoBk+e
74Ou1ZURz8ulEmTvVi45kDEU4Cu0IU17D7LQRYGDnvucuDpwD8rLe4gmuxvYhRtg
BYkBGhyyxRIOX1abkcXfhDtTG8UFc4iK1Gh8QrE8X4Es4tdKJ9zFyaigEEY2Sp+z
vsj/d75rtpkAhtOvKP+tdsIrTmfYz1rJs5IVDeO1YmVPWeUwvSs=
=8Z94
-----END PGP SIGNATURE-----

--------------VVjia02VIoaO828AMG0UwqSW--
