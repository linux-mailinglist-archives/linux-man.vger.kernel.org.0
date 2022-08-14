Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CB88959254F
	for <lists+linux-man@lfdr.de>; Sun, 14 Aug 2022 18:43:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243288AbiHNQmm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 14 Aug 2022 12:42:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36202 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243381AbiHNQkx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 14 Aug 2022 12:40:53 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1EB8F6256
        for <linux-man@vger.kernel.org>; Sun, 14 Aug 2022 09:32:13 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id b4so3480459wrn.4
        for <linux-man@vger.kernel.org>; Sun, 14 Aug 2022 09:32:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=iCifbIfRjtECxlBJWIbE06fdh+Zu2bxeQMzv1nAf4+A=;
        b=QZnSy+xoXaDCk4gIAToQX/YVnXpNQ1Jsingn1P8Z4D4f84MmMtFseFYm1f3jy1E4pn
         //JxanmIOo2bXOPkb9jiAHUc27QOsJAb1x17qrr1TNVSb0NWdkHyqpRl6J3ItJoRJXuA
         5SGZ6MMYpewMidSqnJ3dfCDN5FUc0c0VjBTE42tHYzIFpV6HwZzMQiFARignyC52xYvG
         ttoRQ+nJrDopk1uEzXf9SF/YJUG/+KpG4dPNwjJ//JAR5R87HuTn4dL1MBkHcyQDBv/C
         Dzwbg1HGmsbgsDVDEMWAkhGxz5yfnCP7hemgOrVMBjSS5pn9sRWtAOVvp+4mrErkfu4v
         Mi6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=iCifbIfRjtECxlBJWIbE06fdh+Zu2bxeQMzv1nAf4+A=;
        b=2KwG3KBWefu3CEh7pgz37720WPrbaiXwu+WQGEZqBdIeuw4hx1e59WC0RI7+tzwhnC
         3Wu6rZYllv4i4OsQM3hdTn+CllpAxa7fdRNOgdG5jN2q6otPFO2vcYfXPIWVI50Tn0aD
         iW3naI3ptj6gqTh0mqZgYeypRRIt7KrwZcI2FRkB0CFCIVpoR55RaqNEi0nNQW1nAbwL
         YdHOoXu6CH6m8GeHfZCKa+bJJ+g/rEzZ3dr/+5IYOdlpVIaaaiNagz0LN8BWNC7hkTKw
         LK2U+xSmOCqq4P1R+WruDBXNJHcsH9mpbHLm/RGAqtPu7FVaJd0MEhOKlQNtRv3w2z/4
         j91Q==
X-Gm-Message-State: ACgBeo3Yeb1GHPG/WNuzzP3V1Tw59++sCCh6zHteY8Epx/izKUfJ8o1y
        0LcsmGupXMwkvMCH6/FzMG0=
X-Google-Smtp-Source: AA6agR6RlHykP89/7It+w3WgYbh7Eq6OGc29CcZTA6/XRX1P5xDXyHNv3Iy/6yTjLoYrxW9Q/umj/w==
X-Received: by 2002:a5d:68c5:0:b0:223:9164:c759 with SMTP id p5-20020a5d68c5000000b002239164c759mr6810537wrw.652.1660494731437;
        Sun, 14 Aug 2022 09:32:11 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id f7-20020a05600c4e8700b003a5c064717csm7208700wmq.22.2022.08.14.09.32.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 14 Aug 2022 09:32:10 -0700 (PDT)
Message-ID: <738eadd5-5495-d848-ef08-544e97fc1452@gmail.com>
Date:   Sun, 14 Aug 2022 18:32:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.0
Subject: Re: Standardize roff (was: *roff `\~` support)
To:     DJ Chase <u9000@posteo.mx>, Ingo Schwarze <schwarze@usta.de>
Cc:     g.branden.robinson@gmail.com, linux-man@vger.kernel.org,
        groff@gnu.org
References: <20220729114506.1669153-4-stepnem@gmail.com>
 <20220729205823.lcy4fbezlw32owgu@illithid>
 <20220730161521+0200.203910-stepnem@gmail.com>
 <c2ef3b9c-97d1-2733-df27-542c9eacad17@gmail.com>
 <8edd0272-0c43-b5e7-9220-20094bb5ae23@gmail.com>
 <YvT6s2Sv+M2bEldp@asta-kit.de> <20220811201714.a2o432xhkyyyj6qi@illithid>
 <YvZj6emfWNfwRjwe@asta-kit.de> <20220812221035.xd4udngmz5erht5p@illithid>
 <CM52T3SFTBDU.21XFDQOUZP886@grinningface> <Yvj/CAUSL1jVbAot@asta-kit.de>
 <CM5U2DCMCPL4.38VBYJS3B1L65@grinningface>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CM5U2DCMCPL4.38VBYJS3B1L65@grinningface>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------D45sZbxNsbCJYgHQAjwTNTNJ"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------D45sZbxNsbCJYgHQAjwTNTNJ
Content-Type: multipart/mixed; boundary="------------kBLde00yrSvmOiTGnRb1i8dL";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: DJ Chase <u9000@posteo.mx>, Ingo Schwarze <schwarze@usta.de>
Cc: g.branden.robinson@gmail.com, linux-man@vger.kernel.org, groff@gnu.org
Message-ID: <738eadd5-5495-d848-ef08-544e97fc1452@gmail.com>
Subject: Re: Standardize roff (was: *roff `\~` support)
References: <20220729114506.1669153-4-stepnem@gmail.com>
 <20220729205823.lcy4fbezlw32owgu@illithid>
 <20220730161521+0200.203910-stepnem@gmail.com>
 <c2ef3b9c-97d1-2733-df27-542c9eacad17@gmail.com>
 <8edd0272-0c43-b5e7-9220-20094bb5ae23@gmail.com>
 <YvT6s2Sv+M2bEldp@asta-kit.de> <20220811201714.a2o432xhkyyyj6qi@illithid>
 <YvZj6emfWNfwRjwe@asta-kit.de> <20220812221035.xd4udngmz5erht5p@illithid>
 <CM52T3SFTBDU.21XFDQOUZP886@grinningface> <Yvj/CAUSL1jVbAot@asta-kit.de>
 <CM5U2DCMCPL4.38VBYJS3B1L65@grinningface>
In-Reply-To: <CM5U2DCMCPL4.38VBYJS3B1L65@grinningface>

--------------kBLde00yrSvmOiTGnRb1i8dL
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGksDQoNCk9uIDgvMTQvMjIgMTY6NDksIERKIENoYXNlIHdyb3RlOg0KPiBPbiBTdW4gQXVn
IDE0LCAyMDIyIGF0IDk6NTYgQU0gRURULCBJbmdvIFNjaHdhcnplIHdyb3RlOg0KPj4gSGks
DQo+Pg0KPj4gREogQ2hhc2Ugd3JvdGUgb24gU2F0LCBBdWcgMTMsIDIwMjIgYXQgMDU6Mjc6
MzRQTSArMDAwMDoNCj4+DQo+Pj4gSGF2ZSB3ZSBldmVyIGNvbnNpZGVyZWQgYSBkZSBqdXJl
ICpyb2ZmIHN0YW5kYXJkPw0KPj4NCj4+IE5vLCBpIHRoaW5rIHRoYXQgd291bGQgYmUgcHVy
ZSBtYWRuZXNzIGdpdmVuIHRoZSBhbW91bnQgb2Ygd29ya2luZw0KPj4gdGltZSBhdmFpbGFi
bGUgaW4gYW55IG9mIHRoZSByb2ZmIHByb2plY3RzLg0KPj4NCj4+IFvigKZdDQo+IA0KPiBU
aGlzIGlzIHZlcnkgc2FkIHRvIGhlYXIuDQo+IA0KPj4+IEl0IGNvdWxkIGFsc28gbGVhZCB0
byBtb3JlIHVzZXJzICYgdXNlIGNhc2VzIGJlY2F1c2UgZXhpc3RpbmcNCj4+PiB1c2VycyBj
b3VsZCBjb3VudCBvbiBzeXN0ZW1zIHN1cHBvcnRpbmcgY2VydGFpbiBmZWF0dXJlcywgc28N
Cj4+PiB0aGV5IGNvdWxkIHVzZSAqcm9mZiBpbiBtb3JlIHNpdHVhdGlvbnMsIHdoaWNoIHdv
dWxkIGxlYWQgdG8NCj4+PiBtb3JlIGV4cG9zdXJlLg0KPj4NCj4+IFlvdSBhcHBlYXIgdG8g
bWFzc2l2ZWx5IG92ZXJyYXRlIHRoZSBpbXBvcnRhbmNlIGVuZC11c2Vycw0KPj4gdHlwaWNh
bGx5IGF0dHJpYnV0ZSB0byBzdGFuZGFyZGl6YXRpb24uDQo+IA0KPiBUaGF04oCZcyBwcm9i
YWJseSBiZWNhdXNlICpJKiBtYXNzaXZlbHkgb3ZlcnJhdGUgdGhlIGltcG9ydGFuY2Ugb2YN
Cj4gc3RhbmRhcmRpemF0aW9uIChJIG1lYW4gSSBsaXRlcmFsbHkgY2FycnkgYSBzdGFuZGFy
ZHMgYmluZGVyIHdpdGggbWUpLg0KPiBTdGlsbCwgdGhvdWdoLCBpdOKAmXMgcmF0aGVyIGFu
bm95aW5nIHRoYXQgZW5kIHVzZXJzIOKAlCBlc3BlY2lhbGx5DQo+IHByb2dyYW1tZXJzIOKA
lCBkb27igJl0IHZhbHVlIHN0YW5kYXJkcyBhcyBtdWNoLg0KDQooT2ZmaWNpYWwpIHN0YW5k
YXJkaXphdGlvbiBpc24ndCBuZWNlc3NhcmlseSBhIGdvb2QgdGhpbmcuICBXaXRoIEMsIGl0
IA0Kd2FzIG9yaWdpbmFsbHkgZ29vZCwgaW4gdGhlIHRpbWVzIG9mIElTTyBDODkuICBOb3cs
IGl0J3MgZG9pbmcgbW9yZSANCmRhbWFnZSB0byB0aGUgbGFuZ3VhZ2UgYW5kIGN1cnJlbnQg
aW1wbGVtZW50YXRpb25zIHRoYW4gYW55IGdvb2QgKGl0J3MgDQpzdGlsbCBkb2luZyBzb21l
IGdvb2QsIGJ1dCBhIGxvdCBvZiBiYWQpLg0KDQpUaGUgYmVzdCB0aGF0IGEgc3RhbmRhcmRp
emF0aW9uIHByb2Nlc3MgY2FuIGRvIGlzIGxpbWl0IGl0c2VsZiB0byANCmRlc2NyaWJlIF9v
bmx5XyBmZWF0dXJlcyBhbHJlYWR5IGV4aXN0aW5nIGluIHRoZSBsYW5ndWFnZSwgYmVpbmcg
YSBraW5kIA0Kb2YgYXJiaXRlciB0aGF0IGRlY2lkZXMgb24gd2hpY2ggYmVoYXZpb3IgaXMg
YmVzdCBmb3IgYSBnaXZlbiBmZWF0dXJlLCANCnNvIHRoYXQgYWxsIGltcGxlbWVudGF0aW9u
cyBmb2xsb3cgdGhlIGJlc3QgZXhpc3Rpbmcgb25lLiAgV2hlcmUgDQpkaWZmZXJlbnQgaW1w
bGVtZW50YXRpb25zIG1pZ2h0IGhhdmUgZ29vZCByZWFzb25zIHRvIGRvIGl0IGRpZmZlcmVu
dGx5LCANCnRoZSBzdGFuZGFyZCBzaG91bGQgZGVzY3JpYmUgdGhlIGJlaGF2aW9yIGFzIGlt
cGxlbWVudGF0aW9uLXNwZWNpZmljLiANCkFuZCBvZiBjb3Vyc2UsIGEgc3RhbmRhcmQgc2hv
dWxkIG9ubHkgc3RhbmRhcmRpemUgZmVhdHVyZXMgdGhhdCBhcmUgDQpleHBlY3RlZCB0byBi
ZSBnb29kIGZvciBldmVyeSBpbXBsZW1lbnRhdGlvbiwgd2l0aCBvcHRpb25hbCBmZWF0dXJl
cyANCmVpdGhlciBub3QgYmVpbmcgc3RhbmRhcmRpemVkLCBvciBiZWluZyBtYXJrZWQgb3B0
aW9uYWwgYnkgdGhlIHN0YW5kYXJkIA0KKGxpa2UgQW5uZXggSyB3YXM7IGFsdGhvdWdoIHRo
YXQgb25lIHdhcyBicm9rZW4sIHNvIGl0IHdhcyBsYXRlciByZW1vdmVkIA0KZm9yIGdvb2Qp
Lg0KDQpCdXQgdGhhdCBzaG91bGRuJ3QgYmUgbmVjZXNzYXJ5IGlmIGltcGxlbWVudG9ycyBo
YWQgc29tZSBkZWNlbmN5IGFuZCANCmRpZG4ndCBpbXBsZW1lbnQgZmVhdHVyZXMgc28gdGhh
dCB0aGV5IGFyZSBjb21wbGV0ZWx5IGluY29tcGF0aWJsZSB3aXRoIA0KdGhvc2Ugb2Ygb3Ro
ZXIgc3lzdGVtcy4gIEkuZS4sIGlmIGFuIGV4aXN0aW5nIHN5c3RlbSBoYXMgJ2ZvbyhpbnQg
YSk7JywgDQp5b3UgZG9uJ3QgcHJvdmlkZSAnZm9vKGludCAqYik7JzsgeW91IGdvIGZvciAn
Zm9vMihpbnQgKmIpOycgb3IgJ2JhcihpbnQgDQoqYik7Jy4gIFRoZXJlJ3MgcGxlbnR5IG9m
IGNhc2VzIHdoZXJlIHRoaXMgaGFzIGhhcHBlbmVkLCBhbmQgaW4gc29tZSANCmNhc2VzIGl0
IG1pZ2h0IGJlIGR1ZSB0byBhbiBhY2NpZGVudCwgYnV0IGluIHNvbWUgb3RoZXIgY2FzZXMs
IGl0J3MganVzdCANCmR1ZSB0byBpbmNvbXBldGVuY2UuICBTZWUgYW4gZXhhbXBsZSB0aGF0
IGJpdCBtZSBhIG1vbnRoIGFnbzogDQo8aHR0cHM6Ly9naXRodWIuY29tL25naW54L3VuaXQv
aXNzdWVzLzczNz4uDQoNCkFuZCB0aGUgYmFkIHRoaW5ncyB0aGF0IHN0YW5kYXJkaXphdGlv
biBjYW4gZG8gYXJlIHNldmVyYWw6DQoNCkJ5IHJlc2VydmluZyB0aGUgcG93ZXIgdG8gY2Vu
dHJhbGx5IGRlY2lkZSB0aGUgZnV0dXJlIG9mIGEgbGFuZ3VhZ2UsIA0KdGhleSB0YWtlIHBv
d2VyIGZyb20gaW1wbGVtZW50YXRpb25zLCB3aGljaCBub3cgY2FuJ3QgYWRkIHNvbWUgZmVh
dHVyZXMsIA0KYnkgZmVhciB0aGF0IHRoZXkgbWlnaHQgY29udHJhZGljdCBhIGZ1dHVyZSBz
dGFuZGFyZC4gIFRoaXMgaXMgdmVyeSBzYWQsIA0KYmVjYXVzZSB3aGlsZSB0aGUgaW1wbGVt
ZW50YXRpb25zIGFyZSBndWlkZWQgYnkgdXNlZnVsbmVzcyBhbmQgDQp3b3J0aGluZXNzLCBh
bmQgdHJ5IHRvIGNvbWUgdXAgd2l0aCB0aGUgYmVzdCBmZWF0dXJlIGZvciB0aGVtIChhbmQg
YnkgDQpuYXR1cmFsIHNlbGVjdGlvbiwgaW1wbGVtZW50YXRpb25zIGFyZSB0aGVuIHVzZWQg
b3Igbm90IHVzZWQsIGRlcGVuZGluZyANCm9uIHRoZWlyIHF1YWxpdHkpLCBzdGFuZGFyZHMg
aGF2ZSBhIGxhcmdlIHBhcnQgb2YgYnVyZWF1Y3JhY3ksIGFuZCB0aGF0IA0KZG9lc24ndCBw
cm92aWRlIHRoZSBiZXN0IGZlYXR1cmVzLg0KDQpBIGZldyBleGFtcGxlcyBvZiB0aGF0IGFy
ZTogYSAlYiBwcmludGYgc3BlY2lmaWVyIGZvciBiaW5hcnkgd2FzIA0KcmVqZWN0ZWQgYnkg
Z2xpYmMgb24gdGhlIHRlcm1zIG9mIHNvbWV0aGluZyBsaWtlICJ0aGUgZmVhdHVyZSBpcyBn
b29kLCANCmFuZCB0aGUgaW1wbGVtZW50YXRpb24gc2VlbXMgY29ycmVjdCwgYnV0ICViIGlz
IHJlc2VydmVkIGJ5IHRoZSANCnN0YW5kYXJkLCBzbyB3ZSBkb24ndCB3YW50IHRvIHBvc3Np
Ymx5IGNvbmZsaWN0IHdpdGggYSBmdXR1cmUgc3RhbmRhcmQiOyANCmx1Y2tpbHksIHRoZSBz
dGFuZGFyZCBkZWZpbmVkIHRoYXQsIGFuZCB0aGUgZmVhdHVyZSB3YXMgYWRkZWQgYSBmZXcg
DQp5ZWFycyBsYXRlci4gIE9uZSBleGFtcGxlIHRoYXQgaXMgbXVjaCBtb3JlIG5lY2Vzc2Fy
eSBpcyBhIHdheSB0byBnZXQgDQp0aGUgc2l6ZSBvZiBhbiBhcnJheSwgd2hpY2ggY3VycmVu
dGx5IGlzIGltcG9zc2libGUgaW4gcG9ydGFibGUgQyAoYXQgDQpsZWFzdCBub3QgaW4gYSB3
YXkgdGhhdCBzYWZlbHkgcmVqZWN0cyB0byBjb21waWxlIG9uIG5vbi1hcnJheXMpLiAgSSAN
CmFsc28gcHJvcG9zZWQgYW4gYWRkaXRpb24gdG8gZ2xpYmMsIGFuZCB0aGUgcmVhc29ucyB0
byByZWplY3QgaXQgd2VyZSBvZiANCnRoZSBzYW1lIGtpbmQsIGFuZCBhcmd1aW5nIHRoYXQg
dGhlIHN0YW5kYXJkIHdhcyBkaXNjdXNzaW5nIGFib3V0IGFkZGluZyANCnN1Y2ggYSBmZWF0
dXJlOyBndWVzcyB3aGF0PyB0aGUgc3RhbmRhcmQgaGFzbid0IGFkZGVkIHN1Y2ggYSBmZWF0
dXJlIGZvciANCkMyMywgYW5kIHdlIHN0aWxsIGhhdmUgbm8gcG9ydGFibGUgd2F5IHRvIGRv
IGl0IChhbmQgdGhlIHVucG9ydGFibGUgd2F5cyANCmFyZSBtb3JlIGN1bWJlcnNvbWUgdGhh
biB3aGF0IG9uZSB3b3VsZCBleHBlY3QpLiAgSSBob3BlIEMzeCBhZGRzIA0KX0xlbmd0aG9m
KGFyciksIGJ1dCB3aG8ga25vd3MuDQoNCjxodHRwczovL3d3dy5vcGVuLXN0ZC5vcmcvanRj
MS9zYzIyL3dnMTQvd3d3L2RvY3MvbjI1MjkucGRmPg0KPGh0dHBzOi8vc3RhY2tvdmVyZmxv
dy5jb20vcXVlc3Rpb25zLzM3NTM4L2hvdy1kby1pLWRldGVybWluZS10aGUtc2l6ZS1vZi1t
eS1hcnJheS1pbi1jLzU3NTM3NDkxIzU3NTM3NDkxPg0KDQoNCkFuZCB0aGVuIHdlIGhhdmUg
YW5vdGhlciBwcm9ibGVtIG9mIHN0YW5kYXJkaXphdGlvbiBjb21taXR0ZWVzOiB0aGVpciAN
CnByaW9yaXRpZXMgYXJlIHNvIGJyb2tlbiwgdGhhdCB0aGV5IHByZWZlciBpbnZlbnRpbmcg
YSBjb21wbGV0ZWx5IG5ldyANCmZlYXR1cmUgZm9yIEMsIHdpdGggbm90aGluZyBldmVuIHJl
bW90ZWx5IHJlc2VtYmxhbnQgdG8gaXQgd2l0aGluIHRoZSANCmV4aXN0aW5nIGxhbmd1YWdl
IChJJ20gdGFsa2luZyBhYm91dCBudWxscHRyIGFuZCBudWxscHRyX3QpLCByYXRoZXIgdGhh
biANCnN0YW5kYXJkaXppbmcgYW4gZXhpc3RpbmcgZ29vZCBmZWF0dXJlIHN1Y2ggYXMgUE9T
SVgncyBOVUxMICAoKHZvaWQgKikgDQowKS4gIFNvIG5vdyB3ZSBoYXZlIDAsIE5VTEwsIGFu
ZCBudWxscHRyIGZvciByZWZlcnJpbmcgdG8gYSBudWxsIHBvaW50ZXIgDQpjb25zdGFudCBp
biBDLiAgQW5kIG5vbmUgb2YgdGhlbSBpcyBwZXJmZWN0LiAgMCBuZWVkcyB0byBiZSBjYXN0
ZWQgd2hlbiANCnBhc3NlZCB0byB2YXJpYWRpYyBmdW5jdGlvbnMsIGFuZCBoYXMgcmVhZGFi
aWxpdHkgaXNzdWVzLiAgTlVMTCBpcyANCnBlcmZlY3Qgd2l0aGluIHRoZSBQT1NJWCB3b3Js
ZCwgYnV0IGlmIHlvdSBnbyBvdXQgb2YgUE9TSVgsIGl0J3MgYXMgYmFkIA0KYXMgMC4gIG51
bGxwdHIsIGFwYXJ0IGZyb20gYmVpbmcgaW5jb21wcmVoZW5zaWJsZSwgaXQgaXMgdW5zYWZl
OyBva2F5IA0KaXQncyBub3QgdW5zYWZlIGJ5IGl0c2VsZiwgYW5kIGlmIGl0IHdlcmUgdGhl
IG9ubHkgd2F5IHRvIHJlZmVyIHRvIGEgDQpudWxsIHBvaW50ZXIgY29uc3RhbnQsIGl0IHdv
dWxkIGJlIGdyZWF0LCBidXQgaXQncyBub3QsIGFuZCBldmVuIHRoZSANCmNvbW1pdHRlZSBy
ZWNvZ25pemVzIHRoYXQgaXQgd2lsbCBuZXZlciBiZS4NCg0KPGh0dHBzOi8vZGlzY291cnNl
Lmxsdm0ub3JnL3QvaXNvLWMzeC1wcm9wb3NhbC1ub25udWxsLXF1YWxpZmllci81OTI2OS80
OD4NCg0KTWFueSBleGlzdGluZyBwcm9qZWN0cyB0aGF0IHVzZSBOVUxMIChlc3BlY2lhbGx5
IFBPU0lYIHByb2plY3RzKSwgYXJlIA0Kbm90IGdvaW5nIHRvIGNoYW5nZSB0aGVpciB3aG9s
ZSBjb2RlYmFzZSB0byB1c2UgbnVsbHB0ci4gIG51bGxwdHJfdCBhZGRzIA0Kc29tZSBmZWF0
dXJlcyB0aGF0IGFkZCBzYWZldHkgYWdhaW5zdCBudWxsIHBvaW50ZXIgY29uc3RhbnRzIGJh
c2VkIG9uIA0KdGhlIHR5cGUgb2YgdGhlIGNvbnN0YW50IChieSBtZWFucyBvZiBfR2VuZXJp
Yyk7IGJ1dCB0aGF0IG1lYW5zIHRoYXQgb25lIA0KY2FuIGVhc2lseSBieXBhc3MgdGhvc2Ug
ZmVhdHVyZXMgYnkgdXNpbmcgTlVMTCBvciAwLCB3aGljaCBtZWFucyB0aGF0IA0KaXQncyBu
b3QgcmVhbGx5IHNhZmUsIGFuZCBpdCBtaWdodCBnaXZlIGEgc2Vuc2Ugb2Ygc2FmZXR5IHRo
YXQgaXQgaGFzIA0Kbm90LiAgU28sIHdpdGhvdXQgZXh0ZW5kaW5nIG15IHJhbnQgYWJvdXQg
bnVsbHB0ciBtdWNoIG1vcmUsIGl0J3MganVzdCBhIA0KZmVhdHVyZSBicm9rZW4gZnJvbSBk
YXkgMCwgaW52ZW50ZWQgYnkgdGhlIElTTyBDIGNvbW1pdHRlZS4NCg0KTWF5YmUgb25lIG9m
IHRoZSB3b3JzdCBwcm9ibGVtcyBvZiB0aGUgY29tbWl0dGVlIChXRzE0KSBpcyB0aGF0IG1h
bnkgb2YgDQppdHMgbWVtYmVycyBhcmUgYWxzbyBtZW1iZXJzIG9mIHRoZSBXRzIxLCBhbmQg
YXMgc3VjaCwgdGhleSBtYXkgaGF2ZSANCmluY29tcGF0aWJsZSBwcmlvcml0aWVzLg0KDQpJ
IGRvbid0IHNlZSBzdGFuZGFyZGl6YXRpb24gYXMgZ29vZCBhcyBpdCBtYXkgc2VlbSBhdCBm
aXJzdCBnbGFuY2UuDQoNCkFuZCBvZiBjb3Vyc2UgZm9sbG93aW5nIHRoZSBzdGFuZGFyZCBz
aG91bGQgY29tZSB3aXRoIGEgcGluY2ggb2Ygc2FsdDogDQpvbmUgc2hvdWxkIGZvbGxvdyB0
aGUgc3RhbmRhcmQsIHdoZW4gdGhlIHN0YW5kYXJkIGlzbid0IGJyb2tlbi4NCg0KQnV0IHRo
ZW4sIHRoZSBzdGFuZGFyZCBpc24ndCBiZXR0ZXIgdGhhbiBhbnkgb3RoZXIgaW1wbGVtZW50
YXRpb24uICBTbywgDQphcyBhIHByb2dyYW1tZXIsIEkgdGhpbmsgcHJvZ3JhbXMgc2hvdWxk
IHRhcmdldCB0aGVpciBleHBlY3RlZCBzeXN0ZW1zLCANCmFuZCBub3QgbW9yZSAodW5sZXNz
IGl0J3MgZWFzeSkuICBJZiBhIHByb2dyYW0gaXMgdG8gYmUgcnVuIG9uIExpbnV4LCANCnRo
ZW4gdGFyZ2V0IEdOVSBDLiAgSWYgeW91IGNhbiBhZGQgc29tZSBwYXJ0aWFsIHN1cHBvcnQg
Zm9yIElTTyBDIA0Kd2l0aG91dCBpbnRlcmZlcmluZyBpbiB5b3VyIHdheSBzaWduaWZpY2Fu
dGx5LCB0aGVuIG9rYXksIGdvIGZvciBpdDsgYnV0IA0KY29tcGxldGUgSVNPIEMgc3VwcG9y
dCBpcyB1bnRoaW5rYWJsZTsgYSBwcm9ncmFtIGNvbmZvcm1pbmcgdG8gSVNPIEMgaXMgDQp1
c2VsZXNzLCBvciB1bm5lY2Vzc2FyaWx5IGNvbXBsZXgsIG9yIGV2ZW4gdW5zYWZlLiAgSSBp
bXBsZW1lbnQgdGhpbmdzIA0KdGhpbmtpbmcgb24gbXkgc3lzdGVtIGZpcnN0LCB0aGVuIGlm
IGl0J3MgZWFzeSwgSSBjYW4gc3VwcG9ydCBvdGhlciBGT1NTIA0KVW5peCBzeXN0ZW1zLCBp
ZiBpdCdzIGVhc3ksIGJ1dCBvbmx5IGlmIGl0IGlzLiAgQ29tbWVyY2lhbCBzeXN0ZW1zIGFy
ZSANCmF1dG9tYXRpY2FsbHkgb3V0IG9mIHN1cHBvcnQuICBJJ20gbm90IHNwZW5kaW5nIGEg
c2luZ2xlIG1pbnV0ZSBvZiBteSANCnRpbWUgdG8gYmUgbmljZSB0byB0aG9zZSBzeXN0ZW1z
IHdoZW4gdGhlaXIgbm90IG5pY2UgdG8gbWUuDQoNCkkgdGhpbmsgaXQncyBiZXR0ZXIgdG8g
bGV0IG5hdHVyYWwgc2VsZWN0aW9uIHRvIHdvcmsgb3V0IGl0cyB3YXkuICBJZiBhIA0KZmVh
dHVyZSBpcyBnb29kLCBvdGhlciBpbXBsZW1lbnRhdGlvbnMgd2lsbCBwaWNrIGl0LCBhbmQg
bWF5YmUgZXZlbiANCmltcHJvdmUgaXQuICBJZiBhIGZlYXR1cmUgaXMgbm90IGdvb2QgKG9y
IGl0J3Mgbm90IG5lZWRlZCBieSBvdGhlciANCnN5c3RlbXMpLCBpdCB3aWxsIG5vdCBiZSBw
b3J0YWJsZS4NCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCg0KLS0gDQpBbGVqYW5kcm8gQ29sb21h
cg0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------kBLde00yrSvmOiTGnRb1i8dL--

--------------D45sZbxNsbCJYgHQAjwTNTNJ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmL5I4EACgkQnowa+77/
2zJVexAAnPxhJ1BNMMTnUuaKjUNMoIz9ncUYvQGDZcsMeozfr1oc2rr68K7wzkZ9
BaTSyU6aoQUlwoafRYNeHBoF0uSJjVxjh/Ob48AcO7zGDZ7fERZzXLraOoZ3w83i
VctwPhLkVC4B6LxN/5xxJycvqpyjPyxzlw6HC+TD4UKZCsqAUEpAaeeu5AkCNC/f
AOag83d1WZIb4H/yXPl/EANKVfOpAVqmfsMHPkfhxiXBqWHm+qCVb1LN2GxSSJSd
cYEKlx1wLraqpA7jh68EuHNtrMKzaeIAgfXLQKYOZMEoyKX8jBNZPsY7WpVsEhNS
Eb7EB33H2QQX+po5/0dX4E8NU5brtVfBWgxUsmfR3RIt5UE93BX1+3BsPBlCZAw1
O0T3lbRP+rTJdJjzKjTq0RUpF4ZyJlXUBHxaMlP2raPQpIcXQ95fLrtJZLvSCXZh
/4e9hTHgslHzVVGq+du+ChAl+Zlc7bIRo4/4lKbNQgJeTqpYnuSYmkQHuEA4GwW2
XgrL2wJ9EaM/2+pUTDN3lvJqbp6hr3DFlBM277cxcEtEqe9PyZCWmeQ4afMeUeW7
QtJZSBtbp90TpYaGTcw1Dbk+rIiVeRv3q/urssxggBeK+ulbzqg6uXDyFvCafHPQ
3ZVyl+VZB5n3IbByIH/H6HgoFyepY0EBq9i2hXSoKAJEdE3pbNI=
=bOlr
-----END PGP SIGNATURE-----

--------------D45sZbxNsbCJYgHQAjwTNTNJ--
