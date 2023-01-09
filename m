Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DD255662538
	for <lists+linux-man@lfdr.de>; Mon,  9 Jan 2023 13:15:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234641AbjAIMO6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 9 Jan 2023 07:14:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237200AbjAIMO5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 9 Jan 2023 07:14:57 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B41D513E34
        for <linux-man@vger.kernel.org>; Mon,  9 Jan 2023 04:14:55 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id z8-20020a05600c220800b003d33b0bda11so7025136wml.0
        for <linux-man@vger.kernel.org>; Mon, 09 Jan 2023 04:14:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xSIYKu15eq+Y5vcHSE9k11eiE2xTj4P+q9R6LYzwoA4=;
        b=Ay51mLmSGsNlj02Lq1wUBO4vcHbkiaT6WERCADQQHszbNvwi5Km0joyIX7uGTMnRes
         b1MmRm1MIk9YWFKtMYJzl8SKVy+cX3kqsNEs7QRx5wzcRRyrknLQ0pxJ1Z+hg5B/tSyG
         VUG/2w+KCpgJx021+wECl5o7ko2JfHNKAd+tCBoJSlZmA5pQyDN9KE4undE7d2aie5yv
         nZvl42iv/U5JlUkdd+TLTXJVsGzijo4/+iV0VMwIep8AKjrbs6Gr7KUKHtIitJqpLUQ/
         v+CbMwMvAVkI3ZWmCUuRcqmu/wfABPezrEVSV2nrjrYQYvFf8wgE1kP59lzvh+uir+s1
         XSZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xSIYKu15eq+Y5vcHSE9k11eiE2xTj4P+q9R6LYzwoA4=;
        b=SVXN83BPeOYuRA55aaXs/XE8hPx/yqAqZR4BkfCARwSfJfhKKOve1nRm1uMhh/kAcf
         pQBD/+tfXx1rM2bE2vx3QFfDEanPOc+Dg7a9BQIi2tajrUDyI6w7ZKA1yDeUihjLFE3v
         Uvm2I3dlmxBO75/+pJNocYPrYJc8KUca3j6ob4BPMLGFoRpbW/+6xwYQsd9iU6OPFuoe
         j+x2n1fJPSu5Pm++FIvrQ62hRV9U3dAfJFkSp349Sxw4hRK/ei1Fbb142QhcnF1UJHJQ
         eCHwSSzNELSBhFcd8FNQbGszxU/pRh9FOA6INcAeBjnpeNCYl3ObLBQUSd1Ar5+hZDwu
         iTJw==
X-Gm-Message-State: AFqh2kodRomCjzXqrIldO+8AlK12LOO+QP6osiCl7jM7HtdrnsrIX2oG
        teWwh1zDQXI4C8i1C3OmrnHRRukwmCQ=
X-Google-Smtp-Source: AMrXdXtoIhg3tKYOHNZZV6gYCY+5dSOUzOS/2T6KqdhugaQLZS8bZSxPImy76xlVbDuET1JQmFLUJQ==
X-Received: by 2002:a05:600c:22cc:b0:3d1:bd81:b1b1 with SMTP id 12-20020a05600c22cc00b003d1bd81b1b1mr45386505wmg.18.1673266494302;
        Mon, 09 Jan 2023 04:14:54 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id t12-20020a05600c198c00b003d9de0c39fasm13692193wmq.36.2023.01.09.04.14.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Jan 2023 04:14:53 -0800 (PST)
Message-ID: <d6ffff8f-8113-9cd7-06df-682776a5a660@gmail.com>
Date:   Mon, 9 Jan 2023 13:14:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v4 08/10] intro.3: wfix
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230107095518.3ix6hfbgig43tmkw@illithid>
 <814d00de-7ed7-0a7f-3b96-714c35591019@gmail.com>
 <742a9348-23b7-b3f1-099a-85d30e3eac61@gmail.com>
 <20230108230800.yjdtzqjmmhzvmjw6@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230108230800.yjdtzqjmmhzvmjw6@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------xmo2cLIaABvVqYUzjKvvSwus"
X-Spam-Status: No, score=-0.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URI_DOTEDU autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------xmo2cLIaABvVqYUzjKvvSwus
Content-Type: multipart/mixed; boundary="------------kbZ2TZ6zDgIN9Nm1JyDhdMtV";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <d6ffff8f-8113-9cd7-06df-682776a5a660@gmail.com>
Subject: Re: [PATCH v4 08/10] intro.3: wfix
References: <20230107095518.3ix6hfbgig43tmkw@illithid>
 <814d00de-7ed7-0a7f-3b96-714c35591019@gmail.com>
 <742a9348-23b7-b3f1-099a-85d30e3eac61@gmail.com>
 <20230108230800.yjdtzqjmmhzvmjw6@illithid>
In-Reply-To: <20230108230800.yjdtzqjmmhzvmjw6@illithid>

--------------kbZ2TZ6zDgIN9Nm1JyDhdMtV
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KT24gMS85LzIzIDAwOjA4LCBHLiBCcmFuZGVuIFJvYmluc29uIHdy
b3RlOg0KPiBIaSBBbGV4LA0KPiANCj4gQXQgMjAyMy0wMS0wN1QyMDo0NzoyMCswMTAwLCBB
bGVqYW5kcm8gQ29sb21hciB3cm90ZToNCj4+IFNlZSBhIGZldyBjb21tZW50cyBiZWxvdyAo
YXMgeW91IGFza2VkIGluIGFub3RoZXIgZW1haWwpLg0KPj4+PiArVGhlIExpbnV4DQo+Pj4+
ICsuSSBtYW4tcGFnZXMNCj4+DQo+PiBUaGUgTGludXggbWFuLXBhZ2VzIGlzIGEgc2luZ3Vs
YXIgbm91biB0aGF0IGRlbm9taW5hdGVzIHRoZSBwcm9qZWN0Lg0KPj4gVXNpbmcgaXQgYXMg
YSBwbHVyYWwgbm91biB0aGF0IHJlZmVycyB0byB0aGUgcGFnZXMgY29udGFpbmVkIGluIGl0
DQo+PiBzb3VuZHMgd2VpcmQuDQo+IA0KPiBJbiBFbmdsaXNoIHRoaXMgaXMgYSBzbGlwcGVy
eSBhcmVhLiAgSW4gVS5TLiBFbmdsaXNoIG5vdW5zIHJlZmVycmluZyB0bw0KPiBjb2xsZWN0
aW9ucyB0ZW5kIHRvIGJlIHNpbmd1bGFyaXplZCwgd2hlcmVhcyBpbiBDb21tb253ZWFsdGgg
RW5nbGlzaA0KPiB0aGV5IHRlbmQgdG8gdGhlIHBsdXJhbCwgYnV0IGV4Y2VwdGlvbnMgYXJl
IHNlZW4gaW4gYm90aCBkaWFsZWN0c1sxXSBhbmQNCj4gdGhlIG1lYW5pbmcgaXMgdXN1YWxs
eSBjbGVhci4NCg0KQWhoLCBkaWRuJ3Qga25vdyB0aGF0IGFib3V0IENvbW1vbndlYWx0aCBF
bmdsaXNoLiAgSSdtIHdheSBtb3JlIHVzZWQgdG8gVVMgDQpFbmdsaXNoIChhbmQgdGhlIG1h
bi1wYWdlcyBhbHNvIHVzZXMgVVMpLg0KDQo+IA0KPj4gSSBmaW5kIHRoZSBuZXcgd29yZGlu
ZyBtb3JlIGNvbmZ1c2luZyB0aGFuIHRoZSBvcmlnaW5hbC4NCj4gDQo+IEknbGwgcmVjYXN0
LCB0aGVuLg0KPiANCj4+Pj4gK29yZ2FuaXplIHNlY3Rpb24gMyBpbnRvIHN1YnNlY3Rpb25z
DQo+Pj4+ICDCoCB0aGF0IHJlZmxlY3QgdGhlIGNvbXBsZXggc3RydWN0dXJlIG9mIHRoZSBz
dGFuZGFyZCBDIGxpYnJhcnkNCj4+Pj4gLWFuZCBpdHMgbWFueSBpbXBsZW1lbnRhdGlvbnM6
DQo+Pj4+ICthbmQgaXRzIG1hbnkgaW1wbGVtZW50YXRpb25zLg0KPj4+PiArLklSIGxpYmMg
J3MNCj4+Pj4gK2RpZmZpY3VsdCBoaXN0b3J5IGZyZXF1ZW50bHkgbWFrZXMgaXQgYSBwb29y
IGV4YW1wbGUgdG8gZm9sbG93DQo+Pj4+ICtpbiBkZXNpZ24sDQo+Pj4+ICtpbXBsZW1lbnRh
dGlvbiwNCj4+Pj4gK2FuZCBwcmVzZW50YXRpb24uDQo+Pj4+ICDCoCAuSVAgXChidSAzDQo+
Pj4+ICDCoCAzY29uc3QNCj4+Pj4gIMKgIC5JUCBcKGJ1DQo+Pj4+IEBAIC04NywxMSArOTMs
NiBAQCBhbmQgaXRzIG1hbnkgaW1wbGVtZW50YXRpb25zOg0KPj4+PiAgwqAgLklQIFwoYnUN
Cj4+Pj4gIMKgIDN0eXBlDQo+Pj4+ICDCoCAuUFANCj4+DQo+PiBUaGUgbGlzdCBvZiBzdWJz
ZWN0aW9ucyBzZWVtcyBtb3JlIGNvbm5lY3RlZCB0byAib3JnYW5pemUgc2VjdGlvbiAzDQo+
PiBpbnRvIHN1YnNlY3Rpb25zIiwgcmF0aGVyIHRoYW4gd2l0aCB0aGUgY29tbWVudCBhYm91
dCBsaWJjJ3MNCj4+IG9yZ2FuaXphdGlvbiBiZWluZyBjcmFwLiAgSSB0aGluayB0aGF0IGlz
IGZpbmUgYWZ0ZXIgcmVhZGluZyB0aGUgbGlzdCwNCj4+IHN0YXRpbmcgdGhhdCB3aGF0IHlv
dSBqdXN0IHJlYWQgaXMgY3JhcCwgYnV0IG5lY2Vzc2FyeSBjcmFwIGR1ZSB0bw0KPj4gbGli
YydzIGhpc3RvcnkuDQo+IA0KPiBJdCByZWFkIG1vcmUgcG9vcmx5IHRvIG1lIHRoYXQgd2F5
LiAgTXkgcHJlc2VudGF0aW9uIHdhcyBncm91bmRlZCBvbiBteQ0KPiByZWNvbGxlY3Rpb24g
dGhhdCB3ZSBhZ3JlZWQgdGhhdCB0aGVzZSBuZXcgc3Vic2VjdGlvbnMgb2YgeW91cnMgd291
bGQNCj4gbm90IGJlIG5lY2Vzc2FyeSBpZiB0aGUgc3RhbmRhcmQgQyBsaWJyYXJ5IHdlcmUg
bm90ICgxKSBodWdlIGFuZCAoMikNCj4gZGlzb3JnYW5pemVkLg0KDQpJIHN0aWxsIGFncmVl
IG9uIHRoYXQuICBIb3dldmVyLCB0aGluayBhYm91dCBhIHJlYWRlcjogaXQgd2hlbiBpdCdz
IHJlYWRpbmcgdGhlIA0KbGlzdCwgaXQgbmVlZHMgdG8gcmVtZW1iZXIgdGhhdCB5b3Ugc2Fp
ZCB0d28gcGFyYWdyYXBocyBhYm92ZSB0aGF0IHlvdSB3ZXJlIA0KZ29pbmcgdG8gc2hvdyBh
IGxpc3QuICBJZiB0aGUgbGlzdCBpcyBzaG93biByaWdodCBhZnRlciB5b3Ugc2F5IHlvdSdy
ZSBnb2luZyB0byANCnNob3cgaXQsIHRoZXJlJ3MgbGVzcyBjb2duaXRpdmUgbG9hZCwgaXNu
J3QgaXQ/DQoNCkNoZWVycywNCg0KQWxleA0KDQo+IA0KPiBJJ2xsIHRha2UgYW5vdGhlciBj
cmFjayBhdCBpdCwgc3VwcGx5aW5nIGEgYml0IG1vcmUgbW90aXZhdGlvbiBidXQNCj4gdHJ5
aW5nIG5vdCB0byByZWNhcGl0dWxhdGUgb3VyIGRpc2N1c3Npb24sIHdoaWNoIGRvZXNuJ3Qg
ZGVtYW5kIHRoYXQNCj4gZGVncmVlIG9mIHByZXNlcnZhdGlvbi4gIDpQDQo+IA0KPiBSZWdh
cmRzLA0KPiBCcmFuZGVuDQo+IA0KPiBbMV0gaHR0cHM6Ly9sYW5ndWFnZWxvZy5sZGMudXBl
bm4uZWR1L25sbC8/cD04NzcNCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21h
ci5lcy8+DQo=

--------------kbZ2TZ6zDgIN9Nm1JyDhdMtV--

--------------xmo2cLIaABvVqYUzjKvvSwus
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmO8BTwACgkQnowa+77/
2zIWXg//YJh8DV2UtGlRcLqRr9OFqboHEobeW/lC9UZXNN6LsBJn94G/Vs4PSaHf
UKn8rXK5OOmWQVNnWeuqGoqfEECiFAQtEGCupY/jCM5LuSEAGnE42vFx1b463z4/
6MImVFtVwYzu3d/kqB2hY8j5H0amYJA2oExr9qWi5gthQDxvmoVTId367rjhxi9d
mUhJq6EWfDWh23G6ZIvR3Wcu9uS45tyx9pRLQDN4G5+/OPiqVBdkyjp2diC62VQr
PA9408AMTtVMqDfJ/235WJbbfi2OUdBcCEWHE3DPPADOg3HJfEQGDv/HkmS1C/DZ
BSu/r5m/3K9kFn9eBpenBzApUroad3xBwMO6dAfNwpp/qfLaQqef+UR31VaF+jhE
tLdtlYBa8tbyrXKtaeBR+7qP+9IZu0Mhwe5GDj7eSXjM5exMsCmLO3nJLwT/h26m
/ZFympf8YQctSuht/7OrUxPC/UmJvXO+9m5KHpXqMUPp9bHpmoG4chHEHIYl01eR
dcKrvVlBuc69X2vl9DkxV9ykXHMIVMMzl9batQIpLKmnGycgz59ZrIZgXG/LZfKR
1RF0sMCU2usALNBMOh9IEl46WPUGFjvjUfIUGI8Ui3lLMWJiYvVoSQvmc+HKFHnx
QM6AgcRuw/VvegseY6l/hpGjsxIhLEJnusboALZ7QFqkLbL/j2U=
=3CzP
-----END PGP SIGNATURE-----

--------------xmo2cLIaABvVqYUzjKvvSwus--
