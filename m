Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 12C91664F8F
	for <lists+linux-man@lfdr.de>; Wed, 11 Jan 2023 00:03:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234716AbjAJXDk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 10 Jan 2023 18:03:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35760 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235250AbjAJXDg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 10 Jan 2023 18:03:36 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2478213E2A
        for <linux-man@vger.kernel.org>; Tue, 10 Jan 2023 15:03:35 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id bs20so13331762wrb.3
        for <linux-man@vger.kernel.org>; Tue, 10 Jan 2023 15:03:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hjvp2uBnBANR4lA0k9CTstuzGGBQ+b+J0WROrroVM08=;
        b=fwOvRbkJiCKYUb/aNqCIloMY477S4HIf1KwOMbv6IuULcI1bk+FxNUPsaNabdB4LA6
         WOeYClvd/fWgxH3i65C1qzj5PGFio3KPE+rLFIfpNzpGIZO/8q88Uz8FDSbJQeO5++6r
         k4ZHVW4NX4mRj22u05drBzz7C+icV5mlCgGLQPZiSOF18uIKNoqkuym7QaR+4w9+Pt8R
         xwaRnOvdQpx/FJjRr2Wl6acAxgjFt2U6cNHRX/4U0P+m1Nm+cdFGmncysb1vTsuG0ROD
         CRhm7CIEK9FiWd24lv4K6wPqAsMajDClBFd4DmgUyW9pMnx1woosGuzpVd4viHdAgQzK
         29zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=hjvp2uBnBANR4lA0k9CTstuzGGBQ+b+J0WROrroVM08=;
        b=K3x8fm3NOvIFFYapoVVT+QzAgIyKbIygjtNgAM778Gwp9jSP1TBxJdO8Fj2H1NfoNQ
         LoDculL1KRfFgaFwdpUacP6L5w+/JWLjeWostwwFwfk8fe/oJlDrQOWzgMqGtjVlb33N
         nvH3z55QVOed7PoBbWbyNujMocu1eIB0Vqm4mmIxFSM7eSrXNITugCy0sqAD6OqP9jct
         tuPgaYImvwkiEsT5pwbApL1T4/g8M7UW3DQ3z3DCwrwsy8rJEAgfA3cxo1DJ+dhYYB/k
         j4LiFPHR9Av0c/aiq9d6XZzq5E1CcZPosG1ZSKH++DL/J2bH/0Cdf0HBnv8WSkjW3Add
         AcAw==
X-Gm-Message-State: AFqh2kowBd/hqwJZ7wEPtZM1Vcoh8DHeaAikJm1gV6vfQToT3wrlKzKn
        h77bceoNTb/Foqtepqa2iu4nsHDw8Wg=
X-Google-Smtp-Source: AMrXdXvyfb6d8DBcpT8844xyqwJ9T4GMOFZ+NRm67/k+tdznGsivhb34EzLbW4sLmdjEgW9vt7J6Fw==
X-Received: by 2002:a5d:530d:0:b0:2bb:dc9f:b241 with SMTP id e13-20020a5d530d000000b002bbdc9fb241mr6986351wrv.9.1673391813578;
        Tue, 10 Jan 2023 15:03:33 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id o19-20020a05600c511300b003d9862ec435sm4615124wms.20.2023.01.10.15.03.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jan 2023 15:03:33 -0800 (PST)
Message-ID: <e55f5529-c655-fb0d-7369-e3df8da5c331@gmail.com>
Date:   Wed, 11 Jan 2023 00:03:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v2] prctl.2, proc.5: Document VMA naming
Content-Language: en-US
To:     Pasha Tatashin <tatashin@google.com>,
        Suren Baghdasaryan <surenb@google.com>
Cc:     Nick Gregory <nick@nickgregory.me>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "ccross@google.com" <ccross@google.com>,
        "keescook@chromium.org" <keescook@chromium.org>,
        pasha.tatashin@soleen.com
References: <C2C3B629-987E-46D9-AF48-8A38439C8243@nickgregory.me>
 <CAJuCfpEywZx9O04EXLG=VjB+dp=OZo7Ou5-pAObTVo_z1Ff4cA@mail.gmail.com>
 <d562b23b-f73d-ebe1-31b2-f23de4c3b491@gmail.com>
 <CAJuCfpFWLmGjx7cgnBN8E0OVpVgL0yeWJmsre0uraY381pLE1A@mail.gmail.com>
 <CAK-V4-BtdWFkqLsYuGsLSXV780dZcvOhV1CQGfggj2yKQjuEBg@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAK-V4-BtdWFkqLsYuGsLSXV780dZcvOhV1CQGfggj2yKQjuEBg@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------n6T0hTVkyKyKYbdR2PF0r4IZ"
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
--------------n6T0hTVkyKyKYbdR2PF0r4IZ
Content-Type: multipart/mixed; boundary="------------IpY5261QCkwPm298mff55BZV";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Pasha Tatashin <tatashin@google.com>,
 Suren Baghdasaryan <surenb@google.com>
Cc: Nick Gregory <nick@nickgregory.me>,
 "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
 "ccross@google.com" <ccross@google.com>,
 "keescook@chromium.org" <keescook@chromium.org>, pasha.tatashin@soleen.com
Message-ID: <e55f5529-c655-fb0d-7369-e3df8da5c331@gmail.com>
Subject: Re: [PATCH v2] prctl.2, proc.5: Document VMA naming
References: <C2C3B629-987E-46D9-AF48-8A38439C8243@nickgregory.me>
 <CAJuCfpEywZx9O04EXLG=VjB+dp=OZo7Ou5-pAObTVo_z1Ff4cA@mail.gmail.com>
 <d562b23b-f73d-ebe1-31b2-f23de4c3b491@gmail.com>
 <CAJuCfpFWLmGjx7cgnBN8E0OVpVgL0yeWJmsre0uraY381pLE1A@mail.gmail.com>
 <CAK-V4-BtdWFkqLsYuGsLSXV780dZcvOhV1CQGfggj2yKQjuEBg@mail.gmail.com>
In-Reply-To: <CAK-V4-BtdWFkqLsYuGsLSXV780dZcvOhV1CQGfggj2yKQjuEBg@mail.gmail.com>

--------------IpY5261QCkwPm298mff55BZV
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEvMTEvMjMgMDA6MDIsIFBhc2hhIFRhdGFzaGluIHdyb3RlOg0KPiBPbiBUdWUs
IEphbiAxMCwgMjAyMyBhdCA1OjU2IFBNIFN1cmVuIEJhZ2hkYXNhcnlhbiA8c3VyZW5iQGdv
b2dsZS5jb20+IHdyb3RlOg0KPj4NCj4+IE9uIFR1ZSwgSmFuIDEwLCAyMDIzIGF0IDE6MTIg
UE0gQWxlamFuZHJvIENvbG9tYXINCj4+IDxhbHgubWFucGFnZXNAZ21haWwuY29tPiB3cm90
ZToNCj4+Pg0KPj4+IEhpIE5pY2sgYW5kIFN1cmVuIQ0KPj4+DQo+Pj4gT24gMS8xMC8yMyAy
MjowMiwgU3VyZW4gQmFnaGRhc2FyeWFuIHdyb3RlOg0KPj4+PiBPbiBTYXQsIEphbiA3LCAy
MDIzIGF0IDI6MTkgUE0gTmljayBHcmVnb3J5IDxuaWNrQG5pY2tncmVnb3J5Lm1lPiB3cm90
ZToNCj4+Pj4+DQo+Pj4+PiBCcmluZyBpbiBtYW4gcGFnZSBjaGFuZ2VzIGZyb20gdGhlIHBh
dGNoIHNldCBieSBDb2xpbiBDcm9zcw0KPj4+Pj4gPGNjcm9zc0Bnb29nbGUuY29tPiBbMF0s
IGFuZCBkb2N1bWVudCB0aGUgY29ycmVzcG9uZGluZyB2aXJ0dWFsIG5hbWVzIGluDQo+Pj4+
PiBwcm9jZnMuDQo+Pj4+DQo+Pj4+IEhpIE5pY2ssDQo+Pj4+IFRoZSBjb250ZW50IExHVE0g
KG5vdCBhbiBleHBlcnQgaW4gZm9ybWF0dGluZykuDQo+Pj4NCj4+PiBUaGUgZm9ybWF0dGlu
ZyBpcyBwZXJmZWN0LCBBRkFJQ1MuIDopDQo+Pj4NCj4+Pj4gWW91IGV2ZW4gY2FwdHVyZWQg
dGhlDQo+Pj4+IHJlY2VudCBhZGRpdGlvbiBvZiBuYW1lZCBzaGFyZWQgYW5vbnltb3VzIG1h
cHBpbmcgc3VwcG9ydCAoQ0MnaW5nDQo+Pj4+IFBhc2hhKSEgVGhhbmtzIGZvciBkb2luZyB0
aGlzIQ0KPj4+DQo+Pj4gRG8geW91IHdhbnQgbWUgdG8gd2FpdCBmb3IgaGltIHRvIGhhdmUg
YSBsb29rLCBvciBzaG91bGQgSSBqdXN0IGFwcGx5Pw0KPj4NCj4+IEkgQ0MnZWQgUGFzaGEg
YXMgRllJLiBJIGRvbid0IHRoaW5rIGhlIHdpbGwgaGF2ZSBhbnkgb2JqZWN0aW9ucy4NCj4+
IFRoYW5rcyBmb3IgY2hlY2tpbmchDQo+Pg0KPj4+DQo+Pj4+DQo+Pj4+Pg0KPj4+Pj4gU2ln
bmVkLW9mZi1ieTogTmljayBHcmVnb3J5IDxuaWNrQG5pY2tncmVnb3J5Lm1lPg0KPj4+Pj4g
Q2M6IENvbGluIENyb3NzIDxjY3Jvc3NAZ29vZ2xlLmNvbT4NCj4+Pj4+IENjOiBTdXJlbiBC
YWdoZGFzYXJ5YW4gPHN1cmVuYkBnb29nbGUuY29tPg0KPj4+Pj4gQ2M6IEtlZXMgQ29vayA8
a2Vlc2Nvb2tAY2hyb21pdW0ub3JnPg0KPj4+Pg0KPj4+PiBSZXZpZXdlZC1ieTogU3VyZW4g
QmFnaGRhc2FyeWFuIDxzdXJlbmJAZ29vZ2xlLmNvbT4NCj4+Pg0KPj4+IFRoYW5rcyBmb3Ig
dGhlIHBhdGNoIGFuZCB0aGUgcmV2aWV3IQ0KPj4+DQo+Pj4gQ2hlZXJzLA0KPj4+DQo+Pj4g
QWxleA0KPj4+DQo+Pj4+DQo+Pj4+Pg0KPj4+Pj4gWzBdIGh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL2xpbnV4LW1tLzIwMjExMDE5MjE1NTExLjM3NzE5NjktMi1zdXJlbmJAZ29vZ2xlLmNv
bS8NCj4+Pj4+IC0tLQ0KPj4+Pj4gICAgbWFuMi9wcmN0bC4yIHwgMzQgKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKw0KPj4+Pj4gICAgbWFuNS9wcm9jLjUgIHwgMTQgKysr
KysrKysrKysrKysNCj4+Pj4+ICAgIDIgZmlsZXMgY2hhbmdlZCwgNDggaW5zZXJ0aW9ucygr
KQ0KPj4+Pj4NCj4+Pj4+IGRpZmYgLS1naXQgYS9tYW4yL3ByY3RsLjIgYi9tYW4yL3ByY3Rs
LjINCj4+Pj4+IGluZGV4IDc0Zjg2ZmY0OS4uMmM4ZDUyYWRlIDEwMDY0NA0KPj4+Pj4gLS0t
IGEvbWFuMi9wcmN0bC4yDQo+Pj4+PiArKysgYi9tYW4yL3ByY3RsLjINCj4+Pj4+IEBAIC03
NjksNiArNzY5LDQwIEBAIFRoaXMgZmVhdHVyZSBpcyBhdmFpbGFibGUgb25seSBpZiB0aGUg
a2VybmVsIGlzIGJ1aWx0IHdpdGggdGhlDQo+Pj4+PiAgICAuQiBDT05GSUdfQ0hFQ0tQT0lO
VF9SRVNUT1JFDQo+Pj4+PiAgICBvcHRpb24gZW5hYmxlZC4NCj4+Pj4+ICAgIC5SRQ0KPj4+
Pj4gKy5cIiBwcmN0bCBQUl9TRVRfVk1BDQo+Pj4+PiArLlRQDQo+Pj4+PiArLkJSIFBSX1NF
VF9WTUEgIiAoc2luY2UgTGludXggNS4xNykiDQo+Pj4+PiArLlwiIENvbW1pdCA5YTEwMDY0
ZjU2MjVkNTU3MmMzNjI2YzE1MTZlMGJlYmM2YzlmZTliDQo+Pj4+PiArU2V0cyBhbiBhdHRy
aWJ1dGUgc3BlY2lmaWVkIGluDQo+Pj4+PiArLkkgYXJnMg0KPj4+Pj4gK2ZvciB2aXJ0dWFs
IG1lbW9yeSBhcmVhcyBzdGFydGluZyBmcm9tIHRoZSBhZGRyZXNzIHNwZWNpZmllZCBpbg0K
Pj4+Pj4gKy5JIGFyZzMNCj4+Pj4+ICthbmQgc3Bhbm5pbmcgdGhlIHNpemUgc3BlY2lmaWVk
IGluDQo+Pj4+PiArLklSIGFyZzQgLg0KPj4+Pj4gKy5JIGFyZzUNCj4+Pj4+ICtzcGVjaWZp
ZXMgdGhlIHZhbHVlIG9mIHRoZSBhdHRyaWJ1dGUgdG8gYmUgc2V0Lg0KPj4+Pj4gKy5JUA0K
Pj4+Pj4gK05vdGUgdGhhdCBhc3NpZ25pbmcgYW4gYXR0cmlidXRlIHRvIGEgdmlydHVhbCBt
ZW1vcnkgYXJlYQ0KPj4+Pj4gK21pZ2h0IHByZXZlbnQgaXQgZnJvbSBiZWluZyBtZXJnZWQg
d2l0aCBhZGphY2VudCB2aXJ0dWFsIG1lbW9yeSBhcmVhcw0KPj4+Pj4gK2R1ZSB0byB0aGUg
ZGlmZmVyZW5jZSBpbiB0aGF0IGF0dHJpYnV0ZSdzIHZhbHVlLg0KPj4+Pj4gKy5JUA0KPj4+
Pj4gK0N1cnJlbnRseSwNCj4+Pj4+ICsuSSBhcmcyDQo+Pj4+PiArbXVzdCBiZSBvbmUgb2Y6
DQo+Pj4+PiArLlJTDQo+Pj4+PiArLlRQDQo+Pj4+PiArLkIgUFJfU0VUX1ZNQV9BTk9OX05B
TUUNCj4+Pj4+ICtTZXQgYSBuYW1lIGZvciBhbm9ueW1vdXMgdmlydHVhbCBtZW1vcnkgYXJl
YXMuDQo+Pj4+PiArLkkgYXJnNQ0KPj4+Pj4gK3Nob3VsZCBiZSBhIHBvaW50ZXIgdG8gYSBu
dWxsLXRlcm1pbmF0ZWQgc3RyaW5nIGNvbnRhaW5pbmcgdGhlIG5hbWUuDQo+Pj4+PiArVGhl
IG5hbWUgbGVuZ3RoIGluY2x1ZGluZyBudWxsIGJ5dGUgY2Fubm90IGV4Y2VlZCA4MCBieXRl
cy4NCj4+Pj4+ICtJZg0KPj4+Pj4gKy5JIGFyZzUNCj4+Pj4+ICtpcyBOVUxMLCB0aGUgbmFt
ZSBvZiB0aGUgYXBwcm9wcmlhdGUgYW5vbnltb3VzIHZpcnR1YWwgbWVtb3J5IGFyZWFzDQo+
Pj4+PiArd2lsbCBiZSByZXNldC4NCj4+Pj4+ICtUaGUgbmFtZSBjYW4gY29udGFpbiBvbmx5
IHByaW50YWJsZSBhc2NpaSBjaGFyYWN0ZXJzIChpbmNsdWRpbmcgc3BhY2UpLA0KPj4+Pj4g
K2V4Y2VwdCBcKGFxW1woYXEsIFwoYXFdXChhcSwgXChhcVxlXChhcSwgXChhcSRcKGFxLCBh
bmQgXChhcVwoZ2FcKGFxLg0KPj4+Pj4gKy5SRQ0KPj4+Pj4gICAgLlwiIHByY3RsIFBSX01Q
WF9FTkFCTEVfTUFOQUdFTUVOVA0KPj4+Pj4gICAgLlRQDQo+Pj4+PiAgICAuQlIgUFJfTVBY
X0VOQUJMRV9NQU5BR0VNRU5UICIsICIgUFJfTVBYX0RJU0FCTEVfTUFOQUdFTUVOVCAiIChz
aW5jZSBMaW51eCAzLjE5LCByZW1vdmVkIGluIExpbnV4IDUuNDsgb25seSBvbiB4ODYpIg0K
Pj4+Pj4gZGlmZiAtLWdpdCBhL21hbjUvcHJvYy41IGIvbWFuNS9wcm9jLjUNCj4+Pj4+IGlu
ZGV4IDY1YTRjMzhlMy4uZTBhNjRkNDg2IDEwMDY0NA0KPj4+Pj4gLS0tIGEvbWFuNS9wcm9j
LjUNCj4+Pj4+ICsrKyBiL21hbjUvcHJvYy41DQo+Pj4+PiBAQCAtMTM3Miw2ICsxMzcyLDIw
IEBAIFNlZQ0KPj4+Pj4gICAgLlRQDQo+Pj4+PiAgICAuSSBbaGVhcF0NCj4+Pj4+ICAgIFRo
ZSBwcm9jZXNzJ3MgaGVhcC4NCj4+Pj4+ICsuVFANCj4+Pj4+ICsuSVIgW2Fub246IG5hbWUg
XSAiIChzaW5jZSBMaW51eCA1LjE3KSINCj4+Pj4+ICsuXCIgQ29tbWl0IDlhMTAwNjRmNTYy
NWQ1NTcyYzM2MjZjMTUxNmUwYmViYzZjOWZlOWINCj4+Pj4+ICtBIG5hbWVkIHByaXZhdGUg
YW5vbnltb3VzIG1hcHBpbmcuDQo+Pj4+PiArU2V0IHdpdGgNCj4+Pj4+ICsuQlIgcHJjdGwg
KDIpDQo+Pj4+PiArLkJSIFBSX1NFVF9WTUFfQU5PTl9OQU1FIC4NCj4+Pj4+ICsuVFANCj4+
Pj4+ICsuSVIgW2Fub25fc2htZW06IG5hbWUgXSAiIChzaW5jZSBMaW51eCA2LjIpIg0KPj4+
Pj4gKy5cIiBDb21taXQgZDA5ZThjYTZjYjkzYmI0Yjk3NTE3YTE4ZmJiZjdlY2NiMGU5ZmY0
Mw0KPj4+Pj4gK0EgbmFtZWQgc2hhcmVkIGFub255bW91cyBtYXBwaW5nLg0KPj4+Pj4gK1Nl
dCB3aXRoDQo+Pj4+PiArLkJSIHByY3RsICgyKQ0KPj4+Pj4gKy5CUiBQUl9TRVRfVk1BX0FO
T05fTkFNRSAuDQo+IA0KPiBMR1RNLCB0aGFuayB5b3UNCj4gDQo+IFJldmlld2VkLWJ5OiBQ
YXNoYSBUYXRhc2hpbiA8cGFzaGEudGF0YXNoaW5Ac29sZWVuLmNvbT4NCg0KVGhpcyB0YWcg
aXMgb3V0IGp1c3QgZm9yIGEgZmV3IHNlY29uZHMgOlANCg0KQ2hlZXJzLA0KDQpBbGV4DQoN
Cj4gDQo+IFBhc2hhDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMv
Pg0K

--------------IpY5261QCkwPm298mff55BZV--

--------------n6T0hTVkyKyKYbdR2PF0r4IZ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmO97sMACgkQnowa+77/
2zLFRw//dhRQA55zqf5OZgB31XmYvEJQHFgrcOz4gxCcUT3OZh/qz0x1CCX25Q4o
uLRpjmub0n8R5NHZwGFgvNVWBemMLQATqiq/R0pH+W+EAZT9hRcc7PPYgSLnBquT
M3IA1zGOd4Yk8xRCZLH8eJ9Cp3pVih2Qd8Cik5xtBn1ke2EC5xSfyKZe6vU0tdIq
KK7O+XzkOF5Zmeo7mMc3qpDpExbflRMvI+hq3Sff0yuQzSoqCKCzzpe6S6j0X1QR
7Rzc9XoaCj7YHZWPTxVpxrzHkmAqXiW/Isb8IkKzmB3tu+fxMcOqP2VNzF0zQiOP
Qy+Rzh+KFo/j2mxEsKnLbq4IDXKEwph2W6hdjrRRzKgcjdtL7L5DScKgSa21e6zN
cm3BJDW+yN28gLo6aJSBiHuG4a2MGbhFpzR/gXM9EepcV0zyym4oME4tMIW8v2U9
yQp5xyijzxHA/Iq80xDBO6KJH17aOaWcjQ8MuBDQ0VSOUEZupF8gwI8pm5UpJbu8
1AP2EG36W/NWinYLnykVIYGVekvfDNcj3M/cNaIZuAsWiJienn2MbrHFauoQKBXa
Fnxf13KWAsT/eHZkuiWwgR1vbuz+LdrgK9Pv4y8Y/YxKT2x3lj0mV/domMB+hWrm
+fbuQ7Cr45PMasjNDntOaHyxGN6TEHjVHoPaDJjJPIOY/pL2FJs=
=ZuWY
-----END PGP SIGNATURE-----

--------------n6T0hTVkyKyKYbdR2PF0r4IZ--
