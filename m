Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 303F9661164
	for <lists+linux-man@lfdr.de>; Sat,  7 Jan 2023 20:47:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229785AbjAGTr0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Jan 2023 14:47:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49442 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229621AbjAGTrZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Jan 2023 14:47:25 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA18441660
        for <linux-man@vger.kernel.org>; Sat,  7 Jan 2023 11:47:23 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id az7so4252931wrb.5
        for <linux-man@vger.kernel.org>; Sat, 07 Jan 2023 11:47:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+77cwf5ldeMygsmAMxsat5SX525t1me3f0sArfWIE1c=;
        b=np6TRTOOAppsAewxq5qKMR/1fPXzAae88ZQjIMlDg7visF5CldWBgXGb3X8sZnwVDV
         dmLtq3elR/wI6w7HAIIz7K8mIBd1Os0V7Y+gLRYJ8pc/Hn3g1ajBJGfX+OO40/iN5Zw+
         NHZxLP0YO2vlmla8rJQEKxxaMj4ngIGJ9uhqWpun5c0w1l/yKLgvBhO3vr41zGgap2/x
         OQzGI/hdg9qcIwGn3ZoyHUlV5nmU8FMye1kS/e4BWfuG6AVE9f/0m7PBN9Zjx0QBHzo/
         msxYe6d/uSNI2hZKcdF1vdIzvXn8055MDbK4mzOgNQ7xb5aZfwHBOe2bSReY8f1bLDGi
         E0mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+77cwf5ldeMygsmAMxsat5SX525t1me3f0sArfWIE1c=;
        b=rt9sjpt1q6K+vHsElGKgzlHYxVRUClAg5FEv3+nOkddVUez4rXzrOcEIgShb3HGno8
         LYB26Z+p2WIjp4ENjbBMEWYu0K8n1UlRZRmdxrWbZATGq3InOmzWf1LCn+Qm8L1mvPI0
         s44CDSkb31z7i4Ddob+56AF5rbekYhFhfjDe7Ljbg3N5Fe5bNL3AvLIB2O2l4HMObLXB
         cZMCEiKy/71Alr/BEmKcokLzt4SbmNNQ/zyZdqjBBKtWM59lOqVITCoAsWgTYECB8p2U
         cLEiEnn+CrK87iBij2xEOREJhfhriQOzJkgbSvDIqWVHihuV7y/3tUEeYPg56msXDafT
         HMeg==
X-Gm-Message-State: AFqh2kpYiFMglbMSMZgkC1463blpO+gvuTqr517KsNOG+7a0hIdp/T7K
        ZUKmvVpTEGlzXs4DMS2OpIOtasiZ3XY=
X-Google-Smtp-Source: AMrXdXspPWZmbIl+Stkq4aa7omXAXoC4rIYfo5R+tChprjs0FjcGR1jte2lEhKrDRP1Vc96R9GMwmA==
X-Received: by 2002:a5d:69cd:0:b0:242:6b2f:4988 with SMTP id s13-20020a5d69cd000000b002426b2f4988mr37554635wrw.46.1673120842197;
        Sat, 07 Jan 2023 11:47:22 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id h2-20020adff182000000b0024246991121sm4505267wro.116.2023.01.07.11.47.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Jan 2023 11:47:21 -0800 (PST)
Message-ID: <742a9348-23b7-b3f1-099a-85d30e3eac61@gmail.com>
Date:   Sat, 7 Jan 2023 20:47:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v4 08/10] intro.3: wfix
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230107095518.3ix6hfbgig43tmkw@illithid>
 <814d00de-7ed7-0a7f-3b96-714c35591019@gmail.com>
In-Reply-To: <814d00de-7ed7-0a7f-3b96-714c35591019@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------33TRLWd9ZAtcA0AEVcPbiRhz"
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------33TRLWd9ZAtcA0AEVcPbiRhz
Content-Type: multipart/mixed; boundary="------------uzitF39QVnaaRqyNnkLSFY22";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <742a9348-23b7-b3f1-099a-85d30e3eac61@gmail.com>
Subject: Re: [PATCH v4 08/10] intro.3: wfix
References: <20230107095518.3ix6hfbgig43tmkw@illithid>
 <814d00de-7ed7-0a7f-3b96-714c35591019@gmail.com>
In-Reply-To: <814d00de-7ed7-0a7f-3b96-714c35591019@gmail.com>

--------------uzitF39QVnaaRqyNnkLSFY22
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQlJhbmRlbiwNCg0KT24gMS83LzIzIDEzOjQ1LCBBbGVqYW5kcm8gQ29sb21hciB3cm90
ZToNCj4gSGkgQnJhbmRlbiwNCj4gDQo+IE9uIDEvNy8yMyAxMDo1NSwgRy4gQnJhbmRlbiBS
b2JpbnNvbiB3cm90ZToNCj4+ICogVGlnaHRlbiBjcm9zcyByZWZlcmVuY2UuwqAgSXQgd2Fz
dGVzIHdvcmRzIHRvIHRlbGwgcGVvcGxlIHRvIGxvb2sNCj4+IMKgwqAgZWxzZXdoZXJlICJm
b3IgZnVydGhlciBpbmZvcm1hdGlvbiIuwqAgV2h5IGVsc2Ugd291bGQgdGhleSBsb29rIHRo
ZXJlPw0KPj4gKiBVc2UgcGFzc2l2ZSB2b2ljZSBsZXNzLg0KPj4gKiBSZWxvY2F0ZSBzZW50
ZW5jZSBmb3IgbW9yZSBjb2hlcmVudCBkaXNjdXNzaW9uLg0KPj4gKiBTYXkgImFwcGxpY2F0
aW9uIF9wcm9ncmFtbWluZ18gaW50ZXJmYWNlIi4NCj4gDQo+IEkgbm90aWNlZCB0aGF0IHdo
ZW4geW91IHNlbnQgaXQsIGJ1dCB0aG91Z2h0IHRoYXQgbWF5YmUgaXQgd2FzIGp1c3QgYW5v
dGhlciB3YXkgDQo+IG9mIHNheWluZyBpdC7CoCBEdWNrZHVja2dvIHNlZW1lZCB0byBoYXZl
IHNldmVyYWwgaW5zdGFuY2VzIG9mIHRoYXQgYWx0ZXJuYXRpdmUgDQo+IGV4cGFuc2lvbiBv
ZiBBUEksIHNvIEkgYWNjZXB0ZWQgaXQuwqAgSSdtIGN1cmlvdXMgYWJvdXQgImFwcGxpY2F0
aW9uIHByb2dyYW0gDQo+IGludGVyYWNlIiwgc2luY2UgSSBoYWRuJ3QgaGVhcmQgYWJvdXQg
aXQgYmVmb3JlIHlvdXIgcGF0Y2g7IGlzIGl0IGEgbm9ybWFsIA0KPiBleHBhbnNpb24gb2Yg
QVBJPw0KPiANCj4+DQo+PiBTaWduZWQtb2ZmLWJ5OiBHLiBCcmFuZGVuIFJvYmluc29uIDxn
LmJyYW5kZW4ucm9iaW5zb25AZ21haWwuY29tPg0KPiANCj4gUGF0Y2ggYXBwbGllZC4NCj4g
DQo+IENoZWVycywNCj4gDQo+IEFsZXgNCj4gDQoNClNlZSBhIGZldyBjb21tZW50cyBiZWxv
dyAoYXMgeW91IGFza2VkIGluIGFub3RoZXIgZW1haWwpLg0KDQpDaGVlcnMsDQoNCkFMZXgN
Cg0KPj4gLS0tDQo+PiDCoCBtYW4zL2ludHJvLjMgfCAyMyArKysrKysrKysrKystLS0tLS0t
LS0tLQ0KPj4gwqAgMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDExIGRlbGV0
aW9ucygtKQ0KPj4NCj4+IGRpZmYgLS1naXQgYS9tYW4zL2ludHJvLjMgYi9tYW4zL2ludHJv
LjMNCj4+IGluZGV4IGQ2ZDkxZjZiZC4uYmJhZWY1MjVlIDEwMDY0NA0KPj4gLS0tIGEvbWFu
My9pbnRyby4zDQo+PiArKysgYi9tYW4zL2ludHJvLjMNCj4+IEBAIC00Miw5ICs0Miw4IEBA
IG11c3QgYmUgZGVmaW5lZCBiZWZvcmUgaW5jbHVkaW5nDQo+PiDCoCAuSSBhbnkNCj4+IMKg
IGhlYWRlciBmaWxlcy4pDQo+PiDCoCBJbiBzdWNoIGNhc2VzLA0KPj4gLXRoZSByZXF1aXJl
ZCBtYWNybyBpcyBkZXNjcmliZWQgaW4gdGhlIG1hbiBwYWdlLg0KPj4gLUZvciBmdXJ0aGVy
IGluZm9ybWF0aW9uIG9uIGZlYXR1cmUgdGVzdCBtYWNyb3MsDQo+PiAtc2VlDQo+PiArdGhl
IHJlbGV2YW50IGZ1bmN0aW9uJ3MgbWFuIHBhZ2UgZGVzY3JpYmVzIHRoZSByZXF1aXJlZCBt
YWNyby4NCj4+ICtTZWUNCg0KT0suDQoNCj4+IMKgIC5CUiBmZWF0dXJlX3Rlc3RfbWFjcm9z
ICg3KS4NCj4+IMKgIC5cIg0KPj4gwqAgLlwiIFRoZXJlDQo+PiBAQCAtNzcsOSArNzYsMTYg
QEAgc2VlDQo+PiDCoCAuXCIgVmFyaW91cyBzcGVjaWFsIGxpYnJhcmllcy7CoCBUaGUgbWFu
dWFsIHBhZ2VzIGRvY3VtZW50aW5nIHRoZWlyIGZ1bmN0aW9ucw0KPj4gwqAgLlwiIHNwZWNp
ZnkgdGhlIGxpYnJhcnkgbmFtZXMuDQo+PiDCoCAuU1MgU3Vic2VjdGlvbnMNCj4+IC1TZWN0
aW9uIDMgb2YgdGhpcyBtYW51YWwgaXMgb3JnYW5pemVkIGludG8gc3Vic2VjdGlvbnMNCj4+
ICtUaGUgTGludXgNCj4+ICsuSSBtYW4tcGFnZXMNCg0KVGhlIExpbnV4IG1hbi1wYWdlcyBp
cyBhIHNpbmd1bGFyIG5vdW4gdGhhdCBkZW5vbWluYXRlcyB0aGUgcHJvamVjdC4gIFVzaW5n
IGl0IA0KYXMgYSBwbHVyYWwgbm91biB0aGF0IHJlZmVycyB0byB0aGUgcGFnZXMgY29udGFp
bmVkIGluIGl0IHNvdW5kcyB3ZWlyZC4NCg0KSSBmaW5kIHRoZSBuZXcgd29yZGluZyBtb3Jl
IGNvbmZ1c2luZyB0aGFuIHRoZSBvcmlnaW5hbC4NCg0KPj4gK29yZ2FuaXplIHNlY3Rpb24g
MyBpbnRvIHN1YnNlY3Rpb25zDQo+PiDCoCB0aGF0IHJlZmxlY3QgdGhlIGNvbXBsZXggc3Ry
dWN0dXJlIG9mIHRoZSBzdGFuZGFyZCBDIGxpYnJhcnkNCj4+IC1hbmQgaXRzIG1hbnkgaW1w
bGVtZW50YXRpb25zOg0KPj4gK2FuZCBpdHMgbWFueSBpbXBsZW1lbnRhdGlvbnMuDQo+PiAr
LklSIGxpYmMgJ3MNCj4+ICtkaWZmaWN1bHQgaGlzdG9yeSBmcmVxdWVudGx5IG1ha2VzIGl0
IGEgcG9vciBleGFtcGxlIHRvIGZvbGxvdw0KPj4gK2luIGRlc2lnbiwNCj4+ICtpbXBsZW1l
bnRhdGlvbiwNCj4+ICthbmQgcHJlc2VudGF0aW9uLg0KPj4gwqAgLklQIFwoYnUgMw0KPj4g
wqAgM2NvbnN0DQo+PiDCoCAuSVAgXChidQ0KPj4gQEAgLTg3LDExICs5Myw2IEBAIGFuZCBp
dHMgbWFueSBpbXBsZW1lbnRhdGlvbnM6DQo+PiDCoCAuSVAgXChidQ0KPj4gwqAgM3R5cGUN
Cj4+IMKgIC5QUA0KDQpUaGUgbGlzdCBvZiBzdWJzZWN0aW9ucyBzZWVtcyBtb3JlIGNvbm5l
Y3RlZCB0byAib3JnYW5pemUgc2VjdGlvbiAzIGludG8gDQpzdWJzZWN0aW9ucyIsIHJhdGhl
ciB0aGFuIHdpdGggdGhlIGNvbW1lbnQgYWJvdXQgbGliYydzIG9yZ2FuaXphdGlvbiBiZWlu
ZyBjcmFwLiANCiAgSSB0aGluayB0aGF0IGlzIGZpbmUgYWZ0ZXIgcmVhZGluZyB0aGUgbGlz
dCwgc3RhdGluZyB0aGF0IHdoYXQgeW91IGp1c3QgcmVhZCANCmlzIGNyYXAsIGJ1dCBuZWNl
c3NhcnkgY3JhcCBkdWUgdG8gbGliYydzIGhpc3RvcnkuDQoNCj4+IC1UaGlzIGRpZmZpY3Vs
dCBoaXN0b3J5IGZyZXF1ZW50bHkgbWFrZXMgaXQgYSBwb29yIGV4YW1wbGUgdG8gZm9sbG93
DQo+PiAtaW4gZGVzaWduLA0KPj4gLWltcGxlbWVudGF0aW9uLA0KPj4gLWFuZCBwcmVzZW50
YXRpb24uDQo+PiAtLlBQDQo+PiDCoCBJZGVhbGx5LA0KPj4gwqAgYSBsaWJyYXJ5IGZvciB0
aGUgQyBsYW5ndWFnZQ0KPj4gwqAgaXMgZGVzaWduZWQgc3VjaCB0aGF0IGVhY2ggaGVhZGVy
IGZpbGUNCj4+IEBAIC0xMDEsNyArMTAyLDcgQEAgYW5kIGV4cG9zZXMgb25seSBkYXRhIHR5
cGVzIGFuZCBjb25zdGFudHMgdGhhdA0KPj4gwqAgYXJlIHJlcXVpcmVkIGZvciB1c2Ugb2Yg
dGhvc2UgZnVuY3Rpb25zLg0KPj4gwqAgVG9nZXRoZXIsDQo+PiDCoCB0aGVzZSBhcmUgdGVy
bWVkIGFuIEFQSSBvcg0KPj4gLS5JUiAiYXBwbGljYXRpb24gcHJvZ3JhbSBpbnRlcmZhY2Ui
IC4NCj4+ICsuSVIgImFwcGxpY2F0aW9uIHByb2dyYW1taW5nIGludGVyZmFjZSIgLg0KDQpP
Sw0KDQo+PiDCoCBUeXBlcyBhbmQgY29uc3RhbnRzIHRvIGJlIHNoYXJlZCBhbW9uZyBtdWx0
aXBsZSBBUElzDQo+PiDCoCBzaG91bGQgYmUgcGxhY2VkIGluIGhlYWRlciBmaWxlcyB0aGF0
IGRlY2xhcmUgbm8gZnVuY3Rpb25zLg0KPj4gwqAgVGhpcyBvcmdhbml6YXRpb24gcGVybWl0
cyBhIEMgbGlicmFyeSBtb2R1bGUNCj4gDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJv
LWNvbG9tYXIuZXMvPg0K

--------------uzitF39QVnaaRqyNnkLSFY22--

--------------33TRLWd9ZAtcA0AEVcPbiRhz
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmO5zEgACgkQnowa+77/
2zKJpw//eEbXu+1Z91sbuVa2p3mDM/3uzWNWhYQ9wFTcWPNfSBDR8TJ3sVRxS0Mc
27dQv29Ck/4QtwXJ78Usy6K2dYDLJyJIdASpH868K4k4pl7eH/pp6BNlghAAfs5c
Ftep9+2C91oqBtOWGZ3QqKBHgxM8eXf8vpPXczYQIaC/ifG7SXEfRR4XuhU98qNo
4opxcavuC7SVeyiPheUYDloGu36NK7qqkJ/dYQGlUQaY/0j+UtOG30Np3qFiqYHt
KfcGy/JzW1WNDbw/FemvQ3MnxBlPynJaF2BtnWDWaHehhRF1x/XvF9cqFaZ8d1/l
lGuxL0Ofxm1IbKJTSth6glWHKXmqVu79k3JSbqLg3r6Yz6ugPGPtJ50UOvnWvOPb
AdGranw06Zi9r7YTyaZ4dzF2uSNWysrfIihYCzs9Yw/YRRzeHkzqnYlJfC3ygNpR
2Uwp+rkH2YeQBGDvJCZpWV4WZEU/oNvu46VM0y1/UkdyRdyc+1fiPTb3LuUrpxVi
dB7/e+UJ+oQzENFnE4PcoOb2jxuFQOz0lyLgJdXcKT6mp5UsVrDJe+yMzWvuDmxL
ZOSCD4OtplL99gLZkVtI0mVN+DpQyx8itGAcqt3H0ZkxTUNHoL+wJC3qCG+QWB51
bud8Hb5Hc73YsvuxIFj4JWxI1ntA8Ps6XjMCCktm056ptIHjMo0=
=qk9c
-----END PGP SIGNATURE-----

--------------33TRLWd9ZAtcA0AEVcPbiRhz--
