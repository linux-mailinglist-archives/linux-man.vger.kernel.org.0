Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 525C757A842
	for <lists+linux-man@lfdr.de>; Tue, 19 Jul 2022 22:33:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239272AbiGSUdr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Jul 2022 16:33:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47096 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238532AbiGSUdr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Jul 2022 16:33:47 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5938E509C9
        for <linux-man@vger.kernel.org>; Tue, 19 Jul 2022 13:33:45 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id ay11-20020a05600c1e0b00b003a3013da120so42836wmb.5
        for <linux-man@vger.kernel.org>; Tue, 19 Jul 2022 13:33:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=YN4EQ7oG0byl/kQZSZQSe1kGd7I64ldZ2QaP71HGImw=;
        b=EHq886IfzSX3/8r1BbIrVGPToT4zHfmom0HSyZz8rDm6Kg6Ri3RSYCEpu6GssUYWqt
         aD1S0C44fJh4NaVJj05Tkqkf6/hazu8fjFim6/cMC6l2K9jNWIyzrv0TTev3ulEv5AnT
         KEvGf87wDYVMiQ+4IsRQbguKzQY5BNGV8glpNfQCGYHgyI2FVwbgNxFWHo7rh5A3Wgs/
         KFcDHi0Tdu+Qn/OFmAyXcFDaMPCWECxsr9TJ+5HNT4JSNUVyR7HHHF1qpAwex0B/N9Vz
         3+tFQSOQTVgiN3StnY5gGQCeLaL6CFlb6aP6kfBNNE/yBSdbTXlpvoivX3fqytscna90
         N3+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=YN4EQ7oG0byl/kQZSZQSe1kGd7I64ldZ2QaP71HGImw=;
        b=Nq0UUv/lu//N9mLvG7CT0GYwsuK8hrv0N4UlV3sbnBKQgn092kwC/1RPPBMrxBLiVq
         RPmzPxaTX12JamAfV+7LmEQM2XQBLlixzOeIE8DOav6wYnY79QRMks6665sMLBXu6qjA
         T6YiGwGCL8mpMCVK+aZwwwV60OpEVfzLexjc+SxNKAIRB5DqWEkheRDErG/AgPpLFA4W
         szUH93PmwOUC6fYZsHzNORZViIZ/RzI5lBInXz351qNjgUV055Gmrm189WLRyo4sfkIh
         P0TZncFmhRkd/i0K5t0YNi0DuZb7QvmVA94jqyGpzWdX0SOyEbEGTjPPfiKCX1FD4uPc
         etSg==
X-Gm-Message-State: AJIora8hV3D5qHt+yWSfJdqV9Vh9bqVHWG83+nvaLIYTvYHGipvUTfBx
        4V7AWJfIVXnhoa9k1MBH81pPs+yfLB0=
X-Google-Smtp-Source: AGRyM1vApEMw8fBs96mWHYBhJ16OySWs9li5cHHYL+vYTDbwBXth1JTS2pfc3IIOcQhq0tApayMiyw==
X-Received: by 2002:a05:600c:40cf:b0:3a3:1fd6:47b7 with SMTP id m15-20020a05600c40cf00b003a31fd647b7mr918739wmh.32.1658262823768;
        Tue, 19 Jul 2022 13:33:43 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id m39-20020a05600c3b2700b003a2e1883a27sm66611wms.18.2022.07.19.13.33.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Jul 2022 13:33:43 -0700 (PDT)
Message-ID: <2a850b7d-a888-9577-6c0a-84deb542c0b9@gmail.com>
Date:   Tue, 19 Jul 2022 22:33:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.2
Subject: Re: [PATCH v3 1/2] tm.3type: describe tm_zone, tm_gmtoff
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <28ce4bcb0318b42c5fe6e286887bdab935995192.1658244821.git.nabijaczleweli@nabijaczleweli.xyz>
 <b84f1ff5815f24cc23e55a0d89ddd1878f35faa7.1658255829.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <b84f1ff5815f24cc23e55a0d89ddd1878f35faa7.1658255829.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Cw25hk6MeKwyBnFrtohvGFsu"
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
--------------Cw25hk6MeKwyBnFrtohvGFsu
Content-Type: multipart/mixed; boundary="------------X9h9a09asqVNdmzec5SnXg02";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <2a850b7d-a888-9577-6c0a-84deb542c0b9@gmail.com>
Subject: Re: [PATCH v3 1/2] tm.3type: describe tm_zone, tm_gmtoff
References: <28ce4bcb0318b42c5fe6e286887bdab935995192.1658244821.git.nabijaczleweli@nabijaczleweli.xyz>
 <b84f1ff5815f24cc23e55a0d89ddd1878f35faa7.1658255829.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <b84f1ff5815f24cc23e55a0d89ddd1878f35faa7.1658255829.git.nabijaczleweli@nabijaczleweli.xyz>

--------------X9h9a09asqVNdmzec5SnXg02
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkg0L3QsNCxLA0KDQpPbiA3LzE5LzIyIDIwOjM4LCDQvdCw0LEgd3JvdGU6DQo+IEZyZWVC
U0QgdGltZXpvbmUoMykgaXMgVjcgY2hhciAqdGltZXpvbmUoaW50IHpvbmUsIGludCBkc3Qp
LA0KPiBvdXIgZG9jdW1lbnRhdGlvbiB3b3VsZCBpbXBseSBpdCdzIGltcG9zc2libGUgdG8g
c2VydmljZSB0aGlzIHR5cGUgb2YNCj4gc3lzdGVtIHBvcnRhYmx5DQo+IA0KPiBJbmRlZWQs
IGdsaWJjIGRlZmluZXMgdGhlbSBib3RoLCBhbmQgdGhleSBtYWtlIG1vcmUgc2Vuc2UgZm9y
IG1vc3QNCj4gdXNlLWNhc2VzIHRoYW4gdHJ5aW5nIHRvIHVzZSB0aGUgZ2xvYmFscw0KPiAN
Cj4gZ2xpYmMgY2l0ZWQgZm9yIF9fVVNFX01JU0MsIHRtX3pvbmUgaW52YWxpZGF0aW9uIGlz
IERlYmlhbiAyLjMzLTcNCj4gUE9TSVggY2l0ZWQgZm9yIFhTSSBtYXJraW5nIGlzIElzc3Vl
IDcgVEMyDQo+IENTUkcgQ0QgIzIgY29udGFpbnMgNC4zQlNELVRhaG9lIHdpdGggYm90aCBt
ZW1iZXJzDQo+IA0KPiBXZSBjdXJyZW50bHkgc2hpcCBhbiBvdXRkYXRlZCAoYW5kIGZhY3R1
YWxseSBtaXNsZWFkaW5nKSB2ZXJzaW9uDQo+IG9mIHRoaXMgZGVzY3JpcHRpb24gaW4gY3Rp
bWUuMw0KPiANCj4gU2lnbmVkLW9mZi1ieTogQWhlbGVuaWEgWmllbWlhxYRza2EgPG5hYmlq
YWN6bGV3ZWxpQG5hYmlqYWN6bGV3ZWxpLnh5ej4gPiAtLS0NCj4gICBtYW4zL3RtLjN0eXBl
IHwgNTAgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysNCj4gICAxIGZpbGUgY2hhbmdlZCwgNTAgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAt
LWdpdCBhL21hbjMvdG0uM3R5cGUgYi9tYW4zL3RtLjN0eXBlDQo+IGluZGV4IDc4ZTA1YTQx
YS4uYzIzZmMwMjNlIDEwMDY0NA0KPiAtLS0gYS9tYW4zL3RtLjN0eXBlDQo+ICsrKyBiL21h
bjMvdG0uM3R5cGUNCj4gQEAgLTI1LDggKzI1LDI2IEBAIFN0YW5kYXJkIEMgbGlicmFyeQ0K
PiAgIC5CUiAiICAgIGludCAgICAgICAgIHRtX3lkYXk7IiBcDQo+ICAgIiAgIC8qIERheSBv
ZiB0aGUgeWVhciAgWyIgMCAiLCAiIDM2NSAiXSAoSmFuLzAxID0gIiAwICIpICovIg0KPiAg
IC5CUiAiICAgIGludCAgICAgICAgIHRtX2lzZHN0OyIgIiAgLyogRGF5bGlnaHQgc2F2aW5n
cyBmbGFnICovIg0KPiArDQoNClVzZSAuUFAuICBTZWUgbWFuLXBhZ2VzKDcpOg0KICAgIEZv
cm1hdHRpbmcgY29udmVudGlvbnMgKGdlbmVyYWwpDQogICAgICAgIFBhcmFncmFwaHMgc2hv
dWxkIGJlIHNlcGFyYXRlZCBieSBzdWl0YWJsZSBtYXJrZXJzICAodXN14oCQDQogICAgICAg
IGFsbHkgIGVpdGhlciAuUFAgb3IgLklQKS4gIERvIG5vdCBzZXBhcmF0ZSBwYXJhZ3JhcGhz
IHVz4oCQDQogICAgICAgIGluZyBibGFuayBsaW5lcywgYXMgdGhpcyByZXN1bHRzICBpbiAg
cG9vciAgcmVuZGVyaW5nICBpbg0KICAgICAgICBzb21lIG91dHB1dCBmb3JtYXRzIChzdWNo
IGFzIFBvc3RTY3JpcHQgYW5kIFBERikuDQoNCg0KPiArLkJSICIgICAgbG9uZyAgICAgICAg
dG1fZ210b2ZmOyIgIiAvKiBTZWNvbmRzIEVhc3Qgb2YgVVRDICovIg0KPiArLkJSICIgICAg
Y29uc3QgY2hhciAqdG1fem9uZTsiICIgICAvKiBUaW1lem9uZSBhYmJyZXZpYXRpb24gKi8i
DQo+ICAgLkIgfTsNCj4gICAuZmkNCj4gKy5QUA0KPiArLlJTIC00DQo+ICtGZWF0dXJlIFRl
c3QgTWFjcm8gUmVxdWlyZW1lbnRzIGZvciBnbGliYyAoc2VlDQo+ICsuQlIgZmVhdHVyZV90
ZXN0X21hY3JvcyAoNykpOg0KPiArLlJFDQo+ICsuUFANCj4gKy5JUiB0bV9nbXRvZmYgLA0K
PiArLklSIHRtX3pvbmUgOg0KPiArLm5mDQo+ICsuXCIgR3VhcmRlZCB3aXRoIF9fVVNFX01J
U0M6DQo+ICsgICAgU2luY2UgZ2xpYmMgMi4yMDoNCj4gKyAgICAgICAgX0RFRkFVTFRfU09V
UkNFDQo+ICsgICAgR2xpYmMgMi4yMCBhbmQgZWFybGllcjoNCj4gKyAgICAgICAgX0JTRF9T
T1VSQ0UNCj4gKy5maQ0KPiAgIC5TSCBERVNDUklQVElPTg0KPiAgIERlc2NyaWJlcyB0aW1l
LCBicm9rZW4gZG93biBpbnRvIGRpc3RpbmN0IGNvbXBvbmVudHMuDQo+ICAgLlBQDQo+IEBA
IC0zNSw2ICs1MywxNiBAQCBkZXNjcmliZXMgd2V0aGVyIGRheWxpZ2h0IHNhdmluZyB0aW1l
IGlzIGluIGVmZmVjdCBhdCB0aGUgdGltZSBkZXNjcmliZWQuDQo+ICAgVGhlIHZhbHVlIGlz
IHBvc2l0aXZlIGlmIGRheWxpZ2h0IHNhdmluZyB0aW1lIGlzIGluIGVmZmVjdCwNCj4gICB6
ZXJvIGlmIGl0IGlzIG5vdCwNCj4gICBhbmQgbmVnYXRpdmUgaWYgdGhlIGluZm9ybWF0aW9u
IGlzIG5vdCBhdmFpbGFibGUuDQo+ICsuUFANCj4gKy5JIHRtX2dtdG9mZg0KPiAraXMgdGhl
IGRpZmZlcmVuY2UsIGluIHNlY29uZHMsIG9mIHRoZSB0aW1lem9uZSByZXByZXNlbnRlZCBi
eSB0aGlzIGJyb2tlbi1kb3duIHRpbWUgYW5kIFVUQw0KDQpIZWgsIGFzIHRoZSBvbGQga2Vy
bmVsIGNvZGluZyBzdHlsZSB1c2VkIHRvIHJlYWQsDQoiVGhlIGxpbWl0IG9uIHRoZSBsZW5n
dGggb2YgbGluZXMgaXMgODAgY29sdW1ucyBhbmQgdGhpcyBpcyBhIHN0cm9uZ2x5IA0KcHJl
ZmVycmVkIGxpbWl0LiINCg0KUmF0aW9uYWxlOiBJIGNhbiBrZWVwIHRoZSBmb250IHNpemUg
cXVpdGUgYmlnLCBhbmQgc3RpbGwgaGF2ZSAyIA0KdGVybWluYWxzIGluIGEgRnVsbEhEIHNj
cmVlbiBzaWRlIGJ5IHNpZGUsIHdpdGggbGluZSBudW1iZXJzLg0KDQpJIGNhbiBzdGlsbCBz
ZWUgYXJvdW5kIDg3IGNoYXJhY3RlcnMgKGEgbGl0dGxlIG1vcmUgdGhhbiA4MCksDQpidXQg
dGhhdCBsaW5lIGlzIHRvbyBtdWNoIGZvciBtZS4gIElmIGVpZ2h0eS1mZXcgY2hhcmFjdGVy
cyByZWFsbHkgDQppbXByb3ZlIHJlYWRhYmlsaXR5LCBJIGNhbiBhY2NlcHQgdGhhdCwgZXNw
ZWNpYWxseSBmb3IgU1lOT1BTSVMsIGJ1dCBpbiANCnJ1bm5pbmcgdGV4dCwgODAtY2hhciBp
cyBtb3JlIG9mIGEgc3Ryb25nIGxpbWl0Lg0KDQpCVFcsIEkganVzdCByZWFsaXplZCB0aGUg
U1lOT1BTSVMgbW92ZWQgcGFzdCBteSBzY3JlZW4gb24gdGhlIHRlcm1pbmFsLg0KSSBmaXhl
ZCBpdC4NCg0KPiArKHRoaXMgaXMgdGhlIGFkZGl0aXZlIGludmVyc2Ugb2YNCj4gKy5CUiB0
aW1lem9uZSAoMykpLg0KPiArLlBQDQo+ICsuSSB0bV96b25lDQo+ICtpcyB0aGUgZXF1aXZh
bGVudCBvZg0KPiArLkJSIHR6bmFtZSAoMykNCj4gK2ZvciB0aGUgdGltZXpvbmUgcmVwcmVz
ZW50ZWQgYnkgdGhpcyBicm9rZW4tZG93biB0aW1lLg0KPiAgIC5TSCBWRVJTSU9OUw0KPiAg
IEluIEM5MCwNCj4gICAuSSB0bV9zZWMNCj4gQEAgLTQ4LDEwICs3NiwzMiBAQCBpbiBDOTku
DQo+ICAgLlNIIENPTkZPUk1JTkcgVE8NCj4gICBDOTAgYW5kIGxhdGVyOw0KPiAgIFBPU0lY
LjEtMjAwMSBhbmQgbGF0ZXIuDQo+ICsuUFANCj4gKy5JIHRtX2dtdG9mZg0KPiArYW5kDQo+
ICsuSSB0bV96b25lDQo+ICtvcmlnaW5hdGUgZnJvbSA0LjNCU0QtVGFob2UgKHdoZXJlDQo+
ICsuSSB0bV96b25lDQo+ICtpcyBhDQo+ICsuSVIgImNoYXIgKiIgKS4NCj4gICAuU0ggTk9U
RVMNCj4gICAuSSB0bV9zZWMNCj4gICBjYW4gcmVwcmVzZW50IGEgbGVhcCBzZWNvbmQgd2l0
aCB0aGUgdmFsdWUNCj4gICAuQlIgNjAgLg0KPiArLlBQDQo+ICsuQlIgdGltZXpvbmUgKDMp
LA0KPiArYXMgYSB2YXJpYWJsZSwgaXMgYW4gWFNJIGV4dGVuc2lvbjogc29tZSBzeXN0ZW1z
IHByb3ZpZGUgdGhlIFY3LWNvbXBhdGlibGUNCj4gKy5cIiBGcmVlQlNEDQo+ICsuQlIgdGlt
ZXpvbmUgKCkNCg0KSSd2ZSBiZWVuIHRoaW5raW5nIGFib3V0IGlmIHdlIHNob3VsZCBwdXQg
dGhlcmUgYSBzZWN0aW9uIG51bWJlci4NCkkgdGhpbmsgd2Ugc2hvdWxkLiAgQWN0dWFsbHks
IHRpbWV6b25lKDMpIGRvY3VtZW50cyB0aGUgZnVuY3Rpb24gaW4gTk9URVMuDQoNCkNoZWVy
cywNCg0KQWxleA0KDQo+ICtmdW5jdGlvbi4NCj4gK1RoZQ0KPiArLkkgdG1fZ210b2ZmDQo+
ICtmaWVsZCBwcm92aWRlcyBhbiBhbHRlcm5hdGl2ZSAod2l0aCB0aGUgb3Bwb3NpdGUgc2ln
bikgZm9yIHRob3NlIHN5c3RlbXMuDQo+ICsuUFANCj4gKy5JIHRtX3pvbmUNCj4gK3BvaW50
cyB0byBzdGF0aWMgc3RvcmFnZSBhbmQgbWF5IGJlIG92ZXJyaWRlbiBvbiBzdWJzZXF1ZW50
IGNhbGxzIHRvDQo+ICsuQlIgbG9jYWx0aW1lICgzKQ0KPiArYW5kIHNpbWlsYXIgZnVuY3Rp
b25zIChob3dldmVyLCB0aGlzIG5ldmVyIGhhcHBlbnMgdW5kZXIgZ2xpYmMpLg0KPiAgIC5T
SCBTRUUgQUxTTw0KPiAgIC5CUiBjdGltZSAoMyksDQo+ICAgLkJSIHN0cmZ0aW1lICgzKSwN
Cg0KLS0gDQpBbGVqYW5kcm8gQ29sb21hcg0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9t
YXIuZXMvPg0K

--------------X9h9a09asqVNdmzec5SnXg02--

--------------Cw25hk6MeKwyBnFrtohvGFsu
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLXFR4ACgkQnowa+77/
2zL2rRAAnateXpNPkbyOSzzvievbiyyHH3dCoNIGnL9VXui7bYUSJusTWMBDXauN
ROaF15cNYzbKV6Q2Y2FuHiTUPteiQnm44AXA0Y1k3DwaAZlycNc8xB4leuxxS5tX
LuIpAypvYpB2VokmPiHWQ7Ulk0ujlb9CjVhy3CsWGnVi+uF+MoptI3wgW+DqRH7D
pgeGfBA93u+54Zwc6ZZaa6bWqEgw6cBWYPwidYvfwYpOOrir0R2iIRl5/XMj6LhL
gf/+W9MOofLRhbhao4/Y4TE4afsHXfrg36WHeChJ28p22TI7ZqJEpehs+Ep8r55a
DFdXtgFSAGncDLXTlGZ+HJhk3nJnf7l6+NzIdU8NdRe62+gj1NjxleMbV2qt5Ufq
YI5BF9myofCTfjDSvf/SJZdl4BimaDTz1ldAeWiwwx1ktdsdIubANEc+km4kRPni
VBOlmC5TQhPezox2rwM5tHAV9hzpdWJl4XwcdemuUbeaNW3mVfJQES0Hlh2CvCiq
Dne7zItOH6o2dfJHQYFJVvcIhDvlZ0QNSVgM0T66tsfIj+AKodMccuFllX/RdYSD
3X0Ty+5Uc9uzMgN54AsZ3Gln1rxts+5dXjds9hfue218ZtYzjfoK8E9yBufvQetq
SQrn6R0bLin4TETwMw1xrZ5Vgi59C0ByWUX1w7BfaYeKUy4pyYY=
=83cz
-----END PGP SIGNATURE-----

--------------Cw25hk6MeKwyBnFrtohvGFsu--
