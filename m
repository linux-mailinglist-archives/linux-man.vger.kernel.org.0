Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E1518622CFE
	for <lists+linux-man@lfdr.de>; Wed,  9 Nov 2022 14:58:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230369AbiKIN5w (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Nov 2022 08:57:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45082 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230409AbiKIN5p (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Nov 2022 08:57:45 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D455310577
        for <linux-man@vger.kernel.org>; Wed,  9 Nov 2022 05:57:41 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id a14so25883164wru.5
        for <linux-man@vger.kernel.org>; Wed, 09 Nov 2022 05:57:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:to:references:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gUzyX954mldCh5XN087ci/w5XXB6Z2AqXaZpINNzFQQ=;
        b=BFBBx/M+qi2Tw6jiOwMInqgI/2ZWMAqVOBy+TRkbOyukDsJHpKpzuP53GUc1x7BWVg
         +zyT9qAZ3Ws8i1rFs/sJf8vD274fkbnAo2Tw5zZQ+D1iA7QOqdH6dkQCvFCcILe0OV+2
         n8Hn4KRjwssac+SZDyk7ridUKp2bvTR5uWnepf1MhTtFYoEgd9PE+56xEDtn/mQxsRG6
         ZexvlLMFba7q1G7gkE/QWQOh/bZEvWi3L6Pvq+9hM4zPoGbMIOiYKzy+Y6x00Psp54jv
         xL6CHdgi/1JWDMzJZGFSd//+L95FxcN0TFH/SmDKmvQ3gC8urkPzaTWJZl7BBap7d/Cc
         Jd4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:to:references:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=gUzyX954mldCh5XN087ci/w5XXB6Z2AqXaZpINNzFQQ=;
        b=14Acb+mRwgkStSAcjrpAObhXtQM5ZS2BHrkFcHOkopYXV+X/L7aaZ48/IdwV6aHlv6
         dpZBSmsztWhbla4z5ZbvFHyG3Rr/I5E6mWlrNi3KMjrrqfO33zOsc1aeKCdf6t2VOoBd
         g9iX7oxKdC85/xyrMFCxvos8jgUEwm3ecOWyRZ5/MMco0w/dx9+TUw0zx3mwWw7wES4V
         EaV9vdfsHEeohhy8oODdaxyQo7tNX7SivBKqx1+wPDPOdcO6ax618XQHkUZ3yQbq4Y4h
         DyDYAIR6pZ3VzWkAD5quklcB/2t0SwUlvt/brpFkUInzqZ/8p/+Mxy9gChv3b22F26lk
         A05g==
X-Gm-Message-State: ACrzQf1CVZLJRGWaRfq5xa9i25Ul5sT6I1Kp5ThpLHhq8cQ/+leqdFFK
        WOlpJOcC0YzCPg92Cr7JWpI=
X-Google-Smtp-Source: AMsMyM5Q17gU8xFL9guy9YvCGX5k/XwZBGISNfkcMGLeiTKVNjGM92iCIwKtLLWHC2s8jAG9dRYE5g==
X-Received: by 2002:a05:6000:1b01:b0:236:6ea5:1569 with SMTP id f1-20020a0560001b0100b002366ea51569mr37534016wrz.245.1668002260331;
        Wed, 09 Nov 2022 05:57:40 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id w2-20020adfcd02000000b0022ac672654dsm13067620wrm.58.2022.11.09.05.57.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Nov 2022 05:57:39 -0800 (PST)
Message-ID: <9f23de64-4748-5176-1caa-f05b9f4d5f0f@gmail.com>
Date:   Wed, 9 Nov 2022 14:57:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Fwd: Simple changes to select(2) and pipe(7) - example program
Content-Language: en-US
References: <30847211-efc7-12be-6ce9-c5c4ada16805@xs4all.nl>
To:     "J.H. vd Water" <henri.van.de.water@xs4all.nl>,
        linux-man <linux-man@vger.kernel.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <30847211-efc7-12be-6ce9-c5c4ada16805@xs4all.nl>
X-Forwarded-Message-Id: <30847211-efc7-12be-6ce9-c5c4ada16805@xs4all.nl>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Hjh7jm2Q5w8nIGaz5iop508X"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------Hjh7jm2Q5w8nIGaz5iop508X
Content-Type: multipart/mixed; boundary="------------hoc1v4MIt1CiwnjnzvSPLKK6";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "J.H. vd Water" <henri.van.de.water@xs4all.nl>,
 linux-man <linux-man@vger.kernel.org>
Message-ID: <9f23de64-4748-5176-1caa-f05b9f4d5f0f@gmail.com>
Subject: Fwd: Simple changes to select(2) and pipe(7) - example program
References: <30847211-efc7-12be-6ce9-c5c4ada16805@xs4all.nl>
In-Reply-To: <30847211-efc7-12be-6ce9-c5c4ada16805@xs4all.nl>

--------------hoc1v4MIt1CiwnjnzvSPLKK6
Content-Type: multipart/mixed; boundary="------------3Ab9mXcDjXj5J5xknoEMyOYO"

--------------3Ab9mXcDjXj5J5xknoEMyOYO
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

LS0tLS0tLS0gRm9yd2FyZGVkIE1lc3NhZ2UgLS0tLS0tLS0NClN1YmplY3Q6IFJlOiBTaW1w
bGUgY2hhbmdlcyB0byBzZWxlY3QoMikgYW5kIHBpcGUoNykgLSBleGFtcGxlIHByb2dyYW0N
CkRhdGU6IFdlZCwgOSBOb3YgMjAyMiAwOTo0Mjo0MyArMDEwMA0KRnJvbTogSi5ILiB2ZCBX
YXRlciA8aGVucmkudmFuLmRlLndhdGVyQHhzNGFsbC5ubD4NClRvOiBBbGVqYW5kcm8gQ29s
b21hciA8YWx4QGtlcm5lbC5vcmc+DQpDQzogTWljaGFlbCBLZXJyaXNrIDxtdGsubWFucGFn
ZXNAZ21haWwuY29tPg0KDQpPbiAxMS84LzIyIDEzOjIwLCBBbGVqYW5kcm8gQ29sb21hciB3
cm90ZToNCj4gT24gMTEvNi8yMiAxOTo1MywgSi5ILiB2ZCBXYXRlciB3cm90ZToNCltzbmlw
XQ0KDQo+PiBtYW4gMiBzZWxlY3TCoCAuLi4gREVTQ1JJUFRJT04gcmVhZHM6DQo+Pg0KPj4g
InNlbGVjdCgpIGFsbG93cyBhIHByb2dyYW0gdG8gbW9uaXRvciBtdWx0aXBsZSBmaWxlIGRl
c2NyaXB0b3JzLCB3YWl0aW5nDQo+PiDCoCB1bnRpbCBvbmUgb3IgbW9yZSBvZiB0aGUgZmls
ZSBkZXNjcmlwdG9ycyBiZWNvbWUgInJlYWR5IiBmb3Igc29tZSBjbGFzcyBvZg0KPj4gwqAg
SS9PIG9wZXJhdGlvbiAoZS5nLiwgaW5wdXQgcG9zc2libGUpLiBBIGZpbGUgZGVzY3JpcHRv
ciBpcyBjb25zaWRlcmVkDQo+PiDCoCByZWFkeSBpZiBpdCBpc8KgIHBvc3NpYmxlIHRvIHBl
cmZvcm0gYSBjb3JyZXNwb25kaW5nIEkvTyBvcGVyYXRpb24NCj4+IMKgIChlLmcuLCByZWFk
KDIpLCBvciBhIHN1ZmZpY2llbnRseSBzbWFsbCB3cml0ZSgyKSkgd2l0aG91dCBibG9ja2lu
Zy4iDQo+Pg0KPj4gSSBzdWdnZXN0IHRvIGFkZCB0aGUgZm9sbG93aW5nIGxpbmU6DQo+Pg0K
Pj4gIkhvd2V2ZXIsIG5vdGUgdGhhdCBzZWxlY3QoMikgd2lsbCBibG9jayBvbiB0aGUgcmVh
ZCBlbmQgb2YgYSBwaXBlL2ZpZm8sIGlmDQo+PiDCoCB0aGUgd3JpdGUgZW5kIG9mIHRoZSBw
aXBlL2ZpZm8gaGFzIG5ldmVyIGJlZW4gb3BlbmVkIGJlZm9yZSwgdW5saWtlIHJlYWQoMikN
Cj4+IMKgIChyZWFkKDIpIHdpbGwgYWx3YXlzIHJldHVybiB3aXRoIHplcm8gaWYgdGhlIHdy
aXRlIGVuZCBvZiB0aGUgcGlwZS9maWZvIGlzDQo+PiDCoCBjbG9zZWQgLSBzZWUgcGlwZSg3
KSB3aGVyZSB0aGUgdGV4dCBzdGFydHMgd2l0aCBJL08gb24gcGlwZXMgYW5kIGZpZm9zKS4N
Cj4gDQo+IEl0IGlzIGludGVyZXN0aW5nLiAgQ291bGQgeW91IHBsZWFzZSBzaGFyZSBhIHNt
YWxsIGV4YW1wbGUgcHJvZ3JhbQ0KPiB0aGF0IGRlbW9uc3RyYXRlcyB0aGlzIGJlaGF2aW9y
PyAgVGhhdCB3b3VsZCBjZXJ0YWlubHkgaGVscCBhIGxvdA0KPiByZXZpZXdpbmcgdGhlIGNo
YW5nZS4NCg0KSGkgQWxleCwNCg0KWWVzdGVyZGF5LCBJIHJlcGxpZWQgdG8gQWxlamFuZHJv
IENvbG9tYXIgPGFseC5tYW5wYWdlc0BnbWFpbC5jb20+OyBJIGFsc28gc2VudA0KeW91IGEg
Y29weSBvZiB0aGUgbWVzc2FnZSBJIHNlbnQgdG8gTS5LLiBvbiAyOXRoIG9mIFNlcHRlbWJl
ciAoY2xhcmlmaWNhdGlvbikuDQoNClRoaXMgdGltZSBJIHdpbGwgYXR0YWNoIDIgZmlsZXMg
KGkuZS4gc2VydmVyLmMgYW5kIGNsaWVudC5jKSwgdGhlIHNtYWxsIGV4YW1wbGUNCnByb2dy
YW0gdGhhdCB5b3UgYXNrZWQgZm9yICh1c2luZyBhbHhAa2VybmVsLm9yZyBhcyBhZGRyZXNz
KS4NCg0KUmVnYXJkcywNCkhlbnJpDQo=
--------------3Ab9mXcDjXj5J5xknoEMyOYO
Content-Type: text/x-csrc; charset=UTF-8; name="client.c"
Content-Disposition: attachment; filename="client.c"
Content-Transfer-Encoding: base64

Ly8gZ2NjIC1XYWxsIC1XZXh0cmEgLW8gY2xpZW50IGNsaWVudC5jCgojaW5jbHVkZSA8c3Rk
aW8uaD4KI2luY2x1ZGUgPHVuaXN0ZC5oPgojaW5jbHVkZSA8c3RkbGliLmg+CiNpbmNsdWRl
IDxzdHJpbmcuaD4KI2luY2x1ZGUgPHN5cy9zdGF0Lmg+CiNpbmNsdWRlIDxmY250bC5oPgoj
aW5jbHVkZSA8ZXJybm8uaD4KCiNkZWZpbmUgRklGT19QQVRIICIvdG1wL215ZmlmbyIKCmlu
dAptYWluKGludCBhcmdjLCBjaGFyICphcmd2W10pCnsKICAgIGludCBmZCA9IC0xOwoKICAg
IGZkID0gb3BlbihGSUZPX1BBVEgsIE9fV1JPTkxZKTsKICAgIHByaW50ZigiZmQgPSAlZFxu
IiwgZmQpOwoKICAgIGlmIChmZCA8IDApIHsKICAgICAgICBmcHJpbnRmKHN0ZGVyciwgIkNv
dWxkIG5vdCBvcGVuIGZpZm8gJXM6ICVzXG4iLCBGSUZPX1BBVEgsIHN0cmVycm9yKGVycm5v
KSk7CiAgICAgICAgcmV0dXJuIC0xOwogICAgfQoKICAgIGludCBmbGFncyA9IGZjbnRsKGZk
LCBGX0dFVEZMKTsKICAgIGlmIChmbGFncyA9PSAtMSkKICAgICAgICBmcHJpbnRmKHN0ZGVy
ciwgImZjbnRsIEZfR0VURkw6ICVzXG4iLCBzdHJlcnJvcihlcnJubykpOwogICAgcHJpbnRm
KCJmbGFncyA9IDAlb1xuIiwgZmxhZ3MpOwoKICAgIGlmIChhcmdjID4gMSkgewogICAgICAg
IHdyaXRlKGZkLCBhcmd2WzFdLCBzdHJsZW4oYXJndlsxXSkgKTsKICAgIH0gZWxzZSB7CiAg
ICAgICAgd3JpdGUoZmQsICYiV2hhdCBobyEiLCA5KTsKICAgIH0KICAgIC8vIG5vdGU6IHBy
aW50ZiAiV2hhdCBobyIgPiAvdG1wL215ZmlmbyBmcm9tIGJhc2gsIHdvdWxkIGNsb3NlIHRo
ZSBmaWxlIGRlc2NyaXB0b3IuCgogICAgcHJpbnRmKCJDbG9zaW5nIC4uLiBmZCA9ICVkXG4i
LCBmZCk7CiAgICBjbG9zZShmZCk7IC8vIEVPRgoKICAgIHJldHVybiAwOwp9CgovLz09PT09
Cg==
--------------3Ab9mXcDjXj5J5xknoEMyOYO
Content-Type: text/x-csrc; charset=UTF-8; name="server.c"
Content-Disposition: attachment; filename="server.c"
Content-Transfer-Encoding: base64

Ly8gZ2NjIC1XYWxsIC1XZXh0cmEgLW8gc2VydmVyIHNlcnZlci5jCgojaW5jbHVkZSA8c3Rk
aW8uaD4KI2luY2x1ZGUgPHVuaXN0ZC5oPgojaW5jbHVkZSA8c3RkbGliLmg+CiNpbmNsdWRl
IDxzdHJpbmcuaD4KI2luY2x1ZGUgPHN5cy9zdGF0Lmg+CiNpbmNsdWRlIDxzeXMvc2VsZWN0
Lmg+CiNpbmNsdWRlIDxmY250bC5oPgojaW5jbHVkZSA8ZXJybm8uaD4KCiNkZWZpbmUgRklG
T19QQVRIICIvdG1wL215ZmlmbyIKCmludAptYWluKCkKewogICAgaW50IGZkID0gLTE7CiAg
ICBmZF9zZXQgcmVhZGZkczsKICAgIGludCBuc2VsOwogICAgY2hhciBidWZbODBdID0geyAw
IH07CgogICAgaWYgKHVubGluayAoRklGT19QQVRIKSA8IDAgICYmIGVycm5vICE9IEVOT0VO
VCkgewogICAgICBwZXJyb3IgKCJ1bmxpbmsiKTsKICAgICAgZXhpdCAoMSk7CiAgICB9Cgog
ICAgaWYgKG1rZmlmbyhGSUZPX1BBVEgsIDA2MDApIDwgMCkgewogICAgICAgIGZwcmludGYo
c3RkZXJyLCAiQ291bGQgbm90IGNyZWF0ZSBmaWZvICVzOiAlc1xuIiwgRklGT19QQVRILCBz
dHJlcnJvcihlcnJubykpOwogICAgICAgIHJldHVybiAtMTsKICAgIH0KCiAgICBmZCA9IG9w
ZW4oRklGT19QQVRILCBPX1JET05MWSB8IE9fTk9OQkxPQ0spOyAvLyBvcGVuKCkgZG9lcyBu
b3QgYmxvY2sKICAgIHByaW50ZigiZmQgPSAlZFxuIiwgZmQpOwoKICAgIGlmIChmZCA8IDAp
IHsKICAgICAgICBmcHJpbnRmKHN0ZGVyciwgIkNvdWxkIG5vdCBvcGVuIGZpZm8gJXM6ICVz
XG4iLCBGSUZPX1BBVEgsIHN0cmVycm9yKGVycm5vKSk7CiAgICAgICAgcmV0dXJuIC0xOwog
ICAgfQoKICAgIGlmIChmY250bChmZCwgRl9TRVRGTCwgT19SRE9OTFkpID09IC0xKSAvLyBw
cmFnbWF0aWMKICAgICAgICBmcHJpbnRmKHN0ZGVyciwgImZjbnRsIEZfU0VURkw6ICVzXG4i
LCBzdHJlcnJvcihlcnJubykpOwogICAgaW50IGZsYWdzID0gZmNudGwoZmQsIEZfR0VURkwp
OwogICAgaWYgKGZsYWdzID09IC0xKQogICAgICAgIGZwcmludGYoc3RkZXJyLCAiZmNudGwg
Rl9HRVRGTDogJXNcbiIsIHN0cmVycm9yKGVycm5vKSk7CiAgICBwcmludGYoImZsYWdzID0g
MCVvXG4iLCBmbGFncyk7CgovLwogICAgd2hpbGUoMSkgewogICAgICAgIHByaW50ZigiQ2Fs
bGluZyBzZWxlY3QoKSAuLi4gIik7CiAgICAgICAgZmZsdXNoKHN0ZG91dCk7CiAgICAgICAg
RkRfWkVSTyAoJnJlYWRmZHMpOwogICAgICAgIEZEX1NFVCAoZmQsICZyZWFkZmRzKTsKCiAg
ICAgICAgLyoKICAgICAgICBEaWZmZXJlbnQgZnJvbSByZWFkKDIpLCBzZWxlY3QoMikgd2ls
bCAqYmxvY2sqIG9uIHRoZSByZWFkIGVuZCBvZiBhIGZpZm8gKG9yCiAgICAgICAgcGlwZSkg
aWYgdGhlIHdyaXRlIGVuZCBoYXMgbmV2ZXIgYmVlbiBvcGVuZWQgYmVmb3JlIChhbmQgb25s
eSBpbiB0aGF0IGNhc2UpLAogICAgICAgIHdoaWxlIHJlYWQoMikgd2lsbCBhbHdheXMgcmV0
dXJuIHdpdGggemVybyAoaW4gY2FzZSBvZiBhbiBlbXB0eSBwaXBlKSBpZiB0aGUKICAgICAg
ICB3cml0ZSBlbmQgaXMgY2xvc2VkLyBoYXMgYmVlbiBjbG9zZWQuCgogICAgICAgIFRoZXJl
Zm9yZSwgY2FsbGluZyBzZWxlY3QoMikgYmVmb3JlIGNhbGxpbmcgcmVhZCgyKSwgd2lsbCBl
bmFibGUgdXMgdG8gYmxvY2sKICAgICAgICBpZiB0aGUgcGlwZSBoYXMgbmV2ZXIgYmVlbiBv
cGVuZW5kIGJlZm9yZSAoYWdhaW4sIGFuZCBvbmx5IGluIHRoYXQgY2FzZSkuCiAgICAgICAg
Ki8KCiAgICAgICAgbnNlbCA9IHNlbGVjdCAoZmQgKyAxLCAmcmVhZGZkcywgTlVMTCwgTlVM
TCwgTlVMTCk7CiAgICAgICAgLy8gc2VsZWN0KCkgYmxvY2tzIHVudGlsIHRoZSB3cml0ZSBl
bmQgb2YgdGhlIHBpcGUgaGFzIGJlZW4gb3BlbmVkICh3aGlsZSB0aGUKICAgICAgICAvLyB3
cml0ZSBlbmQgaGFzIG5ldmVyIGJlZW4gb3BlbmVkIGJlZm9yZSkgYW5kIGRhdGEgaGFzIGJl
ZW4gaW5qZWN0ZWQuCiAgICAgICAgcHJpbnRmICgicmV0dXJuZWQgJWRcbiIsIG5zZWwpOwoK
ICAgICAgICBwcmludGYoIlJlYWRpbmcgLi4uXG4iKTsKCiAgICAgICAgc3NpemVfdCBzdGF0
dXMgPSAwOwogICAgICAgIHdoaWxlICgxKSB7IC8vIGFsbG93IG1lIHRvIHJlc2V0IGVycm5v
IGFuZCBpbnNwZWN0IHN0YXR1cyAuLi4KZXJybm8gPSAwOwoKICAgICAgICAgICAgLyoKICAg
ICAgICAgICAgIHJlYWQoMikgd2lsbCBibG9jayBvbiB0aGUgcmVhZCBlbmQgb2YgYSBmaWZv
IChvciBwaXBlKSBpbiBjYXNlIHRoZSB3cml0ZSBlbmQKICAgICAgICAgICAgIG9mIHRoZSBm
aWZvIChvciBwaXBlKSBoYXMgYmVlbiBvcGVuZWQgYW5kIHRoZSBwaXBlIGlzIGVtcHR5LiBb
MV0KICAgICAgICAgICAgIFsxXSBvbmx5IGlmIHRoZSBPX05PTkJMT0NLIG9wZW4gZmlsZSBz
dGF0dXMgZmxhZyBoYXMgYmVlbiBkaXNhYmxlZC4KICAgICAgICAgICAgICovCgogICAgICAg
ICAgICBzdGF0dXMgPSByZWFkKGZkLCBidWYsIHNpemVvZihidWYpKTsKcHJpbnRmKCJzdGF0
dXMgPSAlbGQsIGVycm5vID0gJWRcbiIsIHN0YXR1cywgZXJybm8pOwoKICAgICAgICAgICAg
Ly8gd2lsbCBhcnJpdmUgaGVyZSBvbmx5IGlmIHRoZSB3cml0ZSBlbmQgb2YgZmlmbyBoYXMg
YmVlbiBvcGVuZWQgKGJlZm9yZSBpdAogICAgICAgICAgICAvLyB3YXMgY2xvc2VkIGFnYWlu
KQogICAgICAgICAgICBpZiAoc3RhdHVzID09IDApIHsgLy8gdGhlIHdyaXRlIGVuZCBvZiB0
aGUgZmlmbyBoYXMgYmVlbiBjbG9zZWQgKEVPRikKICAgICAgICAgICAgICAgIGNsb3NlKGZk
KTsKICAgICAgICAgICAgICAgIGludCBmZDI7CiAgICAgICAgICAgICAgICBpZiAoKGZkMiA9
IG9wZW4gKEZJRk9fUEFUSCwgT19SRE9OTFkgfCBPX05PTkJMT0NLKSkgPCAwKSB7CiAgICAg
ICAgICAgICAgICAgICAgcGVycm9yICgib3BlbiIpOwogICAgICAgICAgICAgICAgICAgIGV4
aXQgKDEpOwogICAgICAgICAgICAgICAgfQoKICAgICAgICAgICAgICAgIGlmIChmY250bChm
ZCwgRl9TRVRGTCwgT19SRE9OTFkpID09IC0xKSAvLyBwcmFnbWF0aWMKICAgICAgICAgICAg
ICAgICAgICBmcHJpbnRmKHN0ZGVyciwgImZjbnRsIEZfU0VURkw6ICVzXG4iLCBzdHJlcnJv
cihlcnJubykpOwogICAgICAgICAgICAgICAgaW50IGZsYWdzID0gZmNudGwoZmQsIEZfR0VU
RkwpOwogICAgICAgICAgICAgICAgaWYgKGZsYWdzID09IC0xKQogICAgICAgICAgICAgICAg
ICAgIGZwcmludGYoc3RkZXJyLCAiZmNudGwgRl9HRVRGTDogJXNcbiIsIHN0cmVycm9yKGVy
cm5vKSk7CiAgICAgICAgICAgICAgICBwcmludGYoImZsYWdzID0gMCVvXG4iLCBmbGFncyk7
CgogICAgICAgICAgICAgICAgLyoKICAgICAgICAgICAgICAgICBhc3NpZ24gdGhlIG5ldyBm
aWxlIGRlc2NyaXB0b3IgdG8gdmFyaWFibGUgZmQ7IG90aGVyd2lzZSBzZWxlY3QoMikgd2ls
bAogICAgICAgICAgICAgICAgIG5vdCBibG9jayBvbiB0aGUgcmVhZCBlbmQgaW4gY2FzZSB0
aGUgd3JpdGUgZW5kIG9mIHRoZSBmaWZvIChvciBwaXBlKSBpcwogICAgICAgICAgICAgICAg
IGNsb3NlZC4KICAgICAgICAgICAgICAgICAqLwogICAgICAgICAgICAgICAgZmQgPSBmZDI7
CgogICAgICAgICAgICAgICAgcHJpbnRmKCJmZCA9ICVkIC0gcmVmcmVzaGVkXG4iLCBmZCk7
CiAgICAgICAgICAgICAgICBicmVhazsKICAgICAgICAgICAgfQogICAgICAgICAgICBpZiAo
c3RhdHVzID4gMCkgewogICAgICAgICAgICAgICAgaWYgKHdyaXRlKDEsIGJ1Ziwgc3RhdHVz
KSA8IDApIHsKICAgICAgICAgICAgICAgICAgICBmcHJpbnRmKHN0ZGVyciwgIkVycm9yIHNl
bmRpbmcgbWVzc2FnZTogJyVzJzogJXNcbiIsIGJ1Ziwgc3RyZXJyb3IoZXJybm8pKTsKICAg
ICAgICAgICAgICAgIH0KICAgICAgICAgICAgICAgIGlmIChidWZbc3RhdHVzIC0gMV0gIT0g
J1xuJykgewogICAgICAgICAgICAgICAgICAgIHdyaXRlKDEsICYiXG4iLCAxKTsKICAgICAg
ICAgICAgICAgIH0KICAgICAgICAgICAgICAgIGlmIChzdHJuY2FzZWNtcChidWYsICJxdWl0
IiwgNCkgPT0gMCkgewogICAgICAgICAgICAgICAgICAgIGNsb3NlKGZkKTsKICAgICAgICAg
ICAgICAgICAgICByZW1vdmUoRklGT19QQVRIKTsKICAgICAgICAgICAgICAgICAgICBleGl0
ICgwKTsKICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgIH0KICAgICAgICAgICAgaWYg
KHN0YXR1cyA8IDApIHsKICAgICAgICAgICAgICAgIC8qIEFuIGVycm9yIG9jY3VycmVkLCBi
YWlsIG91dCAqLwogICAgICAgICAgICAgICAgY2xvc2UoZmQpOwogICAgICAgICAgICAgICAg
cGVycm9yKCJyZWFkIik7CiAgICAgICAgICAgICAgICBleGl0ICgxKTsKICAgICAgICAgICAg
fQogICAgICAgIH0gLy8gZW5kIHdoaWxlKDEpIHJlYWQKCiAgICB9IC8vIGVuZCB3aGlsZSgh
ZG9uZSkgc2VsZWN0CgogICAgY2xvc2UoZmQpOwogICAgcmVtb3ZlKEZJRk9fUEFUSCk7Cgog
ICAgcmV0dXJuIDA7Cn0KCi8vPT09PT0K

--------------3Ab9mXcDjXj5J5xknoEMyOYO--

--------------hoc1v4MIt1CiwnjnzvSPLKK6--

--------------Hjh7jm2Q5w8nIGaz5iop508X
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNrscsACgkQnowa+77/
2zJQ8Q/+KjtHZoSEEue1FeQaXiROJQTbUtj7zRia8MlUaPGCAlESSorbEFwxbhgf
S7cLzIdoCN2hWQosBVALNqa31Wv0VFypA9e6EJlu7faWcNG6zb7lahILi6iIpmln
WPqzqpcl0UhziSdo5iEPi7bYO7lmKtXOQFbVPmiVJ4bSpUfiXIUwCjZ/TEsMgvci
SiNjKwyq0FzpPTvCB7vVchFTfywXF7ew1MuFas1ay423emoWg9jFCWf1ok8aJaS3
XCNS3hF8kiyMTluoY9fJfUwNhTq5YmKNOXiQjNxeALDuOj4Ek544UvIZo5XWDSJA
5qhYbSBFSqPkhGJCMb81fdGVBSyBkhG27uK52f/B/LU30k2KxyIzC7KylxykPnIk
vQGVAFtn8+A+usEkbhedJbKjtau8nQp13TnD7ffmh+7cSwoiKjbatZfxe88WzOqX
Hcc7A31jK4ZwfzO0wYKckfzu0cDbw98XSHOAeWtHY0pn3Rv7DjVOoUGwYjVoAnV5
2570Fi3H1odvmXrf8I5YuUv1sT/Mbk59bPA9wgNANy6tPr+/EtagMcOa/73ZESzp
chf/uMA1ZlKw0XFcOjGCYt4/DI73Vlct7Qmtgb+nvoC8W9tRvAghv6Dhcy8OKZVd
NaWzNvMAiv2WNKVwsjgOPglaitubZdmv//fvLfS8xDZa5g7b7ik=
=qiDY
-----END PGP SIGNATURE-----

--------------Hjh7jm2Q5w8nIGaz5iop508X--
