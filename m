Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 43BE667473D
	for <lists+linux-man@lfdr.de>; Fri, 20 Jan 2023 00:31:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229914AbjASXbW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 19 Jan 2023 18:31:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41470 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229818AbjASXbV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 19 Jan 2023 18:31:21 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19084367E2
        for <linux-man@vger.kernel.org>; Thu, 19 Jan 2023 15:31:20 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id t5so3405743wrq.1
        for <linux-man@vger.kernel.org>; Thu, 19 Jan 2023 15:31:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XPUNGITJVqeyN+rJZQncAc3Qfbr760FRlsvgLU8rxnk=;
        b=dm7uedE5JiZ1fGH4nFt3uJEV8ryK6LiFb8Thccz1kfvNN0n5l9t1Xdyboin0eu1YGU
         k0g+91Szy+A+3l76rhh9nYFb3ZmPYov5Ysv29IBR6PFQ1AOnhMLDYIhCnHkkgSFtXtzq
         zp3UESbaRI/o0ajPH6cuOPTUIkFbdfyzJdUMjEe6UxAVxwBuSnky9HFOJLj+IrO5623S
         Q1y6XKzO5GC6q9/JsZkcojix8YmQe6YJAbT30VWfrNdMtbhOpZFJ90nCo5pdfKYn1O72
         pU58NS7ihuRT0i7NAORM9Vmaqc2LhWZms6pg4Zstus/7bMtTvrpmL2PB5ke5IpISu7Lx
         BLDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=XPUNGITJVqeyN+rJZQncAc3Qfbr760FRlsvgLU8rxnk=;
        b=baZ/g96e3B2zCPyPzwx84xJKVvrUWBqdrZ2o6CWwrIc8NNSiEqevzli0CsWMtuSsvZ
         6Aqw+a42jTHl8YJ3mC2dSyX9xByTMyYcLMuPo7bxEPiWRNx4VRpt8b71K5AOYBAPRqYj
         /6WIsiwNo/RzXCP63Fae1/UjDaMt9vbqDx382ePbAR8rPghy+eag9T9tKf2uqvx2Do+b
         VCsaEV//NoDlQ4LlEZm+Ivftm40Uxcsjgk9iJjUvy149rSzjxnavhb7giYtrXLJeDM3x
         c2TjWJLY6JCNfi8Fq0lk8oCB1cR/H3eacS6kSlfREh/0FmswR7fZThcYu6jmga7GDw+v
         WDRQ==
X-Gm-Message-State: AFqh2kp2kU79WEYFLs095UjWMtrlVqMEASrMxwbTDB+I3GDdr7snHIdI
        1eVrDvbF8snJ2ROFYSoRJ5o=
X-Google-Smtp-Source: AMrXdXs7SkVdoWByjf9kouTCYauKMUQzkRQ+RjCwMN1x4GgY60Cd4/Q/6kJU5dNnPlDty5+P68rDbg==
X-Received: by 2002:a5d:6b42:0:b0:2bc:bffe:831a with SMTP id x2-20020a5d6b42000000b002bcbffe831amr6478462wrw.49.1674171078531;
        Thu, 19 Jan 2023 15:31:18 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id bp28-20020a5d5a9c000000b00273cd321a1bsm34819589wrb.107.2023.01.19.15.31.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Jan 2023 15:31:17 -0800 (PST)
Message-ID: <528e35f3-ee79-52e0-be5b-ea5572cf3d07@gmail.com>
Date:   Fri, 20 Jan 2023 00:31:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: struct sockaddr_storage, union (was: Improve getsockname)
Content-Language: en-US
To:     =?UTF-8?Q?Bastien_Roucari=c3=a8s?= <rouca@debian.org>
Cc:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        eblake <eblake@redhat.com>, Zack Weinberg <zack@owlfolio.org>,
        GNU C Library <libc-alpha@sourceware.org>
References: <2889739.XEG2VLDMQ1@portable-bastien>
 <3299211.1eNo6cvScQ@portable-bastien>
 <b709c21f-2553-8679-fde9-49d7400ca4ca@gmail.com>
 <18201055.pzcD54PWfD@portable-bastien>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <18201055.pzcD54PWfD@portable-bastien>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Urb7YwitoGLcmfaiwQOJrvyO"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------Urb7YwitoGLcmfaiwQOJrvyO
Content-Type: multipart/mixed; boundary="------------vXsIaXrgLd9dv2TZ83Oe3bYp";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?Q?Bastien_Roucari=c3=a8s?= <rouca@debian.org>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
 eblake <eblake@redhat.com>, Zack Weinberg <zack@owlfolio.org>,
 GNU C Library <libc-alpha@sourceware.org>
Message-ID: <528e35f3-ee79-52e0-be5b-ea5572cf3d07@gmail.com>
Subject: Re: struct sockaddr_storage, union (was: Improve getsockname)
References: <2889739.XEG2VLDMQ1@portable-bastien>
 <3299211.1eNo6cvScQ@portable-bastien>
 <b709c21f-2553-8679-fde9-49d7400ca4ca@gmail.com>
 <18201055.pzcD54PWfD@portable-bastien>
In-Reply-To: <18201055.pzcD54PWfD@portable-bastien>

--------------vXsIaXrgLd9dv2TZ83Oe3bYp
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gMS8xOS8yMyAyMjozOCwgQmFzdGllbiBSb3VjYXJpw6hzIHdyb3RlOg0KPiBMZSBqZXVk
aSAxOSBqYW52aWVyIDIwMjMsIDIxOjE5OjQ5IFVUQyBBbGVqYW5kcm8gQ29sb21hciBhIMOp
Y3JpdCA6DQo+Pg0KPj4gT24gMS8xOS8yMyAyMjowMCwgQmFzdGllbiBSb3VjYXJpw6hzIHdy
b3RlOg0KPj4gWy4uLl0NCj4+DQo+Pj4+IDxodHRwczovL2luYm94LnNvdXJjZXdhcmUub3Jn
L2xpYmMtYWxwaGEvMGYyNWQ2MGYtZjE4My1iNTE4LWI2YzEtNmQ0NmFhNjNlZTU3QGdtYWls
LmNvbS9ULz4NCj4+Pg0KPj4+IEkgZG8gbm90IGJlbGlldmUgaXQgaXMgYnJva2VuIGJ5IGRl
c2lnbi4gSXQgc2hvdWxkIGJlIHVzZWQgd2l0aCBjYXJlIGFuZCB3YXJuaW5nLg0KPj4+DQo+
Pj4gQlRXIGlmIHdlIGdvIHRvIHRoZSBhbm9ueW1vdXMgdW5pb24gd2F5IGNvdWxkIHdlIGFk
ZCBhdCB0aGUgZW5kIGEgX251bGxfcmVzZXJ2ZWRfZmllbGQuIEl0IHdpbGwgaGVscCBmb3Ig
dW5peCBzb2NrZXQgYW5kIHRoZSBpbmZhbW91cyBzdW5fcGF0aCBjb3VsZCBub3QgZW5kIHdp
dGggbnVsbC4uLg0KPj4+IE1heSBiZSBpdCBpcyB0b28gbGF0ZSBmcm9tIGFuIEFCSSBwb2lu
dCBvZiB2aWV3LCBidXQgZm9yIG1lIHRoZSBwb3NpeCBjb250cmFjdCBmcm9tIGFuIEFCSSBw
b2ludCBvZiB2aWV3IGlzIHRoYXQgSSBzYWlkIGluIHRoZSBub3RlICBzb2NrYWRkcl9zdG9y
YWdlICBjb3VsZCBncm93IGJ1dCBub3QgYmUgcmVkdWNlZC4NCj4+DQo+PiBZZXMsIG1hbnkg
dHlwZXMgaGF2ZSBzZWVuIHN1Y2ggYWRkaXRpb25zIGF0IHRoZSBlbmQgb2YgaXQgb3ZlciB0
aW1lLiAgSW4gdGhlDQo+PiBMaW51eCBtYW4tcGFnZXMsIEkgdHJ5IHRvIGRvY3VtZW50IGFs
bCBzdHJ1Y3R1cmVzIGFzICJoYXZpbmcgYXQgbGVhc3QgdGhlc2UNCj4+IG1lbWJlcnMiLCBi
dXQgbWF5IGdyb3cgb3ZlciB0aW1lLg0KPiANCj4gSW4gZmFjdCBpdCBpcyBub3QgbmVlZGVk
IGFuZCBpdCBpcyB0aGUgYmVzdCBhcmd1bWVudCBvZiBzdHJ1Y3Qgc29ja2FkZHJfc3RvcmFn
ZQ0KPiAgIHByaW50ZigiJWxpICVsaSIsc2l6ZW9mKHN0cnVjdCBzb2NrYWRkcl9zdG9yYWdl
KSxzaXplb2Yoc3RydWN0IHNvY2thZGRyX3VuKSk7DQo+IGdpdmUgbWUgMTI4IHZzIDExMC4u
Lg0KPiANCj4gU28gaWYgY29ycmVjdGx5IGRvY3VtZW50ZWQgYW5kIGFsaWFzaW5nIHNvbHZl
ZCBpdCB3aWxsIGJlIHRoZSBiZXN0IG9mIHRoZSB3b3JsZC4uLg0KPiANCj4gTW9yZW92ZXIg
a2VybmVsIGV4cGVjdCBpdCBodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC9sYXRl
c3Qvc291cmNlL25ldC91bml4L2FmX3VuaXguYyNMMjkzDQoNCkhvd2V2ZXIuLi4gQ29uc2lk
ZXJpbmcgdGhhdCBtb3N0IEFQSXMgdXNlIGBzdHJ1Y3Qgc29ja2FkZHIgKmAsIHRoaXMgd291
bGRuJ3QgDQphbGxvdyB0aGUgaW50ZXJuYWwgbGliYyBpbXBsZW1lbnRhdGlvbiBvZiBmdW5j
dGlvbnMgbGlrZSBnZXRuYW1laW5mbygzKSB0byBiZSANCmZyZWUgb2YgVUIuDQoNCk1heWJl
IGEgYmV0dGVyIHRoaW5nIHdvdWxkIGJlIHRvIGRvIHRoZSBmb2xsb3dpbmc6DQoNCg0Kc3Ry
dWN0IHNvY2thZGRyIHsNCgl1bmlvbiB7DQoJCXN0cnVjdCB7DQoJCQlzYV9mYW1pbHlfdCAg
c2FfZmFtaWx5Ow0KCQkJY2hhciAgICAgICAgIHNhX2RhdGFbXTsNCgkJfTsNCgkJc3RydWN0
IHNvY2thZGRyX2luICAgc2luOw0KCQlzdHJ1Y3Qgc29ja2FkZHJfaW42ICBzaW42Ow0KCQlz
dHJ1Y3Qgc29ja2FkZHJfdW4gICBzdW47DQoJfTsNCn07DQoNCnN0cnVjdCBzb2NrYWRkcl9z
dG9yYWdlIHsNCgl1bmlvbiB7DQoJCXNhX2ZhbWlseV90ICAgICAgICAgIHNzX2ZhbWlseTsN
CgkJc3RydWN0IHNvY2thZGRyICAgICAgc2E7DQoJfTsNCn07DQoNCg0KVGhpcyBtYWtlcyBz
b2NrYWRkciBhbmQgc29ja2FkZHJfc3RvcmFnZSBoYXZlIHRoZSBzYW1lIHNpemUsIGFuZCBh
bHNvIGJvdGggY2FuIA0KYWxpYXMgYW55IG9mIHRoZSBjaGlsZHJlbiB0eXBlcyB0aHJvdWdo
IHRoZSB1bmlvbnMsIHNvIG9uZSBjYW4gdXNlIGVpdGhlciBvZiANCnRoZW0gZm9yIHRoZSBz
YW1lIHB1cnBvc2UuDQoNCkknbGwgYmUgc2VuZGluZyBhIHBhdGNoIHNvb24gZm9yIGRpc2N1
c3Npb24uDQoNCkNoZWVycywNCg0KQWxleA0KDQo+IA0KPj4NCj4+Pg0KPj4+ICAgIHN0cnVj
dCBzb2NrYWRkcl9zdG9yYWdlIHsNCj4+PiAJdW5pb24gew0KPj4+ICAgIAkJc2FfZmFtaWx5
X3QgICAgICAgICAgc3NfZmFtaWx5Ow0KPj4+ICAgIAkJc3RydWN0IHNvY2thZGRyICAgICAg
c2E7DQo+Pj4gICAgCQlzdHJ1Y3Qgc29ja2FkZHJfaW4gICBzaW47DQo+Pj4gICAgCQlzdHJ1
Y3Qgc29ja2FkZHJfaW42ICBzaW42Ow0KPj4+ICAgIAkJc3RydWN0IHNvY2thZGRyX3VuICAg
c3VuOw0KPj4+ICAgIAl9Ow0KPj4+ICAgICAgICAgICAgICAgICAgICAgICAgICBjaGFyIF9f
cmVzZXJ2ZWRfbnVsbDsNCj4+DQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9t
YXIuZXMvPg0K

--------------vXsIaXrgLd9dv2TZ83Oe3bYp--

--------------Urb7YwitoGLcmfaiwQOJrvyO
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPJ0r0ACgkQnowa+77/
2zK8hRAAlQQQaN1sfGS2alSWxQmqep8eR2YGh1Ej6mQvPVFHTNfSAvNi7c40Zq/F
doieyurxdeD8qK8Mvzd8jZmCWY9i5POAA0ZOIIWgp0nYOxisMu+2fQwVvZyNo4I4
lDw0DevwtOzHb4TBfgz0wV2FLyeThWQ1LmLnLExwF+l0YvLyvi/kJ8aoPY1vZDXv
6fiWhhONOA1VRZPwoRy4vnQ5jNTQQ+KJzlnV87l7FLtOwyK6MuuLLah+qGGvpc57
4ERkgMMDSyEZE264SA3UaCjvVGJsL9RcPkxlnoRHHJEpEuOuAjywV/txRpRuGi7m
6R0lpLBnOSTX2mt/u9J3bvLci73Nv8cbT+xfX8HA735swKPUVPIlGNqqv1WvCXrr
SUt8PMcZocFHTQBH9tIC/0WDyJ9hk9i5p6ah4zKcfh5OFM/la3HPtRzj8W3gBqso
8RKohtVAbymrJdyUrTwKrFpkKWZ4sIk+Kpk87SsQ3xWUwevnoUzY+SPSQzNNcXU1
xnSXhyfcwWn2v6iZXB8Q0/vJ9Ut1CaelE/QUVkV6ggqT0idV5J6h9G7Mq6uBsDT8
CHqDlmjjz1dbbrFyyP9UYql3YSjatDL+WbaItqXu1T8+tFKcZe5362n4D95VWNha
HpqDEuIiueItdFfSzGS4aR2rvsxOi6LLJPe+nxSwRLG4E/tjn7Y=
=05JU
-----END PGP SIGNATURE-----

--------------Urb7YwitoGLcmfaiwQOJrvyO--
