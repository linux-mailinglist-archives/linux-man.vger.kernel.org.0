Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B3BDA57E5B8
	for <lists+linux-man@lfdr.de>; Fri, 22 Jul 2022 19:37:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235110AbiGVRh1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 22 Jul 2022 13:37:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57968 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234864AbiGVRhZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 22 Jul 2022 13:37:25 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 762E78D5EC
        for <linux-man@vger.kernel.org>; Fri, 22 Jul 2022 10:37:24 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id j29-20020a05600c1c1d00b003a2fdafdefbso2882943wms.2
        for <linux-man@vger.kernel.org>; Fri, 22 Jul 2022 10:37:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=LNkn2qKCWW7d/xhZUQ3EAL7YsLMhAgRPXDCPvFF3YQg=;
        b=HflUiWsDf3azVqDAlBgwr/MtmQbL9zM5Pz8Ys/ceC1d2beqMlhhS2XXd9SNR8MQFeV
         m5PogMWo7WiBZlY8zrMgZldgOf+am182KebOTX7ckk7tF1pvJRX1jVAToXkdY8fVmvNx
         NTQ9dcJzkSCDOOgFGlG4iC7Pg4ZPTuZMpIQWJZvuVMvj1Znd/X6NDjMF9+UOxVNuzvZv
         PCOKCebvDNaTHgiSPUoS29E7P5z/UiQCHS5MsQ3GRyUWq2Q6ioiRrvybUOh7PzONYGrI
         X8Dcc1GRq9CUIUhc6ytnSX6tIe8B4UOvUMh3t0hCpkyvDgp6j+K84Z3WMehClUGgGljE
         JPhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=LNkn2qKCWW7d/xhZUQ3EAL7YsLMhAgRPXDCPvFF3YQg=;
        b=VghRrC3Bq7UhII3vIif6afLI7CkBYEoSURAhksS6u62c8ztl74/cpEYXWd3OyC8Dki
         EqQ8x009luoBfI4fiZl4Ent1zeZiRaQyOGCJv1a+Gc59wDvK05SiwtSRfLFg7lz7s56O
         vEOk324POUOtF0PtaOJwFGqL7PY9LSSevFaztnOS25rrjmb6tmED4ZsVlZfHcAW7Lw/W
         vLHN1jk6gY9CCeKOh1G3kH1rNWMtlxSbkZP1djc9aMghrcH2wGYfbSFiK3EPG2Nyo6Z3
         Fhh0MKnCXUKUx9JQZFQMfvHobghaYbOlOL+nW65qXpCrGVVQPPJt0aDAoxaoDDj8B6ca
         J5ig==
X-Gm-Message-State: AJIora+hn+jnSr6rQtU3Ol6hp5VzwjvoU1pl8mvD59fz6ZqMmIqR5bDa
        HUNRLqPCl3uEUwUmJABnHpM=
X-Google-Smtp-Source: AGRyM1vhdmAFnF7xQ+xckt+Cz9I9iXiZKdfS7l0hefcTKW5kdADoxZ+YMe9NuDJhaxvmnNUxWML0bg==
X-Received: by 2002:a05:600c:1c96:b0:3a3:10b6:e84f with SMTP id k22-20020a05600c1c9600b003a310b6e84fmr12886899wms.175.1658511442755;
        Fri, 22 Jul 2022 10:37:22 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id l4-20020a05600012c400b0021e4829d359sm5116492wrx.39.2022.07.22.10.37.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Jul 2022 10:37:21 -0700 (PDT)
Message-ID: <80553a14-8f39-d4ad-def3-35d6551a31f3@gmail.com>
Date:   Fri, 22 Jul 2022 19:37:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.2
Subject: Re: Linux man-pages Makefile portability
Content-Language: en-US
To:     Ingo Schwarze <schwarze@usta.de>
Cc:     linux-man@vger.kernel.org, g.branden.robinson@gmail.com
References: <d8646de0-e4f0-3d4b-e763-92355162a405@gmail.com>
 <Yq+P39bpy2QEeaSd@asta-kit.de>
 <8b9daa0e-6f08-dd55-5772-51f5052ed8bb@gmail.com>
 <YrB66rgFZqryrmpt@asta-kit.de>
 <6e294373-2661-286c-09c4-e67cd84103d7@gmail.com>
 <fdde7402-5e69-b6ff-60fc-74ad9c9054f1@gmail.com>
 <YtrXbDo5NVxNT/cb@asta-kit.de>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <YtrXbDo5NVxNT/cb@asta-kit.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------qScyx0xwAgZtknnfJXiBygo1"
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
--------------qScyx0xwAgZtknnfJXiBygo1
Content-Type: multipart/mixed; boundary="------------5WTEGNafHbcYf4qjlap9lYev";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Ingo Schwarze <schwarze@usta.de>
Cc: linux-man@vger.kernel.org, g.branden.robinson@gmail.com
Message-ID: <80553a14-8f39-d4ad-def3-35d6551a31f3@gmail.com>
Subject: Re: Linux man-pages Makefile portability
References: <d8646de0-e4f0-3d4b-e763-92355162a405@gmail.com>
 <Yq+P39bpy2QEeaSd@asta-kit.de>
 <8b9daa0e-6f08-dd55-5772-51f5052ed8bb@gmail.com>
 <YrB66rgFZqryrmpt@asta-kit.de>
 <6e294373-2661-286c-09c4-e67cd84103d7@gmail.com>
 <fdde7402-5e69-b6ff-60fc-74ad9c9054f1@gmail.com>
 <YtrXbDo5NVxNT/cb@asta-kit.de>
In-Reply-To: <YtrXbDo5NVxNT/cb@asta-kit.de>

--------------5WTEGNafHbcYf4qjlap9lYev
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSW5nbyENCg0KT24gNy8yMi8yMiAxODo1OSwgSW5nbyBTY2h3YXJ6ZSB3cm90ZToNClsu
Li5dDQo+Pj4gSSBjb25zaWRlcmVkWzZdIHVzaW5nIG1hbjN0eXBlLCBhbmQgdXNlZCBtYW4z
IGluIHRoZSBlbmQganVzdCBiZWNhdXNlDQo+Pj4gd2hlbiBpbiBkb3VidCBJIG9wdGVkIGZv
ciB0aGUgc21hbGxlc3QgY2hhbmdlLsKgIEtub3dpbmcgdGhhdCBpdCBicmVha3MNCj4+PiBt
YW5kb2MoMSksIEknbGwgZGVmaW5pdGVseSBtb3ZlIHRvIDxtYW4zdHlwZS8+Lg0KPiANCj4g
SSBkaWRuJ3QgbWVhbiB0byBzYXkgbWFuMy9pZF90LjN0eXBlICJicmVha3MgbWFuZG9jIi4g
IFF1aXRlIHRvIHRoZQ0KPiBjb250cmFyeSwgdGhlIGFib3ZlIHF1b3RhdGlvbiBleHBsYWlu
cyB0aGF0IG1hbmRvYyBjb3BlcyB3aXRoIGl0Lg0KDQpZZWFoLCBJIGRpZG4ndCBtZWFuIGJy
ZWFrIGFzIGluICJtYW5kb2MoMSkgZ29lcyBudXRzLCBvciBjcmFzaGVzIiwgYnV0IA0KcmF0
aGVyIGFzIGluICJpdCBkb2Vzbid0IGRvIHdoYXQgSSB3YW50ZWQgaXQgdG8gZG8iLg0KDQo+
IA0KPiBIb3dldmVyLCB3aGVuIGl0IGNvbWVzIHRvIHJvYnVzdG5lc3Mgd2l0aCByZXNwZWN0
IHRvICpvdGhlciogbWFuKDEpDQo+IGltcGxlbWVudGF0aW9ucyBhcGFydCBmcm9tIG1hbmRv
YyBhbmQgbWFuLWRiLCBpIHN1c3BlY3QgdGhlIG1vc3QNCj4gcG9ydGFibGUgYW5kIHJlbGlh
YmxlIHdheSBpcyB1c2luZyBtYW4xIC0gbWFuOSBvbmx5IHdpdGggbm8gc3VmZml4ZXMsDQo+
IGNvbnNpc3RlbnQgc3VmZml4ZXMgbGlrZSAibWFuM3R5cGUvaWRfdC4zdHlwZSIgYXJlIHBy
b2JhYmx5IG1lZGl1bQ0KPiBwb3J0YWJpbGl0eSBhbmQgbWVkaXVtIHJlbGlhYmlsaXR5LCBh
bmQgaW5jb25zaXN0ZW50IHN1ZmZpeGVzDQo+IGxpa2UgIm1hbjMvaWRfdC4zdHlwZSIgYW5k
ICJtYW4zdHlwZS9pZF90LjMiIGFyZSBsaWtlbHkgdGhlIGxlYXN0DQo+IHBvcnRhYmxlIGFu
ZCB0aGUgbW9zdCBmcmFnaWxlLg0KPiANCj4gU28geW91ciBjaGFuZ2UgaXMgYW4gaW1wcm92
ZW1lbnQuDQoNCjopDQoNCj4gDQo+IFRoZSBzeXN0ZW0gbWFraW5nIHRoZSBoZWF2aWVzdCB1
c2Ugb2Ygc2VjdGlvbiBzdWZmaXhlcyBpJ20gYXdhcmUgb2YNCj4gaXMgU29sYXJpczoNCj4g
DQo+ICAgID4gdW5hbWUgLWENCj4gICAgU3VuT1MgdW5zdGFibGUxMXMgNS4xMSAxMS4zIHN1
bjR1IHNwYXJjIFNVTlcsU1BBUkMtRW50ZXJwcmlzZQ0KPiAgICA+IGxzIC91c3Ivc2hhcmUv
bWFuLw0KPiAgICBlbnRpdGllcyAgICAgIG1hbjNkYXQgICAgICAgbWFuM212ZWMgICAgICBt
YW4zc3lzZXZlbnQgICAgbWFuNGINCj4gICAgZnIgICAgICAgICAgICBtYW4zZGF4ICAgICAg
IG1hbjNuc2wgICAgICAgbWFuM3RjbCAgICAgICAgIG1hbjUNCj4gICAgZnIuSVNPODg1OS0x
ICBtYW4zZGV2aWQgICAgIG1hbjNudnBhaXIgICAgbWFuM3RlY2xhICAgICAgIG1hbjVvbGRh
cA0KPiAgICBmci5VVEYtOCAgICAgIG1hbjNkZXZpbmZvICAgbWFuM29sZGFwICAgICBtYW4z
dGlmZiAgICAgICAgbWFuNW9wZW5zc2wNCj4gICAgaXQgICAgICAgICAgICBtYW4zZGxwaSAg
ICAgIG1hbjNvcGVuc3NsICAgbWFuM3Rzb2wgICAgICAgIG1hbjcNCj4gICAgaXQuSVNPODg1
OS0xICBtYW4zZG5zX3NkICAgIG1hbjNwICAgICAgICAgbWFuM3V1aWQgICAgICAgIG1hbjdk
DQo+ICAgIGl0LlVURi04ICAgICAgbWFuM2VsZiAgICAgICBtYW4zcGFtICAgICAgIG1hbjN2
b2xtZ3QgICAgICBtYW43ZnMNCj4gICAgamFfSlAuVVRGLTggICBtYW4zZXhhY2N0ICAgIG1h
bjNwY2FwICAgICAgbWFuM3ggICAgICAgICAgIG1hbjdpDQo+ICAgIG1hbi1pbmRleCAgICAg
bWFuM2V4dCAgICAgICBtYW4zcGVybCAgICAgIG1hbjN4MTEgICAgICAgICBtYW43aXBwDQo+
ICAgIG1hbi5jZiAgICAgICAgbWFuM2YgICAgICAgICBtYW4zcGkgICAgICAgIG1hbjN4YXUg
ICAgICAgICBtYW43bQ0KPiAgICBtYW4xICAgICAgICAgIG1hbjNmY29lICAgICAgbWFuM3Bp
Y2wgICAgICBtYW4zeGF3ICAgICAgICAgbWFuN29wZW5zc2wNCj4gICAgbWFuMWIgICAgICAg
ICBtYW4zZm0gICAgICAgIG1hbjNwaWNsdHJlZSAgbWFuM3hjYiAgICAgICAgIG1hbjdwDQo+
ICAgIG1hbjFjICAgICAgICAgbWFuM2ZzdHlwICAgICBtYW4zcGxvdCAgICAgIG1hbjN4Y29t
cG9zaXRlICBtYW44DQo+ICAgIG1hbjFtICAgICAgICAgbWFuM2dlbiAgICAgICBtYW4zcG9v
bCAgICAgIG1hbjN4Y3Vyc2VzICAgICBtYW44b2xkYXANCj4gICAgbWFuMW9sZGFwICAgICBt
YW4zZ3NzICAgICAgIG1hbjNwcm9jICAgICAgbWFuM3hjdXJzb3IgICAgIG1hbjhzDQo+ICAg
IG1hbjFvcGVuc3NsICAgbWFuM2hiYWFwaSAgICBtYW4zcHJvamVjdCAgIG1hbjN4ZXZpZSAg
ICAgICBtYW45DQo+ICAgIG1hbjFzICAgICAgICAgbWFuM2hlYWQgICAgICBtYW4zcmFkICAg
ICAgIG1hbjN4ZXh0ICAgICAgICBtYW45ZQ0KPiAgICBtYW4xdCAgICAgICAgIG1hbjNpc2Nz
aXQgICAgbWFuM3JlcGFyc2UgICBtYW4zeGkgICAgICAgICAgbWFuOWYNCj4gICAgbWFuMiAg
ICAgICAgICBtYW4za3N0YXQgICAgIG1hbjNyZXNvbHYgICAgbWFuM3hpbmVyYW1hICAgIG1h
bjlwDQo+ICAgIG1hbjMgICAgICAgICAgbWFuM2t2bSAgICAgICBtYW4zcnBjICAgICAgIG1h
bjN4bXUgICAgICAgICBtYW45cw0KPiAgICBtYW4zYXJjaGl2ZSAgIG1hbjNsYXlvdXQgICAg
bWFuM3Nhc2wgICAgICBtYW4zeG5ldCAgICAgICAgcGwNCj4gICAgbWFuM2MgICAgICAgICBt
YW4zbGRhcCAgICAgIG1hbjNzY2YgICAgICAgbWFuM3hyYW5kciAgICAgIHBsLklTTzg4NTkt
Mg0KPiAgICBtYW4zY19kYiAgICAgIG1hbjNsZ3JwICAgICAgbWFuM3NlYyAgICAgICBtYW4z
eHNzICAgICAgICAgcGwuVVRGLTgNCj4gICAgbWFuM2NjNCAgICAgICBtYW4zbGliICAgICAg
IG1hbjNzaXAgICAgICAgbWFuM3h0ICAgICAgICAgIHJ1LktPSTgtUg0KPiAgICBtYW4zY2Zn
YWRtICAgIG1hbjNtICAgICAgICAgbWFuM3NscCAgICAgICBtYW4zeHRzb2wgICAgICAgcnUu
VVRGLTgNCj4gICAgbWFuM2NtaSAgICAgICBtYW4zbWFpbCAgICAgIG1hbjNzbm1wICAgICAg
bWFuM3h0c3QgICAgICAgIHpoX0NOLlVURi04DQo+ICAgIG1hbjNjb21tcHV0aWwgbWFuM21h
bGxvYyAgICBtYW4zc29ja2V0ICAgIG1hbjN4dg0KPiAgICBtYW4zY29udHJhY3QgIG1hbjNt
bGliICAgICAgbWFuM3NycHQgICAgICBtYW4zeHhmODZ2bQ0KPiAgICBtYW4zY3BjICAgICAg
IG1hbjNtcCAgICAgICAgbWFuM3NzaDIgICAgICBtYW4zem9uZXN0YXQNCj4gICAgbWFuM2N1
cnNlcyAgICBtYW4zbXBhcGkgICAgIG1hbjNzdG1mICAgICAgbWFuNA0KDQpXb3chDQpBbHRo
b3VnaCBpdCdzIGludGVyZXN0aW5nIHRvIGtub3cgdGhhdCB0aGlzIGxpc3QgZXhpc3RzOg0K
SSBjYW4gY2hlY2sgaXQgd2hlbiB0cnlpbmcgdG8gY29tZSB1cCB3aXRoIGEgc2VjdGlvbiBu
YW1lLg0KDQpJIGd1ZXNzIElsbHVtb3Mgc2hhcmVzIHRoaXMgc3Vic2VjdGlvbmluZyBzY2hl
bWUuDQoNCkRvIHlvdSBrbm93IGZyb20gdGhlIHRvcCBvZiB5b3VyIGhlYWQgaWYgYW55IG9m
IHRob3NlIGlzIGRlZGljYXRlZCB0byANCmNvbnN0YW50cyBzdWNoIGFzIE5VTEwsIFBBVEhf
TUFYLCBvciBCVUZTSVo/DQoNCkluIG15IGdpdCBjbG9uZSBvZiBJbGx1bW9zLCBJIGNhbid0
IGZpbmQgYW55dGhpbmcgcmVsZXZhbnQ6DQoNCmFseEBhc3VzNTc3NTp+L3NyYy9pbGx1bW9z
JCBmaW5kICB8IGdyZXAgLWkgbnVsbCB8IGdyZXAgbWFuDQouL2lsbHVtb3MtZ2F0ZS91c3Iv
c3JjL21hbi9tYW45Zi9udWxsZGV2LjlmDQouL2lsbHVtb3MtZ2F0ZS91c3Ivc3JjL21hbi9t
YW40ZC9udWxsLjRkDQouL2lsbHVtb3MtZ2F0ZS91c3Ivc3JjL21hbi9tYW40ZC9udWxsZHJp
dmVyLjRkDQoNCg0KPiANCj4gSW5zaWRlIHRoZXNlIGRpcmVjdG9yaWVzLCB0aGV5IGFyZSAq
bW9zdGx5KiB1c2luZyB0aGUgY29udmVudGlvbg0KPiAia2VlcCBib3RoIHNlY3Rpb24gbmFt
ZXMgY29uc2lzdGVudCIsIHNvIGkgZG8gdGhpbmsgdGhhdCBpcyBnb29kDQo+IHRvIGZvbGxv
dy4gIEV2ZW4gU29sYXJpcyBpc24ndCBwZXJmZWN0IGluIHRoYXQgcmVzcGVjdCwgdGhvdWdo
LA0KPiB0aGV5IGhhdmUsIGZvciBleGFtcGxlLA0KPiANCj4gICAgL3Vzci9zaGFyZS9tYW4v
bWFuM2NjNC9jYXJ0cG9sLjMNCj4gDQo+IGJ1dCBvbiBmaXJzdCBzaWdodCwgaSBvbmx5IGZv
dW5kIGFib3V0IHR3byBkb3plbiBzdWNoIGV4YW1wbGVzLg0KPiANCj4+IEkgZml4ZWQgaXQ6
DQo+PiA8aHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2RvY3MvbWFuLXBhZ2VzL21h
bi1wYWdlcy5naXQvY29tbWl0Lz9pZD00NTFhMjdhNzhkNTE5NzNiMDFiZmI1ZDNiMWUwZWMw
ODFkOTE2MWUxPg0KPiANCj4gSSBkaWQgbm90IHNjcnV0aW5pemUgeW91ciBjaGFuZ2UgaW4g
ZGV0YWlsLCBidXQgaGFkIGEgYnJpZWYgbG9vayBhdCBpdA0KPiBhbmQgZGlkIG5vdCBzZWUg
YW55IG9idmlvdXMgcHJvYmxlbXMuDQo+IA0KPj4gQW5kIERlYmlhbiBzZWVtcyB0byB3b3Jr
IGZpbmUgd2l0aCBtYW4zdHlwZS8gYW5kIG1hbjJ0eXBlLyBvdXQgb2YgdGhlDQo+PiBib3gs
IHNvIEkgcHJlZmVyIGl0IHRoaXMgd2F5LiAgSSBob3BlIHRoYXQgb3RoZXIgcHJvamVjdHMg
Zm9sbG93IHRoZQ0KPj4gZXhhbXBsZTsgYW5kIHRoYXQgcGFja2FnZXJzL2Rpc3RyaWJ1dGlv
bnMgYWxzbyBjcmVhdGUgc3Vic2VjdGlvbg0KPj4gZGlyZWN0b3JpZXMsIGFuZCBkb24ndCB1
bmRvIG15IHdvcmsuDQo+IA0KPiBPbiBMaW51eCwgdW5kb2luZyBpdCB3b3VsZCBtYWtlIHZl
cnkgbGl0dGxlIHNlbnNlIHRvIG1lIGJlY2F1c2UgaSBleHBlY3QNCj4gdGhhdCBhbGwgbWFu
KDEpIHByb2dyYW1zIGNvbW1vbmx5IHVzZWQgb24gTGludXggY2FuIGNvcGUgd2l0aCBzZWN0
aW9uDQo+IHN1ZmZpeGVzLCBhbmQgaW4gcGFydGljdWxhciB3aXRoIGNvbnNpc3RlbnQgdXNl
IG9mIHNlc3Npb24gc3VmZml4ZXMuDQo+IEJlc2lkZXMsIHVuZG9pbmcgaXQgcHJvcGVybHkg
aXMgaGFyZGx5IHBvc3NpYmx5IGZvciBhIHBhY2thZ2VyLg0KPiBJZiB3b3VsZCByZXF1aXJl
IGNoYW5naW5nIGFsbCB0aGVzZToNCj4gDQo+ICAgLSBkaXJlY3RvcnkgbmFtZXMNCg0KSSBh
Y3R1YWxseSBtYWtlIGl0IGFzIGVhc3kgYXMgSSBjYW4gdG8gbW9kaWZ5IGRpcmVjdG9yeSBu
YW1lcyBpbiB0aGUgDQpNYWtlZmlsZSB0aHJvdWdoIHRoZSBzdGFuZGFyZCBHTlUgZGlyZWN0
b3J5IHZhcmlhYmxlcy4NCg0KPiAgIC0gZmlsZSBuYW1lcw0KDQpJIGRvbid0IGV4cGVjdCB0
aGVtIHRvIGNoYW5nZSBmaWxlbmFtZXMsIGV2ZW4gaWYgdGhleSBjaGFuZ2UgZGlycy4gIEl0
IA0Kd291bGRuJ3QgbWFrZSBzZW5zZSBhdCBhbGwuDQoNCj4gICAtIC5USCBtYWNyb3MNCg0K
VGhlIHNhbWUgYXMgZml0aCBmaWxlIG5hbWVzLiAgSSBleHBlY3QgdGhlbSB0byB3YW50IHRo
ZSBwYWdlcyB0byBiZSBpbiANCnN1YnNlY3Rpb25zLCBldmVuIGlmIHRoZXkgd291bGRuJ3Qg
bGlrZSB0aGUgZGlyZWN0b3J5IHN0cnVjdHVyZS4NCg0KPiAgIC0gYW5kIG1hbnVhbCBwYWdl
IGNyb3NzIHJlZmVyZW5jZXMNCg0KVGhhdCdzIGEgbW9yZSBkaWZmaWN1bHQgb25lLiAgVGhl
eSB3b3VsZCBuZWVkIHRvIHJ1biBhIHNlZCBzY3JpcHQgZm9yIA0KZXZlcnkgcmVsZWFzZS4g
IEEgZ29vZCByZWFzb24gdG8gbm90IG1vZGlmeSBpdC4NCg0KSWYgdGhleSBjaGFuZ2UgZGly
cyBhbmQgZG9uJ3QgY2hhbmdlIHRoaXMsIHRoZXknZCBicmVhayAuc28gbGlua3MuDQoNCj4g
DQo+IFNvIGZvciBiZXR0ZXIgb3Igd29yc2UsIHRoZSBvbmx5IHNhbmUgb3B0aW9uIGZvciBh
IHBhY2thZ2VzIGlzIHRvIGZvbGxvdw0KPiB5b3VyIGxlYWQuDQoNCjopDQoNCkNoZWVycywN
Cg0KQWxleA0KDQo+IA0KPiBZb3VycywNCj4gICAgSW5nbw0KDQotLSANCkFsZWphbmRybyBD
b2xvbWFyDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------5WTEGNafHbcYf4qjlap9lYev--

--------------qScyx0xwAgZtknnfJXiBygo1
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLa4EoACgkQnowa+77/
2zIeXw//f/8hoWbtEvrdnECjA0QncMWORZ9bvbTdLcibhNnCS/8EhQo53Pr3riAz
wBViLu+uyOl3/qxEhWYEA30560r8+shguMDhrtrQwdAUZGN/WKVnh09ThYwyNXJW
Iy1KicCe9K0+p08NR/RTCVvXtnQCzbJbUUVUKRS0wKAYreI88z3RF0QPyGhkUkYa
rBoyMV0LakGQ/9zQ7sNNEvXYBAkD3mfFf/q0SK6DbFeaWmFotHRsH4uhlorh/AGV
E8KR3raxWYHijkgqFj3VRc/bD7IXsFMY1kJRYt/y1Pso8uLhSoIvSNpY351gXQBw
uyRVgjpYeFg+OmKrJiT7+uyxZY2eCtjikqNNMrVIBSgEEhUXwfhBAfMAgBKMXCS0
BJtk7DzdCV6ZC0DEh1Sr0TNkiOfoKC3KDHD4+0KXOogC+uP/XSPps7aBTg051dRS
qDaXSd1DQgpMu2honyAMxK3LFTu/m8BnaAAdXQM1fBeKXRqUzhsx+ChziFvHLh9S
60Z9/0cwEk1ExQjChksy8mQRaFXcJmubB2BmbvO1Nw9FtC3avRXNIwDIYCLmRACh
Z5WSTIYO26aFsFXWZr98/pB7iFSkt2DJiCZef3pWh9oWGl3SFovQZeh2tYmBWPxq
K1rww/U8kd+I6kdHfdonyxyALpxgDSsEr7x6fhE/kut/P+Ivoag=
=Fm+t
-----END PGP SIGNATURE-----

--------------qScyx0xwAgZtknnfJXiBygo1--
