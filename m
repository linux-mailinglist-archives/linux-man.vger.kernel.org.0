Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 561E964368B
	for <lists+linux-man@lfdr.de>; Mon,  5 Dec 2022 22:11:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230084AbiLEVLI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Dec 2022 16:11:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230377AbiLEVLH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Dec 2022 16:11:07 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E69D656D
        for <linux-man@vger.kernel.org>; Mon,  5 Dec 2022 13:11:06 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id ay27-20020a05600c1e1b00b003d070f4060bso11235554wmb.2
        for <linux-man@vger.kernel.org>; Mon, 05 Dec 2022 13:11:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7bB7PzadehnXIfkLijesIU1oFxM1em+i2urC8RBR41U=;
        b=ZLYdqG3pIZJ2ftEYVbsIUvwqH/PmcVlld+WnnK65n0WbYQlRxX85ICTkSYP20sBhcW
         XEfgmZIiGkf4XyKutW0mBdYPsrd+ooJsIaA3HhAb3h9nSlzGwdfK7dtRwdZsygwhGXww
         uLpgt4IgpgPN4kT103VR3zQ1Z/1nPyYoSRrNAACkT/BRke0W5tlnz8ZQbisf6nj8HuuU
         hmH2Gf2e3ScwXS1TImPZAjePOboX/GwJOjDkFgnXXLnHhBs2dcCFMicX3DxQZHZa8Bzq
         tvuTyxBbh/hMYzmdozmq1r+pJ9hAHyj3xWal+MLT0n25E7yVpJrCI+HX6hAIachJLuiv
         RhNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7bB7PzadehnXIfkLijesIU1oFxM1em+i2urC8RBR41U=;
        b=vrP3rUsLLfx3NOjZOZmzhbX5/mjNayV3R+Il6GDNI13gnFPb25AVhSfTjXjpSsMAa/
         93TsHjPXIKkDoloiZ+jc6j1Ijq5wChzJ9pVVA1iOkWDIeeeQu1VGy5rasSVeBBA7QaBt
         VJ2lQRJ/aYsBcgtMONnSNYrLlwuu+LE0Y+VhMMZT1wekgVu9+pJFpsYr5kEbM1lIpT1q
         mDInSKZyQTHbE6JfX7vRiH3rUqWty309Z18uIRDO43JD57hk7gxUkf32KKGeckYxis8T
         yOernSlkWPAp3nIXLCEouR7hPnBijorCg1LpQZPjDCGxjAU6wbKHArIfCifiBpmSx7ZT
         eh1A==
X-Gm-Message-State: ANoB5pl2SehUsLN3H7+C+o7gHRGeEnUItY/1YoNJqv1EgnOTUUyICkvQ
        ym9opwlBjO3hizM5J9DOLRrBWrg2O/8=
X-Google-Smtp-Source: AA0mqf6ELgHbpFeRs/ERFeonPmKEshTH2wTgmyFTG5SBWdU6XwKGjuWzEBrV5M25Dw60AtE1DaSkZQ==
X-Received: by 2002:a05:600c:5124:b0:3cf:878c:6555 with SMTP id o36-20020a05600c512400b003cf878c6555mr50518700wms.38.1670274664893;
        Mon, 05 Dec 2022 13:11:04 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id t5-20020a5d5345000000b0022cc3e67fc5sm14881079wrv.65.2022.12.05.13.11.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Dec 2022 13:11:04 -0800 (PST)
Message-ID: <ab882fc4-a2fc-cb8c-7141-c4d62f95b8ef@gmail.com>
Date:   Mon, 5 Dec 2022 22:10:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH] strcat.3: SYNOPSIS: Fix the size of 'dest'
Content-Language: en-US
To:     Russ Allbery <eagle@eyrie.org>,
        Alejandro Colomar via Libc-alpha <libc-alpha@sourceware.org>
Cc:     linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>
References: <20221205151102.13042-1-alx@kernel.org>
 <87pmcx4u87.fsf@hope.eyrie.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <87pmcx4u87.fsf@hope.eyrie.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------97aXVDrCPYmj08666nuPXrnG"
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------97aXVDrCPYmj08666nuPXrnG
Content-Type: multipart/mixed; boundary="------------8lyGo66e3N0TmQITKDuj66gn";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Russ Allbery <eagle@eyrie.org>,
 Alejandro Colomar via Libc-alpha <libc-alpha@sourceware.org>
Cc: linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>
Message-ID: <ab882fc4-a2fc-cb8c-7141-c4d62f95b8ef@gmail.com>
Subject: Re: [PATCH] strcat.3: SYNOPSIS: Fix the size of 'dest'
References: <20221205151102.13042-1-alx@kernel.org>
 <87pmcx4u87.fsf@hope.eyrie.org>
In-Reply-To: <87pmcx4u87.fsf@hope.eyrie.org>

--------------8lyGo66e3N0TmQITKDuj66gn
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgUnVzcyENCg0KT24gMTIvNS8yMiAxODo0OCwgUnVzcyBBbGxiZXJ5IHdyb3RlOg0KPiBB
bGVqYW5kcm8gQ29sb21hciB2aWEgTGliYy1hbHBoYSA8bGliYy1hbHBoYUBzb3VyY2V3YXJl
Lm9yZz4gd3JpdGVzOg0KPiANCj4+IEknbSBjb250aW51aW5nIG15IGluZGlzY3JpbWluYXRl
ZCBzaG9vdGluZyBhZ2FpbnN0IGJyb2tlbiBmdW5jdGlvbnMuDQo+PiBJIGRvbid0IHJlbWVt
YmVyIGlmIEkgZXZlciB1c2VkIGl0LCBidXQgaXQgZ290IG1lIHN1cnByaXNlZCBmb3IgaG93
IG11Y2gNCj4+IGJyb2tlbiBpdCBpcy4NCj4gDQo+PiBQbGVhc2Uga2lsbCB0aGlzIGZ1bmN0
aW9uIGluIGdsaWJjLiAgVGhlIHVwZGF0ZWQgcHJvdG90eXBlIHVzaW5nIGEgYml0DQo+PiBv
ZiBpbWFnaW5hdGlvbiB0byBvdmVyZXh0ZW5kIFZMQSBzeW50YXggdG8gc2hvdyBob3cgaXQg
YmVoYXZlcywgc2hvd3MNCj4+IGhvdyBicm9rZW4gaXQgaXMuDQo+IA0KPj4gSXQgaXMgaW1w
b3NzaWJsZSB0byB1c2UgdGhpcyBmdW5jdGlvbiBjb3JyZWN0bHkgKG9rYXksIGl0IHlvdSB0
cnkgaGFyZCwNCj4+IHlvdSBjYW4sIGJ1dCBvbmx5IGZvciB0aGUgcGxlYXN1cmUgb2YgdXNp
bmcgaXQgd2l0aG91dCBjcmFzaGluZywgbm90IGZvcg0KPj4gYW55dGhpbmcgdXNlZnVsKS4N
Cj4gDQo+IEhpIEFsZWphbmRybywNCj4gDQo+IEknbSBqdXN0IGEgYnlzdGFuZGVyIGhlcmUs
IGJ1dCBJJ3ZlIHNlZW4gYSBmZXcgcHJvcG9zYWxzIGxpa2UgdGhpcyBnbyBieSwNCj4gYW5k
IEknbSBub3Qgc3VyZSBhbnlvbmUgaGFzIHlldCBzYWlkIGV4cGxpY2l0bHkgdGhhdCB0aGVz
ZSBmdW5jdGlvbnMgYXJlDQo+IGluY3JlZGlibHkgd2lkZWx5IHVzZWQgaW4gcmVhbCBDIGNv
ZGUgb3V0IGluIHRoZSB3b3JsZC4NCg0KWWVhaCwgSSdkIHNheSBzYWRseS4NCg0KPiAgVGhl
eSBwcmVkYXRlIGFsbA0KPiBvZiB0aGUgZnVuY3Rpb25zIHRoYXQgeW91IGFyZSByZWNvbW1l
bmRpbmcgYXMgcmVwbGFjZW1lbnRzIGZvciB0aGVtLCBzbw0KPiB0aGV5J3JlIGNvbW1vbiBp
biBvbGQsIHBvcnRhYmxlIEMuDQoNCldlbGwsIHRoZSBidWlsZGluZyBibG9ja3MgZm9yIGlt
cGxlbWVudGluZyBhbnkgb2YgdGhlIGxlc3MtcG9ydGFibGUgZnVuY3Rpb25zIA0KYXJlIGFs
cmVhZHkgcG9ydGFibGU6IG1lbWNweSgzKSwgbWVtY2NweSgzKSwgc3RybGVuKDMpLCAuLi4N
Cg0KPiANCj4gSSB0aGluayB0aGUgd29yayB5b3UncmUgZG9pbmcgdG8gZG9jdW1lbnQgdGhh
dCB0aGV5IHNob3VsZCBuZXZlciBiZSB1c2VkDQo+IGZvciBuZXcgY29kZSBpbiB0aGUgbWFu
IHBhZ2VzIGlzIGdyZWF0OyBwbGVhc2UgY29udGludWUhDQoNClRoYW5rcyEgIFdpbGwgZG8g
OikNCg0KPiAgQWx0aG91Z2ggaXQgbWF5DQo+IGJlIHVzZWZ1bCB0byBjYXJyeSB3aXRoIHRo
YXQgc29tZSBjYXZlYXRzIGFib3V0IHBvcnRhYmlsaXR5OyBzb21lIG9mIHRoZQ0KPiByZXBs
YWNlbWVudHMgeW91J3ZlIG1lbnRpb25lZCBhcmUgZ29pbmcgdG8gcG9zZSBwb3J0YWJpbGl0
eSBjaGFsbGVuZ2VzLg0KDQpsaWJic2QgYWxyZWFkeSBkb2VzIGEgZ29vZCBqb2Igb2YgbWFr
aW5nIHRoZW0gcG9ydGFibGU6DQoNCjxodHRwczovL2xpYmJzZC5mcmVlZGVza3RvcC5vcmcv
d2lraS8+DQoNCkl0J3MgYXZhaWxhYmxlIGluIHZpcnR1YWxseSBhbGwgTGludXggZGlzdHJp
YnV0aW9ucywgYW5kIHRoZW4gdGhlcmUgYXJlIHBvcnRzIHRvIA0Kb3RoZXIgc3lzdGVtcyBz
dWNoIGFzIFNvbGFyaXMuICBJIGd1ZXNzIGlmIHNvbWUgc3lzdGVtIGlzIG5vdCB5ZXQgc3Vw
cG9ydGVkIGJ5IA0KaXQsIG9uZSBjb3VsZCBwb3J0IGl0Lg0KDQo+IA0KPiBJJ20gYSBiaXQg
bW9yZSBkdWJpb3VzIGFib3V0IGdsaWJjIG1hcmtpbmcgdGhlc2UgZnVuY3Rpb25zIGFzIGZv
cm1hbGx5DQo+IGRlcHJlY2F0ZWQgdW5sZXNzIHRoZSBDIHN0YW5kYXJkIGFsc28gZGVwcmVj
YXRlcyB0aGVtIChhcyBoYXBwZW5lZCB3aXRoDQo+IGdldHMsIHdoaWNoIGlzIHByb2JhYmx5
IHRoZSBiZXN0IHByZWNlZGVudCBmb3Igd2hhdCB5b3UncmUgdHJ5aW5nIHRvDQo+IGFjY29t
cGxpc2gpLg0KDQpTb21lb25lIGhhcyB0byBwcm9wb3NlIGl0cyBjb2xkIGRlYXRoLiAgT3Ro
ZXJ3aXNlLCB3ZSBtYXkgbGl2ZSB3aXRoIGl0IGZvciANCmRlY2FkZXMsIGlmIG5vdCBjZW50
dXJpZXMsIGFuZCBwZW9wbGUgd2lsbCBjb250aW51ZSB0byBjb21pdCBjcmltZXMgaW4gdGhl
aXIgDQpuYW1lcy4gIDopDQoNCj4gDQo+IEZvciB0aGUgcmVjb3JkLCB0aGVyZSBpcyBxdWl0
ZSBhIGxvdCBvZiBjb2RlIG91dCB0aGVyZSB0aGF0IHVzZXMgc3RyY3B5DQo+IGFuZCBzdHJj
YXQgc2FmZWx5LA0KDQpPaCwgSSBkaWRuJ3QgKHlldD8pIGtpbGwgdGhvc2UuICBJIGRvbid0
IHJlY29tbWVuZCB0aGVtIHBlcnNvbmFsbHksIGJ1dCBnY2MgDQpmb3J0aWZpY2F0aW9ucyBo
YXZlIGltcHJvdmVkIHNvIG11Y2ggdGhhdCBpdCdzIGhhcmRlciB0byBjb21taXQgY3JpbWVz
IHdpdGggDQp0aGVtLiAgVGhlcmUgYXJlIG90aGVyIHdheXMgdG8gZ2V0IHRoZSBzYW1lIHNp
bXBsaWNpdHkgYXMgd2l0aCB0aG9zZSwgYW5kIGV2ZW4gDQpiZXR0ZXIgcGVyZm9ybWFuY2Us
IGJ1dCB0aGV5IGFyZSBjZXJ0YWlubHkgc3RpbGwgdXNlZnVsIGluIHNvbWUgY2FzZXMuDQoN
ClRoZSBvbmVzIEkga2lsbGVkIHNvIGZhciBhcmUgc3RyTmNweSgzKSBhbmQgc3RyTmNhdCgz
KSwgd2hpY2ggc2ltcGx5IGNhbid0IGJlIA0KdXNlZCBzYWZlbHkuDQoNCj4gdXNpbmcgYSBw
YXR0ZXJuIHdoZXJlIGZpcnN0IHRoZSB0b3RhbCBsZW5ndGggb2YgdGhlDQo+IHJlc3VsdGlu
ZyBzdHJpbmcgaXMgY2FsY3VsYXRlZCwgdGhhdCBtdWNoIHNwYWNlIGlzIGFsbG9jYXRlZCwg
YW5kIHRoZW4gaXQNCj4gaXMgYXNzZW1ibGVkIHdpdGggc3RyY3B5IGFuZCBzdHJjYXQuICBU
aGlzIHVzZWQgdG8gYmUgdGhlIHN0YW5kYXJkIHdheSB0bw0KPiBhc3NlbWJsZSBzdHJpbmdz
IGluIEMgYmVmb3JlIHN0cmxjcHkgb3IgYXNwcmludGYgZXhpc3RlZCAoYW5kIG5laXRoZXIg
b2YNCj4gdGhvc2UgZnVuY3Rpb25zIGFyZSBhbGwgdGhhdCBwb3J0YWJsZSBldmVuIG5vdzsg
SSB3b3VsZCBzdGlsbCBoZXNpdHRhdGUgdG8NCj4gdXNlIGVpdGhlciB3aXRob3V0IGEgY29u
ZmlndXJlIHByb2JlIGFuZCBhIHJlcGxhY2VtZW50IGltcGxlbWVudGF0aW9uKS4NCg0KSWYg
eW91IHVzZSBhdXRvdG9vbHMsIHlvdSBjYW4gZm9sbG93IHdoYXQgd2UgZGlkIGluIHNoYWRv
dyBmb3IgZ2V0dGluZyANCnJlYWRwYXNzcGhyYXNlKDNic2QpIGZyb20gbGliYnNkOg0KDQo8
aHR0cHM6Ly9naXRodWIuY29tL3NoYWRvdy1tYWludC9zaGFkb3cvcHVsbC81NzM+DQoNCj4g
IEkNCj4gdGhpbmsgeW91J3JlIGV4YWdnZXJhdGluZyB0aGUgZGlmZmljdWx0eSBvZiB1c2lu
ZyB0aGVtIHNhZmVseSBhIHRpbnkgYml0LA0KPiBidXQgbWF5YmUgdGhhdCdzIGp1c3QgYmVj
YXVzZSBJJ20gYW4gb2xkIEMgcHJvZ3JhbW1lciBmb3Igd2hvbSB0aGF0DQo+IHBhdHRlcm4g
aXMgYSBmaW5nZXIgbWFjcm8uDQoNCk5vLCBJIG1pZ2h0IGJlIGV4YWdnZXJhdGluZyBhIGxp
dHRsZSBiaXQgaWYgSSBzYWlkIHRoYXQgYWJvdXQgDQpzdHJjcHkoMykvc3RyY2F0KDMpLiAg
QnV0IGZvciBzdHJOY3B5KDMpL3N0ck5jYXQoMyksIEkgc3RhbmQgYnkgbXkgcG9pbnQ6IHRo
ZXkgDQphcmUgbmV2ZXIgdGhlIGZ1bmN0aW9uIHlvdSBzaG91bGQgdXNlLg0KDQoNCldoaWxl
IHlvdSBjYW4gdXNlIHN0cm5jcHkoMykgb3Igc3RybmNhdCgzKSB3aXRob3V0IGJyZWFraW5n
IHlvdXIgcHJvZ3JhbSwgdGhleSANCmFyZSBzbyB3cm9uZ2x5IGRlc2lnbmVkIHRoYXQgaXQn
cyByZWFsbHkgaGFyZCB0byBub3QgYnJlYWsgaXQuICBUaGVyZSdzIF9hbHdheXNfIA0KYSBz
aW1wbGVyIF9hbmRfIHNhZmVyIGZ1bmN0aW9uIGZvciB0aGUgam9iLiAgQWxzbywgdGhlaXIg
bmFtZXMgZG9uJ3QgZG9jdW1lbnQgDQp0aGUgaW50ZW50aW9uIG9mIHRoZSBwcm9ncmFtbWVy
Lg0KDQpJIHByZWZlciBhY3R1YWwgbWFjcm9zIChvciBmdW5jdGlvbnMpIHJhdGhlciB0aGFu
IGZpbmdlciBtYWNyb3MuICBGaW5nZXIgbWFjcm9zLCANCmVzcGVjaWFsbHkgbXVsdGktbGlu
ZSBwYXR0ZXJucywgdGVuZCB0byBoaWRlIGJ1Z3MuICBJZiB0aGVyZSdzIGFueSB2YWx1ZSBp
biANCnN0cm5jcHkoMykgKHRoZXJlIGlzbid0KSwgaGlkZSBpdCBpbiBhIHJlYWwgbWFjcm8g
YW5kIHVzZSB0aGUgbWFjcm8uICBCdXQgaWYgeW91IA0KZG8gdGhhdCwgeW91IGNhbiBqdXN0
IHVzZSBtZW1jcHkoMykgZm9yIHRoZSBpbXBsZW1lbnRhdGlvbiBhcyB3ZWxsLg0KDQo+IA0K
PiBJdCdzIGFsc28gcHJvYmFibHkgd29ydGggc2F5aW5nIGV4cGxpY2l0bHkgdGhhdCBzdHJs
Y3B5IGFuZCBzdHJsY2F0IGFyZQ0KPiBzdGlsbCBxdWl0ZSBkYW5nZXJvdXMgZnVuY3Rpb25z
IGFuZCBuZWVkIHRvIGJlIHVzZWQgdmVyeSBjYXJlZnVsbHkuDQo+ICBUaGV5DQo+IGRvIHNv
bHZlIHRoZSBwcm9ibGVtIG9mIGJ1ZmZlciBvdmVyZmxvd3Mgd2hlbiB1c2VkIHByb3Blcmx5
LCBidXQgdGhleQ0KPiByZXBsYWNlIHRoYXQgcHJvYmxlbSB3aXRoIHNpbGVudCB0cnVuY2F0
aW9uLCB3aGljaCBjYW4gYWxzbyBjYXVzZSBzZWN1cml0eQ0KPiB2dWxuZXJhYmlsaXRpZXMg
aW4gdGhlIHJpZ2h0IGNpcmN1bXN0YW5jZXMuID4NCg0KDQpZZXMsIHRydW5jYXRpb24gaXMg
YSBwcm9ibGVtIG9mIHN0cmxjcHkoMykgKG9yIGFjdHVhbGx5LCBvZiBhbnkgc2FmZSBzdHJp
bmcgY29weSANCmZ1bmN0aW9ucykuICBCdXQgZ29vZCBzdHJpbmcgY29weSBmdW5jdGlvbnMg
d2lsbCBhdCBsZWFzdCBtYWtlIGl0IGVhc3kgZm9yIHlvdSANCnRvIGNoZWNrIGZvciBpdC4g
IHN0ck5jcHkoMykgYW5kIHN0ck5jYXQoMykgYWN0dWFsbHkgZG9uJ3QgZXZlbiBhbGxvdyB5
b3UgdG8gDQpjaGVjayBmb3IgaXQsIHdoaWNoIGlzIHlldCBhbm90aGVyIHJlYXNvbiB0byBh
dm9pZCB0aGVtLg0KDQpBdCBsZWFzdCB3aXRoIHN0cmxjcHkoMykgeW91IGNhbiBmaW5kIGlm
IHlvdSdyZSBjaGVja2luZyBmb3IgdHJ1bmNhdGlvbiBieSANCmdyZXBwaW5nIGl0LiAgSWYg
eW91IGZpbmQgJ14gKnN0cmxjcHkoJywgaXQncyBsaWtlbHkgdGhhdCB5b3UgZm9yZ290IHRv
IGNoZWNrLg0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KDQotLSANCjxodHRwOi8vd3d3LmFsZWph
bmRyby1jb2xvbWFyLmVzLz4NCg==

--------------8lyGo66e3N0TmQITKDuj66gn--

--------------97aXVDrCPYmj08666nuPXrnG
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOOXlUACgkQnowa+77/
2zItoBAAooWP6tI8/7Y1v7DsZt3Ulf1+g5v4DxwRnSeCOJKzdQMzR06Z0yc8fBOW
st6W9/VDJDmVJ+QsOxP3nMiQX4hnteIEdKUmZi8//2b7vtaKBT8KfBpVtgPFknH3
Lw+ejIgKtL8SquABy5fDPLOVS/ptE9STLB3LQQcoIMFTM9FSIqwzv56WZXhWixfS
5gLth7xFXnXVznX8fuDT++rC+K4odItYWlw+KDeJpDCxcGR+F05Qj1PqzEoGD3m5
loDAlmTWOiWnVRq3rZM4nVaHYvmFdrmH+19qZMh4zMCwWo2KXmqLSD3glo4zT74Y
jAVMQcSiCGChSmtkfP055QsiTN+vU1qbiUoCtAYsh6zNGygB9LDYwpGcHQGpyDrV
geneplo41bb96AsdEq5huBG7S1e9Bu05TkZfcYcsJReMDBnMy+HKE/DynLNznsBN
we0cgIMgJVlE4KTyUOMewonltyyQlpE5a3LlqPJVTmuKoAe4xYdnTlxBt+4VPwYB
ADnzAWuP779q8AxN/SOisds3Whni5eMRY45Pg/gmd7Oxqp7WLqRqMDaIRoFq+mgo
TwCuj+EjnRJs3tdu1HmdgD21O88juS/TaxluWcmFUF2niMf6Ty08E5z1IVPjlkYB
2q3eGxKwMECADa+LH5DakJMhp+to/+y7vpvAZ71Ey9JO/dhgCKs=
=Oi1t
-----END PGP SIGNATURE-----

--------------97aXVDrCPYmj08666nuPXrnG--
