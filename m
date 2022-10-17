Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 559C3600D57
	for <lists+linux-man@lfdr.de>; Mon, 17 Oct 2022 13:03:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230434AbiJQLDR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 17 Oct 2022 07:03:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46538 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230469AbiJQLCv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 17 Oct 2022 07:02:51 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D1F72791D
        for <linux-man@vger.kernel.org>; Mon, 17 Oct 2022 04:02:13 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id w18so17877563wro.7
        for <linux-man@vger.kernel.org>; Mon, 17 Oct 2022 04:02:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zgxHCRYQL0akanRL5qtIPeTBwQ+fhQMcI24My9kVfks=;
        b=I6gCIvqSTGNS6Saswewf0Jua3QWUSDSBwwXyyeu5aldppEWANyNyHWiDU2MBpkINxh
         3ymuwO+ul0805kD3xWP/T/WnfLveAdirDwrwXQJNIpym9MBv+erzcVF4dzmIEgoAhV/t
         kkN/S1CVXampqVJxV01ITbsjaim2cIkeHynVgc2nrvkqKCh0N3cQofXW4FwCEGhylAgd
         ea1SzqzX6RTfUQW4eLXGVJ4/trrX3MZVRG66P/NvXvSw+NCp+uPApxjimVjXqcHI3M0k
         tPWKIVheNd19k1Z/fE9u/lFofqDV6fKzk/DZlbAWSpObpoRfAR0Ui1/61GefjzrbtsuV
         jbgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zgxHCRYQL0akanRL5qtIPeTBwQ+fhQMcI24My9kVfks=;
        b=tDmN+PwhBQLZNB0oMqzKcX+PKdk1CkpcXzLHj8FSuaWjpjOS71KNEbxN8SooqzpEEZ
         DW0abR2zFUIaygEATsmMMgxhCy1ynwnJqgSqkctiS0SSLagzhGrJrv98lV48RUFiAGKJ
         ahYPgkw4RnuTa0/Q+2HGVmpD8cfDuLENM2MNLxC4ZOi26I/ofDwIvU8+/VBaC/3W7gC4
         LJOLLK/uTUlIMsdFj8mPRaUMHJUMN6cL6K04P26doQnvQraYTUxC54Me+ixDBxrIYaWE
         /JVrs/TropukafAUQyuRRWpAGMroaP//JrMWO7WiHe/kGbiqF4av/CcB9RweNZReo0Ge
         62mg==
X-Gm-Message-State: ACrzQf0ytsxC07q8s+PHx+kIlNRlCBd0JzKYOhh9H7h92FE/j1e3JUed
        GuYqp3DWl89qVHLp+CeszgDuz0ZNO0s=
X-Google-Smtp-Source: AMsMyM72hvdvXO35RgLhJ5QF4be8lzNNZBenRzyHwvhkmpeItmIwuiICcbDH8EJX5YaDPeI9IylmBQ==
X-Received: by 2002:a5d:404b:0:b0:22e:331e:1cba with SMTP id w11-20020a5d404b000000b0022e331e1cbamr5633749wrp.488.1666004531592;
        Mon, 17 Oct 2022 04:02:11 -0700 (PDT)
Received: from [192.168.43.80] ([31.221.171.215])
        by smtp.gmail.com with ESMTPSA id c1-20020a5d4141000000b002238ea5750csm10093625wrq.72.2022.10.17.04.02.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Oct 2022 04:02:11 -0700 (PDT)
Message-ID: <0a38aa0b-5684-f217-4844-6c075de6d551@gmail.com>
Date:   Mon, 17 Oct 2022 13:02:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [PATCH] ascii.7: chase down History to earliest
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <20221017012257.kb25curb3gajgsxd@tarta.nabijaczleweli.xyz>
 <2b229c8d-9456-654a-d6a9-8b2727d8af41@gmail.com>
 <20221017105621.i6mkseevfwydx5zl@tarta.nabijaczleweli.xyz>
From:   Alex Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221017105621.i6mkseevfwydx5zl@tarta.nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------ayfm9IUp01BA0e3vpMPtge30"
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
--------------ayfm9IUp01BA0e3vpMPtge30
Content-Type: multipart/mixed; boundary="------------ydg7KyXvVnAccguROb0zMPUe";
 protected-headers="v1"
From: Alex Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <0a38aa0b-5684-f217-4844-6c075de6d551@gmail.com>
Subject: Re: [PATCH] ascii.7: chase down History to earliest
References: <20221017012257.kb25curb3gajgsxd@tarta.nabijaczleweli.xyz>
 <2b229c8d-9456-654a-d6a9-8b2727d8af41@gmail.com>
 <20221017105621.i6mkseevfwydx5zl@tarta.nabijaczleweli.xyz>
In-Reply-To: <20221017105621.i6mkseevfwydx5zl@tarta.nabijaczleweli.xyz>

--------------ydg7KyXvVnAccguROb0zMPUe
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkhDQoNCk9uIDEwLzE3LzIyIDEyOjU2LCDQvdCw0LEgd3JvdGU6DQo+IE9uIE1vbiwgT2N0
IDE3LCAyMDIyIGF0IDExOjU4OjA2QU0gKzAyMDAsIEFsZXggQ29sb21hciB3cm90ZToNCj4+
IE9uIDEwLzE3LzIyIDAzOjIyLCDQvdCw0LEgd3JvdGU6DQo+Pj4gQ2YuLCB3ZWxsLCB0aGUg
VU5JWCBQcm9ncmFtbWVyJ3MgTWFudWFsOg0KPj4+ICAgICBodHRwczovL3d3dy50dWhzLm9y
Zy9BcmNoaXZlL0Rpc3RyaWJ1dGlvbnMvUmVzZWFyY2gvRGVubmlzX3YxL1VOSVhfUHJvZ3Jh
bW1lcnNNYW51YWxfTm92NzEucGRmDQo+Pj4gUERGIHBhZ2UgMTkxOyB5ZXMsIHRoZSB0eXBv
Z3JhcGhpY2FsIGNvbnZlbnRpb24gaGVyZSBpcyBpbnNhbmUsIGFuZA0KPj4+IHRoZSBjb250
ZW1wcmFyeS1jb3JyZWN0IHdheSB0byByZWZlciB0byB0aGlzIHBhZ2UgZnJvbSB3aXRoaW4g
dGhlIG1hbnVhbA0KPj4+IHdvdWxkIGJlIC9qdXN0LyAiL2V0Yy9hc2NpaSIsIGJ1dCwgZ2l2
ZW4gdGhlIGNvbnRleHQsICIvZXRjL2FzY2lpIChWSUkpIg0KPj4+IG1ha2VzIHRoZSBtb3N0
IHNlbnNlIHRvIG1lDQo+Pj4NCj4+PiAtLS0gYS9tYW43L2FzY2lpLjcNCj4+PiArKysgYi9t
YW43L2FzY2lpLjcNCj4+PiBAQCAtMTM0LDkgKzEzNCw3IEBAIEY6IC8gPyBPIF8gbyBERUwN
Cj4+PiAgICAuZmkNCj4+PiAgICAuU0ggTk9URVMNCj4+PiAgICAuU1MgSGlzdG9yeQ0KPj4+
IC1Bbg0KPj4+IC0uQiBhc2NpaQ0KPj4+IC1tYW51YWwgcGFnZSBhcHBlYXJlZCBpbiBWZXJz
aW9uIDcgb2YgQVQmVCBVTklYLg0KPj4+ICsvZXRjL2FzY2lpIChWSUkpIGFwcGVhcnMgaW4g
dGhlIFVOSVggUHJvZ3JhbW1lcidzIE1hbnVhbC4NCj4+DQo+PiBJIHdvbmRlciBpZiAnLkJS
IC9ldGMvYXNjaWkgKDcpJyB3b3VsZG4ndCBiZSBiZXR0ZXIuDQo+Pg0KPj4gQWxzbywgc2hv
dWxkbid0IHdlIGNsYXJpZnkgdGhlIFZlcnNpb24gNyBvZiB0aGUgVU5JWCBQcm9ncmFtbWVy
J3MgTWFudWFsPw0KPj4gT3Igd2FzIGl0IG9ubHkgY2FsbGVkIHRoYXQgd2F5IGluIFY3PyAg
SSBpZ25vcmUgbXVjaCBvZiBoaXN0b3J5IGFib3V0IHRob3NlDQo+PiB0aW1lcywgYnV0IEkg
Z3Vlc3Mgb2xkZXIgdmVyc2lvbnMgYWxzbyB1c2VkIHRoZSBleGFjdCBzYW1lIHRpdGxlLCBy
aWdodD8NCj4gDQo+IHVoaGhoLCB3aGF0IGRvIHlvdSBtZWFuIFZlcnNpb24gNz8NCj4gVGhp
cyBhcHBlYXJzIGluIC90aGUvIFVOSVggUHJvZ3JhbW1lcidzIE1hbnVhbC4NCj4gQmVmb3Jl
IHRoZXkgd2VyZSB2ZXJzaW9uZWQgb3Igd2hhdGV2ZXIuDQoNCkFoaCBzb3JyeSwgSSB3YXMg
bWl4aW5nIHNldmVucyBpbiBteSBoZWFkLiAgTm93IEkgZ290IGl0Lg0KDQo+IA0KPiBTbyBu
bywgKDcpIGlzIHdyb25nIGJlY2F1c2UgaXQncyAoVklJKQ0KPiAoaW5kZWVkLCBhcmFiaWMg
bnVtYmVycyBzdGFydGVkIGluIFY3KS4NCj4gSXQncyBub3QgYm9sZCBiZWNhdXNlIHlvdSBj
YW4ndCBkbyB0aGF0IG9uIGEgdHlwZXdyaXRlci4NCj4gWW91IGNvdWxkIG1ha2UgdGhlIGFy
Z3VtZW50IGZvciBpdCBiZWluZyB0b2dldGhlciwNCj4gYnV0IHRoZSBwcmV2YWlsaW5nIGNv
bnZlbnRpb24gaXMgZWl0aGVyIG5vIHNlY3Rpb24gYXQgYWxsIG9yDQo+IHNwYWNlLWJlZm9y
ZS1zZWN0aW9uLCBhbmQgdGhlIHBhZ2UgbnVtYmVyIGhhcyB0aGUgc3BhY2UuDQoNCkkgZ3Vl
c3MgeW91J3JlIHJlZmVycmluZyB0byB0aGUgb2xkIGNvbnZlbnRpb24gKGZyb20gVFVQTSk/
ICBJbiB0aGlzIA0KY2FzZSBpdCdzIGEgYml0IHdlaXJkIGJlY2F1c2Ugd2UncmUgcmVmZXJy
aW5nIHRvIGFuIG9sZCBtYW51YWwgcGFnZSBmcm9tIA0KYSBuZXcgbWFudWFsIHBhZ2UsIHNv
IEkgZG9uJ3Qga25vdyBpZiB3ZSBzaG91bGQgdXNlIHRoZSBvbGQgc3ludGF4IG9yIA0KdGhl
IG5ldyBvbmUuLi4gIFdlIG5vdyBoYXZlIGJldHRlciAob3IgZGlmZmVyZW50KSBjYXBhYmls
aXRpZXMgKGJvbGQpLCANCmFuZCBhcmFiaWMgbnVtYmVycywgc28gd2UgY291bGQgdGFrZSBh
ZHZhbnRhZ2Ugb2YgdGhlbS4uLiAgQnV0IG1heWJlIA0KdGhhdCBjb3VsZCBjb25mdXNlLi4u
ICBJIGd1ZXNzIEknbGwgZ28gd2l0aCB3aGF0IHlvdSBwcmVmZXIsIHNpbmNlIA0KeW91J3Jl
IHdyaXRpbmcgaXQsIGFuZCBJJ20gbm90IHN1cmUuDQoNCkJlc3QsDQpBbGV4DQoNCi0tIA0K
PGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0KDQo=

--------------ydg7KyXvVnAccguROb0zMPUe--

--------------ayfm9IUp01BA0e3vpMPtge30
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNNNikACgkQnowa+77/
2zLEUBAAmzQ92vAeHko7RZpLaEiLI96t1UHCKXAo6oQECBhbqYAd/hU58QAeRf0/
NMY2AkQcwq//aywyYiZ8+c0VfIXe5oJzLwr9TOrieFBMT+ey01Az6ZpeXc1hpTQv
5FxYhNoklLB92vqxFsi9tfUO+Fej43vWuKhXNKc7MqTxipl/ZLozJDMAG7GeGIZD
ySKT+mC3tWOlnmtPxTLdyyMcRGGCMz48t/R9x1YE63bfivvmQJ19KIZ1Ro8vbRMI
lv9LMiySJY76gneStzNlNzM4hay7/pbSFa32cF2NOUpbxnPs0VRMOpmmeB3ypxvy
3NFZrE4vcpaHCdj7xeEP0xcnmxqzFvTnGvYxWgUq7YzRN94TAWiKK8uc6U7sODE6
U/e+JtoBbjuNWeHvuiKHtu0X9yCpda/gZuiasnT+w5tPx16xhxMSfS9x7uPh3tiL
1MsdIyMFASQ9M4RfGHNqr1C6o10S/RkeLsPxPcFs25oDO0vSGdgoX/7gSFSOUNDp
JzdxFAZxEbsQzowMOYReK9TOz92gSxQe/ZQ2PYBRunnRClp03dJTihJtwg4yEN2O
AiWLrFfnV5GbnflmBzv+xfkid9rtetbl0mp9FotnG0InqqUBwTsHhreYDBdaGl75
Vv17sQ1Ys3ym4nvrDxhqeTTarB6KMDfMYxGnPuh7GPs9hbRGKOs=
=7r6c
-----END PGP SIGNATURE-----

--------------ayfm9IUp01BA0e3vpMPtge30--
