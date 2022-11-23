Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E53D4635FD8
	for <lists+linux-man@lfdr.de>; Wed, 23 Nov 2022 14:33:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238315AbiKWNcs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 23 Nov 2022 08:32:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38720 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238826AbiKWNcM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 23 Nov 2022 08:32:12 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6AD9CCA
        for <linux-man@vger.kernel.org>; Wed, 23 Nov 2022 05:16:47 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id d1so17228480wrs.12
        for <linux-man@vger.kernel.org>; Wed, 23 Nov 2022 05:16:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TFy6Ds+34ImggJj4aH/bctOboLrAAsWY39TDDcsjAvc=;
        b=h+jU71lj7G9uJOkMX9C5i3rLWBmrjM5JY7Z2H2tAejBpd8U43HZB5XjKT8i13RjO51
         JloreBAKzGjxS/7WfCHsSLXiV/PE/CBAyxS0X7if3hF4cXtdKZLjtd7dudbH01OgFhbM
         2N2oJCSA6u44bPmA+EB16pEb23kORRs2xeg4jt2wzpdQ24L+uaeLvC6rZ6DdsCcojCOE
         6PGjC//bfRFZ+OXtXASRqaI7xn/rFjhEFecaXJQwhpN8rchCJXy1KIMNvonDjcw8CnPk
         1rrM3bXhHPpUOO9w/EZH0QEWro1R7vW2upCwL3Wb2gD82JY0pEzDx64Mv9RvgmDE91nd
         OSHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=TFy6Ds+34ImggJj4aH/bctOboLrAAsWY39TDDcsjAvc=;
        b=CdCbmSZtbVcEvMtniZLH9RFesS8UgPUczIUqxSq6hytFv7llSgQfiovuDtp6C5sxcx
         /BHnHGJ9ZtmApfxholw3KgkvYSc9wcaj29XJ7HUIioFvQgP5LhAUtcbeN8V4yGhIIlDm
         VLdKj5e6ypARzuDsSBXCOcgzUfNz/lu5JNaT0L++kHC++FbE7viEn7IzLEwu2EtsFcq8
         Fk/jV1nFrGegFDp5UhA9MzliVHyoPpwxLyQ9+qMR1VTys6Tf+2DAP+CZfN9AsevXh5Ig
         /zYKnrUuo90sFVZTMNYoElt0qPID23z+r5ssWbeIo+F3RtoFtjV6/vS6hO+ghQCGkK5G
         JDng==
X-Gm-Message-State: ANoB5pnKbTI+3uLIV7pcwOxP8o/6stDaEteLq+pZB3Oxzw68aYRN5m4M
        zrcjTg1lGFamBPVrNxg+XdQHTIajqMg=
X-Google-Smtp-Source: AA0mqf5yYgV/e4jqvT4cBdCKrZzba/ZZBlJxZDjM0GsMitPocZ5ebqRTYF+1td9xtHXXzpTHt9Lg/w==
X-Received: by 2002:a5d:4a47:0:b0:241:e6b7:3ba7 with SMTP id v7-20020a5d4a47000000b00241e6b73ba7mr4234269wrs.137.1669209406249;
        Wed, 23 Nov 2022 05:16:46 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id d5-20020adffbc5000000b002417e7f0685sm19684942wrs.9.2022.11.23.05.16.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Nov 2022 05:16:45 -0800 (PST)
Message-ID: <50485f46-99d0-69ee-0882-7e403334080c@gmail.com>
Date:   Wed, 23 Nov 2022 14:16:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH] memmem.3: Added list of known systems where this is
 available
Content-Language: en-US
To:     Stefan Puiu <stefan.puiu@gmail.com>,
        Guillem Jover <guillem@hadrons.org>,
        Andrew Clayton <andrew@digital-domain.net>,
        linux-man@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx@kernel.org>,
        Brian Inglis <Brian.Inglis@SystematicSw.ab.ca>,
        Rich Felker <dalias@libc.org>, musl@lists.openwall.com
References: <20221110001318.10696-1-andrew@digital-domain.net>
 <853fa349-8e78-8ce8-f76f-79b4b9353913@gmail.com>
 <Y31XOPOsB932l0cd@thunder.hadrons.org>
 <CACKs7VAQsxDc2XrsAYSEbA9eqRnLHuXykVmNTit+tCFMyGLCwA@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CACKs7VAQsxDc2XrsAYSEbA9eqRnLHuXykVmNTit+tCFMyGLCwA@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------KlQWAxy78uIFDyv7MThBS1tS"
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
--------------KlQWAxy78uIFDyv7MThBS1tS
Content-Type: multipart/mixed; boundary="------------XHn08dy8Y00uaBmQZCX7ndOF";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Stefan Puiu <stefan.puiu@gmail.com>, Guillem Jover <guillem@hadrons.org>,
 Andrew Clayton <andrew@digital-domain.net>, linux-man@vger.kernel.org,
 Michael Kerrisk <mtk.manpages@gmail.com>, Alejandro Colomar
 <alx@kernel.org>, Brian Inglis <Brian.Inglis@SystematicSw.ab.ca>,
 Rich Felker <dalias@libc.org>, musl@lists.openwall.com
Message-ID: <50485f46-99d0-69ee-0882-7e403334080c@gmail.com>
Subject: Re: [PATCH] memmem.3: Added list of known systems where this is
 available
References: <20221110001318.10696-1-andrew@digital-domain.net>
 <853fa349-8e78-8ce8-f76f-79b4b9353913@gmail.com>
 <Y31XOPOsB932l0cd@thunder.hadrons.org>
 <CACKs7VAQsxDc2XrsAYSEbA9eqRnLHuXykVmNTit+tCFMyGLCwA@mail.gmail.com>
In-Reply-To: <CACKs7VAQsxDc2XrsAYSEbA9eqRnLHuXykVmNTit+tCFMyGLCwA@mail.gmail.com>

--------------XHn08dy8Y00uaBmQZCX7ndOF
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgYWxsIQ0KDQpPbiAxMS8yMy8yMiAxMzo1MiwgU3RlZmFuIFB1aXUgd3JvdGU6DQo+IEhp
LA0KPiANCj4gT24gV2VkLCBOb3YgMjMsIDIwMjIgYXQgMTozOSBBTSBHdWlsbGVtIEpvdmVy
IDxndWlsbGVtQGhhZHJvbnMub3JnPiB3cm90ZToNCj4+DQo+PiBIaSENCj4+DQo+PiBPbiBU
aHUsIDIwMjItMTEtMTAgYXQgMTI6MzY6NDcgKzAxMDAsIEFsZWphbmRybyBDb2xvbWFyIHdy
b3RlOg0KPj4+IE9uIDExLzEwLzIyIDAxOjEzLCBBbmRyZXcgQ2xheXRvbiB3cm90ZToNCj4+
Pj4gV2hpbGUgbG9va2luZyBhdCB3aGljaCBzeXN0ZW1zIHByb3ZpZGUgbWVtbWVtKDMpIEkg
aGF2ZSBiZWVuIGFibGUgdG8NCj4+Pj4gZGlzY2VybiB0aGUgZm9sbG93aW5nOg0KPj4+Pg0K
Pj4+PiAgICAgbXVzbCBsaWJjIHNpbmNlIHYwLjkuNw0KPj4+PiAgICAgYmlvbmljIHNpbmNl
IEFuZHJvaWQgOQ0KPj4+Pg0KPj4+PiAgICAgRnJlZUJTRCBzaW5jZSA2LjANCj4+Pj4gICAg
IE9wZW5CU0Qgc2luY2UgNS40DQo+Pj4+ICAgICBOZXRCU0QNCj4+Pj4gICAgIG1hY09TDQo+
Pj4+ICAgICBJbGx1bW9zDQo+Pg0KPj4+PiBGb3IgbWFjT1MgYW5kIElsbHVtb3MgSSBjaGVj
a2VkIHRoZSBtZW1tZW0oMykgbWFuIHBhZ2Ugb24gdGhvc2Ugc3lzdGVtcy4NCj4+Pj4gRm9y
IHRoZSByZXN0IHRoZXJlIGFyZSBsaW5rcyBiZWxvdyB0byBvbi1saW5lIG1hbiBwYWdlcyBv
ciBjb21taXQgbG9ncy4NCj4+DQo+Pj4+ICtGcmVlQlNEIDYuMCwgT3BlbkJTRCA1LjQsIE5l
dEJTRCwgbWFjT1MgJiBJbGx1bW9zLg0KPj4NCj4+PiBGb3IgdGhlIGNvbW1pdCBtZXNzYWdl
LCBpdCdzIGludGVyZXN0aW5nIHRvIG5vdGUgbWFjT1MgYW5kIEJpb25pYywgZm9yDQo+Pj4g
c3BlbGVvbG9neSBwdXJwb3Nlcy4gIEhvd2V2ZXIsIEknbSBvcHBvc2VkIHRvIGFkZGluZyB0
aGVtIHRvIHRoZSBwYWdlIGl0c2VsZg0KPj4+IGJlY2F1c2Ugb2YgdGhlIGZvbGxvd2luZzoN
Cj4+Pg0KPj4+IC0gIG1hY09TIGlzIG5vdCBmcmVlIHNvZnR3YXJlLiAgSSByZWZ1c2UgdG8g
cmVmZXJlbmNlIG5vbmZyZWUgc29mdHdhcmUgb24NCj4+PiB0aGlzIHByb2plY3QuDQo+Pg0K
Pj4gSSB1bmRlcnN0YW5kIHdoZXJlIHlvdSBhcmUgY29taW5nIGZyb20sDQoNCjotKQ0KDQo+
PiBhbmQgZnJvbSBhIGZ1bGwgc3lzdGVtIFBvViwNCj4+IGl0J3MgdmVyeSB0cnVlIHRoYXQg
bWFjT1MgaXMgbm9uLWZyZWUuIEJ1dCB0aGUgbG93ZXIgbGF5ZXJzIG9mIGl0cw0KPj4gc3Rh
Y2sgYXJlIGZyZWUgc29mdHdhcmUgKGF0IGxlYXN0IGFjY29yZGluZyB0byB0aGUgRlNGIGFu
ZCBPU0kpLCBzdWNoDQo+PiBhcyBpdHMga2VybmVsIChEYXJ3aW4pLCBvciBpdHMgbGliYyAo
d2hlcmUgbWVtbWVtKCkgaXMgaW1wbGVtZW50ZWQpOg0KPj4NCj4+ICAgIGh0dHBzOi8vb3Bl
bnNvdXJjZS5hcHBsZS5jb20vc291cmNlL0xpYmMvTGliYy0xNDM5LjQwLjExLw0KPj4NCj4+
IGFtb25nIG90aGVycy4NCg0KSG1tbS4gIEZhaXIgZW5vdWdoLg0KDQo+Pg0KPj4gU2ltaWxh
ciB3aXRoIFNvbGFyaXMgYW5kIElsbHVtb3MgKGJ1dCB3aXRoIHRoZSBDRERMLCBNSVQsIEJT
RCksIEFGQUlVSS4NCj4+DQo+Pj4gLSAgQW5kcm9pZCBpcyBub3QgYSByZWFsIFVuaXggc3lz
dGVtLCBpbiB0aGF0IHlvdSBjYW4ndCBldmVuIHByb2dyYW0gaW4gQyBpbg0KPj4+IHRoZXJl
LCB1bmxlc3MgeW91J3JlIEdvb2dsZSBvciBoYXZlIGhhY2tlZCB5b3VyIHN5c3RlbS4gIEl0
J3Mgbm90IGZyaWVuZGx5DQo+Pj4gdG8gdXMgcHJvZ3JhbW1lcnMsIHNvIHdlIGRvbid0IG5l
ZWQgdG8gYmUgZnJpZW5kbHkgdG8gaXQuICBJIGRvbid0IHdhbnQgdG8NCj4+PiBiZSBjbHV0
dGVyaW5nIHRoZSBwYWdlcyB3aXRoIGluZm9ybWF0aW9uIHRoYXQgaXMgaXJyZWxldmFudCB0
byBub3JtYWwgdXNlcnMuDQo+Pg0KPj4gSSdtIGFzc3VtaW5nIGJpb25pYyBpcyBiZWluZyB1
c2VkIGluIHNvbWUgb2YgdGhlIEFuZHJvaWQgZnJlZQ0KPj4gYWx0ZXJuYXRpdmVzIHRvbywg
YnV0IHRoZW4gSSdtIG5vdCBzdXJlIGhvdyB1c2FibGUgZm9yIHByb2dyYW1taW5nIHRob3Nl
DQo+PiBhcmUgZWl0aGVyLiBBbmQsIHdlbGwgbXVzbCBsaWJjIGlzIG5vdCBhIHJlYWwgVW5p
eCBzeXN0ZW0geW91IGNhbiBwcm9ncmFtDQo+PiBhZ2FpbnN0IGVpdGhlci4gOikNCg0KVGhl
IGRpZmZlcmVuY2UgaXMgb25seSB0aGF0IGJpb25pYyBpcyBub3QgaW4gdXNlIGluIHVzZWZ1
bCBzeXN0ZW1zIChBRkFJSykuICA6KQ0KDQpTbyB3ZSBoYXZlIHRvIGRvIHNvbWUgZGVjaXNz
aW9uIGhlcmUgKGFuZCBhbHNvIGFib3V0IG5ld2xpYiwgYXMgcmVwb3J0ZWQgYnkgQnJpYW4p
Lg0KDQo+Pg0KPj4gSW4gYW55IGNhc2UgSSBhbHNvIGZpbmQgaXQgdXNlZnVsIHRvIGhhdmUg
dGhpcyBraW5kIG9mIHBvcnRhYmlsaXR5DQo+PiBpbmZvcm1hdGlvbiB3aGVuIGRlY2lkaW5n
IHdoYXQgdG8gdXNlIGluIGNvZGUuDQoNCkFuZCBJIG11c3QgYWRtaXQgaXQncyBhbHNvIHVz
ZWZ1bCB0byBtZSAodGhpcyBhbGwgc3RhcnRlZCBiZWNhdXNlIEFuZHJldyBhbmQgSSANCmhh
ZCB0byB1c2UgbWVtbWVtKDMpIGF0IGEgcHJvamVjdCB3aGVyZSBtYWNPUyBjb21wYXRpYmls
aXR5IGlzIHJlbGV2YW50IC0tbm90IA0KY3JpdGljYWwsIGJ1dCByZWxldmFudC0tKS4NCg0K
Pj4gQnV0IGNhbiB1bmRlcnN0YW5kIHRoZQ0KPj4gcmVsdWN0YW5jZSB0byBpbmNsdWRlIHN1
Y2ggcmVmZXJlbmNlcywgYXQgbGVhc3QgaWYgdGhvdWdodCBvdXQgYXMgdGhlDQo+PiBlbnRp
cmUgc3lzdGVtLiBQZXJoYXBzIHRoaW5raW5nIGFib3V0IHRoZXNlIG1lcmVseSBhdCB0aGVp
ciBrZXJuZWwgb3INCj4+IGxpYmMgbGV2ZWwgd291bGQgbWFrZSBpbmNsdWRpbmcgaW5mb3Jt
YXRpb24gYWJvdXQgc29tZSBvZiB0aGVtIG1vcmUNCj4+IHBhbGF0YWJsZSwgZ2l2ZW4gdGhh
dCBzdGFuZGFsb25lIHRoZXkgYXJlIGZyZWUgc29mdHdhcmU/IFNvIHBlcmhhcHMNCj4+IGFu
IG9wdGlvbiBpcyB0byBpbnN0ZWFkIHJlZmVyIHRvIHRoZWlyIHNwZWNpZmljIGNvbXBvbmVu
dHMsIHNheQ0KPj4gImJpb25pYyBsaWJjIFguWSIsICJBcHBsZSBMaWJjIE0uTi5PIiBvciBz
aW1pbGFyLg0KDQpZZXAsIHRoYXQncyBtb3JlIHBhbGF0YWJsZSA6KQ0KDQpJIHRoaW5rIEkn
ZCBhY2NlcHQgYSBwYXRjaCBzdGF0aW5nIEFwcGxlIExpYmMgdmVyc2lvbiBmb3IgbWVtbWVt
KDMpLg0KDQo+IA0KPiBOb3Qgc3VyZSBpZiBpdCdzIHRoZSBqb2Igb2YgTGludXggbWFuLXBh
Z2VzIHRvIGRvY3VtZW50IHdoZW4gb3RoZXINCj4gT1NlcyBzdGFydGVkIHN1cHBvcnRpbmcg
Y2VydGFpbiBBUElzLiBUaGF0IGluZm8gaGFzIHRvIGJlIG1haW50YWluZWQsDQo+IHVwZGF0
ZWQgZXRjLiBQZW9wbGUgY2FuIGFsd2F5cyByZWFkIHRoZSBtYW4gcGFnZXMgb2Ygb3RoZXIg
c3lzdGVtcywNCj4gcmlnaHQ/IE1heWJlIGl0J3Mgd29ydGggb25seSBwb2ludGluZyBvdXQg
d2hlbiBhbiBpbnRlcmZhY2UgaXMNCj4gTGludXgtb25seSwgb3IgdGhlIExpbnV4IGltcGxl
bWVudGF0aW9uIGRpdmVyZ2VzIHNpZ25pZmljYW50bHkuDQoNClRoZSBnb29kIHRoaW5nIGlz
IHRoYXQgaW4gbW9zdCBjYXNlcywgaXQncyBlaXRoZXIgc29tZXRoaW5nIGluIFBPU0lYIChm
b3Igd2hpY2ggDQpJIGdvbid0IGNhcmUgYXQgYWxsIGlmIEFwcGxlIExpYmMgb3IgYW5vdGhl
ci13ZWlyZG8tbGliYyBkZWNpZGUgdG8gbm90IHN1cHBvcnQgDQppdCksIG9yIGl0J3MgYSBM
aW51eC1vbmx5IGZ1bmN0aW9uLg0KDQpTbywgdGhlcmUgYXJlIGZldyBmdW5jdGlvbnMgb3Ig
c3lzY2FsbHMgdGhhdCBhcmUgZ2VuZXJhbGx5IGF2YWlsYWJsZSBidXQgYXJlIG5vdCANCmlu
IFBPU0lYLCBhbmQgaXQgbWlnaHQgYmUgaW50ZXJlc3RpbmcgdG8gZG9jdW1lbnQgdGhhdCB0
aGV5J3JlIGVmZmVjdGl2ZWx5IGFzIA0KcG9ydGFibGUgYXMgYW55dGhpbmcgUE9TSVguICBN
YXliZSBldmVuIFBPU0lYIGVkaXRvcnMgcmVhZCB0aGlzIGFuZCBkZWNpZGUgdG8gDQphZGQg
aXQuDQoNCkluIHRob3NlIGNhc2VzLCB3ZSBzdGlsbCBuZWVkIHRvIGRlY2lkZSB3aGF0IHdl
IGNhcmUgYWJvdXQgb3Igbm90Lg0KDQpNdXNsIGxpYmMgaXMgZGVmaW5pdGVseSBhIGZpcnN0
LWNsYXNzIGNpdGl6ZW4gdGhlc2UgZGF5cyBpbiBMaW51eCBkaXN0cmlidXRpb25zLiANCiAg
SSB3b3VsZCBzdGFydCBkb2N1bWVudGluZyB0aGVtIGluIHRoZSBwcm9qZWN0IGF0IGxhcmdl
IGlmIHNvbWVvbmUgZnJvbSBtdXNsIA0KcHJvdmlkZXMgcGF0Y2hlcyAoSSBkaXNjdXNzZWQg
dGhpcyBzb21lIHRpbWUgYWdvLCBidXQgY2FuJ3QgcmVtZW1iZXIgd2l0aCB3aG8pLg0KUmlj
aCwgaWYgeW91IHdvdWxkIGxpa2UgdG8gZGlzY3VzcyBhYm91dCB0aGlzLCB3ZSBjYW4gaGF2
ZSBzb21lIGNoYXQuDQoNCj4gDQo+IEZvciBtdXNsIGFuZCBvdGhlciBsaWJjcywgSSB0aGlu
ayB0aGUgbWFuIHBhZ2VzIGFscmVhZHkgZG9jdW1lbnQgc29tZQ0KPiBpbnN0YW5jZXMgd2hl
cmUgdGhlaXIgYmVoYXZpb3IgZGl2ZXJnZXMgZnJvbSBnbGliYy4NCg0KQXMgc2FpZCwgZm9y
IG11c2wsIEknZCBkb2N1bWVudCB0aGVtIG9mZmljaWFsbHksIGlmIHRoZXJlJ3MgYW55b25l
IGludGVyZXN0ZWQgDQplbm91Z2ggdG8gc2VuZCBwYXRjaGVzLg0KDQpGb3Igb3RoZXIgbGli
Y3MsIHdlIGhhdmUgdG8gZGVjaWRlIGlmIHRoZXkncmUgaW1wb3J0YW50IGVub3VnaCwgYW5k
IHByb2JhYmx5IA0KZGVjaWRlIG9uIGEgY2FzZS1ieS1jYXNlIGJhc2lzLg0KDQpNaWNoYWVs
IHRyaWVkIHRvIGhhdmUgc29tZSBkZWNlbnQgY292ZXJhZ2Ugb2Ygbm9uLUdOVS9MaW51eCBz
eXN0ZW1zLCBib3RoIGluIHRoZSANCm1hbi1wYWdlcyBhbmQgaW4gaGlzIFRMUEkgYm9vay4g
IEl0J3MgYSB1c2VmdWwgdGhpbmcuICBTbyBtdWNoIHRoYXQgc29tZXRpbWVzIA0KeW91IGRv
bid0IGV2ZW4gbmVlZCB0byByZWFkIG90aGVyIHN5c3RlbXMnIHBhZ2VzIGF0IGFsbCB0byBr
bm93IGhvdyBwb3J0YWJsZSBpcyANCmEgR05VL0xpbnV4IGZ1bmN0aW9uLg0KDQpTbywgSSdk
IGxpa2UgdG8gZ2V0IG9waW5pb25zIG9uIGludGVyZXN0IGFib3V0IGRvY3VtZW50aW5nIGRl
dGFpbHMgYWJvdXQ6DQoNCi0gbmV3bGliIChJIG5ldmVyIGhlYXJkIGFib3V0IGl0IGJlZm9y
ZTsgaXMgaXQgYSB3aWRlc3ByZWFkIHRoaW5nPyBkbyB5b3UgdGhpbmsgDQppdCdzIHVzZWZ1
bD8pDQotIEFwcGxlIExpYmMgKEkgc3RpbGwgZG9uJ3QgbGlrZSBpdCwgYnV0IEkgbXVzdCBh
ZG1pdCB0aGF0IGl0J3MgcmVsZXZhbnQsIGFuZCANCmJlaW5nIG9wZW4gc291cmNlLCBpdCdz
IG1vcmUgcGFsYXRhYmxlKQ0KLSBiaW9uaWMgKGRvZXMgYW55b25lIGtub3cgaWYgdGhhdCdz
IHVzZWZ1bCBhdCBhbGwgZm9yIGFueW9uZSBhdCBhbGw/KQ0KDQpTdXBwb3J0IGZvciB0aG9z
ZSB3b3VsZG4ndCBnbyBhcyBmYXIgYXMgbXVzbCBvciBnbGliYy4gIEZvciBub3cgaXQgd291
bGQgb25seSBiZSANCmZvciBtZW1tZW0oMykuDQoNCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCi0t
IA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------XHn08dy8Y00uaBmQZCX7ndOF--

--------------KlQWAxy78uIFDyv7MThBS1tS
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmN+HS8ACgkQnowa+77/
2zLd/Q//akXYxah6TCvw/pUu9SMVQMmDvY8XMcQgr8TypUVU152s8hDpBuUTgY0n
WL5SHIaTRYSU1ksc2dDlKPDYBhhYWNTSUFD23gYPFcMK3jdVajpajH33mYOazX7C
oJvuQoFVLU2vVjzx0utRGU/ZdQj70w47/g5h99dzIJUswZ75Y1lzK7aeOEcTS6Y6
VWJaJSXpG+nRYfN9Exs1VjeyyoK0/+w/B+zbJS9UmGeb72K+9gdQWIa+RDnbJgvI
b77jRY0OSJAS3nqMm8vN4E/D4DqOttc3CE4w/asbi5FYzAkvfuClTisbEQO9l71K
KLD0JLmWXJbJniYa0rPMSkKC1TIa0BWdiAYOW5AcN8KNHk5+B012N4FwI4W8eUYH
zwGOjldS+W7QewWoxMNN0Y1sDHQzHkni7HjJLQTa9Iq4UWQ0ynFxn7z3bU7ArIsG
hl2Kolq9UTr+QY4+5E9Lqh4x+mxRou45AAXvjQ29ofu6n13n7tHnbXpiClt7Hnf0
/340GVV/Vz04DXkdzyVltGn9KUPQAKDIdCivEbUSuuQfFbLVJHzQuYmTBrK5CUAu
2qYzNT/m6CbrfPZYdskbMQNrtZ3CAtljiaExhW+Z+VfxfB6A6jqRiWUZ42WGV9jw
RQ4Qw7nGna2E4KRzgyrF7gkyzCs3m3Hlo/Hy9qtvo+xIqOwRn3Y=
=CwE0
-----END PGP SIGNATURE-----

--------------KlQWAxy78uIFDyv7MThBS1tS--
