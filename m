Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CC5D167FF90
	for <lists+linux-man@lfdr.de>; Sun, 29 Jan 2023 15:38:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230220AbjA2Oie (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 29 Jan 2023 09:38:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37562 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229835AbjA2Oid (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 29 Jan 2023 09:38:33 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B7EFD5FC1
        for <linux-man@vger.kernel.org>; Sun, 29 Jan 2023 06:38:31 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id q5so8942475wrv.0
        for <linux-man@vger.kernel.org>; Sun, 29 Jan 2023 06:38:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rCAIV8t+IXk4ONHPYIuOTpYPdkoT1rRiKv0RNLfE36Q=;
        b=IfZzD3AKZkpDZA9ak9+QQnFaKHRqio4uHCZ+V7/dKMKIAx/URwgUw9bqkovTDupLjj
         y6RyVrZ/v/PdJrtt3Rh8kYVEfTTkZ/mOgfU6BlULlAL5E0WfyP4dAyu+p+zIsqIZoVDY
         iThHrrAVVdJfyrDbf6nzDD5aElHy7devYv0zz7cte9sHIpXAFvHgkeRI+bb/9lIPU8Sm
         8ctpJfGpHCn5nEoWkwhUqULspVhe+z8HWkHf7DKXWD79R42SJ/GCLPs36vMOOoh+Yn0W
         FTIcx/st9adNEthE0rAycZ0fFLKQMxaYiSEfwD7+9TFKCoErjOkXdg9B3AhsIaJZmth9
         e4QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=rCAIV8t+IXk4ONHPYIuOTpYPdkoT1rRiKv0RNLfE36Q=;
        b=uefdC7qlUhXscUa6rwWhn6OQ652lNNC4EQiafZ9REaok+UbiyqZsFNPj5g3Z9Yd2M5
         qYGyOZKIYXMbM611bQoW1vnMbUXaRy767of0d8J8ZACn5plA2uKSqmxPfWXCVLI0J7ky
         fpqUbqCDEAt373jRxhuXjalCe8AthF4B8N43/o6MCBPnxzi6sebYCwt4YEXjFjMhq4l5
         qcHEvuH2fkP0DP2RW9IWYbDTuGq8xanmgZk+zOUeC+AuylGIRcxgLtT9phkbb888O+gl
         CLv7jxkFpNo3Y7lpPuVHu/66jPbNkpblpz1sGNgkXBnefuwgJRve70ZYM1T1xRJfHZAM
         b5MQ==
X-Gm-Message-State: AO0yUKUvK44LY0ZYOxiblo6Hfd2I6lvOln8aNv6Crb5nJA5oq6TgOaia
        On1NXZkgwiA97/IQJD9OKjOY/r94LyQ=
X-Google-Smtp-Source: AK7set9I3s7HUZcffVM75baJHkr6ICQR+MzfOurdoyqHEgEd4JwrhX71hNZrcuWwCiv6vnUKl0PIdw==
X-Received: by 2002:adf:decc:0:b0:2bf:b119:e6e2 with SMTP id i12-20020adfdecc000000b002bfb119e6e2mr18636624wrn.47.1675003109990;
        Sun, 29 Jan 2023 06:38:29 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id s5-20020a5d5105000000b002bdfcd8c77csm9249168wrt.101.2023.01.29.06.38.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Jan 2023 06:38:29 -0800 (PST)
Message-ID: <717e8fb9-9159-65f8-093e-a117c82be704@gmail.com>
Date:   Sun, 29 Jan 2023 15:38:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: Using C23 digit separators not locale digit grouping characters
Content-Language: en-US
To:     Brian Inglis <Brian.Inglis@Shaw.ca>,
        =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     Linux Man-Pages <linux-man@vger.kernel.org>
References: <19a71139-7807-2692-3eec-16a0f754911d@Shaw.ca>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <19a71139-7807-2692-3eec-16a0f754911d@Shaw.ca>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------rBtVMvmSYnc1XtROL0dPQDUi"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------rBtVMvmSYnc1XtROL0dPQDUi
Content-Type: multipart/mixed; boundary="------------28meZobo0wj3LPrEbMsUxDFG";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Brian Inglis <Brian.Inglis@Shaw.ca>,
 =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: Linux Man-Pages <linux-man@vger.kernel.org>
Message-ID: <717e8fb9-9159-65f8-093e-a117c82be704@gmail.com>
Subject: Re: Using C23 digit separators not locale digit grouping characters
References: <19a71139-7807-2692-3eec-16a0f754911d@Shaw.ca>
In-Reply-To: <19a71139-7807-2692-3eec-16a0f754911d@Shaw.ca>

--------------28meZobo0wj3LPrEbMsUxDFG
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJpYW4gYW5kINC90LDQsSENCg0KT24gMS8yOC8yMyAyMTo0MCwgQnJpYW4gSW5nbGlz
IHdyb3RlOg0KPiBIaSBmb2xrcywNCj4gDQo+IFNlZWluZyB0aGUgcmVjZW50IHR2X25zZWMg
cGF0Y2hlcyBkcm9wIHRoZSBzdGFuZGFyZCBsb2NhbGUgZGlnaXQgZ3JvdXBpbmcgDQo+IGNo
YXJhY3RlcnMgIiwiIGZyb20gdGhlIG1lbWJlciByYW5nZSBbMC05OTksOTk5LDk5OV0gbWFk
ZSBtZSByZWdyZXQgdGhlIGxvc3Mgb2YgDQo+IHRoZSBwdW5jdHVhdGlvbiB3aGljaCBwcm92
aWRlcyBiZXR0ZXIgYW5kIHF1aWNrZXIgY29tcHJlaGVuc2lvbiBvZiBsb25nIHN0cmluZ3Mg
DQo+IG9mIGRpZ2l0cy4NCg0KTmljZSEgRGlkbid0IHJlbWVtYmVyIGFib3V0IHRoYXQgc2Vw
YXJhdG9yLiAgSXQgbWFrZXMgYSBsb3Qgb2Ygc2Vuc2UgdG8gdXNlIGl0IA0KaW4gY29tbWVu
dHMgYW5kIHRoZSBsaWtlcyBpbiB0aGUgcGFnZXMuICBNYXliZSB3ZSBzaG91bGQgYmUgYSBi
aXQgbW9yZSBjYXV0aW91cyANCmluIHNvdXJjZSBjb2RlIGV4YW1wbGVzLCBidXQgZGVmaW5p
dGVseSBmb3IgYmlnIG51bWJlcnMgb3V0c2lkZSBvZiBydW5uaW5nIGNvZGUgDQpzaG91bGQg
aGF2ZSB0aGVtLg0KDQrQvdCw0LEsIHdvdWxkIHlvdSBwbGVhc2UgdXBkYXRlIHlvdXIgcGF0
Y2hlcyB3aXRoIHRoYXQ/ICBJIGFsc28gaGF2ZSBhIGZldyBjb21tZW50cyANCnRoYXQgSSds
bCB3cml0ZSBpbiBhIG1vbWVudCBpbiBhbnN3ZXJzIHRvIHlvdXIgcGF0Y2hlcy4NCg0KQ2hl
ZXJzLA0KDQpBbGV4DQoNCj4gDQo+IEl0IG1heSBiZSB0aW1lIHRvIGNvbnNpZGVyIHVzaW5n
IHRoZSBsb2NhbGUgaW5kZXBlbmRlbnQgQzIzIGRpZ2l0IHNlcGFyYXRvciANCj4gY2hhcmFj
dGVycyAiJyIgd2hlcmV2ZXIgbW9yZSB0aGFuIGEgaGFuZGZ1bCBvZiBkaWdpdHMgb2NjdXIs
IHBvc3NpYmx5IGNvbnZlcnQgDQo+IGdyb3VwaW5nIGNoYXJhY3RlciB1c2VzIGluIGV4aXN0
aW5nIG1hbiBwYWdlcyBhcyB0aGV5IGFyZSBjaGFuZ2VkLCBhbmQgc3BlY2lmeSBhIA0KPiBm
dXR1cmUgc3RhbmRhcmQgcG9saWN5IGFwcHJvYWNoIHRvIHByb3ZpZGUgYmV0dGVyIGFuZCBx
dWlja2VyIGNvbXByZWhlbnNpb24gb2YgDQo+IGxvbmcgc3RyaW5ncyBvZiBkaWdpdHM6IHBl
cmhhcHMgdXNpbmcgYSBuZXcgZGlnaXQgc2VwYXJhdG9yIHJlZ2lzdGVyIGFuZCBnbHlwaCAN
Cj4gZXNjYXBlIHNlcXVlbmNlIFwqZHMgXCpbZHNdIFxbZHNdIFwoZHMgaWYgbm90IGluIHVz
ZSBieSBiYXNlIGdyb2ZmPw0KDQpUaGUgc2VxdWVuY2UgZm9yIHRoZSB1bnNsYW50ZWQgc2lu
Z2xlIHF1b3RlIGlzIFwoYXEuDQoNCldlIGNvdWxkIGFkZCBzb21ld2hlcmUgaW4gbWFuLXBh
Z2VzKDcpIHRoYXQgZGVjaW1hbCBudW1iZXJzIHNob3VsZCB1c2UgYSANCnNlcGFyYXRvciBl
dmVyeSAzIGRpZ2l0cywgYW5kIGhleCBhbmQgYmluYXJ5IHNob3VsZCB1c2UgaXQgZXZlcnkg
NCBkaWdpdHMuDQoNCj4gDQo+IEFzIHdlbGwgYXMgdGhlIHJlY2VudGx5IG1vZGlmaWVkIHBh
Z2VzOg0KPiANCj4gY2xvY2tfZ2V0cmVzLjINCj4gdGltZXJfc2V0dGltZS4yDQo+IHRpbWVy
ZmRfY3JlYXRlLjINCj4gdXRpbWVuc2F0LjINCj4gDQo+IHRoZXJlIGFwcGVhciB0byBiZSBv
YnZpb3VzIG9jY3VycmVuY2VzIGluIG9ubHkgdGhlIGZvbGxvd2luZyBwYWdlczoNCj4gDQo+
IGZ1dGV4LjINCj4gcmVhZC4yDQo+IHNlbmRmaWxlLjINCj4gd3JpdGUuMg0KPiBtYWxsb3B0
LjMNCj4ga2V5cmluZ3MuNw0KPiBtcV9vdmVydmlldy43DQo+IHNjaGVkLjcNCj4gdGltZV9u
YW1lc3BhY2VzLjcNCj4gDQo+IGJ1dCB0aGVyZSBhcHBlYXIgdG8gYmUgYWJvdXQgNDAwIHBh
Z2VzIHdpdGggbW9yZSB0aGFuIDYgZGVjaW1hbCBkaWdpdCBzdHJpbmdzIA0KPiAoc29tZSBz
cHVyaW91cyBnbGliYyBoZXggY29tbWl0cyBhbmQgYWRkcmVzcyBvdXRwdXRzKSB3aGVyZSBp
dCBjb3VsZCBwZXJoYXBzIA0KPiBoZWxwLCBzdWNoIGFzIGluIFBPU0lYIHZlcnNpb24gZGF0
ZXMgZS5nLiAyMDAxJzEyTCwgYW5kIHVuZG91YnRlZGx5IG1vcmUgd2l0aCANCj4gbG9uZyBk
aWdpdCBzdHJpbmdzIGluIG90aGVyIHJhZGl4ZXMuDQoNCldvdWxkIHlvdSBtaW5kIHByZXBh
cmluZyBhIHBhdGNoIGZvciBhbGwgb2YgdGhvc2U/ICBJZiB5b3UnbGwgZG8gaXQsIGJldHRl
ciB3YWl0IA0KdW50aWwgd2UgbWVyZ2Ug0L3QsNCxJ3MgcGF0Y2hlcywgdG8gYXZvaWQgY29u
ZmxpY3RzLg0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KPiANCg0KLS0gDQo8aHR0cDovL3d3dy5h
bGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------28meZobo0wj3LPrEbMsUxDFG--

--------------rBtVMvmSYnc1XtROL0dPQDUi
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPWhN0ACgkQnowa+77/
2zJFFw//bDLeWIGtsiQNzlP03DXxu7OZt8LHmxwPGE6BB5DqAm2mUi6MCo7jftSx
P/dEUmY0pRWIo677g6d09WKSxPVuIMxG9jJpM7IdDwmuPDL3CgrdV6ga0SvsX9+4
f5STOO7XLOdXP7ZiRNLYR506eGVb4JGogsn7bD4mvMdLDPAp8HjMoZvDuzklntXl
yC1zdxVxcuPTV8mWMZ07xtPHLaDzuhmkeFqXBfzHs2kWzNJFHllo3TvQ/uhlhOPy
JwDgh8i21ztGgcLXRhgHeXzFlTQobaANFjrzMNPOCtyYT53NG1mJm/DfsglG2KZP
wna3MkFNIweeWWVJgtIlU+9/J7DvcS3Cr+6BI9MfvscWjOLxods5Q+FxjvTFMugh
D27vjXXoKsuC/1P2cHGE46gkdk2imaJH3iBLGT2txj4RxVzmTK3Pxrru1Zf5nyoj
9ZQv9+IKNHCGHgJOUprE0998WpaGsn8ASfAe+yPXuI61y9Eo3pQxnIBN1ezOEj+H
hEkvCY4SZ+uE0vJRHtq7Aqsr6R+W1B8RxRWc+iJJG4Gyi157zuN/LmMqHfCJlslC
zNwGa8hD3y0DGStbw0MbjUJYoO0zGyJFvGpqBOE7OgWANuq8bX+W/yNpIc3eo94o
RC1yBc2+gAKTz3TYjhwJ8fpBgvstvAKCMCALMz9F71XLXbHh9Ng=
=UoNn
-----END PGP SIGNATURE-----

--------------rBtVMvmSYnc1XtROL0dPQDUi--
