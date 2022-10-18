Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3345F60297A
	for <lists+linux-man@lfdr.de>; Tue, 18 Oct 2022 12:38:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229584AbiJRKia (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 18 Oct 2022 06:38:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41032 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229506AbiJRKi3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 18 Oct 2022 06:38:29 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4FC532B632
        for <linux-man@vger.kernel.org>; Tue, 18 Oct 2022 03:38:28 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id e18so10412880wmq.3
        for <linux-man@vger.kernel.org>; Tue, 18 Oct 2022 03:38:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LQ1R8CM84YvWj+y4zwj2du0rQYZ3OvwyzvnjGXYLRXI=;
        b=jw6/bW8KD6iG6iuyf4aF/6Yg9wKqMDjV3rBIzgnk0yBAQkb5wSwI3UfQ3qPNFefn7B
         kE1U25qYqhjtwtcWMo2Ac89LjmHR9Y5eGPfLZ2pSrKEYtl6oELfpcQaCs6lmDgPXqfw4
         pqaS8uL+y9su+Ef6//cVxTv2DmOJF+NcvLH0dM4PwACjap+bNnmO9pklSCKFZY2pJY0W
         VssnUFcgHjQ95lfnAqV8H9xBlRNsmD9137PmdMg4fppsNFxLS8CBzGGaAllu1EJFQLE5
         imnjuzKFeReM6liwSLlw6DMJfypGAZL9ETYYRtrmqdZ2gcHfNz4BP5XhNxQis0btajmy
         K7HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=LQ1R8CM84YvWj+y4zwj2du0rQYZ3OvwyzvnjGXYLRXI=;
        b=4dHVZTBq2mfHe4oCr28mok/35ADKKcwAbZ2m8kN2TzjQgY9ZZ+O5XofFUDlsbK8kPE
         YCSa931R7vEb+O8J4hRYrNOhVr8aSOaX27fh5fBXnjBqRDHOGlTc5IR6lcqXn4ai1rez
         kjTKHmjltBBJ5N3CHa/h97UkAcM25FbBJ225yTG+6Xtf5yqS+BtsvTPoxY1r/3fQVdTz
         fStbeIsRY/iloB+enS0zw+KrF4cSqVJJ7Dcl4Dxbyazhbki6cKLJyntVC/Yb1WsEcAH1
         pFoBRl6zaibUwt27sBp7vpzRoQ5UEGclCr12st+jB5AgOgb1b75WDqOPahHIZzRaZRaf
         hUog==
X-Gm-Message-State: ACrzQf2r7QAGqhAzsLr+AtS3FmeG3oBHswzWLffyTxD39Li6NlOO/Sfm
        rC2JCS2Jb5o5CfDgE/tz5/w=
X-Google-Smtp-Source: AMsMyM4GEiliGb+JiRJZtBOFwVgiz0OgFGwWIG8gWVwl0z1Ot7MDNdQRGD1ffypxvW0NlbJ1p+8chQ==
X-Received: by 2002:a05:600c:1c09:b0:3c6:c08e:886a with SMTP id j9-20020a05600c1c0900b003c6c08e886amr680954wms.1.1666089506727;
        Tue, 18 Oct 2022 03:38:26 -0700 (PDT)
Received: from [192.168.43.80] ([46.6.220.148])
        by smtp.gmail.com with ESMTPSA id bw3-20020a0560001f8300b0022cd96b3ba6sm11841567wrb.90.2022.10.18.03.38.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Oct 2022 03:38:26 -0700 (PDT)
Message-ID: <95dd505c-40cd-b4f3-c510-1f21dcb77f1d@gmail.com>
Date:   Tue, 18 Oct 2022 12:38:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [PATCH man-pages 3/4] process_madvise.2: CAP_SYS_ADMIN cleanup
Content-Language: en-US
To:     Zach OKeefe <zokeefe@google.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     Yang Shi <shy828301@gmail.com>, linux-mm@kvack.org,
        linux-man@vger.kernel.org
References: <20221017175523.2048887-1-zokeefe@google.com>
 <20221017175523.2048887-4-zokeefe@google.com>
From:   Alex Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221017175523.2048887-4-zokeefe@google.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------VjkdmrbKN050TAt6GyzSuCua"
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
--------------VjkdmrbKN050TAt6GyzSuCua
Content-Type: multipart/mixed; boundary="------------HIHUtWRjBDKI1fHVr2wu0EHw";
 protected-headers="v1"
From: Alex Colomar <alx.manpages@gmail.com>
To: Zach OKeefe <zokeefe@google.com>, Michael Kerrisk <mtk.manpages@gmail.com>
Cc: Yang Shi <shy828301@gmail.com>, linux-mm@kvack.org,
 linux-man@vger.kernel.org
Message-ID: <95dd505c-40cd-b4f3-c510-1f21dcb77f1d@gmail.com>
Subject: Re: [PATCH man-pages 3/4] process_madvise.2: CAP_SYS_ADMIN cleanup
References: <20221017175523.2048887-1-zokeefe@google.com>
 <20221017175523.2048887-4-zokeefe@google.com>
In-Reply-To: <20221017175523.2048887-4-zokeefe@google.com>

--------------HIHUtWRjBDKI1fHVr2wu0EHw
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgWmFjaCwNCg0KT24gMTAvMTcvMjIgMTk6NTUsIFphY2ggT0tlZWZlIHdyb3RlOg0KPiBG
cm9tOiBaYWNoIE8nS2VlZmUgPHpva2VlZmVAZ29vZ2xlLmNvbT4NCj4gDQo+IFNpbmNlIGNv
bW1pdCA5NmNmZTJjMGZkMjMgKCJtbS9tYWR2aXNlOiByZXBsYWNlIHB0cmFjZSBhdHRhY2gN
Cj4gcmVxdWlyZW1lbnQgZm9yIHByb2Nlc3NfbWFkdmlzZSIpLCBwcm9jZXNzX21hZHZpc2Uo
MikgaGFzIG9ubHkNCj4gcmVxdWlyZWQgQ0FQX1NZU19OSUNFIGNhcGFiaWxpdHkuICBVcGRh
dGUgdGhlIG1hbiBwYWdlIHRvIHJlZmxlY3QgdGhpcy4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6
IFphY2ggTydLZWVmZSA8em9rZWVmZUBnb29nbGUuY29tPg0KPiAtLS0NCj4gICBtYW4yL3By
b2Nlc3NfbWFkdmlzZS4yIHwgMyArKy0NCj4gICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRp
b25zKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvbWFuMi9wcm9jZXNz
X21hZHZpc2UuMiBiL21hbjIvcHJvY2Vzc19tYWR2aXNlLjINCj4gaW5kZXggNjIwODIwNmU0
Li43YmVlMWEwOTggMTAwNjQ0DQo+IC0tLSBhL21hbjIvcHJvY2Vzc19tYWR2aXNlLjINCj4g
KysrIGIvbWFuMi9wcm9jZXNzX21hZHZpc2UuMg0KPiBAQCAtMTEzLDcgKzExMyw4IEBAIGNo
ZWNrIChzZWUNCj4gICBpbiBhZGRpdGlvbiwNCj4gICBiZWNhdXNlIG9mIHRoZSBwZXJmb3Jt
YW5jZSBpbXBsaWNhdGlvbnMgb2YgYXBwbHlpbmcgdGhlIGFkdmljZSwNCj4gICB0aGUgY2Fs
bGVyIG11c3QgaGF2ZSB0aGUNCj4gLS5CIENBUF9TWVNfQURNSU4NCj4gKy5cIiBjb21taXQg
OTZjZmUyYzBmZDIzZWE3YzIzNjhkMTRmNzY5ZDI4N2U3YWUxMDgyZQ0KPiArLkIgQ0FQX1NZ
U19OSUNFDQoNCldvdWxkIGl0IG1ha2Ugc2Vuc2UgdG8ga2VlcCBzb21lIHBhcmVudGhlc2Vz
IHNwZWNpZnlpbmcgdGhhdCBpbiBvbGQgDQprZXJuZWxzIENBUF9TWVNfQURNSU4gd2FzIHJl
cXVpcmluZyBpbnN0ZWFkPw0KDQpDaGVlcnMsDQpBbGV4DQoNCj4gICBjYXBhYmlsaXR5Lg0K
PiAgIC5TSCBSRVRVUk4gVkFMVUUNCj4gICBPbiBzdWNjZXNzLA0KDQotLSANCjxodHRwOi8v
d3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg0K

--------------HIHUtWRjBDKI1fHVr2wu0EHw--

--------------VjkdmrbKN050TAt6GyzSuCua
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNOgiAACgkQnowa+77/
2zJ9kg/+IeTyb0XPuMAvAb15KXTyn9w1eU6QpMyxwZnhJ4GiTxSagH/pnrFUZ43b
RqYg4wAhyeP9OVu1wEVIGhtk01jnkFMeajha5HhB088H212m7BtIjE46rv6NeZZd
IvZIz2fYhT7uldkBbKuwTTqqgoK4S56bo5gVsxMh9Kr8y32SnrE1p2ng03ITPSSu
bEvcIW+gvzyhgtQzuumlKGuIZjOrJ5Zs6qpISMBpFDKLkn8aIRtgXUZymSTOF1vk
U+btVZ6gFsyQoEtG2Twzi44B2a7YmYa+rlCB9fGaRGzwz/DNIoZKlcx2a6U1vYfM
Du9y6rGmhV7Ji+3GT0s6oIQxC2ibIlQq8Bw1XQ3iI0Q08nVm0YvcIj9u9bTTPL8M
F6SnwUKN22HnqKSs86qjw3NcmlsnrVzt+locbCqnP8N1Q0ZzRlozfkrm8Uyv1RyL
1JS49cgBzDsTqqwg7PwuRhz9tFhUTlwD6Xam8N37RKGK8KAg693jAiqjcEgpaNFF
6GT7RXiksLVlhOlnP+1fDxJH3ZjjvxehPnlxtRWYgZ2Pp8iinv/93V5kLzdi/JfT
1lnWCSFrgeu64RdvUB87gv5wrw1s0tgwRg0dl0ukddTbawgaUFIy8Dd1TlG3ke5q
iRJGn5XXAEUthpsBKCFq3Ee0Id0jfUtHsLGUIHnqd9xlKZ1TWdY=
=tGHK
-----END PGP SIGNATURE-----

--------------VjkdmrbKN050TAt6GyzSuCua--
