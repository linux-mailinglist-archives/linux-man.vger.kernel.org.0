Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F296564BF0C
	for <lists+linux-man@lfdr.de>; Tue, 13 Dec 2022 23:06:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236748AbiLMWGN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 13 Dec 2022 17:06:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57114 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236737AbiLMWGI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 13 Dec 2022 17:06:08 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23BC412774
        for <linux-man@vger.kernel.org>; Tue, 13 Dec 2022 14:06:05 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id o5-20020a05600c510500b003d21f02fbaaso2202477wms.4
        for <linux-man@vger.kernel.org>; Tue, 13 Dec 2022 14:06:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hNWvmA1Gm6+rmxadFNiO3s+jf0jDGtSUApJelfVkF1A=;
        b=Aji53ng/LNa3oPBc0FWMUwxH82lLFjrPZ3058J5ifxTjG04nWtblqJVGg15PPZZ6Xs
         P+Rd7oR45OWkXCXOOIjKa5+u1QQqyHOt0YIKS9DwMz41Ges2ZA9LpvxsJh+4a2+7DwX9
         h7hjwAJ3jy402priHN33lg4yYIq7CqTBj164APbeCxSZzoNkkP12GV2LmXq0v5V2H2aa
         MSIOeLxJndaLMnhUcr4LgAVFr5zakYpwsg40bJ+1kD7p/CE3LVDE3X2krdwtN9Ur7f4m
         4aQ5IfPp1soZnujwF440aBpHf0wxCRV49RgwfnoF1P2p1xeDNbXTq3iAzRLuRXBqny2Q
         opqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=hNWvmA1Gm6+rmxadFNiO3s+jf0jDGtSUApJelfVkF1A=;
        b=Pw64KFyfZ3H7tN97j6sOncjb/ee9nUrZWhcFhbt0RSBqjTcwSImgd35phw4bL7whYv
         iIVZPVe1W+0Sv2DrXpGOPMiMfn7wl0ozJuLWMkvss6/EEuWA2z2jXz5/6w6g6Jiwbp1S
         pTQ1NssJmwQe4vjcwUpMeYB/5KxWSDENo2E31EQ+f6Efi+f1o4vFlDwYLIbJr/d4g3Vf
         H1LWl0Dkf1HZga3jagsovfhQmlrJ1wdRCTPiQLh/wdnmOhXncOUSk+uV/FsyMLaZOV3i
         0BrHa2CKBLIVVJo2qgApC8pelDrFoujMasM2YQJCX1uwL8jwdfLzdVAeQ8H6rtszNWLN
         K8AA==
X-Gm-Message-State: ANoB5plXawTY5KnzNB1cMr9PPzjJYdgZRFdsSV4ZXND/TVcghPv6Jb5R
        6pGNztafcKvIJI80ztHdnNI=
X-Google-Smtp-Source: AA0mqf6oa2wCKg1Q03E/aDamz3TwNRkloBcKQw02AMXb/LalMfE+oJLcLmzSSXHE2fvtLOBCOiS4/w==
X-Received: by 2002:a05:600c:3d92:b0:3c6:e60f:3f4a with SMTP id bi18-20020a05600c3d9200b003c6e60f3f4amr17121829wmb.1.1670969163575;
        Tue, 13 Dec 2022 14:06:03 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id h16-20020a05600c415000b003c6b874a0dfsm113721wmm.14.2022.12.13.14.06.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Dec 2022 14:06:03 -0800 (PST)
Message-ID: <d2bef19a-5181-5852-2d14-e8a96600778d@gmail.com>
Date:   Tue, 13 Dec 2022 23:05:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v2 0/3] Rewrite strcpy(3)
Content-Language: en-US
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     linux-man@vger.kernel.org, Martin Sebor <msebor@redhat.com>
References: <20221212142418.27615-1-alx@kernel.org>
 <20221212230044.86105-1-alx@kernel.org>
 <20221213205634.fvqbvyjxqrnxdatd@jwilk.net>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221213205634.fvqbvyjxqrnxdatd@jwilk.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------1Yv3KtSr6ps5BoHmNENdTX2A"
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
--------------1Yv3KtSr6ps5BoHmNENdTX2A
Content-Type: multipart/mixed; boundary="------------hAkErBeT80owjmBrrXACc2aT";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jakub Wilk <jwilk@jwilk.net>
Cc: linux-man@vger.kernel.org, Martin Sebor <msebor@redhat.com>
Message-ID: <d2bef19a-5181-5852-2d14-e8a96600778d@gmail.com>
Subject: Re: [PATCH v2 0/3] Rewrite strcpy(3)
References: <20221212142418.27615-1-alx@kernel.org>
 <20221212230044.86105-1-alx@kernel.org>
 <20221213205634.fvqbvyjxqrnxdatd@jwilk.net>
In-Reply-To: <20221213205634.fvqbvyjxqrnxdatd@jwilk.net>

--------------hAkErBeT80owjmBrrXACc2aT
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSmFrdWIsDQoNCk9uIDEyLzEzLzIyIDIxOjU2LCBKYWt1YiBXaWxrIHdyb3RlOg0KPiBU
aGUgc2hlZXIgc2l6ZSBvZiB0aGlzIHBhZ2UgbWFrZSBpdCBhbG1vc3QgdW51c2FibGUgZm9y
IG1lLg0KPiBQbGVhc2UgZG9uJ3QgbWVyZ2UgaXQuDQo+IA0KPiAqIEFsZWphbmRybyBDb2xv
bWFyIDxhbHgubWFucGFnZXNAZ21haWwuY29tPiwgMjAyMi0xMi0xMyAwMDowMDoNCj4+IMKg
wqDCoMKgwqAgc3RwZWNweSgzKSwgc3RwZWNweXgoMykNCj4+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBOb3QgcHJvdmlkZWQgYnkgYW55IGxpYnJhcnkuDQo+IA0KPiBUaGVuIHRoZXkg
ZG9uJ3QgYmVsb25nIGluIHRoZSBtYW4tcGFnZXMgcHJvamVjdC4NCj4gDQo+PiDCoMKgwqDC
oMKgIHN0cnNjcHkoMykNCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBOb3QgcHJvdmlk
ZWQgYnkgYW55IGxpYnJhcnkuwqAgSXTCoCBpc8KgIGHCoCBMaW51eMKgIGtlcm5lbMKgIGlu
dGVybmFsDQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZnVuY3Rpb24uDQo+IA0KPiBE
aXR0by4NCg0KQW5kIHN0cmljdGx5IHNwZWFraW5nLCBJIHNob3VsZG4ndCBkb2N1bWVudCBz
dHJsY3B5KDNic2QpIGFuZCBzdHJsY2F0KDNic2QpIA0KZWl0aGVyIGJlY2F1c2UgdGhleSdy
ZSBub3QgcHJvdmlkZWQgYnkgb3VyIGxpYmM7IGxpYmJzZCBhbHJlYWR5IGhhcyBtYW51YWwg
cGFnZXMgDQpmb3IgdGhlbSwgYW55d2F5Lg0KDQpSZWdhcmRpbmcgdGhpcywgdGhlIGludGVu
dGlvbiBvZiB0aGUgcGFnZSBpcyBub3QgdG8gY29sZGx5IGRvY3VtZW50IHRoZSBiZWhhdmlv
ciANCm9mIGZ1bmN0aW9ucyBpbiB0ZXJtcyBvZiB0aGUgYnl0ZSBvcGVyYXRpb25zIHRoZXkg
cGVyZm9ybS4gIFRoYXQncyB3aGF0IGhhcyBiZWVuIA0KZG9uZSB1bnRpbCBub3csIGFuZCB0
aGUgcmVzdWx0IGlzIHdoYXQgd2Uga25vdzogbWFueSBzdHJpbmcgY29weSBmdW5jdGlvbnMg
YXJlIA0KZHJlYWRlZCAoZS5nLiwgc3RybmNweSgzKSksIGJlY2F1c2UgbW9zdCBwcm9ncmFt
bWVycyBkb24ndCB1c2UgdGhlbSBjb3JyZWN0bHkuDQoNClRoaXMgbmV3IHBhZ2UgaW5zdGVh
ZCwgc2hvd3MgYWxsIHN0cmluZyBjb3B5aW5nIGZ1bmN0aW9ucywgaW5jbHVkaW5nIHRob3Nl
IA0KZGV2ZWxvcGVkIGJ5IG90aGVyIHN5c3RlbXMgYXMgYWx0ZXJuYXRpdmVzIHRvIHRoZSBz
dGFuZGFyZCBvbmVzLiAgVGhleSBkaWQgaXQgDQpmb3IgYSByZWFzb246IHRoZSBzdGFuZGFy
ZCBmdW5jdGlvbnMgZG9uJ3QgY292ZXIgYWxsIHVzZSBjYXNlcywgYW5kIHRoZXJlJ3MgYSAN
Cm5lZWQgdG8gcm9sbCB5b3VyIG93bi4gIEJ1dCByb2xsaW5nIHlvdXIgb3duIGlzIGJhZC4g
IEl0J3MgYmV0dGVyIGlmIHNvbWVvbmUgDQpleHBsYWlucyB3aGF0IGFsdGVybmF0aXZlIHN0
cmluZyBjb3B5IGZ1bmN0aW9ucyBleGlzdCwgd2hlbiB0aGV5IGFyZSBtb3JlIA0KYXBwcm9w
cmlhdGUgdGhhbiBsaWJjIG9uZXMsIGFuZCB3aGVuIHRoZXkgYXJlIG5vdC4gIEV2ZW4gdGhl
IG9sZCBwYWdlcyANCmRvY3VtZW50ZWQgc3RybGNweSgzKSBhIGxpdHRsZSBiaXQhDQoNCkkg
c3VnZ2VzdCBmb3IgYSBmaXJzdCByZWxlYXNlIHVzaW5nIHRoZSBuZXcgcGFnZSBzdHJpbmdf
Y29weSg3KS4gIEknbGwgcmV3cml0ZSANCmFueXdheSBzdHJjcHkoMykgYW5kIGFsbCBvdGhl
cnMgdG8gYmUgbWluaW1hbCwgX2FuZF8gYmUgcmVkdWN0aW9ucyBvZiANCnN0cmluZ19jb3B5
KDcpLCBmb3IgZmFzdCBsb29rdXAuDQoNCkNoZWVycywNCg0KQWxleA0KDQoNCg0KLS0gDQo8
aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------hAkErBeT80owjmBrrXACc2aT--

--------------1Yv3KtSr6ps5BoHmNENdTX2A
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOY9z8ACgkQnowa+77/
2zINgQ//WPDcaLlzj+Yp+uKlNApXGHva+Uw6tabNL7tt4hHHknQIzNaAtA5AAn4M
j6m2rLvvUyw+3qyXgLiS4L524IjsstGfxtH9veIUudHLuDYJHSxcLMP83S4iBTN0
B+cN+mFUKlpexEajztYxwyT8s9kjJWfhnNdXuzGETwVrC3EeqoEYWWMQ4lwKKdYR
gX/a413FMjnPfkYK89q/fg178nSTBDR/OldJcTOF/y42usv7JCUdsfQJ9Z31UO/z
4qudX7Az+AcyUbFTz4cHGvXu28lWwZAJyBfuyxxvnYEw/+fVBYpO2YWTxPZVuww4
x74CBlo1K8wYMOvqNNImYHO8K+9mvlJHVO8hZF+tsvuOJyBSx9HO5p5kr71fcMLF
LMuE0A0JYKFpdgoVOhGlRL2D9beSAu5+Y7oMJsxj21dUegr9CbfbcDVDX0E0lu+6
SZ8F+HOZW6WkJXxS435FsC2VIpBTtAQzcgwn37BYCuY+qTy38vouCnatDDLgfwH4
l7AslXZx7Wc4Xes4s9eymHa5cB0spnAlFUhW+z74s756xy5Tea9YdDQGtKibEvJA
tLyoJhRyKl3jzHPQ1ChlTvORhmjdTjGZS/Ga1JN2WmInDI9B48JV3fR5xlg0pogU
8zsvjlcJBTTM8EgSISpq7baHprf8TCRcTZde4wBRWQRVKDAsFqw=
=2QXV
-----END PGP SIGNATURE-----

--------------1Yv3KtSr6ps5BoHmNENdTX2A--
