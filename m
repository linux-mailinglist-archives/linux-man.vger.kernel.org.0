Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0D9E25B37C6
	for <lists+linux-man@lfdr.de>; Fri,  9 Sep 2022 14:31:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229789AbiIIMbV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 9 Sep 2022 08:31:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55440 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229589AbiIIMbU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 9 Sep 2022 08:31:20 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53DA2FDB91
        for <linux-man@vger.kernel.org>; Fri,  9 Sep 2022 05:31:19 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id az24-20020a05600c601800b003a842e4983cso1229006wmb.0
        for <linux-man@vger.kernel.org>; Fri, 09 Sep 2022 05:31:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date;
        bh=DTTnonNljzLSdhTHl9qSLMZdLNI4/B9xinduJ6Bditc=;
        b=M06lakQxK1wPSCYqJhF3/FR4ClnU8Kd77Mokc26PB47ga4Rd+mYlGPMOBFiBwQwkzA
         tBz88t0ck/sfpX+OHqeosE1ykZqkp8eKgJy5NWGFBEO7QdvTZQhnCCxbxGNh3ik1EPXC
         H8IFIGMM/UCXiWk2CbtPyxx7Kr1nD+wYv+ReWYACBNwiKzI9DbtLmyWb1MpcGvxoEgxm
         /FRkO5SRlXtKr57ltQRPAJg4riQb/G9wfAzrjkOfQ7h7Z6Macow1ycX62NFa3mMlvSqf
         DPI71HQJCXZtm6n6X9ELEJs8fMOjT4mNfl6qhKTmZ2nSBx3Qt2L0fj02y1X7L+XwXjBQ
         psIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date;
        bh=DTTnonNljzLSdhTHl9qSLMZdLNI4/B9xinduJ6Bditc=;
        b=HFklULcXPLTRNDOgp9FBDwMhNd87x8fUcRSKSP1HWS77QnvWzn/r50NE2s16wMnshl
         7oS3cSOHpKJTiNeMbVS37ij+tyVUPi9I2hBj0NjtMQ08HwXC4guN/yKb830HiKTRg6os
         4z76I/Y7V8YZfQlIojRDCZmVMPbqAD26sa3HncqzqkVT8rdt+UdyOYhQYnXL23oLjLjF
         CEtBu2ST4XwyDxk1NAO8ovidzd71bsLSNzfnfiFtqc/cAfL70CLikie66xZxvzIt+BMU
         JmwP4OuuDi5PYMIZ62SCpLGQUJJ+hx9GsUvBY5NISwf8vCydUaeSxLhaJYCylR1WDnTj
         q/lQ==
X-Gm-Message-State: ACgBeo0UC8SIftPpXD0+q4WQKt7Ipb8TdLNchZCj0zJ4w3UI/RNAZe08
        dfDLonsO5WU5ON9jdhRaIK0=
X-Google-Smtp-Source: AA6agR56o14GKs18OnNpy7lLLjKo25pOQtkMYPeHZayoEbg1I+c9jYbkED8zPU7QIIwKgk28abHBhQ==
X-Received: by 2002:a05:600c:430c:b0:3a6:26e:88e8 with SMTP id p12-20020a05600c430c00b003a6026e88e8mr5224128wme.48.1662726677860;
        Fri, 09 Sep 2022 05:31:17 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id a12-20020a5d570c000000b00228dd80d78asm373212wrv.86.2022.09.09.05.31.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Sep 2022 05:31:17 -0700 (PDT)
Message-ID: <2fa3fc92-ac6d-0b49-3cc8-a668e5ac9246@gmail.com>
Date:   Fri, 9 Sep 2022 14:31:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.1
Subject: Re: [PATCH v2] _Generic.3: New page documenting _Generic()
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Florian Weimer <fweimer@redhat.com>
Cc:     linux-man@vger.kernel.org, JeanHeyd Meneide <wg14@soasis.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Ingo Schwarze <schwarze@usta.de>
References: <20220820171009.34196-1-alx.manpages@gmail.com>
 <20220821115506.22850-1-alx.manpages@gmail.com>
 <87mtbv4chu.fsf@oldenburg.str.redhat.com>
 <28eb6a53-7865-d75d-8903-77b63e09222d@gmail.com>
In-Reply-To: <28eb6a53-7865-d75d-8903-77b63e09222d@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------TOArQpIOJBxDmrTuUHP0kzdf"
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------TOArQpIOJBxDmrTuUHP0kzdf
Content-Type: multipart/mixed; boundary="------------vHbgBU3pq1NxyI6tK16X9ww0";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Florian Weimer <fweimer@redhat.com>
Cc: linux-man@vger.kernel.org, JeanHeyd Meneide <wg14@soasis.org>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Ingo Schwarze <schwarze@usta.de>
Message-ID: <2fa3fc92-ac6d-0b49-3cc8-a668e5ac9246@gmail.com>
Subject: Re: [PATCH v2] _Generic.3: New page documenting _Generic()
References: <20220820171009.34196-1-alx.manpages@gmail.com>
 <20220821115506.22850-1-alx.manpages@gmail.com>
 <87mtbv4chu.fsf@oldenburg.str.redhat.com>
 <28eb6a53-7865-d75d-8903-77b63e09222d@gmail.com>
In-Reply-To: <28eb6a53-7865-d75d-8903-77b63e09222d@gmail.com>

--------------vHbgBU3pq1NxyI6tK16X9ww0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gOS80LzIyIDIzOjE2LCBBbGVqYW5kcm8gQ29sb21hciB3cm90ZToNCj4gSGkgRmxvcmlh
biwNCj4gDQo+IE9uIDgvMjMvMjIgMDk6NTgsIEZsb3JpYW4gV2VpbWVyIHdyb3RlOg0KPj4g
Tm90ZSB0aGF0IHRoaXMgYXBwcm9hY2ggZG9lcyBub3QgcmVhbGx5IHdvcmsgdGhhdCB3ZWxs
IGluIHByYWN0aWNlDQo+PiBiZWNhdXNlIG1hY3JvcyB1c2luZyBfR2VuZXJpYyBleHBhbmQg
YWxsIHRoZSBhbHRlcm5hdGl2ZXMgKGluIGN1cnJlbnQNCj4+IGltcGxlbWVudGF0aW9uczsg
ZG9pbmcgdGhpcyBkaWZmZXJlbnRseSByZXF1aXJlcyBkZXZpYXRpbmcgZnJvbSB0aGUNCj4+
IGxheWVyZWQgaW1wbGVtZW50YXRpb24gc3RyYXRlZ3kgc3VnZ2VzdGVkIGluIHRoZSBDIHN0
YW5kYXJkKS7CoCBUaGlzDQo+PiBtZWFucyB0aGF0IF9HZW5lcmljLXVzaW5nIG1hY3JvcyBj
YW4gb25seSBiZSBuZXN0ZWQgbWF5YmUgdGhyZWUgb3IgZm91cg0KPj4gbGV2ZWxzIGRlZXAs
IGRlcGVuZGluZyBvbiB0aGUgbnVtYmVyIG9mIF9HZW5lcmljIGFsdGVybmF0aXZlcyBvbiBl
YWNoDQo+PiBsZXZlbC7CoCBGb3IgPHRnbWF0aC5oPiwgdGhpcyBpcyByZWFsbHkgbm90IGVu
b3VnaCwgc28gYSBoaWdoLXF1YWxpdHkNCj4+IGltcGxlbWVudGF0aW9uIG9mIDx0Z21hdGgu
aD4gdXNpbmcgX0dlbmVyaWMgaXMgbm90IGZlYXNpYmxlLsKgIEdDQw0KPj4gcHJvdmlkZXMg
X19idWlsdGluX3RnbWF0aCwgd2hpY2ggaXMgZGVzaWduZWQgaW4gc3VjaCBhIHdheSB0aGF0
IHdoZW4NCj4+IHVzZWQgaW4gYSBtYWNybywgdGhlIG1hY3JvIGFyZ3VtZW50IGlzIG9ubHkg
ZXhwYW5kZWQgb25jZS4NCj4+DQo+PiBNYXliZSBtZW50aW9uIHRoaXMgdW5kZXIgQlVHUz8N
Cj4+DQo+PiBDKysgdGVtcGxhdGVzIGRvIG5vdCBzdWZmZXIgZnJvbSB0aGlzIHBhcnRpY3Vs
YXIgcHJvYmxlbS4NCj4gDQo+IA0KPiBIZWgsIEkgZG9uJ3Qga25vdyBob3cgdGhpcyBkaWRu
J3Qgb29jdXIgdG8gbWUgYmVmb3JlLsKgIFdlbGwsIG1heWJlIGl0J3MgDQo+IGJlY2F1c2Ug
aXQncyBub24tc3RhbmRhcmQgKGJ1dCB0aGUgc3RhbmRhcmQgbWlnaHQgdmVyeSB3ZWxsIGJl
bmVmaXQgZnJvbSANCj4gYWRkaW5nIHRoaXMsIElNTykuDQo+IA0KPiBBbiBhbHdheXNfaW5s
aW5lIGZ1bmN0aW9uIHdpdGggbm8gZXh0ZXJuIGRlZmluaXRpb24gYmVoYXZlcyBhcyBpZiBp
dCANCj4gd2VyZSBhIG1hY3JvICh0cnlpbmcgdG8gdGFrZSBhIHBvaW50ZXIgdG8gaXQsIG9y
IHNvbWV0aGluZyB0aGF0IG5lZWRzIGEgDQo+IGxpbmtlciBzeW1ib2wsIHdpbGwgcmVzdWx0
IGluIGxpbmtlciBlcnJvcnMsIHdoaWNoIGlzIG5vdCB0aGUgbW9zdCANCj4gcmVhZGFibGUg
ZXJyb3IsIGJ1dCBnb29kIGVub3VnaCksIGluIHRoZSBzZW5zZSB0aGF0IGl0IGRvZXNuJ3Qg
aGF2ZSBBQkkgDQo+IGlzc3VlcywgYnV0IGhhcyB0aGUgYmVuZWZpdCBvZiBub3QgY3JlYXRp
bmcgY29kZSBleHBvbmVudGlhbGx5Lg0KPiANCj4gDQo+IENoZWVycywNCj4gDQo+IEFsZXgN
Cj4gDQo+IC0tLQ0KPiANCj4gZGlmZiAtLWdpdCBhL21hbjMvX0dlbmVyaWMuMyBiL21hbjMv
X0dlbmVyaWMuMw0KPiBpbmRleCBmM2RhZjk4YzEuLjNiZDVmMzA2YyAxMDA2NDQNCj4gLS0t
IGEvbWFuMy9fR2VuZXJpYy4zDQo+ICsrKyBiL21hbjMvX0dlbmVyaWMuMw0KPiBAQCAtMzAs
NyArMzAsOSBAQCBDMTEgYW5kIGxhdGVyLg0KPiAgwqBUaGUgZm9sbG93aW5nIHByb2dyYW0g
ZGVtb25zdHJhdGVzIGhvdyB0byB3cml0ZQ0KPiAgwqBhIHJlcGxhY2VtZW50IGZvciB0aGUg
c3RhbmRhcmQNCj4gIMKgLkJSIGltYXhhYnMgKDMpDQo+IC1mdW5jdGlvbiwgd2hpY2ggYmVp
bmcgYSBmdW5jdGlvbiBjYW4ndCByZWFsbHkgcHJvdmlkZSB3aGF0IGl0IHByb21pc2VzOg0K
PiArZnVuY3Rpb24sIHdoaWNoIGJlaW5nIGFuDQo+ICsuSSBleHRlcm4NCj4gK2Z1bmN0aW9u
IGNhbid0IHJlYWxseSBwcm92aWRlIHdoYXQgaXQgcHJvbWlzZXM6DQo+ICDCoHNlYW1sZXNz
bHkgdXBncmFkaW5nIHRvIHRoZSB3aWRlc3QgYXZhaWxhYmxlIHR5cGUuDQo+ICDCoC5QUA0K
PiAgwqAuXCIgU1JDIEJFR0lOIChfR2VuZXJpYy5jKQ0KPiBAQCAtMzksMTEgKzQxLDE2IEBA
IHNlYW1sZXNzbHkgdXBncmFkaW5nIHRvIHRoZSB3aWRlc3QgYXZhaWxhYmxlIHR5cGUuDQo+
ICDCoCNpbmNsdWRlIDxzdGRpby5oPg0KPiAgwqAjaW5jbHVkZSA8c3RkbGliLmg+DQo+IA0K
PiAtI2RlZmluZSBteV9pbWF4YWJzKGopwqAgX0dlbmVyaWMoSU5UTUFYX0MoMCkswqAgXGUN
Cj4gLcKgwqDCoCBsb25nOsKgwqDCoMKgwqDCoMKgwqDCoMKgIGxhYnMoaikswqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBcZQ0KPiAtwqDCoMKgIGxvbmcgbG9uZzrCoMKg
wqDCoMKgIGxsYWJzKGopwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBcZQ0K
PiAtIC8qIGxvbmcgbG9uZyBsb25nOiBsbGxhYnMoaikgKi/CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBcZQ0KPiAtKQ0KPiArW1tnbnU6OmFsd2F5c19pbmxpbmVdXQ0KPiAraW5saW5l
IGludG1heF90DQo+ICtteV9pbWF4YWJzKGludG1heF90IGopDQo+ICt7DQo+ICvCoMKgwqAg
cmV0dXJuIF9HZW5lcmljKGosDQo+ICvCoMKgwqDCoMKgwqDCoCBsb25nOsKgwqDCoMKgwqDC
oMKgwqDCoMKgIGxhYnMoaiksDQo+ICvCoMKgwqDCoMKgwqDCoCBsb25nIGxvbmc6wqDCoMKg
wqDCoCBsbGFicyhqKQ0KPiArwqDCoMKgwqAgLyogbG9uZyBsb25nIGxvbmc6IGxsbGFicyhq
KSAqLw0KPiArwqDCoMKgICkNCj4gK30NCj4gDQo+ICDCoGludA0KPiAgwqBtYWluKHZvaWQp
DQo+IA0KDQpIdWgsIGFsdGhvdWdoIHRoaXMgZ29lcyBiYWNrIGFnYWluIHRvIG1hY3Jvcywg
YW5kIHBvdGVudGlhbGx5IA0KZXhwb25lbnRpYWwgY29kZSwgSSB0aGluayBpdCdzIHF1aXRl
IGNsZWFuIGFuZCBtaW5pbWFsLCBhbmQgaGFzIHRoZSANCmJlbmVmaXQgdGhhdCBpdCBhbGxv
d3Mgb25lIHRvIHRha2UgcG9pbnRlcnM6DQoNCiQgY2F0IGdlbi5jDQojaW5jbHVkZSA8c3Rk
aW50Lmg+DQojaW5jbHVkZSA8c3RkaW8uaD4NCiNpbmNsdWRlIDxzdGRsaWIuaD4NCg0KI2Rl
ZmluZSBteV9pbWF4YWJzICBfR2VuZXJpYyhJTlRNQVhfQygwKSwgIFwNCiAgICAgICAgIGxv
bmc6ICAgICAgICAgICBsYWJzLCAgICAgICAgICAgICAgXA0KICAgICAgICAgbG9uZyBsb25n
OiAgICAgIGxsYWJzICAgICAgICAgICAgICBcDQogICAgICAvKiBsb25nIGxvbmcgbG9uZzog
bGxsYWJzICovICAgICAgICAgIFwNCikNCg0KaW50DQptYWluKHZvaWQpDQp7DQogICAgICAg
ICBvZmZfdCAgYTsNCg0KICAgICAgICAgYSA9IC00MjsNCiAgICAgICAgIHByaW50ZigiaW1h
eGFicyglamQpID09ICVqZFxuIiwgKGludG1heF90KSBhLCBteV9pbWF4YWJzKGEpKTsNCiAg
ICAgICAgIHByaW50ZigiJmltYXhhYnMgPT0gJXBcbiIsICZteV9pbWF4YWJzKTsNCiAgICAg
ICAgIHByaW50ZigiJmxhYnMgICAgPT0gJXBcbiIsICZsYWJzKTsNCiAgICAgICAgIHByaW50
ZigiJmxsYWJzICAgPT0gJXBcbiIsICZsbGFicyk7DQoNCiAgICAgICAgIGV4aXQoRVhJVF9T
VUNDRVNTKTsNCn0NCg0KJCBjYyAtV2FsbCAtV2V4dHJhIGdlbi5jDQokIC4vYS5vdXQNCmlt
YXhhYnMoLTQyKSA9PSA0Mg0KJmltYXhhYnMgPT0gMHg3ZmY1YWEyNDA3YTANCiZsYWJzICAg
ID09IDB4N2ZmNWFhMjQwN2EwDQombGxhYnMgICA9PSAweDdmZjVhYTI0MDdiMA0KDQoNCk5p
Y2UgZXhwZXJpbWVudCA6KQ0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KDQotLSANCjxodHRwOi8v
d3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------vHbgBU3pq1NxyI6tK16X9ww0--

--------------TOArQpIOJBxDmrTuUHP0kzdf
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmMbMg0ACgkQnowa+77/
2zKU5Q//euWPrIpkC42Clt6OcU/Lf0O6Er2N1pSP8Toz4YpFSFLm1yRpHS+asjjG
E/uoyP5A1k1BG2lN70x1xynlQlB6dTZ7gzcJWZPkW+I5x7VsyYAmXzaNYRCX0KUM
gtrAL0CbkefL2MoPQHtotGmXNHFyDMzmW6ULgyveM2OujBSytPW5Avv7Ec17MQXE
+MXa/4VVxOBFJDzCD9LsiqBgB7eyUeaiCImJpDaw+SR1u+7cwD/opzUctOZ6oKLF
Bum5ItozSoO4PhNdGAuwhtUbYNCp1Lhcg4w3asMC+9TCblfj/VpynY7OL6oCHLlQ
eIwmko1LaxavZ5xGrdeUzgYsUs+i/hlIhj0TctePfepoxDqJAn079coOInR81F4j
dXSI2l3ZNEeFpAFnOd/4qIDa0rzAFIGJj09t/R83LFAmlqSFkVvnQdzDYnICDFzv
gWR1I1u4hZV1oi6raSbAqggPp3fu1TfiSeoT0ghR5ztTRpLQfiL75RVORytVrY89
4pWxaTPXhWxnjHgFrNIRwS4vnDhhe1dsMWlMLV88r1NMSp7cS4qo5h5w94eYrbXS
658GYdvO+vOsQouEr9Oe0/YlwFu3DfwZ97yhsGoSokD+nA7l7NqiGCMoPUec8/Yh
6U9UpVjryiMmZJwr/C+fKp2RQAAj9TWK4eBt779WtBJn8iR0ruw=
=4WUG
-----END PGP SIGNATURE-----

--------------TOArQpIOJBxDmrTuUHP0kzdf--
