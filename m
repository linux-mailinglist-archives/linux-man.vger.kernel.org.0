Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 00D8563B5C2
	for <lists+linux-man@lfdr.de>; Tue, 29 Nov 2022 00:19:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232683AbiK1XTJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Nov 2022 18:19:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40398 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229483AbiK1XTI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Nov 2022 18:19:08 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D219C25296
        for <linux-man@vger.kernel.org>; Mon, 28 Nov 2022 15:19:06 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id ay14-20020a05600c1e0e00b003cf6ab34b61so12998612wmb.2
        for <linux-man@vger.kernel.org>; Mon, 28 Nov 2022 15:19:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XPe/U/d4pckc21YV0QT2YVP+/xirmEC4cUo2Z5586GA=;
        b=ej5Urpxr61c0a3BjHP/kAeVtrNcRL44RIshWsVu/b+Hnmd5eeLxs6319JfztUQBjh/
         BxboD4FWY+J2SsdTHl2iCUS4283ZcrANu0cwHECJv5aOPMOwyP3JUAnV8KYxlWN5y8Wg
         l9sIydirqZjj6FEhBalQxfY1vxTJd36rjfxUD0d7xLCu/kFZYO8noLOlvc0Vsp43B2gt
         Zxv1RaZBdEzUj19bheuxLeQYc4Q+MMOUCqQ1B2PZ69Zbdw3rPpnzboCfH9lawzhFNT/b
         h+L5x1cLYIHOvgdiTo7AXy27RprHnwL6JozmmMbL0XS0w2kYCbymOiqY9vRW3ufACQHd
         Nh/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=XPe/U/d4pckc21YV0QT2YVP+/xirmEC4cUo2Z5586GA=;
        b=OQrvlMeGS25Q5C825/uz5MmK3bhCayTTABrH8bqzcCzcrWg6uhBIMGBXySWSjwNJGE
         6vaSNqHF8HmIOVBdJkybTSoPTsPACRUf1DyVohuBS9GCqrn0bF/XCUQbyVodt9rkKOjC
         v+Fd2iqv/j5MrEllJqZN+WOrUCBU60LmoX8ij59ucBDOTPLx3u9JsSIEGb1HLC6UlIhU
         2dzntUEsUJoOMCKA1JRcPxiHGx3ahpk7D8Y6Plepwv3QLMAK2CDlLA0f/SFcjdXO32Ha
         LKnToNyGpkOaWxmAkp4lMqxOq1kxTt5HvkN/DmkyzxXV+9yF8CdhmFFxjPD6Ko0zrwhM
         VH6g==
X-Gm-Message-State: ANoB5pk/6sHFkgZWIePwRPHgHE3x7DfCuI1ttnHl0d+YXtop0an/NNLf
        KOhlpP5NJd42kEav7L4xKw4=
X-Google-Smtp-Source: AA0mqf4AScOT2MMKXMW3Rzfqq4Nc1SA6wo28T7pkQLjNk1/Qq7nPWza8eQyoMAaGccfexuzgIIiPEA==
X-Received: by 2002:a05:600c:4b17:b0:3cf:89c3:3837 with SMTP id i23-20020a05600c4b1700b003cf89c33837mr41588399wmp.92.1669677545303;
        Mon, 28 Nov 2022 15:19:05 -0800 (PST)
Received: from [192.168.43.80] ([31.221.250.124])
        by smtp.gmail.com with ESMTPSA id g12-20020a5d46cc000000b0022ca921dc67sm11865224wrs.88.2022.11.28.15.19.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Nov 2022 15:19:04 -0800 (PST)
Message-ID: <494309ce-c8ec-5219-f83e-b8dda5b9bcd1@gmail.com>
Date:   Tue, 29 Nov 2022 00:18:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
Content-Language: en-US
To:     Martin Uecker <uecker@tugraz.at>,
        Joseph Myers <joseph@codesourcery.com>
Cc:     Ingo Schwarze <schwarze@usta.de>,
        JeanHeyd Meneide <wg14@soasis.org>, linux-man@vger.kernel.org,
        gcc@gcc.gnu.org
References: <20220826210710.35237-1-alx.manpages@gmail.com>
 <d524528c29f806b763a2d394abc1241f6b2dc0cb.camel@tugraz.at>
 <51f5a2f2-84c1-bc75-cf94-0cdc1771d37f@gmail.com>
 <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at>
 <e9ba79ff-fb73-c4d4-b966-d8d15062f7b7@gmail.com>
 <69d694b3-756-792d-8880-87bab482ea34@codesourcery.com>
 <76c083af-c01f-a4b2-3df-c83075c6b0de@codesourcery.com>
 <ab605ae5d4c89a453a433717c2e5fe0134e90803.camel@tugraz.at>
 <75c352c-e8b5-90d0-5fae-7b211c647934@codesourcery.com>
 <68746776-87bf-80f9-8e3e-7392e8cef1bb@gmail.com>
 <77c3557f-4a62-3ede-4df4-4b2b78e265b1@codesourcery.com>
 <a1606206-294d-8f7d-eb1d-e8ffe7d3212c@gmail.com>
 <5ae032cd-7a5f-f72b-29ae-6ad7f418da8@codesourcery.com>
 <ceb7e51c8f01cb3c7069f3212a7e86e4b10e320d.camel@tugraz.at>
 <7931044a-b707-5a70-86c2-be298c35aa57@gmail.com>
 <792055f0-114d-d4bc-52f0-c242d1767c0b@gmail.com>
 <31e1cf34-b42f-24c5-2109-f8214c28af3e@gmail.com>
 <b78e43af88ccd2443363e88e8e2be3d1a4d75312.camel@tugraz.at>
From:   Alex Colomar <alx.manpages@gmail.com>
In-Reply-To: <b78e43af88ccd2443363e88e8e2be3d1a4d75312.camel@tugraz.at>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------9VukizO1jW5a11o8hOh06IH0"
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
--------------9VukizO1jW5a11o8hOh06IH0
Content-Type: multipart/mixed; boundary="------------glGPpyC7GXSJPAduGZNkKkUR";
 protected-headers="v1"
From: Alex Colomar <alx.manpages@gmail.com>
To: Martin Uecker <uecker@tugraz.at>, Joseph Myers <joseph@codesourcery.com>
Cc: Ingo Schwarze <schwarze@usta.de>, JeanHeyd Meneide <wg14@soasis.org>,
 linux-man@vger.kernel.org, gcc@gcc.gnu.org
Message-ID: <494309ce-c8ec-5219-f83e-b8dda5b9bcd1@gmail.com>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
References: <20220826210710.35237-1-alx.manpages@gmail.com>
 <4475b350c2a4d60da540c0f3055f466640e6c409.camel@tugraz.at>
 <fcf6f3f7-f61d-9b91-bfeb-370849439ce3@gmail.com>
 <d524528c29f806b763a2d394abc1241f6b2dc0cb.camel@tugraz.at>
 <51f5a2f2-84c1-bc75-cf94-0cdc1771d37f@gmail.com>
 <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at>
 <e9ba79ff-fb73-c4d4-b966-d8d15062f7b7@gmail.com>
 <69d694b3-756-792d-8880-87bab482ea34@codesourcery.com>
 <76c083af-c01f-a4b2-3df-c83075c6b0de@codesourcery.com>
 <ab605ae5d4c89a453a433717c2e5fe0134e90803.camel@tugraz.at>
 <75c352c-e8b5-90d0-5fae-7b211c647934@codesourcery.com>
 <68746776-87bf-80f9-8e3e-7392e8cef1bb@gmail.com>
 <77c3557f-4a62-3ede-4df4-4b2b78e265b1@codesourcery.com>
 <a1606206-294d-8f7d-eb1d-e8ffe7d3212c@gmail.com>
 <5ae032cd-7a5f-f72b-29ae-6ad7f418da8@codesourcery.com>
 <ceb7e51c8f01cb3c7069f3212a7e86e4b10e320d.camel@tugraz.at>
 <7931044a-b707-5a70-86c2-be298c35aa57@gmail.com>
 <792055f0-114d-d4bc-52f0-c242d1767c0b@gmail.com>
 <31e1cf34-b42f-24c5-2109-f8214c28af3e@gmail.com>
 <b78e43af88ccd2443363e88e8e2be3d1a4d75312.camel@tugraz.at>
In-Reply-To: <b78e43af88ccd2443363e88e8e2be3d1a4d75312.camel@tugraz.at>

--------------glGPpyC7GXSJPAduGZNkKkUR
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgTWFydGluLA0KDQpPbiAxMS8xMy8yMiAxNTo1OCwgTWFydGluIFVlY2tlciB3cm90ZToN
Cj4gQW0gU29ubnRhZywgZGVuIDEzLjExLjIwMjIsIDE1OjAyICswMTAwIHNjaHJpZWIgQWxl
amFuZHJvIENvbG9tYXI6DQo+Pg0KPj4gT24gMTEvMTMvMjIgMTQ6MzMsIEFsZWphbmRybyBD
b2xvbWFyIHdyb3RlOg0KPj4+IEhpIE1hcnRpbiwNCj4+Pg0KPj4+IE9uIDExLzEzLzIyIDE0
OjE5LCBBbGVqYW5kcm8gQ29sb21hciB3cm90ZToNCj4+Pj4+IEJ1dCB0aGVyZSBhcmUgbm90
IG9ubHkgc3ludGFjdGljYWwgcHJvYmxlbXMsIGJlY2F1c2UNCj4+Pj4+IGFsc28gdGhlIHR5
cGUgb2YgdGhlIHBhcmFtZXRlciBtaWdodCBiZWNvbWUgcmVsZXZhbnQNCj4+Pj4+IGFuZCB0
aGVuIHlvdSBjYW4gZ2V0IGNpcmN1bGFyIGRlcGVuZGVuY2llczoNCj4+Pj4+DQo+Pj4+PiB2
b2lkIGZvbyhjaGFyICgqYSlbc2l6ZW9mICouYl0sIGNoYXIgKCpiKVtzaXplb2YgKi5hXSk7
DQo+Pj4+DQo+Pj4+IFRoaXMgc2VlbXMgdG8gYmUgYSBkaWZmaWN1bHQgc3RvbmUgaW4gdGhl
IHJvYWQuDQo+IA0KPiBCdXQgbm90ZSB0aGF0IEdOVSBmb3J3YXJkIGRlY2xhcmF0aW9ucyBz
b2x2ZSB0aGlzIG5pY2VseS4NCg0KT2theSwgc28gR05VIGRlY2xhcmF0aW9ucyBiYXNpY2Fs
bHkgd29yayBieSBkdXBsaWNhdGluZyAoc29tZSBvZikgdGhlIA0KZGVjbGFyYXRpb25zLg0K
DQpIb3cgYWJvdXQgdGhlIGNvbXBpbGVyIHBhcnNpbmcgdGhlIHBhcmFtZXRlciBsaXN0IHR3
aWNlPyAgT25lIGZvciANCmdldHRpbmcgdGhlIGRlY2xhcmF0aW9ucyBhbmQgdGhlaXIgdHlw
ZXMgKGJ1dCBub3QgcmVzb2x2aW5nIGFueSANCnNpemVvZigpLCBfTGVuZ3Rob2YoKSwgb3Ig
dHlwZW9mKCksIHdoZW4gdGhleSBjb250YWluIC5pZGVudGlmaWVyIChvciANCmV4cHJlc3Np
b25zIGNvbnRhaW5pbmcgaXQ7IGluIHRob3NlIGNhc2VzLCBsZWF2ZSB0aGUgdHlwZSBpbmNv
bXBsZXRlLCB0byANCmJlIGNvbXBsZXRlZCBpbiB0aGUgc2Vjb25kIHBhc3MpLiAgQXMgaWYg
dGhlIHByb2dyYW1tZXIgaGFkIHNwZWNpZmllZCANCnRoZSBmaXJ3YXJkIGRlY2xhcmF0aW9u
cywgYnV0IGl0J3MgdGhlIGNvbXBpbGVyIHRoYXQgZ2V0cyB0aGVtIA0KYXV0b21hdGljYWxs
eS4NCg0KSSBndWVzcyBhc2tpbmcgdGhlIGNvbXBpbGVyIHRvIGRvIHR3byBwYXNzZXMgb24g
dGhlIHBhcmFtIGxpc3QgaXNuJ3QgYXMgDQpiYWQgYXMgYXNraW5nIHRvIGRvIHVuYm91bmQg
bG9va2FoZWFkLiAgSW4gdGhpcyBjYXNlIGl0J3MgYm91bmQ6ICBsb29rIA0KYWhlYWQgdGls
bCB0aGUgZW5kIG9mIHRoZSBwYXJhbSBsaXN0OyBnZXQgYXMgbXVjaCBpbmZvIGFzIHBvc3Np
YmxlLCBhbmQgDQp0aGVuIGRvIGl0IGFnYWluIHRvIGNvbXBsZXRlLiAgQW55dGhpbmcgbm90
IHlldCBjbGVhciBhZnRlciB0d28gcGFzc2VzIA0KaXMgbm90IHZhbGlkLg0KDQpTbywgZm9y
DQoNCiAgICAgdm9pZCBmb28oY2hhciAoKmEpW3NpemVvZigqLmIpXSwgY2hhciAoKmIpW3Np
emVvZigqLmEpXSk7DQoNCmluIHRoZSBmaXJzdCBwYXNzLCB0aGUgY29tcGlsZXIgd291bGQg
cmVhZDoNCg0KICAgICBjaGFyICgqYSlbc2l6ZW9mKCouYildOyAgLy8gc2l6ZW9mIC5pZGVu
dGlmaWVyOyBpbmNvbXBsZXRlIHR5cGU7IA0KY29udGludWUgcGFyc2luZw0KICAgICBjaGFy
ICgqYilbc2l6ZW9mKCouYSldOyAgLy8gc2l6ZW9mIC5pZGVudGlmaWVyOyBpbmNvbXBsZXRl
IHR5cGU7IA0KY29udGludWUgcGFyc2luZw0KDQpBdCB0aGUgZW5kIG9mIHRoZSBmaXJzdCBw
YXNzLCB0aGUgY29tcGlsZXIgb25seSBrbm93Og0KDQogICAgIGNoYXIgKCphKVtdOw0KICAg
ICBjaGFyICgqYilbXTsNCg0KQXQgdGhlIHNlY29uZCBwYXNzLCB3aGVuIGV2YWx1YXRpbmcg
c2l6ZW9mKCksIHNpbmNlIHRoZSB0eXBlIG9mIHRoZSANCmFyZ3VtZW50cyBhcmUgeWV0IGlu
Y29tcGxldGUsIGl0IGNhbid0IGJlIGV2YWx1YXRlZCwgYW5kIHRoZXJlZm9yZSwgDQp0aGVy
ZSdzIGFuIGVycm9yIGF0IHRoZSBmaXJzdCBzaXplb2YoKi5iKTogKi5iIGhhcyBpbmNvbXBs
ZXRlIHR5cGUuDQoNCi0tLQ0KDQpMZXQncyBzaG93IGEgZGlzdGluY3QgY2FzZToNCg0KICAg
ICB2b2lkIGZvbyhjaGFyICgqYSlbc2l6ZW9mKCouYildLCBjaGFyICgqYilbMTBdKTsNCg0K
QWZ0ZXIgdGhlIGZpcnN0IHBhc3MsIHRoZSBjb21waWxlciB3b3VsZCBrbm93Og0KDQogICAg
IGNoYXIgKCphKVtdOw0KICAgICBjaGFyICgqYilbMTBdOw0KDQpBdCB0aGUgc2Vjb25kIHBh
c3MsIHNpemVvZigqLmIpIHdvdWxkIGJlIGV2YWx1YXRlZCB1bmRvdWJ0ZWRseSB0byANCnNp
emVvZihjaGFyWzEwXSksIGFuZCB0aGUgcGFyYW1ldGVyIGxpc3Qgd291bGQgdGhlbiBiZSBm
aW5lLg0KDQpEb2VzIHRoaXMgMi1wYXNzIHBhcnNpbmcgbWFrZSBzZW5zZSB0byB5b3U/ICBE
aWQgSSBtaXNzIGFueSBkZXRhaWxzPw0KDQoNCj4gDQo+Pj4+DQo+Pj4+PiBJIGFtIG5vdCBz
dXJlIHdoYXQgd291bGQgdGhlIGJlc3Qgd2F5IHRvIGZpeCBpdC4gT25lDQo+Pj4+PiBjb3Vs
ZCBzcGVjaWZpeSB0aGF0IHBhcmFtZXRlcnMgcmVmZXJyZWQgdG8gYnkNCj4+Pj4+IHRoZSAu
aWRlbnRpZmVyIHN5bnRheCBtdXN0IG9mIHNvbWUgaW50ZWdlciB0eXBlIGFuZA0KPj4+Pj4g
dGhhdCB0aGUgc3ViLWV4cHJlc3Npb24gLmlkZW50aWZlciBpcyBhbHdheXMNCj4+Pj4+IGNv
bnZlcnRlZCB0byBhICdzaXplX3QnLg0KPj4+Pg0KPj4+PiBUaGF0IG1ha2VzIHNlbnNlLCBi
dXQgdGhlbiBvdmVybmlnaHQgc29tZSBxdWl0ZSB1c2VmdWwgdGhpbmcgY2FtZSB0byBteSBt
aW5kDQo+Pj4+IHRoYXQgd291bGQgbm90IGJlIHBvc3NpYmxlIHdpdGggdGhpcyBsaW1pdGF0
aW9uOg0KPj4+Pg0KPj4+Pg0KPj4+PiA8aHR0cHM6Ly9zb2Z0d2FyZS5jb2RpZGFjdC5jb20v
cG9zdHMvMjg1OTQ2Pg0KPj4+Pg0KPj4+PiBjaGFyICoNCj4+Pj4gc3RwZWNweShjaGFyIGRz
dFsuZW5kIC0gLmRzdF0sIGNoYXIgKnNyYywgY2hhciBlbmRbMV0pDQo+Pg0KPj4gSGVoLCBJ
IGdvdCBhbiBvZmYtYnktb25lIGVycm9yLiAgSXQgc2hvdWxkIGJlIGRzdFsuZW5kIC0gLmRz
dCArIDFdLCBvZiBjb3Vyc2UsDQo+PiBhbmQgdGhlbiB0aGUgcmVzdWx0IG9mIHRoZSB3aG9s
ZSBleHByZXNzaW9uIHdvdWxkIGJlIDAsIHdoaWNoIGlzIGZpbmUgYXMgc2l6ZV90Lg0KPj4N
Cj4+IFNvLCBuZXZlciBtaW5kLg0KPiANCj4gLmVuZCBhbmQgLmRzdCB3b3VsZCBoYXZlIHBv
aW50ZXIgc2l6ZSB0aG91Z2guDQo+IA0KPj4+PiB7DQo+Pj4+ICAgICAgIGZvciAoLyogdm9p
ZCAqLzsgZHN0IDw9IGVuZDsgZHN0KyspIHsNCj4+Pj4gICAgICAgICAgICpkc3QgPSAqc3Jj
Kys7DQo+Pj4+ICAgICAgICAgICBpZiAoKmRzdCA9PSAnXDAnKQ0KPj4+PiAgICAgICAgICAg
ICAgIHJldHVybiBkc3Q7DQo+Pj4+ICAgICAgIH0NCj4+Pj4gICAgICAgLyogVHJ1bmNhdGlv
biBkZXRlY3RlZCAqLw0KPj4+PiAgICAgICAqZW5kID0gJ1wwJzsNCj4+Pj4NCj4+Pj4gI2lm
ICFkZWZpbmVkKE5ERUJVRykNCj4+Pj4gICAgICAgLyogQ29uc3VtZSB0aGUgcmVzdCBvZiB0
aGUgaW5wdXQgc3RyaW5nLiAqLw0KPj4+PiAgICAgICB3aGlsZSAoKnNyYysrKSB7fTsNCj4+
Pj4gI2VuZGlmDQo+Pj4+DQo+Pj4+ICAgICAgIHJldHVybiBlbmQgKyAxOw0KPj4+PiB9DQo+
Pj4gQW5kIEkgZm9yZ290IHRvIHNheSBpdDogIERlZmF1bHQgcHJvbW90aW9ucyByYW5rIGhp
Z2ggKHByb2JhYmx5IHRoZSBoaWdoZXN0KSBpbg0KPj4+IG15IGxpc3Qgb2YgbW9zdCBoYXRl
ZCBmZWF0dXJlc15XYnVncyBpbiBDLg0KPiANCj4gSWYgeW91IHJlcGxhY2VkIHRoZW0gd2l0
aCBleHBsaWNpdCBjb252ZXJzaW9uIHlvdSB0aGVuIGhhdmUNCj4gdG8gYWRkIGJ5IGhhbmQg
YWxsIHRoZSB0aW1lLCBJIGFtIHByZXR0eSBzdXJlIG1vc3QgcGVvcGxlDQo+IHdvdWxkIGhh
dGUgdGhpcyBtb3JlLiAoYW5kIGl0IGNvdWxkIGFsc28gaGlkZSBidWdzKQ0KPiANCj4+PiBJ
IHdvdWxkbid0IGNvbnZlcnQgaXQgdG8gc2l6ZV90LCBidXQNCj4+PiByYXRoZXIgZm9sbG93
IG5vcm1hbCBwcm9tb3Rpb24gcnVsZXMuDQo+IA0KPiBUaGUgcG9pbnQgb2YgbWFraW5nIGl0
IHNpemVfdCBpcyB0aGF0IHlvdSB0aGVuDQo+IGRvIG5lZWQgdG8ga25vdyB0aGUgdHlwZSBv
ZiB0aGUgcGFyYW1ldGVyIHRvIG1ha2UNCj4gc2Vuc2Ugb2YgdGhlIGV4cHJlc3Npb24uIElm
IHRoZSB0eXBlIG1hdHRlcnMsIHRoZW4geW91IGdldA0KPiBtdXR1YWwgZGVwZW5kZW5jaWVz
IGFzIGluIHRoZSBleGFtcGxlIGFib3ZlLg0KPiANCj4+PiBTaW5jZSB5b3UgY2FuIHVzZSBh
bnl0aGluZyBiZXR3ZWVuIElOVE1BWF9NSU4gYW5kIFVJTlRNQVhfTUFYIGZvciBhY2Nlc3Np
bmcgYW4NCj4+PiBhcnJheSAod2hpY2ggdG9vayBtZSBzb21lIHRpbWUgdG8gdW5kZXJzdGFu
ZCksIEknZCBhbHNvIGFsbG93IHRoZSBzYW1lIGhlcmUuIFNvLA0KPj4+IHRoZSB0eXBlIG9m
IHRoZSBleHByZXNzaW9uIGJldHdlZW4gW10gY291bGQgcGVyZmVjdGx5IGJlIHNpZ25lZCBv
ciB1bnNpZ25lZC4NCj4+Pg0KPj4+IFNvLCB5b3UgY291bGQgdXNlIHNpemVfdCBmb3IgdmVy
eSBoaWdoIGluZGljZXMsIG9yIGUuZy4gcHRyZGlmZl90IGlmIHlvdSB3YW50IHRvDQo+Pj4g
YWxsb3cgbmVnYXRpdmUgbnVtYmVycy4gIEluIHRoZSBmdW5jdGlvbiBhYm92ZSwgc2luY2Ug
ZHN0IGNhbiBiZSBhIHBvaW50ZXIgdG8NCj4+PiBvbmUtcGFzdC10aGUtZW5kIChpdCByZXBy
ZXNlbnRzIGEgcHJldmlvdXMgdHJ1bmNhdGlvbjsgdGhhdCdzIHdoeSB0aGUgdGVzdA0KPj4+
IGRzdDw9ZW5kKSwgZm9yY2luZyBhIHNpemVfdCBjb252ZXJzaW9uIHdvdWxkIGRpc2FsbG93
IHRoYXQgc3ludGF4Lg0KPiANCj4gWWVzLCB0aGlzIHRoZW4gZG9lcyBub3Qgd29yay4NCg0K
Q2hlZXJzLA0KDQpBbGV4DQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIu
ZXMvPg0KDQo=

--------------glGPpyC7GXSJPAduGZNkKkUR--

--------------9VukizO1jW5a11o8hOh06IH0
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOFQeAACgkQnowa+77/
2zILOxAAimOM/UjWUlVoXE8vqy7o6a3W1jCTAsybZWjHCQ2brstKtFDl1Y8pubjR
dp40dJ9FD49UMFPl35ftBV/19Re+LA5a3FDkR7jVd0ptV1KHVzUu1E08S8Ls7C5c
MWbkeqjxKxDCIh71sJR9ZK7fneZ2LW0qVSJOmBRWG+2IBS76YSJe7tx2fiHzD7fI
sQSJgRzeoZOPmmuHtBUjQC8JFLorb7Z5pH7GZ9Gv2O11pqjMjiXwJ3Fo2q1gfvqv
IyrYdA+t4k3axzwdrBH5imoYw42RMR4Xk2qPgTYUbkkO6EJM4PxCAqcxvUo2WnQu
lY2TWBOjRpx2cMxwM7faoIYryRppu2/K7gd7ZJ1cpiJNyMWnEroJOvdQ0mn2uN4s
EKoJDK0GFGIvdLS+piQVWKwX7ZpsafOpMGOAXFiHfHr5DWqlQZQTCgguJF/5xpgu
htyE8GyuBG9rCdglloVhEbQSmgTHsxgTQnt0OYrgzdMC39iL3uRp5xT7VM2eZcWC
USMr3lgOiIRMtFeAl6faFNx57VsFuvIyP9lHfZJhz3vThbPaj110AWdu1rHeg+4A
saG8nvfcPVARzLBUv3bkpQ36MomIsqYyM3RNZoJLCEpPB6HaVU9wVgElknYMTwit
3yQmyjt0irRkVlu8OeLPFP9rULYyWa3B0V5DaUknDAWKXGuyEwE=
=6UGt
-----END PGP SIGNATURE-----

--------------9VukizO1jW5a11o8hOh06IH0--
