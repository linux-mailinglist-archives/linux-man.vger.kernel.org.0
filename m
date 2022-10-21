Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C1B3A6076FA
	for <lists+linux-man@lfdr.de>; Fri, 21 Oct 2022 14:37:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229716AbiJUMhv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Oct 2022 08:37:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38828 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229510AbiJUMhu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Oct 2022 08:37:50 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A01D263B74
        for <linux-man@vger.kernel.org>; Fri, 21 Oct 2022 05:37:49 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id a10so4144025wrm.12
        for <linux-man@vger.kernel.org>; Fri, 21 Oct 2022 05:37:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bi66Vds3cYyqk4Zo+HlLEJHgGp+RDGGxQtfYZO0Ev6g=;
        b=huQyTO2j5j+XFTBcAYUFleMeL4aC0Woe4DgNRwhh2nrFDHcENzlzHXghkfa5BmOD3M
         nNlGf+w8DQGOhd8Uhnv5MeRfF2eyclFMOqh3qOe2is1FiaIC7DBouOaQonosrsyBfCzs
         hXs9wEK0p0OOPHar7IdUAEG55o8kP3ZIUVMTMmrbEdCKf4zkcvxXTQ5sI2aVtprqc0GG
         oAg6GrOVveRUTENuaY6xux8ArNBi6A5b58oCdw4b6tMD/gm8PYdZ/de2eyjUYFaeSu8y
         o3CVYhJz8r52x6CkK1ISrCYYq3symn3u7E6NtGKBpXuZEnSDC7qDDmWucKSxF7Pfhs+3
         5JFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bi66Vds3cYyqk4Zo+HlLEJHgGp+RDGGxQtfYZO0Ev6g=;
        b=B8YZyN10540GqBBawQhC6X6NMPvSluswhWWXIwCIYSxc+n52P1ewgjunx6Toe4LoEv
         6Jc8O+R3rkicU/BjQFkNps1mmEnDa25QK31hHQ2b0u8HFYmxYNW8zYXP7JzUTxe1LaRa
         wxkNsUKVU/yerFl9dfjp1ChsgCGzKoLIIJopZ8pAbvQZPXbhSyyD5sRXPMBiqdrEdSHe
         YIdzgvtQJJeSftqovL71pQlxZfcx44rkKCua5Tb8msnXupiFC1/WVkrGdBKzUic3nwB5
         W06PKRrKZ44Nr2dd6dh7E9LDXxJamNfVfF6cYQAItkW/C/P3SGSTL5Zm/dcD8JhnTeph
         jNXg==
X-Gm-Message-State: ACrzQf2FQQqyO1lztER8lMUi/VMgMLAUjohGoBK8uuInPSzxf5yYw7sQ
        H1E7oh8TNDqdmkzGKBi//2kJci4FxEg=
X-Google-Smtp-Source: AMsMyM7gyEiK4yMxU+h0todxDC53wO0C0Jtul/afQkLMYGGB6s2sw1pTOFZCJKAAhur6uTukhRekaA==
X-Received: by 2002:a5d:650f:0:b0:22e:6597:fdd0 with SMTP id x15-20020a5d650f000000b0022e6597fdd0mr11566958wru.127.1666355867806;
        Fri, 21 Oct 2022 05:37:47 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id j11-20020a05600c410b00b003c6c2ff7f25sm2361617wmi.15.2022.10.21.05.37.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Oct 2022 05:37:47 -0700 (PDT)
Message-ID: <d9f8599f-fb81-6915-85d9-fbbc74226608@gmail.com>
Date:   Fri, 21 Oct 2022 14:37:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH man-pages v2 3/4] process_madvise.2: CAP_SYS_ADMIN cleanup
Content-Language: en-US
To:     Zach OKeefe <zokeefe@google.com>
Cc:     Yang Shi <shy828301@gmail.com>, linux-mm@kvack.org,
        linux-man@vger.kernel.org, Suren Baghdasaryan <surenb@google.com>,
        Minchan Kim <minchan@kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
References: <20221018235051.152548-1-zokeefe@google.com>
 <20221018235051.152548-4-zokeefe@google.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221018235051.152548-4-zokeefe@google.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------M3sE7A7eEo7UvUMjci9WixrX"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------M3sE7A7eEo7UvUMjci9WixrX
Content-Type: multipart/mixed; boundary="------------gvKggO0i4lE7k4tv0snnrY1P";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Zach OKeefe <zokeefe@google.com>
Cc: Yang Shi <shy828301@gmail.com>, linux-mm@kvack.org,
 linux-man@vger.kernel.org, Suren Baghdasaryan <surenb@google.com>,
 Minchan Kim <minchan@kernel.org>, Michael Kerrisk <mtk.manpages@gmail.com>
Message-ID: <d9f8599f-fb81-6915-85d9-fbbc74226608@gmail.com>
Subject: Re: [PATCH man-pages v2 3/4] process_madvise.2: CAP_SYS_ADMIN cleanup
References: <20221018235051.152548-1-zokeefe@google.com>
 <20221018235051.152548-4-zokeefe@google.com>
In-Reply-To: <20221018235051.152548-4-zokeefe@google.com>

--------------gvKggO0i4lE7k4tv0snnrY1P
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgWmFjaCENCg0KVGhhbmtzIGZvciB0aGUgd29yayEgOi0pDQoNCk9uIDEwLzE5LzIyIDAx
OjUwLCBaYWNoIE9LZWVmZSB3cm90ZToNCj4gRnJvbTogWmFjaCBPJ0tlZWZlIDx6b2tlZWZl
QGdvb2dsZS5jb20+DQo+IA0KPiBUaGUgaW5pdGlhbCBjb21taXQgb2YgcHJvY2Vzc19tYWR2
aXNlKDIpIHRvIG1hbi1wYWdlcyBwcm9qZWN0IGluY2x1ZGVkDQo+IGFuIGVycm9yLCBpbmRp
Y2F0aW5nIHRoYXQgQ0FQX1NZU19BRE1JTiBjYXBhYmlsaXR5IHdhcyByZXF1aXJlZCB3aGVu
LCBpbg0KPiBmYWN0LCBDQVBfU1lTX05JQ0Ugd2FzIHRoZSByZXF1aXJlZCBjYXBhYmlsaXR5
Lg0KPiANCj4gVGhlIGluaXRpYWwgY29tbWl0IG9mIHByb2Nlc3NfbWFkdmlzZSgyKSB0byBM
aW51eCwgY29tbWl0IGVjYjhhYzhiMWYxNA0KPiAoIm1tL21hZHZpc2U6IGludHJvZHVjZSBw
cm9jZXNzX21hZHZpc2UoKSBzeXNjYWxsOiBhbiBleHRlcm5hbCBtZW1vcnkNCj4gaGludGlu
ZyBBUEkiKSwgcmVsaWVkIG9uIFBUUkFDRV9NT0RFX0FUVEFDSF9GU0NSRURTIChzZWUgcHRy
YWNlKDIpKSwNCj4gYnV0IHdhcyBhbWVuZGVkIGJ5IGNvbW1pdCA5NmNmZTJjMGZkMjMgKCJt
bS9tYWR2aXNlOiByZXBsYWNlIHB0cmFjZQ0KPiBhdHRhY2ggcmVxdWlyZW1lbnQgZm9yIHBy
b2Nlc3NfbWFkdmlzZSIpIHdoaWNoIHJlcGxhY2VkIHRoaXMgd2l0aCBhDQo+IGNvbWJpbmF0
aW9uIG9mIFBUUkFDRV9NT0RFX1JFQUQgYW5kIENBUF9TWVNfTklDRSAoUFRSQUNFX01PREVf
UkVBRCB0bw0KPiBwcmV2ZW50IGxlYWtpbmcgQVNMUiBtZXRhZGF0YSBhbmQgQ0FQX1NZU19O
SUNFIGZvciBpbmZsdWVuY2luZyBwcm9jZXNzDQo+IHBlcmZvcm1hbmNlKS4NCg0KVGhvc2Ug
dHdvIGNvbW1pdHMgYXJlIHNldmVyYWwgdmVyc2lvbnMgYXBhcnQ6DQoNCmFseEBhc3VzNTc3
NTp+L3NyYy9saW51eC9saW51eCQgZ2l0IGRlc2NyaWJlIC0tY29udGFpbnMgZWNiOGFjOGIx
ZjE0DQp2NS4xMC1yYzF+ODdeMn4xNA0KYWx4QGFzdXM1Nzc1On4vc3JjL2xpbnV4L2xpbnV4
JCBnaXQgZGVzY3JpYmUgLS1jb250YWlucyA5NmNmZTJjMGZkMjMNCnY1LjEyLXJjM34xMl4y
fjkNCg0KSWYgSSB1bmRlcnN0YW5kIHRoZSBwYXJhZ3JhcGggYWJvdmUsIGZyb20gNS4xMCB0
byA1LjEyIHRoZSBjYXBhYmlsaXR5IHJlcXVpcmVkIA0Kd2FzIENBUF9TWVNfQURNSU4/DQoN
CkNoZWVycywNCg0KQWxleA0KDQo+IA0KPiBDb3JyZWN0IHRoaXMgaW4gdGhlIG1hbi1wYWdl
IGZvciBwcm9jZXNzX21hZHZpc2UoMikuDQo+IA0KPiBGaXhlczogYTE0NGY0NThiICgicHJv
Y2Vzc19tYWR2aXNlLjI6IERvY3VtZW50IHByb2Nlc3NfbWFkdmlzZSgyKSIpDQo+IENjOiBT
dXJlbiBCYWdoZGFzYXJ5YW4gPHN1cmVuYkBnb29nbGUuY29tPg0KPiBDYzogTWluY2hhbiBL
aW0gPG1pbmNoYW5Aa2VybmVsLm9yZz4NCj4gU2lnbmVkLW9mZi1ieTogWmFjaCBPJ0tlZWZl
IDx6b2tlZWZlQGdvb2dsZS5jb20+DQo+IC0tLQ0KPiAgIG1hbjIvcHJvY2Vzc19tYWR2aXNl
LjIgfCAzICsrLQ0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVs
ZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9tYW4yL3Byb2Nlc3NfbWFkdmlzZS4yIGIv
bWFuMi9wcm9jZXNzX21hZHZpc2UuMg0KPiBpbmRleCA2MjA4MjA2ZTQuLjdiZWUxYTA5OCAx
MDA2NDQNCj4gLS0tIGEvbWFuMi9wcm9jZXNzX21hZHZpc2UuMg0KPiArKysgYi9tYW4yL3By
b2Nlc3NfbWFkdmlzZS4yDQo+IEBAIC0xMTMsNyArMTEzLDggQEAgY2hlY2sgKHNlZQ0KPiAg
IGluIGFkZGl0aW9uLA0KPiAgIGJlY2F1c2Ugb2YgdGhlIHBlcmZvcm1hbmNlIGltcGxpY2F0
aW9ucyBvZiBhcHBseWluZyB0aGUgYWR2aWNlLA0KPiAgIHRoZSBjYWxsZXIgbXVzdCBoYXZl
IHRoZQ0KPiAtLkIgQ0FQX1NZU19BRE1JTg0KPiArLlwiIGNvbW1pdCA5NmNmZTJjMGZkMjNl
YTdjMjM2OGQxNGY3NjlkMjg3ZTdhZTEwODJlDQo+ICsuQiBDQVBfU1lTX05JQ0UNCj4gICBj
YXBhYmlsaXR5Lg0KPiAgIC5TSCBSRVRVUk4gVkFMVUUNCj4gICBPbiBzdWNjZXNzLA0KDQot
LSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------gvKggO0i4lE7k4tv0snnrY1P--

--------------M3sE7A7eEo7UvUMjci9WixrX
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNSkpIACgkQnowa+77/
2zLzTw//esyGF/RC31sieRv9qj+ryqFu50i+M/fu7Dqt0DBRFWszRmYSbW9mx5LU
FhDqP63LjsOJSqpoj5OTe0838ddTbIFb0jChS8pEYshi/yXSmaDPvuJKdU/pZ6/5
QA2WrwFaornaZRQrcyIqQt0YONdqaJhS0CqkTOKVc20cco5VGQvrgR9hbE2np6xL
09KtoVVolgtvUJISi1lJFNA6aQuh9YdbUJlmsmTmLu5zDWnH2v1GYBRDopi2hq9y
clZ4rgY4Pgxd5LuvtCZ1RRdqPejH1MPkjEGrQdNsWG1Tk2APlFARqCTcokT4M3r4
8EtuoQ30eC7H0A7Ths/O0Ru43105/KA3Rn9NU0d7RYR54hbkFxUd9T4gqjrbUAFF
LIGylmN+RnEPiAq5I5qsxj3iGx22J7LO21OWZNxag5zDk/gFMy8MT9QDgBcSIzZI
tudnIPrboJC431OomriZAkv6rMmlU3dbrFwJduxjsMDnsDEWHi+qNOFN4gef/3cl
8+WSaZe0HA7uC+dkucH3wVAQCqTetKqQO2UJBJrmePCirwE36g8z+CvsfmixFdn1
zrEeXqwC2KlVD211u98KOw/Da90w1GHFXVVnSKKFimsQM+4DDB14ywC1v7vsEGmJ
XJMEYAo9mo+Kn/EdPArqF9nckp0sWbElkPNxR4lQNPgJB3D5exw=
=fSIK
-----END PGP SIGNATURE-----

--------------M3sE7A7eEo7UvUMjci9WixrX--
