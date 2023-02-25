Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AB1436A2675
	for <lists+linux-man@lfdr.de>; Sat, 25 Feb 2023 02:21:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229809AbjBYBVZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 24 Feb 2023 20:21:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229736AbjBYBTk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 24 Feb 2023 20:19:40 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39ECD15CA9
        for <linux-man@vger.kernel.org>; Fri, 24 Feb 2023 17:18:24 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id o38-20020a05600c512600b003e8320d1c11so4782834wms.1
        for <linux-man@vger.kernel.org>; Fri, 24 Feb 2023 17:18:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ky3j/+NfcPPc1ssK5jyQ1AMLz8rXXU0eqDkUii7VMhQ=;
        b=fWZrAx5yaupEk6XA8uZmPQC8PP9Ku9+gQmZqkPG6DdxSFCs0KeKDpstjiINcjYtQMf
         T/1+ZXl876zOTrwC/yolxCpWUSwIXZeiJG91/KO10GnbAcfm//2tr5BfVNPpJjPQkXCy
         ctXqrShOCwIMGJHbboq2RoItVl7RBOEtHelqBBc3mgxR/WKduTwanvjWCuz9Kjht5Bqr
         OkIt8AzQVoHJiTjVBSvJU9U7w4a7yusluwvjbUyJjBE/JdZLMRiRvAkVQ4A+wBCWUciG
         33Cvc41jJVIywOOnyzs/N6UGthKNtF4vCt7AhQSlwwlbkISUS0ifJ6UnWFsz1ffg7egK
         TUmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ky3j/+NfcPPc1ssK5jyQ1AMLz8rXXU0eqDkUii7VMhQ=;
        b=HrUEYayvuVM8qFxR/pVYNEVCLZQljTW88ktE7y/9h6K8HCaa7ggYocLJRQOf8al2s9
         0OqVAsCiuhrKsxoXYpHrshyNlLzi8hk1MPbn7i9iaA93kjzlKP1L/IWyUlrtyJrX8Z/r
         BivizZi0Iz4MgU1AXa19yiMJLPasDdgN+LBdmVp6u7WCA6LrIf2obKJyXpu8r/vYES7n
         dihs0gto6QVohAX0JkTrBlGV/o7BQWTlcm+rCv9fxkIb985/sny6wi9UWUdtNGqF1wpf
         HZgSaDavx4jCVRgqx+R4JpaJAQdARuTkUpeTlFnZJqokFtnmnXMhWPdI4kScY5EokNel
         +aGw==
X-Gm-Message-State: AO0yUKVrAEKFXy88K7Lz69WZg4/JQKaDcmE3oaGyULzSugQvalzhZiw7
        ITtSyGX480jbOqGnmDZ+ylmKD5Y+6qE=
X-Google-Smtp-Source: AK7set88yBb2i7QHsCkEqjpYaQ/gxJSON7+FgYISEUtyn+3TXxFUdsXskyxgKF86GG9bcZaL1YbWRQ==
X-Received: by 2002:a05:600c:492a:b0:3dc:42d2:aee4 with SMTP id f42-20020a05600c492a00b003dc42d2aee4mr7582623wmp.25.1677287902642;
        Fri, 24 Feb 2023 17:18:22 -0800 (PST)
Received: from [172.26.3.7] (240.red-88-26-240.staticip.rima-tde.net. [88.26.240.240])
        by smtp.gmail.com with ESMTPSA id c4-20020adffb04000000b002c70bfe505esm284304wrr.82.2023.02.24.17.18.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Feb 2023 17:18:22 -0800 (PST)
Message-ID: <e8d981d1-c03a-cfe6-f6c7-9b4d422d7d0a@gmail.com>
Date:   Sat, 25 Feb 2023 02:18:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] ptrace.2: Add details about usage of
 PTRACE_GET_SYSCALL_INFO
Content-Language: en-US
To:     Fotios Valasiadis <fvalasiad@gmail.com>,
        Nate Eldredge <nate@thatsmathematics.com>,
        linux-man@vger.kernel.org
Cc:     mtk.manpages@gmail.com, Fotios Valasiadis <fvalasiad@csd.auth.gr>
References: <20230224163142.29934-1-fvalasiad@gmail.com>
From:   Alex Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230224163142.29934-1-fvalasiad@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------ne3gBWrx8fNIc2OSMueSZMEw"
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
--------------ne3gBWrx8fNIc2OSMueSZMEw
Content-Type: multipart/mixed; boundary="------------EgDUyn4tYY5Nq3RtqMQxCz0E";
 protected-headers="v1"
From: Alex Colomar <alx.manpages@gmail.com>
To: Fotios Valasiadis <fvalasiad@gmail.com>,
 Nate Eldredge <nate@thatsmathematics.com>, linux-man@vger.kernel.org
Cc: mtk.manpages@gmail.com, Fotios Valasiadis <fvalasiad@csd.auth.gr>
Message-ID: <e8d981d1-c03a-cfe6-f6c7-9b4d422d7d0a@gmail.com>
Subject: Re: [PATCH] ptrace.2: Add details about usage of
 PTRACE_GET_SYSCALL_INFO
References: <20230224163142.29934-1-fvalasiad@gmail.com>
In-Reply-To: <20230224163142.29934-1-fvalasiad@gmail.com>

--------------EgDUyn4tYY5Nq3RtqMQxCz0E
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gMi8yNC8yMyAxNzozMSwgRm90aW9zIFZhbGFzaWFkaXMgd3JvdGU6DQo+IEZyb206IEZv
dGlvcyBWYWxhc2lhZGlzIDxmdmFsYXNpYWRAY3NkLmF1dGguZ3I+DQo+IA0KPiBGaXhlZCBp
bmNvbXBsZXRlIGRvYy4gUFRSQUNFX0dFVF9TWVNDQUxMX0lORk8ncyBkZXNjcmlwdGlvbiB3
b3VsZG4ndCBpbmZvcm0gdGhlIHVzZXIgdGhhdCB0aGV5IG5lZWQgdG8gZW5hYmxlIFBUUkFD
RV9PX1RSQUNFU1lTR09PRCB0byBnZXQgZGV0YWlsZWQgaW5mb3JtYXRpb24gZnJvbSBzYWlk
IG9wZXJhdGlvbi4NCj4gDQo+IENhbWUgdXBvbiB0aGlzIGJ1ZyBhZnRlciB3cml0aW5nIGEg
dGVzdCBwcm9ncmFtIHVzaW5nIFBUUkFDRV9PX1RSQUNFU1lTR09PRC4gQWZ0ZXIgZmFpbGlu
ZyB0byBmaW5kIHdoYXQncyB3cm9uZyBJIHBvc3RlZCBhIHN0YWNrb3ZlcmZsb3cgcXVlc3Rp
b24gd2hpY2ggeW91IGNhbiBmaW5kIHJpZ2h0IGhlcmU6IGh0dHBzOi8vc3RhY2tvdmVyZmxv
dy5jb20vcXVlc3Rpb25zLzcyNDEwMTgyL3B0cmFjZS1nZXQtc3lzY2FsbC1pbmZvLWFsd2F5
cy1yZXR1cm5zLWluZm8tb3AtYXMtcHRyYWNlLXN5c2NhbGwtaW5mby1ub25lDQo+IA0KPiBO
YXRlIEVsZHJlZGdlIGZvdW5kIG91dCB3aGF0J3Mgd3JvbmcgYnkgbG9va2luZyBpbnRvIHRo
ZSBrZXJuZWwncyBzb3VyY2UgY29kZSwgaGVyZSBpcyBhIGxpbmsgdG8gdGhlIHJlbGV2YW50
IHBhcnQgaHR0cHM6Ly9naXRodWIuY29tL3RvcnZhbGRzL2xpbnV4L2Jsb2IvODI5MWVhYWZl
ZDM2ZjU3NWYyMzk1MWYzY2UxODQwN2Y0ODBlOWVjZi9rZXJuZWwvcHRyYWNlLmMjTDEwMTgN
Cj4gDQo+IEluIHRoZSBjb2RlIGl0IGNhbiBiZSBzZWVuIHRoYXQgdGhlIHVuaW9uIGlzIGZp
bGxlZCBpZiBhbmQgb25seSBpZiB0aGUgc2lnbmFsIG1hdGNoZXMgIlNJR1RSQVAgfCAweDgw
IiwgYSBzaWduYWwgd2hpY2ggaXMgb25seSBzZW50IGlmIHRoZSBQVFJBQ0VfT19UUkFDRVNZ
U0dPT0Qgb3B0aW9uIGlzIHNldC4gWW91IGNhbiByZWFkIGFib3V0IHRoYXQgaW4gdGhlIFBU
UkFDRV9PX1RSQUNFU1lTR09PRCBzZWN0aW9uIG9mIHB0cmFjZS4yICdzIG1hbnVhbC4NCj4g
DQo+IEkgYW0gdW5hd2FyZSBpZiBOYXRlIHdhbnRzIHRvIGJlIGluY2x1ZGVkIGFzIGEgY28t
YXV0aG9yIG9mIHRoaXMgY29tbWl0LCBub3IgYW0gSSBhd2FyZSBvZiBhbnkgd2F5IHRvIGNv
bnRhY3QgaGltLg0KDQpIZWxsbyBGb3Rpb3MsDQoNCkkgZm91bmQgaGlzIGFkZHJlc3MgaW4g
YSBrZXJuZWwgY29tbWl0Og0KDQpOYXRlIEVsZHJlZGdlIDxuYXRlQHRoYXRzbWF0aGVtYXRp
Y3MuY29tPg0KDQpJJ20gQ0NpbmcgaGltIGluIGNhc2UgaGUgd2FudHMgdG8gcmV2aWV3Lg0K
DQpUaGFua3MgZm9yIHRoZSBwYXRjaCENCg0KQWxleA0KDQo+IA0KPiBTaWduZWQtb2ZmLWJ5
OiBGb3Rpb3MgVmFsYXNpYWRpcyA8ZnZhbGFzaWFkQGdtYWlsLmNvbT4NCj4gLS0tDQo+ICAg
bWFuMi9wdHJhY2UuMiB8IDUgKysrKysNCj4gICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRp
b25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvbWFuMi9wdHJhY2UuMiBiL21hbjIvcHRyYWNl
LjINCj4gaW5kZXggNTVkOWZkMzZkLi5iNDM3YjRmNDQgMTAwNjQ0DQo+IC0tLSBhL21hbjIv
cHRyYWNlLjINCj4gKysrIGIvbWFuMi9wdHJhY2UuMg0KPiBAQCAtMTAzMyw2ICsxMDMzLDEx
IEBAIElmIHRoZSBzaXplIG9mIHRoZSBkYXRhIHRvIGJlIHdyaXR0ZW4gYnkgdGhlIGtlcm5l
bCBleGNlZWRzIHRoZSBzaXplDQo+ICAgc3BlY2lmaWVkIGJ5IHRoZQ0KPiAgIC5JIGFkZHIN
Cj4gICBhcmd1bWVudCwgdGhlIG91dHB1dCBkYXRhIGlzIHRydW5jYXRlZC4NCj4gK1RvIG9i
dGFpbiBjb21wbGV0ZSBpbmZvcm1hdGlvbiBkdXJpbmcgc3lzdGVtIGNhbGwgZW50cnkgb3Ig
ZXhpdCBzdG9wcywNCj4gK3lvdSBzaG91bGQgZW5hYmxlIHRoZQ0KPiArLkIgUFRSQUNFX09f
VFJBQ0VTWVNHT09EDQo+ICtvcHRpb24gdXNpbmcNCj4gKy5CIFBUUkFDRV9TRVRPUFRJT05T
Lg0KPiAgIC5JUA0KPiAgIFRoZQ0KPiAgIC5JIHB0cmFjZV9zeXNjYWxsX2luZm8NCg0KLS0g
DQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQpHUEcga2V5IGZpbmdlcnBy
aW50OiBBOTM0ODU5NENFMzEyODNBODI2RkJERDhENTc2MzNENDQxRTI1QkI1DQoNCg==

--------------EgDUyn4tYY5Nq3RtqMQxCz0E--

--------------ne3gBWrx8fNIc2OSMueSZMEw
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmP5Yd0ACgkQnowa+77/
2zJrdQ//YVPXXW2NLD9mSHkH0wYjHtFMzMQFXAG1+zRYGqoSfx4lkjln8ITKimyY
NOkjAOAr7yoHaX0yLn5Dog07d8RArk7d46pOluBsl3RpRYNFItZX64HxCTdr0gfB
n42Ts/dXIfKRRIrApAYvXeoso/DNsvkEWnTgtzk2WINcx8CZUoam39FSzbGrg/Kx
ZPUjtaZ9ZHo+d4kbBTjWye94fEozOdxBui9JZI7QCt5WsEoM4RWHxKZuaIIsWJOr
R7EeOCIJz89STCdZcl+lrKLXAPFqJ1+f1MVTA16WclPK6G52WZ8EDJbxLtOJ1cz+
JdoaVA5RKMdKq8vZ7tBGEPu9pnWzZz+XmCx9J+9XoQZZAQXcoopOlGxwwZ5F9sLF
3viSe8sslW3/jZHZf71nhb6M8PvN6tOJ/eh3wErpieCV8DqGvOdWcuYQ47NO8n3H
81JdCg0gW9r0DdQVfZtXHSd96a1+tQBzQ7UDE/yanOOiFSoqcUO5RM6eJNxSjErF
Kq7Ehw+uGonvuefLc85Tc4qeuGvZ9wK089ICPSl8oGrm+B5ALKs8qZWm6BOs2nag
YhmDkQOMTVX7FncXzWw+AGiSm1EU1hZ1UabLoOptm+i2UlcNkNyn+2TXgxP0OpQ1
laexMqIzMEDSKo1fPrCKg8vB344a7Ywoqc+KJ83sfzkU6lwdHdI=
=rumY
-----END PGP SIGNATURE-----

--------------ne3gBWrx8fNIc2OSMueSZMEw--
