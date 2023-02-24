Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8D9B66A24F0
	for <lists+linux-man@lfdr.de>; Sat, 25 Feb 2023 00:21:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229468AbjBXXV4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 24 Feb 2023 18:21:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49610 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229532AbjBXXVz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 24 Feb 2023 18:21:55 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B27C15652A
        for <linux-man@vger.kernel.org>; Fri, 24 Feb 2023 15:21:53 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id p18-20020a05600c359200b003dc57ea0dfeso3457630wmq.0
        for <linux-man@vger.kernel.org>; Fri, 24 Feb 2023 15:21:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UVr44yj9BYJMFvsKxe2tMD5P1CmXDQs4OkQKufdHsdc=;
        b=XrpY18Bd2OAD20p2YdLhL61PFgU99JTlmp+1xkmBn9TgutEKbGRgXpOQEHRpCeBcoa
         sFSsIU0zoizpbdjYzeaw6sigQ9m3aotKLOgGTeb1QgmJS6YcmMVS00Fr2e3pePrDjOTK
         WpAE+zrGy6Wa7bPgzBkhOdgh7Pau5OpETjo9oZSaraKyj2armcjd4XYJNEklh0LgQF+k
         7QcqayZz2nELL4V5usMnRsbN3Xhtf42fZZWHI7E4T7hL7RoIfK5c5WqiLIA1uX5L0GPL
         /bcww/UQpqiQHa2iYwtGmoD3EJ8IuBT3MOIGRBAtvBJzzO+JsDwT6BQkTeEp4A7d5T/s
         Jbcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=UVr44yj9BYJMFvsKxe2tMD5P1CmXDQs4OkQKufdHsdc=;
        b=OSd6bPJVcuOzTMaCynfHJQNfNKxrCDaqK2NvWkO7Tr02dfknTNDq+Sk+1IfXHDcTux
         NQR0vrQMoeJA44GUPCW9j0EJe0+c3NLd8YsjD0btMas6/TNO8lngbwz99SGynaLzWi+i
         zDwiNeBgAF7zfDdexK3u3d8M634J2kCeTxf1AE+Swv+q6Axph+jQKCak/Y3RrBEbzq6F
         z8g02UmG02jsCinGCe1Dt5dOzS4sRntVQnP8KqdV4lHg6RCED4kWkyRVakS2JNxVopOm
         oGwwqWsM+BiAByWQAL2mWCjbVInaYgv/eUv+3NLS0+ksFMujVFBuNPJR5Qyy/SBOboYI
         5OSg==
X-Gm-Message-State: AO0yUKUHLsfrNvrj1NLAwaJHeKAQ1zZHE9yk+rLpHcMLzWtDVtNugxRH
        HK08modhN7T5dFG3GBV7aRE=
X-Google-Smtp-Source: AK7set8b0kAkl1nViVerGIFzfCGxOQgTjvqIUsY5eC+Aq2eFBwK4Im4EMOQU0Jo+wSrHxzkDg89XpA==
X-Received: by 2002:a05:600c:18a1:b0:3eb:2de8:b72a with SMTP id x33-20020a05600c18a100b003eb2de8b72amr1833438wmp.7.1677280911964;
        Fri, 24 Feb 2023 15:21:51 -0800 (PST)
Received: from [172.26.3.7] (240.red-88-26-240.staticip.rima-tde.net. [88.26.240.240])
        by smtp.gmail.com with ESMTPSA id v20-20020a1cf714000000b003db03725e86sm652397wmh.8.2023.02.24.15.21.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Feb 2023 15:21:51 -0800 (PST)
Message-ID: <647fd07b-6294-80a7-fd43-e5728d0834b1@gmail.com>
Date:   Sat, 25 Feb 2023 00:21:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 2/3] landlock.7: Document Landlock ABI v2 (file
 reparenting; kernel 5.19)
Content-Language: en-US
To:     =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>,
        =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
References: <20230221205023.2739-1-gnoack3000@gmail.com>
 <20230221205023.2739-2-gnoack3000@gmail.com>
From:   Alex Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230221205023.2739-2-gnoack3000@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------1VUSZxKadk8kPRYhWpNC1k0B"
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
--------------1VUSZxKadk8kPRYhWpNC1k0B
Content-Type: multipart/mixed; boundary="------------4vU0WkuVGb028ZYt9W7KUitl";
 protected-headers="v1"
From: Alex Colomar <alx.manpages@gmail.com>
To: =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>,
 =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
Message-ID: <647fd07b-6294-80a7-fd43-e5728d0834b1@gmail.com>
Subject: Re: [PATCH 2/3] landlock.7: Document Landlock ABI v2 (file
 reparenting; kernel 5.19)
References: <20230221205023.2739-1-gnoack3000@gmail.com>
 <20230221205023.2739-2-gnoack3000@gmail.com>
In-Reply-To: <20230221205023.2739-2-gnoack3000@gmail.com>

--------------4vU0WkuVGb028ZYt9W7KUitl
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgR8O8bnRoZXIsDQoNCk9uIDIvMjEvMjMgMjE6NTAsIEfDvG50aGVyIE5vYWNrIHdyb3Rl
Og0KPiAqIEFkZCB0aGUgZGVzY3JpcHRpb24gZm9yIExBTkRMT0NLX0FDQ0VTU19GU19SRUZF
UiwNCj4gICAgaW4gbGluZSB3aXRoIHJlY2VudCB1cGRhdGUgdG8gdGhlIHVhcGkgaGVhZGVy
czoNCj4gICAgaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtc2VjdXJpdHktbW9kdWxl
LzIwMjMwMjAyMjA0NjIzLjEwMzQ1LTEtZ25vYWNrMzAwMEBnbWFpbC5jb20vVC8NCj4gKiBW
RVJTSU9OUzogQWRkIGEgdGFibGUgb2YgTGFuZGxvY2sgdmVyc2lvbnMgYW5kIHRoZWlyIGNo
YW5nZXMuDQo+ICAgIEJyaWVmbHkgdGFsayBhYm91dCBob3cgdG8gcHJvYmUgQUJJIGxldmVs
cyBhbmQgd2FybiB1c2VycyBhYm91dCB0aGUNCj4gICAgc3BlY2lhbCBzZW1hbnRpY3Mgb2Yg
dGhlIExBTkRMT0NLX0FDQ0VTU19GU19SRUZFUiByaWdodC4NCj4gKiBBZGQgTEFORExPQ0tf
QUNDRVNTX0ZTX1JFRkVSIHRvIHRoZSBjb2RlIGV4YW1wbGUuDQo+IA0KPiBDb2RlIHJldmll
dyB0aHJlYWRzIGZvciB0aGUgInJlZmVyIiBmZWF0dXJlOg0KPiAqIGh0dHBzOi8vbG9yZS5r
ZXJuZWwub3JnL2FsbC8yMDIyMDUwNjE2MTEwMi41MjUzMjMtMS1taWNAZGlnaWtvZC5uZXQv
IChpbml0aWFsIGNvbW1pdCkNCj4gKiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAy
MjA4MjMxNDQxMjMuNjMzNzIxLTEtbWljQGRpZ2lrb2QubmV0LyAoYnVnZml4KQ0KPiAqIGh0
dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDIzMDIyMTE2NTIwNS40MjMxLTEtZ25vYWNr
MzAwMEBnbWFpbC5jb20vIChkb2N1bWVudGF0aW9uIHVwZGF0ZSkNCg0KSSBmaW5hbGx5IGZv
dW5kIHNvbWUgdGltZSB0byByZXZpZXcgeW91ciB3b3JrLiAgVGhhbmtzIGZvciB0aGUgcGF0
aWVuY2UhDQoNClBsZWFzZSBzZWUgc29tZSBjb21tZW50cyBiZWxvdy4NCg0KVGhhbmtzIQ0K
DQpBbGV4DQoNCj4gLS0tDQo+ICAgbWFuNy9sYW5kbG9jay43IHwgOTAgKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLQ0KPiAgIDEgZmlsZSBjaGFu
Z2VkLCA4OCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdp
dCBhL21hbjcvbGFuZGxvY2suNyBiL21hbjcvbGFuZGxvY2suNw0KPiBpbmRleCAwOTlmNjgw
NjcuLjYzMjFiNTZhYiAxMDA2NDQNCj4gLS0tIGEvbWFuNy9sYW5kbG9jay43DQo+ICsrKyBi
L21hbjcvbGFuZGxvY2suNw0KPiBAQCAtMTA1LDYgKzEwNSw1MyBAQCBDcmVhdGUgKG9yIHJl
bmFtZSBvciBsaW5rKSBhIGJsb2NrIGRldmljZS4NCj4gICAuVFANCj4gICAuQiBMQU5ETE9D
S19BQ0NFU1NfRlNfTUFLRV9TWU0NCj4gICBDcmVhdGUgKG9yIHJlbmFtZSBvciBsaW5rKSBh
IHN5bWJvbGljIGxpbmsuDQo+ICsuVFANCj4gKy5CIExBTkRMT0NLX0FDQ0VTU19GU19SRUZF
Ug0KPiArTGluayBvciByZW5hbWUgYSBmaWxlIGZyb20gb3IgdG8gYSBkaWZmZXJlbnQgZGly
ZWN0b3J5IChpLmUuIHJlcGFyZW50DQo+ICthIGZpbGUgaGllcmFyY2h5KS4NCg0KUGxlYXNl
IGhhdmUgYSBsb29rIGF0IG1hbi1wYWdlcyg3KToNCiAgICBVc2Ugc2VtYW50aWMgbmV3bGlu
ZXMNCiAgICAgICAgSW4gdGhlIHNvdXJjZSBvZiBhIG1hbnVhbCBwYWdlLCBuZXcgc2VudGVu
Y2VzIHNob3VsZCBiZSBzdGFydGVkDQogICAgICAgIG9uICBuZXcgIGxpbmVzLCAgbG9uZyAg
c2VudGVuY2VzICBzaG91bGQgYmUgc3BsaXQgaW50byBsaW5lcyBhdA0KICAgICAgICBjbGF1
c2UgYnJlYWtzIChjb21tYXMsIHNlbWljb2xvbnMsIGNvbG9ucywgYW5kIHNvIG9uKSwgYW5k
IGxvbmcNCiAgICAgICAgY2xhdXNlcyBzaG91bGQgYmUgc3BsaXQgYXQgcGhyYXNlIGJvdW5k
YXJpZXMuICBUaGlzIGNvbnZlbnRpb24sDQogICAgICAgIHNvbWV0aW1lcyBrbm93biBhcyAi
c2VtYW50aWMgbmV3bGluZXMiLCBtYWtlcyBpdCBlYXNpZXIgdG8gIHNlZQ0KICAgICAgICB0
aGUgIGVmZmVjdCBvZiBwYXRjaGVzLCB3aGljaCBvZnRlbiBvcGVyYXRlIGF0IHRoZSBsZXZl
bCBvZiBpbuKAkA0KICAgICAgICBkaXZpZHVhbCBzZW50ZW5jZXMsIGNsYXVzZXMsIG9yIHBo
cmFzZXMuDQoNCkhlcmUsDQp0aGF0IHdvdWxkIG1lYW4NCmJyZWFraW5nIHRoZSBsaW5lIHJp
Z2h0IGJlZm9yZSB0aGUgb3BlbmluZyBwYXJlbnRoZXNpczsNCnBsZWFzZSBhbHNvIGFwcGx5
IGl0IHRvIHRoZSByZXN0IG9mIHRoZSBwYXRjaCB3aGVyZSBhcHByb3ByaWF0ZS4NCg0KDQo+
ICsuSVANCj4gK1RoaXMgYWNjZXNzIHJpZ2h0IGlzIGF2YWlsYWJsZSBzaW5jZSB0aGUgc2Vj
b25kIHZlcnNpb24gb2YgdGhlDQo+ICtMYW5kbG9jayBBQkkuDQo+ICsuSVANCj4gK1RoaXMg
aXMgdGhlIG9ubHkgYWNjZXNzIHJpZ2h0IHdoaWNoIGlzIGRlbmllZCBieSBkZWZhdWx0IGJ5
IGFueQ0KPiArcnVsZXNldCwgZXZlbiBpZiB0aGUgcmlnaHQgaXMgbm90IHNwZWNpZmllZCBh
cyBoYW5kbGVkIGF0IHJ1bGVzZXQNCj4gK2NyZWF0aW9uIHRpbWUuICBUaGUgb25seSB3YXkg
dG8gbWFrZSBhIHJ1bGVzZXQgZ3JhbnQgdGhpcyByaWdodCBpcyB0bw0KPiArZXhwbGljaXRs
eSBhbGxvdyBpdCBmb3IgYSBzcGVjaWZpYyBkaXJlY3RvcnkgYnkgYWRkaW5nIGEgbWF0Y2hp
bmcgcnVsZQ0KPiArdG8gdGhlIHJ1bGVzZXQuDQo+ICsuSVANCj4gK0luIHBhcnRpY3VsYXIs
IHdoZW4gdXNpbmcgdGhlIGZpcnN0IExhbmRsb2NrIEFCSSB2ZXJzaW9uLCBMYW5kbG9jayB3
aWxsDQo+ICthbHdheXMgZGVueSBhdHRlbXB0cyB0byByZXBhcmVudCBmaWxlcyBiZXR3ZWVu
IGRpZmZlcmVudCBkaXJlY3Rvcmllcy4NCj4gKy5JUA0KPiArSW4gYWRkaXRpb24gdG8gdGhl
IHNvdXJjZSBhbmQgZGVzdGluYXRpb24gZGlyZWN0b3JpZXMgaGF2aW5nIHRoZQ0KPiArLkIg
TEFORExPQ0tfQUNDRVNTX0ZTX1JFRkVSDQo+ICthY2Nlc3MgcmlnaHQsIHRoZSBhdHRlbXB0
ZWQgbGluayBvciByZW5hbWUgb3BlcmF0aW9uIG11c3QgbWVldCB0aGUNCj4gK2ZvbGxvd2lu
ZyBjb25zdHJhaW50czoNCj4gKy5SUw0KPiArLklQIFwoYnUgMw0KDQpXZSBub3cgdXNlIFxb
YnVdIGluc3RlYWQgb2YgXChidSAodGhleSBhcmUgZXF1aXZhbGVudCkuDQoNCmNvbW1pdCAz
NmY3M2JhMzc5NDVjN2ZmNGFhMmQ4MzgzZjgzMTUxOWEzOGUzZjI3DQpBdXRob3I6IEFsZWph
bmRybyBDb2xvbWFyIDxhbHhAa2VybmVsLm9yZz4NCkRhdGU6ICAgU3VuIEZlYiA1IDIyOjU5
OjIyIDIwMjMgKzAxMDANCg0KICAgICBtYW4tcGFnZXMuNzogUmVjb21tZW5kIHVzaW5nIFxb
Li5dIGluc3RlYWQgb2YgXCguLiBlc2NhcGVzDQoNCiAgICAgVGhleSBhcmUgbW9yZSByZWFk
YWJsZS4NCg0KICAgICBTaWduZWQtb2ZmLWJ5OiBBbGVqYW5kcm8gQ29sb21hciA8YWx4QGtl
cm5lbC5vcmc+DQoNCmRpZmYgLS1naXQgYS9tYW43L21hbi1wYWdlcy43IGIvbWFuNy9tYW4t
cGFnZXMuNw0KaW5kZXggNDEzMmRkYWJlLi5lNWIxMTEyODMgMTAwNjQ0DQotLS0gYS9tYW43
L21hbi1wYWdlcy43DQorKysgYi9tYW43L21hbi1wYWdlcy43DQpAQCAtNjY2LDcgKzY2Niw3
IEBAIFRoZXNlIHJlcHJlc2VudCBhIHNldCBvZiAobm9ybWFsbHkpIGV4Y2x1c2l2ZSANCmFs
dGVybmF0aXZlcy4NCiAgLlRQDQogIEJ1bGxldCBsaXN0cw0KICBFbGVtZW50cyBhcmUgcHJl
Y2VkZWQgYnkgYnVsbGV0IHN5bWJvbHMNCi0uUkIgKCBcZShidSApLg0KKy5SQiAoIFxlW2J1
XSApLg0KICBBbnl0aGluZyB0aGF0IGRvZXNuJ3QgZml0IGVsc2V3aGVyZSBpcw0KICB1c3Vh
bGx5IGNvdmVyZWQgYnkgdGhpcyB0eXBlIG9mIGxpc3QuDQogIC5UUA0KQEANClsuLi5dDQoN
CmNvbW1pdCBjZGVkZTVjZGQxYjBiYTc1MTM1ZDNiMzJkOTYzNTQwMjZlOTZmODY2DQpBdXRo
b3I6IEFsZWphbmRybyBDb2xvbWFyIDxhbHhAa2VybmVsLm9yZz4NCkRhdGU6ICAgU3VuIEZl
YiA1IDIzOjE0OjM4IDIwMjMgKzAxMDANCg0KICAgICBNYW55IHBhZ2VzOiBVc2UgXFtidV0g
aW5zdGVhZCBvZiBcKGJ1DQoNCiAgICAgU2lnbmVkLW9mZi1ieTogQWxlamFuZHJvIENvbG9t
YXIgPGFseEBrZXJuZWwub3JnPg0KDQoNCg0KPiArVGhlIHJlcGFyZW50ZWQgZmlsZSBtYXkg
bm90IGdhaW4gbW9yZSBhY2Nlc3MgcmlnaHRzIGluIHRoZSBkZXN0aW5hdGlvbg0KPiArZGly
ZWN0b3J5IHRoYW4gaXQgcHJldmlvdXNseSBoYWQgaW4gdGhlIHNvdXJjZSBkaXJlY3Rvcnku
ICBJZiB0aGlzIGlzDQo+ICthdHRlbXB0ZWQsIHRoZSBvcGVyYXRpb24gcmVzdWx0cyBpbiBh
bg0KPiArLkIgRVhERVYNCj4gK2Vycm9yLg0KPiArLklQIFwoYnUgMw0KPiArV2hlbiBsaW5r
aW5nIG9yIHJlbmFtaW5nLCB0aGUNCj4gKy5CIExBTkRMT0NLX0FDQ0VTU19GU19NQUtFXyoN
Cj4gK3JpZ2h0IGZvciB0aGUgcmVzcGVjdGl2ZSBmaWxlIHR5cGUgbXVzdCBiZSBncmFudGVk
IGZvciB0aGUgZGVzdGluYXRpb24NCj4gK2RpcmVjdG9yeS4gT3RoZXJ3aXNlLCB0aGUgb3Bl
cmF0aW9uIHJlc3VsdHMgaW4gYW4NCj4gKy5CUiBFQUNDRVMNCj4gK2Vycm9yLg0KPiArLklQ
IFwoYnUgMw0KPiArV2hlbiByZW5hbWluZywgdGhlDQo+ICsuQiBMQU5ETE9DS19BQ0NFU1Nf
RlNfUkVNT1ZFXyoNCj4gK3JpZ2h0IGZvciB0aGUgcmVzcGVjdGl2ZSBmaWxlIHR5cGUgbXVz
dCBiZSBncmFudGVkIGZvciB0aGUgc291cmNlIGRpcmVjdG9yeS4gT3RoZXJ3aXNlLCB0aGUg
b3BlcmF0aW9uIHJlc3VsdHMgaW4gYW4NCg0KODAgY29sdW1ucyBpcyBhIHN0cm9uZyBsaW1p
dC4NClVzaW5nIHNlbWFudGljIG5ld2xpbmVzIGFzIHN1Z2dlc3RlZCBhYm92ZSBzaG91bGQg
Zml4IHRoaXMuDQoNCj4gKy5CIEVBQ0NFUw0KPiArZXJyb3IuDQo+ICsuUkUNCj4gKy5JUA0K
PiArSWYgbXVsdGlwbGUgcmVxdWlyZW1lbnRzIGFyZSBub3QgbWV0LCB0aGUNCj4gKy5CIEVB
Q0NFUw0KPiArZXJyb3IgY29kZSB0YWtlcyBwcmVjZWRlbmNlIG92ZXINCj4gKy5CUiBFWERF
ViAuDQo+ICAgLlwiDQo+ICAgLlNTIExheWVycyBvZiBmaWxlIHBhdGggYWNjZXNzIHJpZ2h0
cw0KPiAgIEVhY2ggdGltZSBhIHRocmVhZCBlbmZvcmNlcyBhIHJ1bGVzZXQgb24gaXRzZWxm
LA0KPiBAQCAtMTgyLDcgKzIyOSw0NSBAQCBhbmQgcmVsYXRlZCBzeXNjYWxscyBvbiBhIHRh
cmdldCBwcm9jZXNzLA0KPiAgIGEgc2FuZGJveGVkIHByb2Nlc3Mgc2hvdWxkIGhhdmUgYSBz
dWJzZXQgb2YgdGhlIHRhcmdldCBwcm9jZXNzIHJ1bGVzLA0KPiAgIHdoaWNoIG1lYW5zIHRo
ZSB0cmFjZWUgbXVzdCBiZSBpbiBhIHN1Yi1kb21haW4gb2YgdGhlIHRyYWNlci4NCj4gICAu
U0ggVkVSU0lPTlMNCj4gLUxhbmRsb2NrIHdhcyBhZGRlZCBpbiBMaW51eCA1LjEzLg0KPiAr
TGFuZGxvY2sgd2FzIGludHJvZHVjZWQgaW4gTGludXggNS4xMy4NCj4gKy5QUA0KPiArVGhl
IGF2YWlsYWJpbGl0eSBvZiBpbmRpdmlkdWFsIExhbmRsb2NrIGZlYXR1cmVzIGlzIHZlcnNp
b25lZCB0aHJvdWdoDQo+ICtBQkkgbGV2ZWxzOg0KPiArLlRTDQo+ICtib3g7DQo+ICtudGJ8
IG50YnwgbGJ4DQo+ICtudHwgbnR8IGxieC4NCj4gK0FCSQlLZXJuZWwJTmV3bHkgaW50cm9k
dWNlZCBhY2Nlc3MgcmlnaHRzDQo+ICtfCV8JXw0KPiArMQk1LjEzCUxBTkRMT0NLX0FDQ0VT
U19GU19FWEVDVVRFDQo+ICtcXglcXglMQU5ETE9DS19BQ0NFU1NfRlNfV1JJVEVfRklMRQ0K
DQpXaGF0IGNoYXJhY3RlciBkbyB5b3Ugd2FudCBoZXJlPw0KSWYgeW91IHdhbnQgQVNDSUkg
MHg1RSwNCnRoZW4geW91IHdhbnQgdG8gdXNlIFxbaGFdLg0KDQo+ICtcXglcXglMQU5ETE9D
S19BQ0NFU1NfRlNfUkVBRF9GSUxFDQo+ICtcXglcXglMQU5ETE9DS19BQ0NFU1NfRlNfUkVB
RF9ESVINCj4gK1xeCVxeCUxBTkRMT0NLX0FDQ0VTU19GU19SRU1PVkVfRElSDQo+ICtcXglc
XglMQU5ETE9DS19BQ0NFU1NfRlNfUkVNT1ZFX0ZJTEUNCj4gK1xeCVxeCUxBTkRMT0NLX0FD
Q0VTU19GU19NQUtFX0NIQVINCj4gK1xeCVxeCUxBTkRMT0NLX0FDQ0VTU19GU19NQUtFX0RJ
Ug0KPiArXF4JXF4JTEFORExPQ0tfQUNDRVNTX0ZTX01BS0VfUkVHDQo+ICtcXglcXglMQU5E
TE9DS19BQ0NFU1NfRlNfTUFLRV9TT0NLDQo+ICtcXglcXglMQU5ETE9DS19BQ0NFU1NfRlNf
TUFLRV9GSUZPDQo+ICtcXglcXglMQU5ETE9DS19BQ0NFU1NfRlNfTUFLRV9CTE9DSw0KPiAr
XF4JXF4JTEFORExPQ0tfQUNDRVNTX0ZTX01BS0VfU1lNDQo+ICtfCV8JXw0KPiArMgk1LjE5
CUxBTkRMT0NLX0FDQ0VTU19GU19SRUZFUg0KPiArLlRFDQo+ICsuUFANCj4gK1RvIHF1ZXJ5
IHRoZSBydW5uaW5nIGtlcm5lbCdzIExhbmRsb2NrIEFCSSBsZXZlbCwgcHJvZ3JhbXMgbWF5
IHBhc3MNCj4gK3RoZQ0KPiArLkIgTEFORExPQ0tfQ1JFQVRFX1JVTEVTRVRfVkVSU0lPTg0K
PiArZmxhZyB0bw0KPiArLkJSIGxhbmRsb2NrX2NyZWF0ZV9ydWxlc2V0ICgyKS4NCj4gKy5Q
UA0KPiArV2hlbiBidWlsZGluZyBmYWxsYmFjayBtZWNoYW5pc21zIGZvciBjb21wYXRpYmls
aXR5IHdpdGggb2xkZXIga2VybmVscywNCj4gK3VzZXJzIGFyZSBhZHZpc2VkIHRvIGNvbnNp
ZGVyIHRoZSBzcGVjaWFsIHNlbWFudGljcyBvZiB0aGUNCj4gKy5CIExBTkRMT0NLX0FDQ0VT
U19GU19SRUZFUg0KPiArYWNjZXNzIHJpZ2h0OiBJbiBBQkkgdjEsIGxpbmtpbmcgYW5kIG1v
dmluZyBvZiBmaWxlcyBiZXR3ZWVuIGRpZmZlcmVudA0KPiArZGlyZWN0b3JpZXMgaXMgYWx3
YXlzIGZvcmJpZGRlbiwgc28gcHJvZ3JhbXMgcmVseWluZyBvbiBzdWNoDQo+ICtvcGVyYXRp
b25zIGFyZSBvbmx5IGNvbXBhdGlibGUgd2l0aCBMYW5kbG9jayBBQkkgdjIgYW5kIGhpZ2hl
ci4NCj4gICAuU0ggTk9URVMNCj4gICBMYW5kbG9jayBpcyBlbmFibGVkIGJ5DQo+ICAgLkJS
IENPTkZJR19TRUNVUklUWV9MQU5ETE9DSyAuDQo+IEBAIC0yNDIsNyArMzI3LDggQEAgYXR0
ci5oYW5kbGVkX2FjY2Vzc19mcyA9DQo+ICAgICAgICAgICBMQU5ETE9DS19BQ0NFU1NfRlNf
TUFLRV9TT0NLIHwNCj4gICAgICAgICAgIExBTkRMT0NLX0FDQ0VTU19GU19NQUtFX0ZJRk8g
fA0KPiAgICAgICAgICAgTEFORExPQ0tfQUNDRVNTX0ZTX01BS0VfQkxPQ0sgfA0KPiAtICAg
ICAgICBMQU5ETE9DS19BQ0NFU1NfRlNfTUFLRV9TWU07DQo+ICsgICAgICAgIExBTkRMT0NL
X0FDQ0VTU19GU19NQUtFX1NZTSB8DQo+ICsgICAgICAgIExBTkRMT0NLX0FDQ0VTU19GU19S
RUZFUjsNCj4gICANCj4gICBydWxlc2V0X2ZkID0gbGFuZGxvY2tfY3JlYXRlX3J1bGVzZXQo
JmF0dHIsIHNpemVvZihhdHRyKSwgMCk7DQo+ICAgaWYgKHJ1bGVzZXRfZmQgPT0gLTEpIHsN
Cg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQpHUEcga2V5IGZp
bmdlcnByaW50OiBBOTM0ODU5NENFMzEyODNBODI2RkJERDhENTc2MzNENDQxRTI1QkI1DQoN
Cg==

--------------4vU0WkuVGb028ZYt9W7KUitl--

--------------1VUSZxKadk8kPRYhWpNC1k0B
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmP5RocACgkQnowa+77/
2zLxCQ//XhjTV9KdfBA9GoSTCzrWNCz6WJjCY23UMvIVumtXxSYn7nC0npBNVGld
HlPmMxtOxclSSYQpA2d7PonayBOZ3sPajUUWPb8fFYGyTHRNMFp7gvQrvCOR9oNu
TSHELCVEzdwqhIURELnwKgXNphyweSvirkj8SfDwIqJ87ac7Z6yr7Te7cPRSa2OL
EXR5IbQ/5VgcMJepPkRkkeYzZLf0AZ/K+oOc0EqyoVnDda4xwWMONk1yE38Q1vCt
K6v4aOpzNq7zpwsU1ljz/Zk290z+DTPfKmkNQh2KDwog/1DnoSfAK8q4ffrAlSHZ
bzrQ3AcCYLlc1L/sCcF2vrTKmv3+Dv3arjuygzu4V/XZMv6nUvxvCgp8Le9DEkP/
wcroQQNcqJkZUv42703B5+uget+ILgiMw9bpslnAJkdQjPnKqe/YwmO2ZgmuszSz
oOYgd1a/zl3yeFZYa1LojQGgcQPhJeAsc/x8cKlIqGJadY3m1DUcnEEsnUdRcq4T
uZHmRYDSDjGV676oLMBGRI+ofBrFXbRJVEGFh2OHq2LgN34DdjNnEnwsUI/KAVJV
udm12F3nIjfF1hscTFnOp/TeppTIDBrtdEGvJG4UhbINxUzbfqVOGv1utbb5YsOy
TUEzwaxoKezilYLUM3Sh1+XIzoOGBSQeS7R40+DnNpwhuo3q1T0=
=jm7P
-----END PGP SIGNATURE-----

--------------1VUSZxKadk8kPRYhWpNC1k0B--
