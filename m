Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 58F0A659135
	for <lists+linux-man@lfdr.de>; Thu, 29 Dec 2022 20:27:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229535AbiL2T1c (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Dec 2022 14:27:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40106 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233706AbiL2T1X (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 29 Dec 2022 14:27:23 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6DFD513CE0
        for <linux-man@vger.kernel.org>; Thu, 29 Dec 2022 11:27:22 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id k22-20020a05600c1c9600b003d1ee3a6289so13835807wms.2
        for <linux-man@vger.kernel.org>; Thu, 29 Dec 2022 11:27:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9VquJo1Wfu3cz669YLyecnY5wYvx8dCNcV0D9Klcb+c=;
        b=GSo03qFXVACTAMZgcKpmbujO4aen5X4+PzPdcL5DO4yHnPRzuaIV4D2ueYRwtBZNQz
         mSa4ilKvSGvpj2i/Seg1tO+Olz9OVFVuC/lHr9haJA0fa9vcqrGoDEJ/t5SsgJ/Aihyv
         7uFtRftLakJUcELrfZDJMM60Yku0dzAG/0eQ1/qc3bewjXABNU/e+pfqN+TyTo/CVj0F
         rPRKrLI3StlbVN4u76EENV0WNdskzC7jRKl+LWpJ5b+H0nGBIfA1ZAtbU9fQKlC97p4C
         zpybK2pEIhpGwjL5viYosTpU/K96kjRIXGPvC68ssB67AzeSBsbMKFzpgik31ge2VreB
         PGzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9VquJo1Wfu3cz669YLyecnY5wYvx8dCNcV0D9Klcb+c=;
        b=6qd+MkZBBPIRAAIee0OAmb89yMY7QThmgD5+BACEynO1iDDhzlAVFfHg7nJIsrx0N+
         RUJhmD/yOzXfWWwxn4Tyzvd4O5pdIxOaxsiwDBGWigJ0WI1XYZCwOsiK7MxeAPvLXIau
         c4flhCBZmatrZ1y/w4DfRZiafuwKyvSijxHhAUCKcjxBU5Fgm1GYcnsEpUbl8i43FubJ
         wVm9m2GF1B6XJbzsdmeyKaK1bpCeOXdA8GFRHMuHYfmNMe4xqEv6bPkwj8fJeovYY2Vd
         gcdBnkIiM+GPk/XwXhWMmwHvuKG5yFlJCeRXEwKcRTJVM666uqQc4vu2V+bGqcWKOZqX
         m8IQ==
X-Gm-Message-State: AFqh2koahzsJIpf84zGIq/XKF/eBgkMxO/9Jg1C59yAj0ccsd18GyqSr
        T6E6/CzhrB8AVprFvnlWkDQ=
X-Google-Smtp-Source: AMrXdXuFuJjhmgReff/LXHbirs5pubODa0DF1jahLJTOVrI8mPozujzB+PS+bX/55H0lYEn12Aiovg==
X-Received: by 2002:a05:600c:a4f:b0:3d3:5c35:8919 with SMTP id c15-20020a05600c0a4f00b003d35c358919mr21139154wmq.30.1672342040964;
        Thu, 29 Dec 2022 11:27:20 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id x7-20020a05600c2d0700b003c6c3fb3cf6sm24514546wmf.18.2022.12.29.11.27.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Dec 2022 11:27:20 -0800 (PST)
Message-ID: <7870c368-2aa3-3f04-7cb0-5c4596f5a063@gmail.com>
Date:   Thu, 29 Dec 2022 20:27:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [manual]: rawmemchr(3) and UB
Content-Language: en-US
To:     GNU C Library <libc-alpha@sourceware.org>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <82db6083-5daa-66f9-2a4e-2823168f1574@gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <82db6083-5daa-66f9-2a4e-2823168f1574@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0kgDUAw5E04PDDVWk9Zc2a0D"
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------0kgDUAw5E04PDDVWk9Zc2a0D
Content-Type: multipart/mixed; boundary="------------XtDjgvjlkD2axAK7teX36apc";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: GNU C Library <libc-alpha@sourceware.org>
Cc: linux-man <linux-man@vger.kernel.org>
Message-ID: <7870c368-2aa3-3f04-7cb0-5c4596f5a063@gmail.com>
Subject: Re: [manual]: rawmemchr(3) and UB
References: <82db6083-5daa-66f9-2a4e-2823168f1574@gmail.com>
In-Reply-To: <82db6083-5daa-66f9-2a4e-2823168f1574@gmail.com>

--------------XtDjgvjlkD2axAK7teX36apc
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEyLzI5LzIyIDIwOjE5LCBBbGVqYW5kcm8gQ29sb21hciB2aWEgTGliYy1hbHBo
YSB3cm90ZToNCj4gSGksDQo+IA0KPiBJIHdhcyByZWFkaW5nIHJhd21lbWNocigzKSwgYW5k
IGZvdW5kIHNvbWUgZnVubnkgdGV4dDoNCj4gDQo+IFJFVFVSTiBWQUxVRQ0KPiAgwqDCoMKg
wqDCoMKgIFRoZcKgIG1lbWNocigpwqAgYW5kIG1lbXJjaHIoKSBmdW5jdGlvbnMgcmV0dXJu
IGEgcG9pbnRlciB0byB0aGUgbWF0Y2hpbmcNCj4gIMKgwqDCoMKgwqDCoCBieXRlIG9yIE5V
TEwgaWYgdGhlIGNoYXJhY3RlciBkb2VzIG5vdCBvY2N1ciBpbiB0aGUgZ2l2ZW4gbWVtb3J5
IGFyZWEuDQo+IA0KPiAgwqDCoMKgwqDCoMKgIFRoZSByYXdtZW1jaHIoKSBmdW5jdGlvbiBy
ZXR1cm5zIGEgcG9pbnRlciB0byB0aGUgbWF0Y2hpbmcgYnl0ZSwgaWYgb25lDQo+ICDCoMKg
wqDCoMKgwqAgaXMgZm91bmQuwqAgSWYgbm8gbWF0Y2hpbmcgYnl0ZSBpcyBmb3VuZCwgdGhl
IHJlc3VsdCBpcyB1bnNwZWNpZmllZC4NCj4gDQo+IA0KPiBPZiBjb3Vyc2UsIGlmIHRoZSBi
eXRlIGlzIG5vdCBmb3VuZCwgdGhlIHJlc3VsdCBpcyBub3QgdW5zcGVjaWZpZWQsIGJ1dCBy
YXRoZXIgDQo+IHVuZGVmaW5lZCwgYW5kIGEgY3Jhc2ggaXMgdmVyeSBsaWtlbHkgc28gbWF5
YmUgdGhlcmUncyBub3QgZXZlbiBhIHJlc3VsdC7CoCBJIA0KPiB0aG91Z2h0IHRoaXMgbWln
aHQgYmUgYSB0aGlua28gb2YgdGhlIG1hbnVhbCBwYWdlLCBidXQgdGhlIGdsaWJjIG1hbnVh
bCBzZWVtcyB0byANCj4gaGF2ZSBzaW1pbGFyIHRleHQ6DQo+IA0KPiANCj4gPGh0dHBzOi8v
d3d3LmdudS5vcmcvc29mdHdhcmUvbGliYy9tYW51YWwvaHRtbF9tb25vL2xpYmMuaHRtbCNp
bmRleC1yYXdtZW1jaHI+DQo+ICINCj4gVGhlIHJhd21lbWNociBmdW5jdGlvbiBleGlzdHMg
Zm9yIGp1c3QgdGhpcyBzaXR1YXRpb24gd2hpY2ggaXMgc3VycHJpc2luZ2x5IA0KPiBmcmVx
dWVudC4gVGhlIGludGVyZmFjZSBpcyBzaW1pbGFyIHRvIG1lbWNociBleGNlcHQgdGhhdCB0
aGUgc2l6ZSBwYXJhbWV0ZXIgaXMgDQo+IG1pc3NpbmcuIFRoZSBmdW5jdGlvbiB3aWxsIGxv
b2sgYmV5b25kIHRoZSBlbmQgb2YgdGhlIGJsb2NrIHBvaW50ZWQgdG8gYnkgYmxvY2sgDQo+
IGluIGNhc2UgdGhlIHByb2dyYW1tZXIgbWFkZSBhbiBlcnJvciBpbiBhc3N1bWluZyB0aGF0
IHRoZSBieXRlIGMgaXMgcHJlc2VudCBpbiANCj4gdGhlIGJsb2NrLiBJbiB0aGlzIGNhc2Ug
dGhlIHJlc3VsdCBpcyB1bnNwZWNpZmllZC4gT3RoZXJ3aXNlIHRoZSByZXR1cm4gdmFsdWUg
aXMgDQo+IGEgcG9pbnRlciB0byB0aGUgbG9jYXRlZCBieXRlLg0KPiAiDQo+IA0KPiANCj4g
VGhhdCB0ZXN0IGNhbid0IGJlIHRydWUsIGFuZCB0aGUgcmVzdWx0IG9mIHRoYXQgZnVuY3Rp
b24gd2hlbiB0aGVyZSdzIG5vIG1hdGNoIA0KDQpzL3Rlc3QvdGV4dC8NCg0KPiBjYW4ndCBi
ZSBhbnl0aGluZyBvdGhlciB0aGFuIFVCLCBhbmQgbGlrZWx5IGEgY3Jhc2guwqAgUGxlYXNl
IGZpeCB0aGUgZG9jLg0KPiANCj4gQ2hlZXJzLA0KPiANCj4gQWxleA0KDQotLSANCjxodHRw
Oi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------XtDjgvjlkD2axAK7teX36apc--

--------------0kgDUAw5E04PDDVWk9Zc2a0D
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOt6hcACgkQnowa+77/
2zLSnQ//adPbAlwBop+kfGw+6yR7tT7lY2Dpgz3ugHy2T1ktQ9LAoyD4lPCOuO/7
2L+55L5YQ+6hVochnnb9cqLlt+1ncOjbw36m/grdzwTrWGqqP4YL1emAu3hGUFDB
A04pTOlArjmn+MitNQAqCKflJhN10wIZ4+IBArSiYFYqt8CCIq9/6A87luL47rrH
2jatsDVuVATv3E4t1V5Izg2lqGW/Ukc9h9H6O2zUXwGMZzh+pR8jX3yqa+6gTUKQ
iU2ZuUMPCBHslleMOt9Kb1bIAS3X5el7gftnz55qMXqQ7IZgLDf+FMqWAOws07rz
sIH40fsjIUyhc8Q6eTlhGb5lHU+uveXsVors2sYV7IZVfApjF7eZY7xDZ+K+PZDQ
KMR2OZnUQbMdb2+FcOe14nLV1Buk6yfbiJrplHvniDcPo72z/qeyD6rZMzd87xdg
+wJyZtIQUs0POqz34IgRp+MzQxiIsw2WWNEiO27vjMgm2N4cjVN5NxTZbhOLhYVk
P/SJh66pF4Q2gdbMdLht9nYLJanb7/546VOu67U1XVwBQy4pJL0SJGtqKcss+tHD
1ZBCuAi+WlO55U51p2S2PUeCt2l93mh800KFdtf0vgLqi5dnMtWGtCjsZOsfcN9k
+1q3bDjI/2pSgNRKzakHZP4VPAUDKQXCwYC63pN21j7tKU1TlO8=
=XM9F
-----END PGP SIGNATURE-----

--------------0kgDUAw5E04PDDVWk9Zc2a0D--
