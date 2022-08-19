Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EB56859A989
	for <lists+linux-man@lfdr.de>; Sat, 20 Aug 2022 01:35:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239270AbiHSX2b (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 Aug 2022 19:28:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32782 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240363AbiHSX2S (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 Aug 2022 19:28:18 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C63BCE0C
        for <linux-man@vger.kernel.org>; Fri, 19 Aug 2022 16:28:13 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id bq11so157513wrb.12
        for <linux-man@vger.kernel.org>; Fri, 19 Aug 2022 16:28:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=Auk2cZhLJAcNT4qU4QQC7Y8r5bPP+FGRAq3ZSv6X0/I=;
        b=MNTBr9+o8a/Wy9+Pi1yvx2zDrzz1I56eB2TsgJpBDzwFQDT8Nh0pqE//si5qKKXqBK
         qzqAbKFVYdnSZMMfMVRMbK5XmpG+5gPpyUQ3BDLsT+4TmQw2/UBaacXcmKdk+nmSWbk+
         xT70tFK+pBG57xT4PvySDMb3JXNjl5QpYxgMgyJkCjIMg5+FLfs/MLT3zKgSwi46fscn
         Sciu5wCTceLhTjXbuyPd9av4RPMaa3khlSkLwdt3/xzrcHIwKek4jxkJoIZ/IM3RtgOi
         a/kHCay4KWiX/WdrWEteY7/hky5AQlw5ErSU3hHiVgpYgyhywxncySmYbdxGX86g0W8o
         s75Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=Auk2cZhLJAcNT4qU4QQC7Y8r5bPP+FGRAq3ZSv6X0/I=;
        b=S1mcg7caDawFL8XfZRXS4MBdiJ0mCUI0R+n6+D5jvpk1zqSyygH5xJdYtyS5du3yM3
         niOs173Mms5IimnEwYWvOuzSrOhNoe5HQpNgT3CK9C3EJkKT/o8mxr8Fl7MmG+0Ps03Y
         BhTY/neb0Nz/s4tyZ+dQnkwD/x8XUR6EHLetkfODAhOFDOrYatdKLMqeCmwQAs461Qul
         TnYJL+leA6jwfELNEQB7vGFzfsNhHgnoxWbSqTXdQhQSnvrDBGA1hTXcVWSsjsYpR2Cp
         W2iTlE+yuW3HyLPTynya/Z9/6yY96cH5eIkLRHeolgcwCR7/0ihtOvzocpN24uEy4Lql
         l1Mg==
X-Gm-Message-State: ACgBeo0gGwMDTj06MZweMhrAZBe3IkKqyNp/Qygf+mn90fETuVhE48HN
        1jF3AWvBzCE6HdGZJqQxg6c=
X-Google-Smtp-Source: AA6agR4bsdP78J8FAxsRQxdBGVW2HyIX8ncDgPMY8EOIkT3LhkQY11J5o/eW+e0I0/VvsvELTILUpA==
X-Received: by 2002:a5d:628b:0:b0:225:4638:a7df with SMTP id k11-20020a5d628b000000b002254638a7dfmr305135wru.98.1660951692374;
        Fri, 19 Aug 2022 16:28:12 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id y15-20020a5d614f000000b0021f0ff1bc6csm5159981wrt.41.2022.08.19.16.28.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Aug 2022 16:28:11 -0700 (PDT)
Message-ID: <a5484dc8-33a7-e10b-2b73-7a44698a529c@gmail.com>
Date:   Sat, 20 Aug 2022 01:28:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH 01/10] fanotify_init.2: tfix
Content-Language: en-US
To:     Jakub Wilk <jwilk@jwilk.net>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20220819190859.6248-1-jwilk@jwilk.net>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220819190859.6248-1-jwilk@jwilk.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Sk87KzgMUTeY0XQsJafZXe0f"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------Sk87KzgMUTeY0XQsJafZXe0f
Content-Type: multipart/mixed; boundary="------------CyW0bh8XlAL1VpkSTwEULPzu";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jakub Wilk <jwilk@jwilk.net>, Michael Kerrisk <mtk.manpages@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <a5484dc8-33a7-e10b-2b73-7a44698a529c@gmail.com>
Subject: Re: [PATCH 01/10] fanotify_init.2: tfix
References: <20220819190859.6248-1-jwilk@jwilk.net>
In-Reply-To: <20220819190859.6248-1-jwilk@jwilk.net>

--------------CyW0bh8XlAL1VpkSTwEULPzu
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSmFrdWIsDQoNCk9uIDgvMTkvMjIgMjE6MDgsIEpha3ViIFdpbGsgd3JvdGU6DQo+IFNp
Z25lZC1vZmYtYnk6IEpha3ViIFdpbGsgPGp3aWxrQGp3aWxrLm5ldD4NCj4gLS0tDQo+ICAg
bWFuMi9mYW5vdGlmeV9pbml0LjIgfCA0ICsrLS0NCj4gICAxIGZpbGUgY2hhbmdlZCwgMiBp
bnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL21hbjIv
ZmFub3RpZnlfaW5pdC4yIGIvbWFuMi9mYW5vdGlmeV9pbml0LjINCj4gaW5kZXggOWVhYzZk
MmQ3Li4yNjJjNTA1ZmEgMTAwNjQ0DQo+IC0tLSBhL21hbjIvZmFub3RpZnlfaW5pdC4yDQo+
ICsrKyBiL21hbjIvZmFub3RpZnlfaW5pdC4yDQo+IEBAIC0xODYsNyArMTg2LDcgQEAgb2Jq
ZWN0cyBieSBmaWxlIGhhbmRsZXMuDQo+ICAgTm90ZSB0aGF0IHdpdGhvdXQgdGhlIGZsYWcN
Cj4gICAuQlIgRkFOX1JFUE9SVF9UQVJHRVRfRklEICwNCj4gICBmb3IgdGhlIGRpcmVjdG9y
eSBlbnRyeSBtb2RpZmljYXRpb24gZXZlbnRzLA0KPiAtdGhlcmUgaXMgYW4gaW5mb3JhbXRp
b24gcmVjb3JkIHRoYXQgaWRlbnRpZmllcyB0aGUgbW9kaWZpZWQgZGlyZWN0b3J5DQo+ICt0
aGVyZSBpcyBhbiBpbmZvcm1hdGlvbiByZWNvcmQgdGhhdCBpZGVudGlmaWVzIHRoZSBtb2Rp
ZmllZCBkaXJlY3RvcnkNCj4gICBhbmQgbm90IHRoZSBjcmVhdGVkL2RlbGV0ZWQvbW92ZWQg
Y2hpbGQgb2JqZWN0Lg0KPiAgIFRoZSB1c2Ugb2YNCj4gICAuQiBGQU5fQ0xBU1NfQ09OVEVO
VA0KPiBAQCAtNDc3LDcgKzQ3Nyw3IEBAIHVzZXJzIG1heSBjYWxsDQo+ICAgLkJSIGZhbm90
aWZ5X2luaXQgKCkNCj4gICB3aXRob3V0IHRoZQ0KPiAgIC5CIENBUF9TWVNfQURNSU4NCj4g
LWNhcGFiaWxpdHkgdG8gY3JlYXRlIGFuZCBpbnRpYWxpemUgYW4gZmFub3RpZnkgZ3JvdXAg
d2l0aCBsaW1pdGVkIGZ1bmN0aW9uYWxpdHkuDQo+ICtjYXBhYmlsaXR5IHRvIGNyZWF0ZSBh
bmQgaW5pdGlhbGl6ZSBhbiBmYW5vdGlmeSBncm91cCB3aXRoIGxpbWl0ZWQgZnVuY3Rpb25h
bGl0eS4NCg0Kc2hvdWxkIHRoaXMgYmUgJ2EgZmFub3RpZnknIGluc3RlYWQgb2YgJ2FuIGZh
bm90aWZ5Jz8NCg0KQlRXLCBJIG5vdGljZWQgeW91IGZpbmQgYSBsb3Qgb2YgdHlwb3MuICBJ
J20gY3VyaW91czogZG8geW91IGZpbmQgdGhlbSANCndoZW4gcmVhZGluZywgb3IgeW91IHJ1
biBhIHRvb2wgdGhhdCBmaW5kcyB0aGVtPyAgSWYgaXQncyB0aGUgbGF0dGVyLCANCm1heWJl
IHlvdSdkIGJlIGludGVyZXN0ZWQgaW4gYWRkaW5nIGl0IHRvIHRoZSBNYWtlZmlsZSwgYWRk
aW5nIGEgbGludC0qIA0KdGFyZ2V0IHRoYXQgd2UgY2FuIHJ1biBmcm9tIHRpbWUgdG8gdGlt
ZT8NCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCj4gICAuVFANCj4gICBUaGUgbGltaXRhdGlvbnMg
aW1wb3NlZCBvbiBhbiBldmVudCBsaXN0ZW5lciBjcmVhdGVkIGJ5IGEgdXNlciB3aXRob3V0
IHRoZQ0KPiAgIC5CIENBUF9TWVNfQURNSU4NCg0KLS0gDQpBbGVqYW5kcm8gQ29sb21hcg0K
PGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------CyW0bh8XlAL1VpkSTwEULPzu--

--------------Sk87KzgMUTeY0XQsJafZXe0f
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmMAHIQACgkQnowa+77/
2zJXig/+LspgD8go+DDRSwvZ9thMgEsJpHRlKAN4PTy2r8MLjGt53jXiGpZCY8oV
gLCDb2F+N91ISIIjFZewqNUYUSNb+GiU1b079l2f2Qo8mtb4WOUugiDILuyi7IpR
MYy+W7CBbIuaeAgA5Vpi1qT7c4xLqSzoAgJAqz2Kfz+3itTTQtr2lYhMeT6yF9Kh
6nEZoE9ilV9tc+qDnmc0MrMH1dhZRcuH+UeH6+o/tERQA6b5CvszGECzT7H7TBhg
1ndPnjv8M6AYqdyLEKCfnIj+Y0/YBe4O+D8mZJNEl0wi7Z/smG2Uz9KSVUHRv1wH
dm1cv8ifyLwERsJHsOHzZdf8Vjinonc0P/c0hEyZOcnb/FGZHqdCWMeD5K844vtr
RUd5vOiqIv0NpQZ0/ATGYTnSygOqj/ZGZMcpShPyQ9eadO++S6bvKp2V/J3hfzkR
rRzO0KHSs7cZewnTlNtGDPV8Ea+S/lK8E+vorBA7fjW2HlcpGkE7T8rgd7vgtxK4
ZrvYra17N1H/lFoHxGIxDcCjcuFfxBv0woTPWvG8tJPRgAg+SX3mgVhxrwWRBJwV
NUxoU2/TtpaDMht9nld+LrX/L3Hatblp00Y4SxVIIKY2N3x8aCght/uNbYlPEZ+1
Vu16mRQMndZ7vmsSeag9KogXm8511uGWZ3NDuFuFbPhohUKJKmk=
=U/tO
-----END PGP SIGNATURE-----

--------------Sk87KzgMUTeY0XQsJafZXe0f--
