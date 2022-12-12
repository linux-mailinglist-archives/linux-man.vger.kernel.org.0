Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6A8B5649E06
	for <lists+linux-man@lfdr.de>; Mon, 12 Dec 2022 12:38:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232089AbiLLLiL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 12 Dec 2022 06:38:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43152 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231622AbiLLLgV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 12 Dec 2022 06:36:21 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5CACEFADA
        for <linux-man@vger.kernel.org>; Mon, 12 Dec 2022 03:33:17 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id o15so5009298wmr.4
        for <linux-man@vger.kernel.org>; Mon, 12 Dec 2022 03:33:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ICFnDSmC1lk0D6+FogERyTzC9A1MoM5fawqscXpXQ4c=;
        b=D6JOmeRcZpUFmz3QGegFyN8/teMonBxRNNCMyhCgz9T1/pWie2cnA+DNcnTcYh8eG0
         aeomCxSM79QA3cbDa6U2pU0Scm5+NJ8QyHh1arodjnnCSaAArs1Iwb1X2HjVSVqVZb3v
         2Bsqav9KLYHSyvvn/V+9KX45RyXArNISMUjQ0ckUUg4wM/fDYj4gwVkNk00SpbDNX0ph
         /7NccHYY1WYJRHIVJtR3haANWNFI1HeXQnjHTpLTNZxM0JnZ+JLxL6ywRYpu5ZdO3In8
         9Q3H72nUB7Va4AtT5Rxv5dPUi0YlPEy2l0LqtGmkoUY5bjLLWM+t75Bmqw0F9tcCYzpV
         HkcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ICFnDSmC1lk0D6+FogERyTzC9A1MoM5fawqscXpXQ4c=;
        b=HdxaSKDQg/6pBcQ2jbQxjYPmLg1vVnGvc9LKA94ATmLU9Dnxj+BHNKAgzqWucW3mOs
         raLkzIxwvCZvskiE34TBQZEjpHD7tqzjy0AmBWqfxyuCsLoYFNrEzEZ5GmMjYaWXyRWb
         C2GB34iSx+9+u/BhSw0XWn49cfeP0E8TemQDF4qZtvPF+LmLksWdmHBxjz9tdsw4Pqus
         os4QZpKw0fl3QVv3sQz4fxETYqlxs70ATKj2F+mykYUpJLnN2A3ggp6RqLPoBvJLQGaM
         xwpXQfRUpRu4RSrDw4eFRn07/Kz25cE2TNzgq7UCNtu+I4EAdtuJnQotfVSkYEeYJyAp
         s1kw==
X-Gm-Message-State: ANoB5pkbGObMBYI43WUWnt5WsCRZsd+JZrQz76VgM7dWdXbhV99/rrtZ
        KtYoKNw/+PvzVgERLoADuv28dgWWomQ=
X-Google-Smtp-Source: AA0mqf4qN6HkZrY6erNCKsGEzs/faQ1niI1aTJL4BE1zEDfC/VZXsmz9EIo4QNjaoeUM5Vy8PvgrzA==
X-Received: by 2002:a05:600c:a16:b0:3d2:2c86:d2b2 with SMTP id z22-20020a05600c0a1600b003d22c86d2b2mr283425wmp.24.1670844795988;
        Mon, 12 Dec 2022 03:33:15 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id iv15-20020a05600c548f00b003d1f3e9df3csm10197833wmb.7.2022.12.12.03.33.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Dec 2022 03:33:15 -0800 (PST)
Message-ID: <633629bd-753c-3097-9896-2491a0b0f1a2@gmail.com>
Date:   Mon, 12 Dec 2022 12:33:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH] scanf.3: Do not mention the ERANGE error
Content-Language: en-US
To:     Ian Abbott <abbotti@mev.co.uk>, Zack Weinberg <zack@owlfolio.org>
Cc:     linux-man@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx@kernel.org>
References: <20221208123454.13132-1-abbotti@mev.co.uk>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221208123454.13132-1-abbotti@mev.co.uk>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------vgPn0ooeMoSyAK002vdnA59k"
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
--------------vgPn0ooeMoSyAK002vdnA59k
Content-Type: multipart/mixed; boundary="------------RqWEy1YHLnjqTNDEmh0d1zQ1";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Ian Abbott <abbotti@mev.co.uk>, Zack Weinberg <zack@owlfolio.org>
Cc: linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>,
 Alejandro Colomar <alx@kernel.org>
Message-ID: <633629bd-753c-3097-9896-2491a0b0f1a2@gmail.com>
Subject: Re: [PATCH] scanf.3: Do not mention the ERANGE error
References: <20221208123454.13132-1-abbotti@mev.co.uk>
In-Reply-To: <20221208123454.13132-1-abbotti@mev.co.uk>

--------------RqWEy1YHLnjqTNDEmh0d1zQ1
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSWFuICYgWmFjaywNCg0KT24gMTIvOC8yMiAxMzozNCwgSWFuIEFiYm90dCB3cm90ZToN
Cj4gVGhlIGBzY2FuZigpYCBmdW5jdGlvbiBkb2VzIG5vdCBpbnRlbnRpb25hbGx5IHNldCBg
ZXJybm9gIHRvIGBFUkFOR0VgLg0KPiBUaGF0IGlzIGp1c3QgYSBzaWRlIGVmZmVjdCBvZiB0
aGUgY29kZSB0aGF0IGl0IHVzZXMgdG8gcGVyZm9ybQ0KPiBjb252ZXJzaW9ucy4gIEl0IGFs
c28gZG9lcyBub3Qgd29yayBhcyByZWxpYWJseSBhcyBpbmRpY2F0ZWQgaW4gdGhlDQo+ICdt
YW4nIHBhZ2Ugd2hlbiB0aGUgdGFyZ2V0IGludGVnZXIgdHlwZSBpcyBuYXJyb3dlciB0aGFu
IGBsb25nYC4NCj4gVHlwaWNhbGx5IChhdCBsZWFzdCBpbiBnbGliYykgZm9yIHRhcmdldCBp
bnRlZ2VyIHR5cGVzIG5hcnJvd2VyIHRoYW4NCj4gYGxvbmdgLCB0aGUgbnVtYmVyIGhhcyB0
byBleGNlZWQgdGhlIHJhbmdlIG9mIGBsb25nYCAoZm9yIHNpZ25lZA0KPiBjb252ZXJzaW9u
cykgb3IgYHVuc2lnbmVkIGxvbmdgIChmb3IgdW5zaWduZWQgY29udmVyc2lvbnMpIGZvciBg
ZXJybm9gDQo+IHRvIGJlIHNldCB0byBgRVJBTkdFYC4NCj4gDQo+IERvY3VtZW50aW5nIGBF
UkFOR0VgIGluIHRoZSBFUlJPUlMgc2VjdGlvbiBraW5kIG9mIGltcGxpZXMgdGhhdA0KPiBg
c2NhbmYoKWAgc2hvdWxkIHJldHVybiBgRU9GYCB3aGVuIGFuIGludGVnZXIgb3ZlcmZsb3cg
aXMgZW5jb3VudGVyZWQsDQo+IHdoaWNoIGl0IGRvZXNuJ3QgKGFuZCBkb2luZyBzbyB3b3Vs
ZCB2aW9sYXRlIHRoZSBDIHN0YW5kYXJkKS4NCj4gDQo+IEp1c3QgcmVtb3ZlIGFueSBtZW50
aW9uIG9mIHRoZSBgRVJBTkdFYCBlcnJvciB0byBhdm9pZCBjb25mdXNpb24uDQo+IA0KPiBG
aXhlczogNjQ2YWY1NDBlNDY3ICgiQWRkIGFuIEVSUk9SUyBzZWN0aW9uIGRvY3VtZW50aW5n
IGF0IGxlYXN0IHNvbWUgb2YgdGhlIGVycm9ycyB0aGF0IG1heSBvY2N1ciBmb3Igc2NhbmYo
KS4iKQ0KPiBDYzogTWljaGFlbCBLZXJyaXNrIDxtdGsubWFucGFnZXNAZ21haWwuY29tPg0K
PiBTaWduZWQtb2ZmLWJ5OiBJYW4gQWJib3R0IDxhYmJvdHRpQG1ldi5jby51az4NCg0KSSBh
cHBsaWVkIHRoZSBwYXRjaDsgdGhhbmtzISAgQW5kIGFsc28gYXBwbGllZCBhbm90aGVyIG9u
ZSBleHBsaWNpdGx5IG1hcmtpbmcgDQphbGwgdGhvc2UgbnVtZXJpYyBjb252ZXJzaW9uIHNw
ZWNpZmllcnMgYXMgZGVwcmVjYXRlZDoNCg0KPGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHVi
L3NjbS9kb2NzL21hbi1wYWdlcy9tYW4tcGFnZXMuZ2l0L2NvbW1pdC8/aWQ9YTE1ZDM0MzI2
YzU4MWVhYjEwN2JmMDU3ODJjYzYwZDhlYmRjYWQ2OT4NCg0KQ2hlZXJzLA0KDQpBbGV4DQoN
Cj4gLS0tDQo+ICAgbWFuMy9zY2FuZi4zIHwgNyAtLS0tLS0tDQo+ICAgMSBmaWxlIGNoYW5n
ZWQsIDcgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvbWFuMy9zY2FuZi4zIGIv
bWFuMy9zY2FuZi4zDQo+IGluZGV4IGJhNDcwYTVjMS4uYzVmZjU5ZjQ1IDEwMDY0NA0KPiAt
LS0gYS9tYW4zL3NjYW5mLjMNCj4gKysrIGIvbWFuMy9zY2FuZi4zDQo+IEBAIC01NzYsMTAg
KzU3Niw2IEBAIGlzIE5VTEwuDQo+ICAgLlRQDQo+ICAgLkIgRU5PTUVNDQo+ICAgT3V0IG9m
IG1lbW9yeS4NCj4gLS5UUA0KPiAtLkIgRVJBTkdFDQo+IC1UaGUgcmVzdWx0IG9mIGFuIGlu
dGVnZXIgY29udmVyc2lvbiB3b3VsZCBleGNlZWQgdGhlIHNpemUNCj4gLXRoYXQgY2FuIGJl
IHN0b3JlZCBpbiB0aGUgY29ycmVzcG9uZGluZyBpbnRlZ2VyIHR5cGUuDQo+ICAgLlNIIEFU
VFJJQlVURVMNCj4gICBGb3IgYW4gZXhwbGFuYXRpb24gb2YgdGhlIHRlcm1zIHVzZWQgaW4g
dGhpcyBzZWN0aW9uLCBzZWUNCj4gICAuQlIgYXR0cmlidXRlcyAoNykuDQo+IEBAIC02MDks
OSArNjA1LDYgQEAgVGhlIGZ1bmN0aW9ucw0KPiAgIGFuZA0KPiAgIC5CUiBzc2NhbmYgKCkN
Cj4gICBjb25mb3JtIHRvIEM4OSBhbmQgQzk5IGFuZCBQT1NJWC4xLTIwMDEuDQo+IC1UaGVz
ZSBzdGFuZGFyZHMgZG8gbm90IHNwZWNpZnkgdGhlDQo+IC0uQiBFUkFOR0UNCj4gLWVycm9y
Lg0KPiAgIC5QUA0KPiAgIFRoZQ0KPiAgIC5CIHENCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVq
YW5kcm8tY29sb21hci5lcy8+DQo=

--------------RqWEy1YHLnjqTNDEmh0d1zQ1--

--------------vgPn0ooeMoSyAK002vdnA59k
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOXEXQACgkQnowa+77/
2zInzg/9H3lp38NDNYRBhWvZJLBDSAx6y66pXFJRrCtyr8zyt2ezSRrnBC1PVrcr
a+9qWdNMctLc+3omMFmH3O8Wfxfiy6JisE9W6c9QkstZTUeJzhljjze4WPXV8bVl
HtpJS5hGm9aMguhnEHsSxkFFPizM2xrEEMMLbN53I199RmqY1zutXYI8bVInKHI6
fZkTRuezje8y+K3cEcC6cG1qIebv07fToR0NL1L3ZBOjiZoJbRKzVywqwCeyAbss
tJIPTpJvkBIANzrbk4Yg+tfPsZJZWohpOL2LKM95OEhDp8zTpk+ByzOZzY+IO30g
4odMQ/N2ir64IEVJOVMJzk5HpjDNcHwc9v1O1gXTuKBGysf5iHH05xRQp1LbhwpD
vDXXy9AcECVxELP/O5QGWuzDDMnN0I39RDgULh9/YQe7NSD7MWjQb0BvqgpfMSxA
SDXX0j3097nGDR8S6aowoeNHgD5QU2UoNvctw3kMpnLZQmxWdkxhs/3RSa/fWcsK
QpQWN4G3NaQsY0PTQRLBK6oi7iRDBx9FYlksbLzado6d2aHxAH2bYuLGrHmj/9DV
hh9sd37B6AOpIWYTd3KrzjrsDgQDQ3BEOqFYMNdKt0Fbhz1EQ9WXoU98HcELa6IW
b9CbiiX+m/PE/l2pTtErbKREMSBXkN+G0QEQ5ZX0IJfgEesfjGc=
=U3dm
-----END PGP SIGNATURE-----

--------------vgPn0ooeMoSyAK002vdnA59k--
