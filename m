Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6DFAB624C12
	for <lists+linux-man@lfdr.de>; Thu, 10 Nov 2022 21:42:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229591AbiKJUmD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Nov 2022 15:42:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47638 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229667AbiKJUlw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Nov 2022 15:41:52 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 769281F2FE
        for <linux-man@vger.kernel.org>; Thu, 10 Nov 2022 12:41:51 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id bs21so3938745wrb.4
        for <linux-man@vger.kernel.org>; Thu, 10 Nov 2022 12:41:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a7ilm6VkmFGZndLAzpCUSGOD2il2ckQ7D5pLXamp1sY=;
        b=TOOzpGh++hNaHXpurHXhOQsCrZjifobO/EAAsi2bojJeOxahkeU8hyhLCgLOVL/pES
         lcU7ZiFuyyNz6D2H8gV8WAGcYs2U6LTOhLPye8KJ58i323p3y06/O7W4aL5v7Gp6sm+Q
         HszlPQd4g0LRk8gUajldwBYWPJx9sZ9b4kxj/2sseMzdxB4JT4rjprEgvXf3LO0KSuxF
         +cdfALKw2Sq5uA/bQ0VJwpDuisNuRXDsI7X4Ub69kIMGq+tT8cp/dkaMPYZ48bM7iRAl
         bsnyaw8mrEhkIePDA0WHuVOZ8sQiRc+aUz+EofdnvelkTGYVkLRztj5S8rReFilMKKf2
         dWKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=a7ilm6VkmFGZndLAzpCUSGOD2il2ckQ7D5pLXamp1sY=;
        b=bD8fGvgKvZPz6/TQfO7xYPBR4elunWY5NnK424H0D/A7r85PKTk4WRUppF/1wBqeuE
         UwUYW+VHlFeBlvAprfPgSSzNgUYK+35u2T2k+JE6GII7vyPvxWbIve8u78e4I75aKADH
         T3WwgIhH3eU2ydKiCCq+zwOfd8ROI1KY8svcDjipidjfESbRnlbV3ywVQkAJ0gRc04wR
         M+Jhl7iChOibjQ6pCp6rxRuqw73NcRHSTxrhOs5L4/mUnVlWCXwnwdguNmvPMb1KVNzy
         6dqB0E+fxyHrwqjEw1LpjBEEp7UFwTpH0u+rwunc7UodXBhd1YS8rs/tjMwzgcBnDZ4Y
         p7Fw==
X-Gm-Message-State: ACrzQf2BL72dqRWSovzlHCMfJ56KUo92vEubUtnJilTeD2PfpAI1wmYW
        O8wbe9yrF9LIPgSccVc46IwLChIrmIo=
X-Google-Smtp-Source: AMsMyM7O+vaE3QIRHFGVyo5S+ZM4kpJmyjL00XaCzM75jNeFoJTR/RWBwRPZnrwAJit2AcaSibZdRA==
X-Received: by 2002:adf:de8e:0:b0:236:ea40:47ef with SMTP id w14-20020adfde8e000000b00236ea4047efmr31971629wrl.519.1668112909938;
        Thu, 10 Nov 2022 12:41:49 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id p6-20020adfce06000000b002366ded5864sm68206wrn.116.2022.11.10.12.41.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Nov 2022 12:41:49 -0800 (PST)
Message-ID: <c2302f58-418e-d465-c72d-18083a0d6854@gmail.com>
Date:   Thu, 10 Nov 2022 21:41:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: MR macro 4th argument (was: [PATCH] Various pages: SYNOPSIS: Use
 VLA syntax in function parameters)
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        groff <groff@gnu.org>
Cc:     Ingo Schwarze <schwarze@usta.de>, linux-man@vger.kernel.org
References: <5ba53bad-019e-8a94-d61e-85b2f13223a9@gmail.com>
 <CACqA6+mfaj6Viw+LVOG=nE350gQhCwVKXRzycVru5Oi4EJzgTg@mail.gmail.com>
 <491a930d-47eb-7c86-c0c4-25eef4ac0be0@gmail.com>
 <2abccaa2-d472-4c5b-aea6-7a2dddd665da@gmail.com>
 <4475b350c2a4d60da540c0f3055f466640e6c409.camel@tugraz.at>
 <fcf6f3f7-f61d-9b91-bfeb-370849439ce3@gmail.com>
 <d524528c29f806b763a2d394abc1241f6b2dc0cb.camel@tugraz.at>
 <51f5a2f2-84c1-bc75-cf94-0cdc1771d37f@gmail.com>
 <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at>
 <e9ba79ff-fb73-c4d4-b966-d8d15062f7b7@gmail.com>
 <20221110094033.ptpfsqpvvx2yd5xs@illithid>
 <8cca79d4-f31d-1508-0775-cef54e3755c1@gmail.com>
 <01da77c7-fed2-0fc1-ae6a-770885057a27@gmail.com>
 <5e3a103d-2aff-511a-e819-96dafb640c24@gmail.com>
 <125368cf-e85a-d2f5-a943-9ebe0118e3b0@gmail.com>
In-Reply-To: <125368cf-e85a-d2f5-a943-9ebe0118e3b0@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------GQzaCVZgUCRImI4Ew4S4Ulf0"
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
--------------GQzaCVZgUCRImI4Ew4S4Ulf0
Content-Type: multipart/mixed; boundary="------------MTIVTVv9w6u084mpJUphNJ9D";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 groff <groff@gnu.org>
Cc: Ingo Schwarze <schwarze@usta.de>, linux-man@vger.kernel.org
Message-ID: <c2302f58-418e-d465-c72d-18083a0d6854@gmail.com>
Subject: Re: MR macro 4th argument (was: [PATCH] Various pages: SYNOPSIS: Use
 VLA syntax in function parameters)
References: <5ba53bad-019e-8a94-d61e-85b2f13223a9@gmail.com>
 <CACqA6+mfaj6Viw+LVOG=nE350gQhCwVKXRzycVru5Oi4EJzgTg@mail.gmail.com>
 <491a930d-47eb-7c86-c0c4-25eef4ac0be0@gmail.com>
 <2abccaa2-d472-4c5b-aea6-7a2dddd665da@gmail.com>
 <4475b350c2a4d60da540c0f3055f466640e6c409.camel@tugraz.at>
 <fcf6f3f7-f61d-9b91-bfeb-370849439ce3@gmail.com>
 <d524528c29f806b763a2d394abc1241f6b2dc0cb.camel@tugraz.at>
 <51f5a2f2-84c1-bc75-cf94-0cdc1771d37f@gmail.com>
 <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at>
 <e9ba79ff-fb73-c4d4-b966-d8d15062f7b7@gmail.com>
 <20221110094033.ptpfsqpvvx2yd5xs@illithid>
 <8cca79d4-f31d-1508-0775-cef54e3755c1@gmail.com>
 <01da77c7-fed2-0fc1-ae6a-770885057a27@gmail.com>
 <5e3a103d-2aff-511a-e819-96dafb640c24@gmail.com>
 <125368cf-e85a-d2f5-a943-9ebe0118e3b0@gmail.com>
In-Reply-To: <125368cf-e85a-d2f5-a943-9ebe0118e3b0@gmail.com>

--------------MTIVTVv9w6u084mpJUphNJ9D
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gMTEvMTAvMjIgMjA6MzcsIEFsZWphbmRybyBDb2xvbWFyIHdyb3RlOg0KPiBIaSBCcmFu
ZGVuLA0KPiANCj4gT24gMTEvMTAvMjIgMTk6MDQsIEFsZWphbmRybyBDb2xvbWFyIHdyb3Rl
Og0KPj4gT2YgY291cnNlIEkgZm9yZ290IHRvIHJlbmFtZSB0aGUgdGl0bGUsIGFuZCB0byBh
Z2cgZ3JvZmZALsKgIE5pY2UuDQo+Pg0KPj4gLS0tLS0tLS0gRm9yd2FyZGVkIE1lc3NhZ2Ug
LS0tLS0tLS0NCj4+IFN1YmplY3Q6IFJlOiBbUEFUQ0hdIFZhcmlvdXMgcGFnZXM6IFNZTk9Q
U0lTOiBVc2UgVkxBIHN5bnRheCBpbiBmdW5jdGlvbiANCj4+IHBhcmFtZXRlcnMNCj4+IERh
dGU6IFRodSwgMTAgTm92IDIwMjIgMTg6NDc6MzggKzAxMDANCj4+IEZyb206IEFsZWphbmRy
byBDb2xvbWFyIDxhbHgubWFucGFnZXNAZ21haWwuY29tPg0KPj4gVG86IEcuIEJyYW5kZW4g
Um9iaW5zb24gPGcuYnJhbmRlbi5yb2JpbnNvbkBnbWFpbC5jb20+DQo+PiBDQzogSW5nbyBT
Y2h3YXJ6ZSA8c2Nod2FyemVAdXN0YS5kZT4sIGxpbnV4LW1hbkB2Z2VyLmtlcm5lbC5vcmcN
Cj4+DQo+PiBbcmVtb3ZlZCBnY2NAIGFuZCBvdGhlciB1bmludGVyZXN0ZWQgcGVvcGxlOyBh
ZGRlZCBncm9mZkBdDQo+Pg0KPj4gSGkgQnJhbmRlbiENCj4+DQo+PiBPbiAxMS8xMC8yMiAx
MTo1OSwgQWxlamFuZHJvIENvbG9tYXIgd3JvdGU6DQo+PiDCoD4+IEFsc28sIGFzIHNvb24g
YXMgQmVydHJhbmQgYW5kIEkgY2FuIGdldCBncm9mZiAxLjIzIG91dFsxXSwgSSBhbSBob3Bp
bmcNCj4+IMKgPj4geW91IHdpbGwsIHNob3J0bHkgdGhlcmVhZnRlciwgbWlncmF0ZSB0byB0
aGUgbmV3IGBNUmAgbWFjcm8uDQo+PiDCoD4NCj4+IMKgPiBOb3QgYXMgc29vbiBhcyBpdCBn
ZXRzIHJlbGVhc2VkLCBiZWNhdXNlIEkgZXhwZWN0IChhdCBsZWFzdCBhIGRlY2VudCBhbW91
bnQgDQo+PiBvZikNCj4+IMKgPiBjb250cmlidXRvcnMgdG8gYmUgYWJsZSB0byByZWFkIHRo
ZSBwYWdlcyB0byB3aGljaCB0aGV5IGNvbnRyaWJ1dGUgdG8sIGJ1dCBhcw0KPj4gwqA+IHNv
b24gYXMgaXQgbWFrZXMgaXQgaW50byBEZWJpYW4gc3RhYmxlLCB5ZXMsIHRoYXQncyBpbiBt
eSBwbGFucy7CoCBTbywgaWYgeW91DQo+PiDCoD4gbWFrZSBpdCBiZWZvcmUgdGhlIGZyZWV6
ZSwgdGhhdCBtZWFucyBhcm91bmQgYSBjb3VwbGUgb2YgbW9udGhzIGZyb20gbm93Lg0KPj4N
Cj4+IEkgd29uJ3QgYmUgYXBwbHlpbmcgdGhlIHBhdGNoIG5vdywgdG8gYXZvaWQgY29udHJp
YnV0b3JzIHNlZWluZyBwZW9wbGUgDQo+PiBzdWRkZW5seSBub3Qgc2VlaW5nIG1hbiBwYWdl
IHJlZmVyZW5jZXMgd2hpbGUgcHJlcGFyaW5nIHBhdGNoZXMuwqAgQnV0IEknbGwgDQo+PiBz
dGFydCBwcmVwYXJpbmcgdGhlIHBhdGNoLCB0byBzZWUgd2hlcmUgYXJlIHRoZSBtb3N0IGRp
ZmZpY3VsdCBwYXJ0cy7CoCBBbmQgDQo+PiBtYXliZSByZXBvcnQgc29tZSBpc3N1ZXMgd2l0
aCB0aGUgdXNhYmlsaXR5Lg0KPj4NCj4+IE15IGZpcnN0IHRoaW5nIHdhcyB0byBydW46DQo+
Pg0KPj4gJCBncmVwIC1ybiAnXlwuQlIgLiogKFsxLTldXHcqKScNCj4+DQo+PiBJJ20gc3Vy
cHJpc2VkIGZvciBnb29kIHRoYXQgaXQgc2VlbXMgdGhhdCB0aGVyZSBhcmUgbm8gZmFsc2Ug
cG9zaXRpdmVzLsKgIEkgDQo+PiBkaWRuJ3QgZXhwZWN0IHRoYXQuwqAgQnV0IHNpbmNlIHRo
aW5ncyBsaWtlIGV4aXQoMSkgYXJlIGNvZGUsIHRoZXkgYXJlIHByb2JhYmx5IA0KPj4gZWl0
aGVyIG5vdCBoaWdobGlnaHRlZCBhdCBhbGwsIG9yIG1heWJlIGFyZSBpdGFsaWNpemVkIChh
cyBjb2RlIGlzKS7CoCBTbyANCj4+IHRoYXQncyBhIGdvb2QgdGhpbmcuDQo+Pg0KPj4gSXQg
c2hvd2VkIGEgZmV3IGxpbmVzIHRoYXQgbWlnaHQgYmUgcHJvYmxlbWF0aWMsIGJ1dCB0aGF0
J3MgYWN0dWFsbHkgYmFkIGNvZGUsIA0KPj4gd2hpY2ggSSBuZWVkIHRvIGZpeDoNCj4+DQo+
PiBtYW43L2NyZWRlbnRpYWxzLjc6MjcwOi5CUiBzZXR1aWQgIigyKSAoIiBzZXRnaWQgKDIp
KQ0KPj4gbWFuNy9jcmVkZW50aWFscy43OjI3NDouQlIgc2V0ZXVpZCAiKDIpICgiIHNldGVn
aWQgKDIpKQ0KPj4gbWFuNy9jcmVkZW50aWFscy43OjI3NzouQlIgc2V0ZnN1aWQgIigyKSAo
IiBzZXRmc2dpZCAoMikpDQo+PiBtYW43L2NyZWRlbnRpYWxzLjc6MjgwOi5CUiBzZXRyZXVp
ZCAiKDIpICgiIHNldHJlZ2lkICgyKSkNCj4+IG1hbjcvY3JlZGVudGlhbHMuNzoyODQ6LkJS
IHNldHJlc3VpZCAiKDIpICgiIHNldHJlc2dpZCAoMikpDQo+Pg0KPj4gVGhvc2UgYXJlIGFz
a2luZyBmb3IgYSAyLWxpbmUgdGhpbmcsIHdoZXJlIHRoZSBzZWNvbmQgbGluZSBpcyBSQiBp
bnN0ZWFkIG9mIA0KPj4gQlIuIFdoaWNoIHJlbWluZHMgbWUgdG8gY2hlY2sgUkI6DQo+Pg0K
Pj4gJCBncmVwIC1ybiAnXlwuUkIgLiogKFsxLTldXHcqKScNCj4+DQo+PiBUaGVyZSBhcmUg
bXVjaCBsZXNzIGNhc2VzLCBhbmQgYWxzbyBzZWVtIHRvIGJlIGZpbmUgdG8gc2NyaXB0LCB3
aXRoIGEgZmV3IA0KPj4gbWlub3IgZmZpeGVzIHRvby4NCj4+DQo+PiBUaGUgYmlnIGlzc3Vl
IGlzIHRoYXQgeW91ciBNUiBkb2Vzbid0IHN1cHBvcnQgbGVhZGluZyB0ZXh0Og0KPj4NCj4+
IMKgwqDCoMKgwqDCoMKgwqAgLk1SIHBhZ2XigJB0aXRsZSBtYW51YWzigJBzZWN0aW9uIFt0
cmFpbGluZ+KAkHRleHRdDQo+Pg0KPj4gSSByZW1lbWJlciB3ZSBoYWQgdGhpcyBkaXNjdXNz
aW9uIGFib3V0IHdoYXQgdG8gZG8gd2l0aCBpdC7CoCBBIDR0aCBhcmd1bWVudD8gDQo+PiBU
aGVyZSdzIGFsc28gY29uZmxpY3Qgd2l0aCBhIGh5cG90aGV0aWNhbCBsaW5rIHRoYXQgd2Ug
bWlnaHQgd2FudCB0byBhZGQgbGF0ZXIuDQo+Pg0KPj4gTXkgb3BpbmlvbiBpcyB0aGF0IHRo
ZSA0dGggYXJndW1lbnQgc2hvdWxkIGJlIHRoZSBsZWFkaW5nIHRleHQuwqAgQXNraW5nIHRv
IHVzZSANCj4+IHRoZSBlc2NhcGUgKHdhcyBpdCBcYz8pIHNlcXVlbmNlIHRvIHdvcmthcm91
bmQgdGhhdCBsaW1pdGF0aW9uIGlzIG5vdCB2ZXJ5IA0KPj4gbmljZS4gwqDCoCBFc3BlY2lh
bGx5IGZvciBzY3JpcHRpbmcgdGhlIGNoYW5nZS4NCj4+DQo+PiBJZiB5b3Ugd2FudCBhIDV0
aCBhcmd1bWVudCBmb3IgYSBVUkksIHlvdSBjYW4gc3BlY2lmeSB0aGUgbGVhZGluZyB0ZXh0
IGFzICIiLCANCj4+IHdoaWNoIGlzIG5vdCBtdWNoIG9mIGFuIGlzc3VlLsKgIEFuZCB5b3Ug
a2VlcCB0aGUgdHJhaWxpbmcgdGV4dCBhbmQgdGhlIGxlYWRpbmcgDQo+PiBvbmUgdG9nZXRo
ZXIuDQo+Pg0KPj4gV2hhdCBhcmUgeW91ciB0aG91Z2h0cz/CoCBXaGF0IHNob3VsZCB3ZSBk
bz8NCj4gDQo+IFRvIGRvY3VtZW50IGFuZCBkaXNjdXNzIHRoZSB3YXkgSSdtIG1pZ3JhdGlu
ZywgSSdsbCBzaGFyZSBoZXJlIHRoZSBzY3JpcHRzOg0KPiANCj4gVGhlIHNpbXBsZXN0IGNh
c2U6IGEgc2luZ2xlIG1hbiBwYWdlIHJlZmVyZW5jZSB3aXRoIG5vIG90aGVyIHN0dWZmIGFy
b3VuZCBpdDoNCj4gDQo+ICQgZmluZCBtYW4qIC10eXBlIGYgXA0KPiAgwqAgfCB4YXJncyBz
ZWQgLWkgJ3MvXlwuQlIgXChbXiBdKlwpIChcKFsxLTldXHcqXCkpJC8uTVIgXDEgXDIvJw0K
PiANCj4gU2Vjb25kIHNpbXBsZXN0IGNhc2U6IGEgc2luZ2xlIG1hbiBwYWdlIHJlZmVyZW5j
ZSB3aXRoIG9ubHkgdHJhaWxpbmcgc3R1ZmY6DQo+IA0KPiAkIGZpbmQgbWFuKiAtdHlwZSBm
IFwNCj4gIMKgIHwgeGFyZ3Mgc2VkIC1pICdzL15cLkJSIFwoW14gXSpcKSAoXChbMS05XVx3
KlwpKS8uTVIgXDEgXDIgLycNCj4gDQo+IA0KPiBBbmQgaGVyZSBJIGNvbnRpbnVlIHdpdGgg
aHlwb3RoZXRpY2FsIHN5bnRheCBub3QgeWV0IGFsbG93ZWQgYnkgZ3JvZmYuDQo+IA0KPiBB
IHNpbmdsZSBtYW4gcGFnZSByZWZlcmVuY2Ugd2l0aCBvbmx5IGxlYWRpbmcgc3R1ZmY6DQo+
IA0KPiAkIGZpbmQgbWFuKiAtdHlwZSBmIFwNCj4gIMKgIHwgeGFyZ3Mgc2VkIC1pICdzL15c
LlJCIFwoW14gXSpcKSBcKFteIF0qXCkgKFwoWzEtOV1cdypcKSkkLy5NUiBcMiBcMyAiIiBc
MS8nDQo+IA0KPiBBIHNpbmdsZSBtYW4gcGFnZSByZWZlcmVuY2Ugd2l0aCBib3RoIGxlYWRp
bmcgYW5kIHRyYWlsaW5nIHN0dWZmICh0aGFuayAkREVJVFkgDQo+IGZvciBub3QgaGF2aW5n
IGNvbW1lbnRzIGluIGFueSBvZiB0aG9zZSwgc28gSSBjYW4ganVzdCBydW4gdGhlIHNjcmlw
dCk6DQo+IA0KPiAkIGZpbmQgbWFuKiAtdHlwZSBmIFwNCj4gIMKgIHwgeGFyZ3Mgc2VkIC1p
ICdzL15cLlJCIFwoW14gXSpcKSBcKFteIF0qXCkgKFwoWzEtOV1cdypcKSlcKC4qXCkvLk1S
IFwyIFwzIFw0IA0KPiBcMS8nDQoNCkFuZCBhIGZldyBtb3JlLCB0byBjb3ZlciBzYW1lLXBh
Z2UgcmVmZXJlbmNlcy4gIEFzIEluZ28gcmVjb21tZW5kZWQsIEknbSBhZGRpbmcgDQp0aGUg
c2VjdGlvbiBmb3IgY29uc2lzdGVuY3kuICBSZWR1bmRhbmN5IGlzIG5vdCBhIGJpZyBpc3N1
ZSBoZXJlLg0KDQpNYW4gcmVmZXJlbmNlcyBpbiB0aGUgc2FtZSBwYWdlLCB3aXRoIG5vIHN0
dWZmIGFyb3VuZCB0aGVtOg0KDQokIGZpbmQgbWFuMiAtdHlwZSBmIFwNCiAgIHwgeGFyZ3Mg
c2VkIC1pICdzL15cLkJSIFwoW14gXSpcKSAoKSQvLk1SIFwxIDIvJw0KDQokIGZpbmQgbWFu
MyAtdHlwZSBmIFwNCiAgIHwgeGFyZ3Mgc2VkIC1pICdzL15cLkJSIFwoW14gXSpcKSAoKSQv
Lk1SIFwxIDMvJw0KDQoNCk1hbiByZWZlcmVuY2VzIGluIHRoZSBzYW1lIHBhZ2UsIHdpdGgg
dHJhaWxpbmcgc3R1ZmY6DQoNCiQgZmluZCBtYW4yIC10eXBlIGYgXA0KICAgfCB4YXJncyBz
ZWQgLWkgJ3MvXlwuQlIgXChbXiBdKlwpICgpLy5NUiBcMSAyIC8nDQoNCiQgZmluZCBtYW4z
IC10eXBlIGYgXA0KICAgfCB4YXJncyBzZWQgLWkgJ3MvXlwuQlIgXChbXiBdKlwpICgpLy5N
UiBcMSAzIC8nDQoNCg0KTWFuIHJlZmVyZW5jZXMgaW4gdGhlIHNhbWUgcGFnZSwgd2l0aCBv
bmx5IGxlYWRpbmcgc3R1ZmY6DQoNCiQgZmluZCBtYW4yIC10eXBlIGYgXA0KICAgfCB4YXJn
cyBzZWQgLWkgJ3MvXlwuUkIgXChbXiBdKlwpIFwoW14gXSpcKSAoKSQvLk1SIFwyIDIgIiIg
XDEvJw0KDQokIGZpbmQgbWFuMyAtdHlwZSBmIFwNCiAgIHwgeGFyZ3Mgc2VkIC1pICdzL15c
LlJCIFwoW14gXSpcKSBcKFteIF0qXCkgKCkkLy5NUiBcMiAzICIiIFwxLycNCg0KDQpBbmQg
ZmluYWxseSwgbWFuIHJlZmVyZW5jZXMgaW4gdGhlIHNhbWUgcGFnZSwgd2l0aCBib3RoIGxl
YWRpbmcgYW5kIHRyYWlsaW5nIA0Kc3R1ZmYgKGFnYWluLCBJIHdhcyBsdWNreSwgYW5kIHRo
ZXJlIHdlcmUgbm8gY29tbWVudHMpOg0KDQokIGZpbmQgbWFuMiAtdHlwZSBmIFwNCiAgIHwg
eGFyZ3Mgc2VkIC1pICdzL15cLlJCIFwoW14gXSpcKSBcKFteIF0qXCkgKClcKC4qXCkvLk1S
IFwyIDIgXDMgXDEvJw0KDQokIGZpbmQgbWFuMyAtdHlwZSBmIFwNCiAgIHwgeGFyZ3Mgc2Vk
IC1pICdzL15cLlJCIFwoW14gXSpcKSBcKFteIF0qXCkgKClcKC4qXCkvLk1SIFwyIDMgXDMg
XDEvJw0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------MTIVTVv9w6u084mpJUphNJ9D--

--------------GQzaCVZgUCRImI4Ew4S4Ulf0
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNtYgUACgkQnowa+77/
2zL54w//aGHXGX8qlh8r1cL4eaqTvL8xuFcLn3v1KY8wQ3BkAMNaD2m0o4oclBrn
CaiScw1HXWOiEiv7OKAggE0AXz9hrO4RQjqjdLfpzJzsoyCbRyt0LiTLmiVM1BU0
TmSIibDibtvlPhzD0IMqFqLRvLOa/F2HttJalMt4cWlo6B/zrk9N5OEQO0WxGHbD
RaMmlHlzDPt+ryz2XJNMCP8lXFv1cL4TCB1Df+jUn4NyFWSU5ZpYZmt3W4ZGRzzF
rLL7DV/7SL/hk8kj4EHRkKi+w+mJvgRn5wTYsP1TEq3n4qkqzfNRwHqh6Zbp195l
xDINJ5VhmwcinmTkVuHKMfqhBHxYJtCBPVAdbc87zdu3vOTeLTRF0DzcaVLsA8d4
3qDXjQdDHIbi7ybFK7cWMeg2jieoob2ZhDLBcnrYiGjXEMM6wLhkQgNmsVISI6GM
qdxKbKGUxOwS2JjdIIvFZOmkOekPG0n1tV7i0O16U4CXzjsGIOjlr1SUXM14Zcky
0hSSRnulwte0bqgKpJm3MAvA49CNgq5OZfZ3gq7mMGL/KcyJVFjWO+gXZCPxkQEs
UfZUoZZPJo8wouPZxGN0NgYRB6LNddnEmD11zazzowqOXkcdtrrxLvp2jHoI3mPh
+T8QQdhktk+m8fuSZHJ9eNz1ESBI3k10/ymDUqB8mFFqWQ2FWqY=
=tv+X
-----END PGP SIGNATURE-----

--------------GQzaCVZgUCRImI4Ew4S4Ulf0--
