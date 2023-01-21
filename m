Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 46EF56766B8
	for <lists+linux-man@lfdr.de>; Sat, 21 Jan 2023 15:30:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229697AbjAUOaZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 21 Jan 2023 09:30:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60250 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229484AbjAUOaY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 21 Jan 2023 09:30:24 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EBDC91F5FF
        for <linux-man@vger.kernel.org>; Sat, 21 Jan 2023 06:30:22 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id fl11-20020a05600c0b8b00b003daf72fc844so7692943wmb.0
        for <linux-man@vger.kernel.org>; Sat, 21 Jan 2023 06:30:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R4KKqQoXq+fx4P5v7ynNYGUQlM98ki8GhlPeSXXXmoE=;
        b=d7FIrI8Ny49lFGkkgTHkMU7UUblhna05dMJURKSV3tHPvFM/3wTYHrUQMjfLMlFSrL
         mHNb00rCTYyp5QsXRCCesv2aPb4TxYXsY+OuLxkfrHlrcwMxlw3AXnl5Ex+WtpqhsWxX
         PEjmAeKZ2/hgG7Ida2GSHXO7sIQvn1WsdIOZaJ86Gnhe0P6Qi3eDAddL7SLW9xCbEsvE
         68QU2i0sA17d2nuY76+dgJp9F/2UcuJ7zQQ1FP0iZAmH4vILV83Bzev5QpZRy35UQPGr
         oj2KrznSB9OeAEebum0PA+g7prr1CoUa1XexVHSB1rMa6Pqm3w46McCSATFviKUENoKY
         TOZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=R4KKqQoXq+fx4P5v7ynNYGUQlM98ki8GhlPeSXXXmoE=;
        b=vRnlUBFJFiCl5JnYSXZP3r7laVrl3qTRu6qatgoxTYgO/qNGSpNNq7O/inhjVThNuZ
         7kqFud0r6PQziLUam0+oExUgqRNjJC1p2Ilhc2+ULbq2L7IZgsX4921/RfdrJ4ubDVX/
         kphFLGerBo4iLJ4SWW1o4eYiZUsfZ/V6tF9jexYbH36YGbf/qGDYzGT5WCo9uNb9NiHG
         3n0rtrucVg13Uq29kzSbceOKUUPxlZkOHlTQZW8bkfgVXUoew7EuUDjn32WTUT1sykPa
         8uKfzQaIQibEfCpWDSlcxx09R9MtS4ebkpXokNkDexVeIxSNRfjygcAUNcnzaeVKk9wi
         Gg6A==
X-Gm-Message-State: AFqh2koY8IOCEuDEs1qIyRfKx2EXecUtOWeVULt71EHa4BcapDm8h4H2
        Y4sSXfuacXDRD5wYiluhD54=
X-Google-Smtp-Source: AMrXdXuGiieMZhKJhDcZ6wgigNOIKsaXFR8gRa7lDk00df0qfWJ/LuJlrX8so+NH6vXenjP7fDMtoA==
X-Received: by 2002:a05:600c:4e16:b0:3db:15b1:fafd with SMTP id b22-20020a05600c4e1600b003db15b1fafdmr12608716wmq.24.1674311421360;
        Sat, 21 Jan 2023 06:30:21 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id m2-20020a05600c4f4200b003db0ad636d1sm5907486wmq.28.2023.01.21.06.30.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Jan 2023 06:30:20 -0800 (PST)
Message-ID: <c43e0f50-4988-2068-3607-8190747b540f@gmail.com>
Date:   Sat, 21 Jan 2023 15:30:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v2] socket: Implement sockaddr_storage with an anonymous
 union
To:     =?UTF-8?Q?Bastien_Roucari=c3=a8s?= <rouca@debian.org>,
        Zack Weinberg <zack@owlfolio.org>,
        GNU libc development <libc-alpha@sourceware.org>,
        gcc@gcc.gnu.org
Cc:     Alejandro Colomar <alx@kernel.org>,
        'linux-man' <linux-man@vger.kernel.org>,
        Eric Blake <eblake@redhat.com>,
        Stefan Puiu <stefan.puiu@gmail.com>,
        Igor Sysoev <igor@sysoev.ru>
References: <20230120134043.10247-1-alx@kernel.org>
 <4d3a8505-1ec1-0e4c-299a-1b56e3525410@gmail.com>
 <0eaedb18-54df-9c2d-49ab-397fd6b4f63a@gmail.com>
 <2611573.oxQNTHoq5J@portable-bastien>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <2611573.oxQNTHoq5J@portable-bastien>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------PWgJyVvNm03wGdrvgNYp38bB"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------PWgJyVvNm03wGdrvgNYp38bB
Content-Type: multipart/mixed; boundary="------------4462icRXwIUW9kGhKRAU3Zbl";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?Q?Bastien_Roucari=c3=a8s?= <rouca@debian.org>,
 Zack Weinberg <zack@owlfolio.org>,
 GNU libc development <libc-alpha@sourceware.org>, gcc@gcc.gnu.org
Cc: Alejandro Colomar <alx@kernel.org>,
 'linux-man' <linux-man@vger.kernel.org>, Eric Blake <eblake@redhat.com>,
 Stefan Puiu <stefan.puiu@gmail.com>, Igor Sysoev <igor@sysoev.ru>
Message-ID: <c43e0f50-4988-2068-3607-8190747b540f@gmail.com>
Subject: Re: [PATCH v2] socket: Implement sockaddr_storage with an anonymous
 union
References: <20230120134043.10247-1-alx@kernel.org>
 <4d3a8505-1ec1-0e4c-299a-1b56e3525410@gmail.com>
 <0eaedb18-54df-9c2d-49ab-397fd6b4f63a@gmail.com>
 <2611573.oxQNTHoq5J@portable-bastien>
In-Reply-To: <2611573.oxQNTHoq5J@portable-bastien>

--------------4462icRXwIUW9kGhKRAU3Zbl
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQmFzdGllbiwNCg0KT24gMS8yMS8yMyAxNDozMCwgQmFzdGllbiBSb3VjYXJpw6hzIHdy
b3RlOg0KDQpbLi4uXQ0KDQo+PiBBaGgsIGluZGVlZCBpdCBzZWVtcyB0byBiZSBVQi4gIEl0
J3MgaW4gdGhlIHNhbWUgNi41LjIuMy82OiAgdGhlcmUncyBhDQo+PiByZXF1aXJlbWVudCB0
aGF0IHRoZSBpbmZvcm1hdGlvbiBhYm91dCB0aGUgdW5pb24gaXMga2VwdCBpbiB0aGUgZnVu
Y3Rpb24gaW4NCj4+IHdoaWNoIGl0J3MgYWNjZXNzZWQuDQo+Pg0KPj4gVGhlIHN0YW5kYXJk
IHByZXNlbnRzIGFuIGV4YW1wbGUsIHdoaWNoIGlzIGEgYml0IGFtYmlndW91czoNCj4+DQo+
PiAgICAgICAgVGhlIGZvbGxvd2luZyBpcyBub3QgYSB2YWxpZCBmcmFnbWVudCAoYmVjYXVz
ZSB0aGUgdW5pb24gdHlwZSBpcyBub3QNCj4+IHZpc2libGUgd2l0aGluIGZ1bmN0aW9uIGYp
Og0KPj4NCg0KWy4uLl0NCg0KPj4NCj4+IEkgZG9uJ3Qga25vdyB3aGF0J3MgdGhlIGludGVu
dGlvbiBpZiB0aGUgdW5pb24gdHlwZSB3YXMgZ2xvYmFsIGJ1dCB0aGUgdmFyaWFibGUNCj4+
IGB1YCB3YXMgc3RpbGwgbm90IHNlZW4gYnkgZigpLiAgQnV0IGl0IHNlZW1zIEdDQydzIGlu
dGVycHJldGF0aW9uIGlzIFVCLA0KPj4gYWNjb3JkaW5nIHRvIHRoZSB0ZXN0IHdlIGp1c3Qg
c2F3Lg0KPj4NCj4+IFRoZSBzb2x1dGlvbiB0aGF0IEkgY2FuIHNlZSBmb3IgdGhhdCBpcyBt
YWtpbmcgc29ja2FkZHIgYWxzbyBiZSBhIHVuaW9uLiAgVGhhdA0KPj4gd2F5LCB0aGUgdW5p
b24gaXMga2VwdCBhY3Jvc3MgYWxsIGNhbGxzIChzaW5jZSB0aGV5IGFsbCB1c2Ugc29ja2Fk
ZHIpLg0KPj4NCj4+IHN0cnVjdCBzb2NrYWRkciB7DQo+PiAJdW5pb24gew0KPj4gCQlzdHJ1
Y3Qgew0KPj4gCQkJc2FfZmFtaWx5X3QgIHNhX2ZhbWlseTsNCj4+IAkJCWNoYXIgICAgICAg
ICBzYV9kYXRhWzE0XTsgIC8vIHdoeSAxND8NCj4+IAkJfQ0KPj4gCQlzdHJ1Y3Qgc29ja2Fk
ZHJfaW4gICBzaW47DQo+PiAJCXN0cnVjdCBzb2NrYWRkcl9pbjYgIHNpbjY7DQo+PiAJCXN0
cnVjdCBzb2NrYWRkcl91biAgIHN1bjsNCj4+IAl9Ow0KPj4gfTsNCj4gDQo+IE5vIHRoZSBz
b2x1dGlvbiBpcyB0byBhdm9pZCBzb2NrYWRkciBhbmQgbWFyayBhcyBkZXByZWNhdGVkLg0K
DQpEZWNsYXJpbmcgYHNvY2thZGRyYCBhcyBkZXByZWNhdGVkIG1lYW5zIGRlcHJlY2F0aW5n
IGFsc286DQoNCmFjY2VwdCgyKQ0KYWNjZXB0NCgyKQ0KYmluZCgyKQ0KY29ubmVjdCgyKQ0K
Z2V0cGVlcm5hbWUoMikNCmdldHNvY2tuYW1lKDIpDQpyZWN2ZnJvbSgyKQ0Kc2VuZHRvKDIp
DQpnZXRuYW1laW5mbygzKQ0KDQp3aGljaCB1c2UgdGhlIHR5cGUgaW4gdGhlaXIgcHJvdG90
eXBlLg0KDQpBbHNvLCBvdGhlciB0eXBlcyBzdWNoIGFzIGBhZGRyaW5mb2AsIHdoaWNoIGNv
bnRhaW4gYHNvY2thZGRyYCB3b3VsZCBhbHNvIG5lZWQgDQp0byBiZSBkZXByZWNhdGVkLCB3
aGljaCB3b3VsZCBpdHNlbGYgcmVxdWlyZSBkZXByZWNhdGluZzoNCg0KZ2V0YWRkcmluZm8o
MykNCmZyZWVhZGRyaW5mbygzKQ0KDQpTaW5jZSBhZGRyaW5mbyBpcyBpdHNlbGYgY29udGFp
bmVkIGluIG90aGVyIHN0cnVjdHVyZXMgc3VjaCBhcyBgZ2FpY2JgLCB3ZSB3b3VsZCANCmFs
c28gbmVlZCB0byBkZXByZWNhdGUgdGhvc2UsIHdoaWNoIHdvdWxkIGluIHR1cm4gcmVxdWly
ZSBkZXByZWNhdGluZyBtb3JlIEFQSXM6DQoNCmdldGFkZHJpbmZvX2EoMykNCmdhaV9lcnJv
cigzKQ0KZ2FpX2NhbmNlbCgzKQ0KDQpBbmQgbWF5YmUgSSBsZWZ0IHNvbWUuICBUaGlzIGZl
ZWxzIGxpa2UgbnVraW5nIHRoZSBlbnRpcmUgbmV0d29ya2luZyBBUEksIHdoaWNoIA0KSSBk
b24ndCBzZWUgaGFwcGVuaW5nIHNvb24uDQoNCg0KT3RoZXJ3aXNlLCB3ZSBuZWVkIHRvIGNv
bWUgdXAgd2l0aCBhIHNvbHV0aW9uIHRoYXQga2VlcHMgdGhlc2UgQVBJcyBjb21wYXRpYmxl
IA0Kd2l0aCB3aGF0ZXZlciBuZXcgdHlwZSB3ZSBzdWdnZXN0IHVzaW5nLiAgQ2hhbmdpbmcg
dGhlbSB0byB1c2UgYHZvaWQqYCBpbnN0ZWFkIA0Kb2YgYHNvY2thZGRyKmAgd291bGQgYmUg
cG9zc2libGUsIGJ1dCB3b3VsZCBkZWNyZWFzZSB0eXBlIHNhZmV0eSBjb25zaWRlcmFibHks
IA0Kc28gdGhlcmUgc2hvdWxkIGJlIGEgZ29vZCByZWFzb24gZm9yIHRoYXQuDQoNClN1Z2dl
c3RpbmcgdG8gdXNlIGFsd2F5cyBgc29ja2FkZHJfc3RvcmFnZWAgYnV0IHVzaW5nIGBzb2Nr
YWRkcmAgaW4gdGhlIGZ1bmN0aW9uIA0KcGFyYW1ldGVycyBrZWVwcyB0aGUgY3VycmVudCBu
b3Qtc28tbmljZSBjYXN0aW5nIGlzc3Vlcywgd2hpY2ggYXJlIG5vdCBVbmRlZmluZWQgDQpC
ZWhhdmlvciBwZXIgc2UsIGJ1dCBub3QgaWRlYWwgZWl0aGVyIChpbiBmYWN0LCBJIGRvbid0
IHRoaW5rIGB2b2lkKmAgaXMgbXVjaCANCndvcnNlIHRoYW4gY29kZSBmdWxsIG9mIGNhc3Rz
KS4gIEFuZCBpdCB3b3VsZCBhbHNvIGJlIGVycm9yLXByb25lLCBzaW5jZSB1c2VycyANCmNv
dWxkIGdldCB0aGUgaWRlYSB0aGF0IGBzb2NrYWRkcmAgY2FuIGJlIHVzZWQgc2FmZWx5LCBz
aW5jZSBpdCdzIHdoYXQgZ2V0cyANCnBhc3NlZCBhcyB0aGUgcGFyYW1ldGVyLg0KDQo+IFRo
ZSBwcm9ibGVtIGl0IHNob3VsZCBiZSBwYXJ0IG9mIHVuaW9uIHdpdGhvdXQgcmFpc2luZyBh
IHdhcm5pbmcgZWFjaCB0aW1lIHdlIHVzZSBhIHNhZmUgdHlwZS4uLg0KDQpJIGRvbid0IHVu
ZGVyc3RhbmQgdGhpczsgcGxlYXNlIGRldGFpbC4NCg0KPiANCj4gVGhlIG90aGVyIHNvbHV0
aW9uIGlzIHRvIHJlbmRlciBwdWJsaWMgIGFuZCBBQkkgc3RhYmxlIHRoZSB0eXBlIGhlcmUN
Cj4gaHR0cHM6Ly9naXRodWIuY29tL2JtaW5vci9nbGliYy9ibG9iL2FlNjEyYzQ1ZWZiNWUz
NDcxMzg1OWE1ZmFjZjkyMzY4MzA3ZWZiNmUvc29ja2V0L3N5cy9zb2NrZXQuaCNMNzgNCj4g
dW5kZXIgZm9yIGluc3RhbmNlIHNvY2thZGRyX3B0ciBhbmQgc29ja2FkZHJfY29uc3RfcHRy
DQoNCltbZ251Ojp0cmFuc3BhcmVudF91bmlvbl1dICh1c2VkIGluIHRoYXQgbGluaykgc2Vl
bXMgbGlrZSBhICJ0aGUgZGVzaWduIG9mIHRoaXMgDQppbnRlcmZhY2UgaXMgYmFkLCBzb3Jy
eSwgdGhpcyB3b3JrYXJvdW5kIHdpbGwganVzdCBtYWtlIGl0IHdvcmsiLiAgSSBndWVzcyBp
dCANCmp1c3Qgd29ya3MsIGFuZCBwcm9iYWJseSBpdCdzIHRoZSByZWFzb24gdGhhdCBzbyBt
dWNoIHVuZGVmaW5lZCBiZWhhdmlvciBoYXNuJ3QgDQpleHBsb2RlZCBzbyBmYXIuICBIb3dl
dmVyLCBpZiB3ZSBjYW4gc29sdmUgdGhpcyB1c2luZyBjb3JlIGxhbmd1YWdlIGZlYXR1cmVz
LCANCkknZCBnbyB0aGF0IHdheS4NCg0KPiANCj4gTW9yZW92ZXIgdGhpcyBhcmUgc29tZSBw
YXRjaCBhcmNoIGJ5IGFyY2gNCj4gaHR0cHM6Ly9zb3VyY2V3YXJlLm9yZy9sZWdhY3ktbWwv
bGliYy1hbHBoYS8yMDE2LTAyL21zZzAwMzQwLmh0bWwgdGhhdCBzaG91bGQgYmUgbWFkZSBk
ZWZhdWx0DQo+IA0KPiBCYXN0aWVuDQo+IA0KPiANCj4gDQo+Pg0KPj4gc3RydWN0IHNvY2th
ZGRyX3N0b3JhZ2Ugew0KPj4gCXVuaW9uIHsNCj4+IAkJc2FfZmFtaWx5X3QgICAgICAgICAg
c3NfZmFtaWx5Ow0KPj4gCQlzdHJ1Y3Qgc29ja2FkZHIgICAgICBzYTsNCj4+IAl9Ow0KPj4g
fTsNCg0KSG1tLCB0aGlzIGlzbid0IHN0aWxsIHBlcmZlY3QuICBTaW5jZSB0aGUgQVBJcyBn
ZXQgdGhlIHNvY2thZGRyLCB0aGlzIHVuaW9uIA0KaW5mb3JtYXRpb24gd291bGQgYmUgbG9z
dC4gIGBzb2NrYWRkcmAgbmVlZHMgdG8gYmUgdGhlIHR5cGUgdGhhdCBpcyBkZWNsYXJlZC4g
DQpgc29ja2FkZHJfc3RvcmFnZWAgc2hvdWxkIGp1c3QgZGllOyB0aGVyZSdzIG5vIHdheSB0
byBtYWtlIGl0IGNvbXBhdGlibGUgd2l0aCANCkFQSXMgZ2V0dGluZyBhIGBzb2NrYWRkcmAu
ICBUaGUgYXR0cmlidXRlIGB0cmFuc3BhcmVudF91bmlvbmAgaXMgdGhlIG9ubHkgd2F5IHRv
IA0KdXNlIGlzIHNhZmVseS4NCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCj4+DQo+Pg0KPj4gV2l0
aCB0aGlzLCBzb2NrYWRkcl9zdG9yYWdlIGJlY29tZXMgdXNlbGVzcywgYnV0IHN0aWxsIHVz
YWJsZS4gIE5ldyBjb2RlLCBjb3VsZA0KPj4ganVzdCB1c2Ugc29ja2FkZHIgYW5kIHVzZSB0
aGUgaW50ZXJuYWwgdW5pb24gbWVtYmVycyBhcyBuZWNlc3NhcnkuICBVbmlvbiBpbmZvDQo+
PiBpcyBrZXB0IGFjcm9zcyBhbGwgZnVuY3Rpb24gYm91bmRhcmllcy4NCg0KLS0gDQo8aHR0
cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------4462icRXwIUW9kGhKRAU3Zbl--

--------------PWgJyVvNm03wGdrvgNYp38bB
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPL9vMACgkQnowa+77/
2zLiJA//Z0Qb5dLkzd3MYmaAMxrPfNxABvDWGhdYmYDHelK3pNrQAhQawAvi4BkQ
V2wOZA7TdAmDA8RgPEFktams9zpodDcmpIAFVimC1Zt3Sc2AU+6vSFe+kEwjmNIy
gtjj0poWoUJx2HR2gr67xhaZ/QeLDrmyNLjsEwAIlEcDKEHVajakhm9fBjArE1SS
ukSOLJp+KEOe55lwA/Y0LfC515AwXjPYzz64Jy7qBbY74Xd8xlmL16Yh/cTvmeJK
EadbOx3nHGQtv6oAae+jVn9lKfAO/7Bku94jURDkud5fUQOvPsVAEAzPvmbXS02l
wCO/eoPGXkWL2SN70JMK/b2eoi8LPelc9om8Te/Qchtsucdpg7bkJCEHHvdOzhU9
Z86CzD7vHiDU4i8DHpaaJQ5Af2O7Klqn1nvb7MIXyEIULJiMDz6LcvQK8kHS8I9U
AcjOcj6oUyblA5OSiJzBnNwShi3SeYNQpVDuBtw4/RQulXgaYrUBeITu2BfB6O+U
l6zm74p1aRSElkIFshkbrFokUPz5wi1uQ0QVR5rKn+CMNB5QmGyaiMS6f6nEGbkX
R5DjJk3mchHt9JGf5srJZAM29wKW9MYBUXtkTeO3S+ym81glRlapf81yyrX7a+DG
CGk2mn5zdbIB4EkYyZxrzuMZ5U/DQgWslQv9Ys19nev0mwYb5ac=
=OS8T
-----END PGP SIGNATURE-----

--------------PWgJyVvNm03wGdrvgNYp38bB--
