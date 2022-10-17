Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A83E460106C
	for <lists+linux-man@lfdr.de>; Mon, 17 Oct 2022 15:45:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229577AbiJQNpe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 17 Oct 2022 09:45:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41304 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229747AbiJQNpe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 17 Oct 2022 09:45:34 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 822BB3913A
        for <linux-man@vger.kernel.org>; Mon, 17 Oct 2022 06:45:32 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id i131-20020a1c3b89000000b003c6c154d528so5695587wma.4
        for <linux-man@vger.kernel.org>; Mon, 17 Oct 2022 06:45:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d1RamVrDWHMUrNV4ucJ8bWJnCdytUnix/R0Z5xzYTAA=;
        b=BnK4pFZk93U9P14h+kWvn7PSIku4Gt1Qc7FiS9o4c21Ij1U3ovPm6zmj9/9Mr53G9v
         0YMc99GMWbti+jRn3q60zEwYcE44EhoCd51YUZfFyv4P9/RPYoiGejDQkH+/PL2hYSSZ
         kDYt6o9vplCb4BFnmBGhQL9VC2sDMgJE/qELUVVMh27Bfd8a4oAV5Ozj3kn3b+NXBTNu
         spKW4F0zL+X9OK9Fxdck4eWgu+GkFUGphXt3PRaUk2+MYEjiXM6iIOCDDa+Qk4Qtw4G4
         VAplwS04wvd3ynulSwkfjMcDMVBXKk6aqf5ts7G1IkGMKXnWYHGW3fcNE+FScjvcuIBK
         NLsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=d1RamVrDWHMUrNV4ucJ8bWJnCdytUnix/R0Z5xzYTAA=;
        b=nD0zd8F7Y0b9XdlBBTw0uDN5Hbsdoje1Gd5ecRBAsZh8cEOCdlzylqLbfgR207O8iv
         qau5W9BoXd736cYERUftMTW0CohNfwvSPe0gMR64q3tAGbNUSRbA/7m7qycjzKuuJrSG
         DjTNKWHXaZ52QBmwQBvgcfzy6tDSCA+3kYzBmjhz2ae1leN8AnmdupXoVFr4R0CDudNC
         JU8oxsWbCeY2mKyAx5plE8W/ym7xzw8Tcu4hZkUAGYO0dZOx7lERLW31UWSMczY4O/mt
         3pfC9GpwnBMs0yRmzeG2GhewUGsI0f9USrUWU0z/iQypO45Td2XOjz78v61JXzHilTIi
         8dhA==
X-Gm-Message-State: ACrzQf19Oleoa/bKUztbmoS+Tt75LzouP8rAbVvcVQulZY+Ygj49Rp39
        ZMSrw04BDEm4OdT0qRzl3PE=
X-Google-Smtp-Source: AMsMyM7kp/TLOXVW84JxbfhCDCwXmYjYfnWs/ba/L2byP9puuSBjGMXm8TNEi35ZrVSNmsr5drqM+g==
X-Received: by 2002:a05:600c:4e01:b0:3c6:eba6:75a3 with SMTP id b1-20020a05600c4e0100b003c6eba675a3mr10486318wmq.4.1666014330974;
        Mon, 17 Oct 2022 06:45:30 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id o36-20020a05600c512400b003c6edc05159sm8276863wms.1.2022.10.17.06.45.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Oct 2022 06:45:30 -0700 (PDT)
Message-ID: <30c3ef52-9363-8459-57f6-50473f3d5028@gmail.com>
Date:   Mon, 17 Oct 2022 15:45:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: Subdirs of man*/ (was: [PATCH] ascii.7: chase down History to
 earliest) (refers: man -M tcl)
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     Ingo Schwarze <schwarze@usta.de>, linux-man@vger.kernel.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Groff <groff@gnu.org>
References: <20221017012257.kb25curb3gajgsxd@tarta.nabijaczleweli.xyz>
 <9b96f437-63c7-3e68-dd62-5fdbd6612689@gmail.com>
 <20221017115617.glfmvgqyfr7umavr@tarta.nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221017115617.glfmvgqyfr7umavr@tarta.nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------gdjIqhLqucSPvkPsoPOxxd2d"
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
--------------gdjIqhLqucSPvkPsoPOxxd2d
Content-Type: multipart/mixed; boundary="------------RAQDkfrFvWauLkHZgyWTDeJe";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: Ingo Schwarze <schwarze@usta.de>, linux-man@vger.kernel.org,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>, Groff <groff@gnu.org>
Message-ID: <30c3ef52-9363-8459-57f6-50473f3d5028@gmail.com>
Subject: Re: Subdirs of man*/ (was: [PATCH] ascii.7: chase down History to
 earliest) (refers: man -M tcl)
References: <20221017012257.kb25curb3gajgsxd@tarta.nabijaczleweli.xyz>
 <9b96f437-63c7-3e68-dd62-5fdbd6612689@gmail.com>
 <20221017115617.glfmvgqyfr7umavr@tarta.nabijaczleweli.xyz>
In-Reply-To: <20221017115617.glfmvgqyfr7umavr@tarta.nabijaczleweli.xyz>

--------------RAQDkfrFvWauLkHZgyWTDeJe
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkhDQoNCk9uIDEwLzE3LzIyIDEzOjU2LCDQvdCw0LEgd3JvdGU6DQo+IE9uIE1vbiwgT2N0
IDE3LCAyMDIyIGF0IDAxOjEwOjUxUE0gKzAyMDAsIEFsZXggQ29sb21hciB3cm90ZToNCj4+
IFtDQyArPSBncm9mZkAsIHNpbmNlIGl0IHdhcyBDQ2QgaW4gdGhlIG9sZCBjb252ZXJzYXRp
b24gcmVmZXJyZWQgdG8gaGVyZV0NCj4+IE9uIDcvMjcvMjIgMTc6MzIsIEluZ28gU2Nod2Fy
emUgd3JvdGU6DQo+Pj4gQWxlamFuZHJvIENvbG9tYXIgd3JvdGUgb24gU3VuLCBKdWwgMjQs
IDIwMjIgYXQgMDY6MTc6NDBQTSArMDIwMDoNCj4+Pj4gSSB3b25kZXJlZCBmb3IgYSBsb25n
IHRpbWUgd2hhdCBoYXBwZW5zIGlmIHlvdSBjcmVhdGUgc3ViZGlycyB3aXRoaW4gYQ0KPj4+
PiBtYW4/IHNlY3Rpb24uICBIb3cgZG8gbWFuKDEpcyBoYW5kbGUgPC91c3Ivc2hhcmUvbWFu
L21hbjMvcHl0aG9uL2Zvby4zPj8NCj4+PiBPbiAqQlNEIHN5c3RlbXMsIHRoYXQgdHlwaWNh
bGx5IG1lYW5zOg0KPj4+DQo+Pj4gICAgIFRoZSBhcmNoaXRlY3R1cmUtc3BlY2lmaWMgbGli
cmFyeSBmdW5jdGlvbiBmb28oMykNCj4+PiAgICAgZm9yIHRoZSAicHl0aG9uIiBoYXJkd2Fy
ZSBhcmNoaXRlY3R1cmUuDQo+Pj4NCj4+PiBIZXJlIGFyZSBhIGZldyBleGFtcGxlcyBmcm9t
IE9wZW5CU0Q6DQo+Pj4NCj4+PiAgICAgL3Vzci9zaGFyZS9tYW4vbWFuMS9zcGFyYzY0L21r
c3VuY2QuMQ0KPj4+ICAgICAvdXNyL3NoYXJlL21hbi9tYW4yL2FybXY3L2FybV9zeW5jX2lj
YWNoZS4yDQo+Pj4gICAgIC91c3Ivc2hhcmUvbWFuL21hbjIvaTM4Ni9pMzg2X2lvcGwuMg0K
Pj4+ICAgICAvdXNyL3NoYXJlL21hbi9tYW4zL29jdGVvbi9jYWNoZWZsdXNoLjMNCj4+PiAg
ICAgL3Vzci9zaGFyZS9tYW4vbWFuMy9zZ2kvZ2V0X2ZwY19jc3IuMw0KPj4+ICAgICAvdXNy
L3NoYXJlL21hbi9tYW40L2FscGhhL2lyb25nYXRlLjQNCj4+PiAgICAgL3Vzci9zaGFyZS9t
YW4vbWFuNC9hbWQ2NC9tcGJpb3MuNA0KPj4+ICAgICAvdXNyL3NoYXJlL21hbi9tYW40L2x1
bmE4OGsvY2J1cy40DQo+Pj4gICAgIC91c3Ivc2hhcmUvbWFuL21hbjQvbWFjcHBjL29wZW5w
aWMuNA0KPj4+ICAgICAvdXNyL3NoYXJlL21hbi9tYW40L3Bvd2VycGM2NC9vcGFsY29ucy40
DQo+Pj4gICAgIC91c3Ivc2hhcmUvbWFuL21hbjQvcmlzY3Y2NC9zZmdwaW8uNA0KPj4+ICAg
ICAvdXNyL3NoYXJlL21hbi9tYW41L3NwYXJjNjQvbGRvbS5jb25mLjUNCj4+PiAgICAgL3Vz
ci9zaGFyZS9tYW4vbWFuOC9ocHBhL2Jvb3QuOA0KPj4+ICAgICAvdXNyL3NoYXJlL21hbi9t
YW44L21hY3BwYy9wZGlzay44DQo+Pj4gICAgIC91c3Ivc2hhcmUvbWFuL21hbjgvc2dpL3Nn
aXZvbC44DQo+Pj4gICAgIC91c3Ivc2hhcmUvbWFuL21hbjgvc3BhcmM2NC9sZG9tY3RsLjgN
Cj4+DQo+Pg0KPj4gT24gMTAvMTcvMjIgMDM6MjIsINC90LDQsSB3cm90ZToNCj4+PiBDZi4s
IHdlbGwsIHRoZSBVTklYIFByb2dyYW1tZXIncyBNYW51YWw6DQo+Pj4gICAgIGh0dHBzOi8v
d3d3LnR1aHMub3JnL0FyY2hpdmUvRGlzdHJpYnV0aW9ucy9SZXNlYXJjaC9EZW5uaXNfdjEv
VU5JWF9Qcm9ncmFtbWVyc01hbnVhbF9Ob3Y3MS5wZGYNCj4+PiBQREYgcGFnZSAxOTE7IHll
cywgdGhlIHR5cG9ncmFwaGljYWwgY29udmVudGlvbiBoZXJlIGlzIGluc2FuZSwgYW5kDQo+
Pj4gdGhlIGNvbnRlbXByYXJ5LWNvcnJlY3Qgd2F5IHRvIHJlZmVyIHRvIHRoaXMgcGFnZSBm
cm9tIHdpdGhpbiB0aGUgbWFudWFsDQo+Pj4gd291bGQgYmUgL2p1c3QvICIvZXRjL2FzY2lp
IiwgYnV0LCBnaXZlbiB0aGUgY29udGV4dCwgIi9ldGMvYXNjaWkgKFZJSSkiDQo+Pj4gbWFr
ZXMgdGhlIG1vc3Qgc2Vuc2UgdG8gbWUNCj4+DQo+PiBJIGp1c3Qgc2F3IHRoaXMgYW5kIHdv
bmRlcmVkIGlmIHRoZSBzdWJkaXJzIGluIHRoZSBwYXN0IHdlcmUgdXNlZCBhcyBqdXN0DQo+
PiBwYXJ0IG9mIHRoZSBtYW51YWwgcGFnZSBuYW1lLi4uDQo+IA0KPiBUaGlzIHR5cG9ncmFw
aGljYWwgY29udmVudGlvbiBkaXNhcHBlYXJlZCBhcyBlYXJseSBhcyBWMjsNCj4gdGhlIHRv
cC1yaWdodCBwYWdlIG51bWJlcnMgd2VyZSBhbGwgdHJpbW1lZCB0byBiYXNlbmFtZSBzcGFj
ZSBzZWN0aW9uDQo+ICgvZXRjL2FzY2lpIChWSUkpICAgICAgICBiZWNvbWVzIGFzY2lpIChW
SUkpDQo+ICAgL2Rldi90dHkwIC4uLiB0dHk1IChJVikgYmVjb21lcyB0dHkwIChJVikNCj4g
ICAmYy4pDQo+IA0KPiBDZi4NCj4gaHR0cHM6Ly93d3cudHVocy5vcmcvQXJjaGl2ZS9EaXN0
cmlidXRpb25zL1Jlc2VhcmNoL0Rlbm5pc192Mi92Mm1hbi5wZGYNCg0KVGhhbmtzISENCg0K
PiANCj4gSW4gdGhlIEJTRCBzaWRlIG9mIHRoZSBwcm92ZXJiaWFsIGZhbWlseSB0cmVlIEkg
ZG9uJ3Qgc2VlIGFueXRoaW5nDQo+IHNpbWlsYXIgdG8gd2hhdCB5b3UgZGVzY3JpYmUgdW50
aWwgNC40QlNEIHdoaWNoIGhhcyBic2QubWFuLm1rIE1BTlNVQkRJUg0KPiBhbmQgdXNlcyBp
dCB0byBpbnN0YWxsIHRvIE1BTkRJUi9tYW5OL01BTlNVQkRJUi9wYWdlLk4sIGFuZCB1c2Vz
IGl0DQo+IHJlYXNvbmFibHkgYnJvYWRseSBmb3IgdmF4L3NwYXJjL3doYXRldmVyLg0KPiBJ
IHRoaW5rIHRoaXMgaXMgYXMgcHJlc2VudC1kYXk/DQoNClllYWgsIGl0IGxvb2tzIGxpa2Uu
DQoNCj4gDQo+IEkgZG9uJ3Qgc2VlIGFueSBvbi1saW5lIG1hbnVhbHMgaW4gdGhlIFN5c0lJ
SS9TeXNWclsxMjM0XSBkdW1wcyBJIGhhdmUsDQo+IHNvIEkgYXNzdW1lIHRoZXNlIHdlcmUg
ZGlzdHJpYnV0ZWQgYXMgYm9va3Mgb25seSwgc28gaWRrLg0KPiBTZWVpbmcgYXMgbm8gYXJj
aC1zcGVjaWZpYyBzdWJkaXJlY3RvcmllcyBzdXJ2aXZlIGluIHRoZSBpbGx1bW9zIGdhdGUs
DQo+IGFyY2gtb25seSBmZWF0dXJlcyBhcmUgc29tZXRpbWVzIGFubm90YXRlZCAiKG5vdCBp
biAzQjIpIiBpbmxpbmUsDQo+IGFuZCB0aGF0IHRoZSBtb3JlIGVzb3RlcmljIHBhZ2VzIGhh
dmUgdGhlaXIgY2VudGVyLXRvcC1wYWdlDQo+ICh3aGVyZSB5b3UnZCBnZXQgIkdlbmVyYWwg
Q29tbWFuZHMgTWFudWFsIiBvciB3aGF0ZXZlciBub3dhZGF5cykNCj4gc2F5IGxpa2UgIihu
b3Qgb24gUERQLTExKSIvIihQRFAtMTEgb25seSkiLyIoVkFYIHN0YW5kLWFsb25lIG9ubHkp
Ii8NCj4gIigzQjIwUyBvbmx5KSIgYnV0IGFyZSBvdGhlcndpc2UgcGFydCBvZiB0aGUgc2Ft
ZSBiaWcgYm9vayBJIGFzc3VtZQ0KPiB0aGF0IG5ldmVyIGhhcHBlbmVkIHRoZXJlLg0KPiAN
Cj4gV2l0aG91dCBjb250ZXh0IGlkayB3aGF0IHlvdSBtZWFuIHNwZWNpZmljYWxseQ0KDQpJ
dCBjb21lcyBiYWNrIHRvIHRoaXMgbGludXgtbWFuQCAoYW5kIGdyb2ZmQCkgZGlzY3Vzc2lv
bjoNCjxodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1tYW4vNjZjMTlhMDktZWYwZi0w
ZDg1LTAzODAtMzdhNjdhYzQ4M2RkQGdtYWlsLmNvbS8+DQoNClRoZXJlLCBJbmdvIHRhbGtl
ZCBhYm91dCBzb21lIGlkZWEgaGUgaGFkOg0KPGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xp
bnV4LW1hbi9ZdDFkejAreGZSdXlDY1hvQGFzdGEta2l0LmRlLz4NCg0KQW5kIHdlIGNvbnRp
bnVlZCBpbiB0aGlzIHN1YnRocmVhZCwgd2hpY2ggd2FzIHJlbmFtZWQ6DQo8aHR0cHM6Ly9s
b3JlLmtlcm5lbC5vcmcvbGludXgtbWFuLzllOGEyOTFkLTY3MmYtYmFlYy0zOTgwLWFlMjY1
NzEyYmQ3YkBnbWFpbC5jb20vPg0KDQpCYXNpY2FsbHkgaXQgY2FuIGJlIHJlc3VtZWQgbGlr
ZSB0aGlzOg0KDQpJIHN0YXJ0ZWQgYWRkaW5nIG1hbmRpcnMgc3VjaCBhcyBtYW4zdHlwZSwg
bWFuM2NvbnN0LCBtYW4zaGVhZDsgYW5kIHdlIA0Kd2VyZSBkaXNjdXNzaW5nIGlmIHRoYXQg
d2FzIGEgZ29vZCBvcmdhbml6YXRpb24sIGFuZCBpZiBpdCB3b3VsZCBmaXQgDQpuaWNlbHkg
aW50byBvdGhlciBleGlzdGluZyB0aGluZ3MgbGlrZSAzYnNkLCAzcGVybCwgM3Bvc2l4LCAu
Li4NCg0KQWxzbywgaGF2aW5nIHBlcmwgb3IgcHl0aG9uIChvciBldmVuIHBvc2l4KSBtYW4g
cGFnZXMgb3BlbiB1cCBieSBkZWZhdWx0IA0Kb3IgbWVzcyB3aXRoIGF1dG9jb21wbGV0ZSBp
cyBub3Qgc28gbmljZSB3aGVuIHlvdSdyZSBub3QgaW50ZXJlc3RlZCBpbiANCnJlYWRpbmcg
dGhlbS4NCg0KU28gYSBzb2x1dGlvbiBJIGhhZCB0aG91Z2h0IHdvdWxkIGJlIHRvIHVzZSBz
dWJkaXJzLCBzbyB5b3UgY291bGQgZm9yIA0KZXhhbXBsZToNCg0KJCBtYW4gWy1zXSAzY29u
c3QgZm9vICAgICAgICMgbWFudWFsIGZvciBjb25zdGFudCBmb28gaW4gQy4NCiQgbWFuIFst
c10gM2NvbnN0IHBlcmwvZm9vICAjIG1hbnVhbCBmb3IgY29uc3RhbnQgZm9vIGluIHBlcmwu
DQoNCkluZ28ncyBpZGVhIGlzIHRvIHVzZToNCg0KJCBtYW4gM2NvbnN0IGZvbw0KJCBtYW4g
LU0gcGVybCBbLXNdIDNjb25zdCBmb28NCg0Kd2hpY2ggaXMgY29tcGF0aWJsZSB3aXRoIHRo
ZSBjdXJyZW50IHVzZSBvZiBNQU5TVUJESVJzIGluIHRoZSBCU0RzLg0KDQo+IGJ1dCBJIGhv
cGUgdGhpcyBzaGluZXMNCj4gc29tZSBsaWdodCBvciB3aGF0ZXZlci4NCg0KWWVwLCBpdCBo
ZWxwcyA6KQ0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5k
cm8tY29sb21hci5lcy8+DQo=

--------------RAQDkfrFvWauLkHZgyWTDeJe--

--------------gdjIqhLqucSPvkPsoPOxxd2d
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNNXHIACgkQnowa+77/
2zJjGA/9FXh2f/8pud0pPXxfPnv2RssVQk6Ac+mS9pRK4PiMRZ9evRe2cs81QhY6
R6PSl3uhcVDwK9OfnjAgyjVB/zwTofPU10T9OTTrYxA8PSbP4oVjxuW/gZsuoNN9
q8O7XUVGKFFqh9Dvh9f1wcQktuQJR5i9CXiYK0POK9lVZeLOZW9hUeSB6xtfGP9u
gbDenp3ga8KHv5d91lom6yoLOnteHAX3mkGaEo1AGgdk5nomvz82/BT0mpA5vA86
x6XMrKuL62+Oov7eFthy4XqEg1bQp+9hv9/OCvjcWYIafds41sBQgCBqHgnyjiUR
c8qgIoK/HtWu7uy97SLTb2je7wiysap+/MbW1fLMKFmKePAAGp5Hm4e9LuZ0/4NX
kzFbbZa2JHPMiNmrz2TbnkH0WrWr+w/pstrZapBD6lHVEhoJy95gMdECE0dSFaxq
gPmNmScbM593a70miaSLFh1lLUrniW77yHZh5P1kpYpgY/E8F4DGDpYohEpVFGR5
Oiin5f7anSsGgvtn7uwi/tz6R9w0D4YHC3eNwyCF0TG8VnMW1WUNaUZXuCyRE/Up
RwemFAeiCjevewj9h+Md5IscCn5o+Nu40W0jWdxCFuuAGvZ+ev+ZMzUEO6fzIR7p
3UEk6m78wQqsv5Ic0dxImL3g1xWB3hDWX5bIa3Q9S6dIIfPASNY=
=f7Dg
-----END PGP SIGNATURE-----

--------------gdjIqhLqucSPvkPsoPOxxd2d--
