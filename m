Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ECAD6680F94
	for <lists+linux-man@lfdr.de>; Mon, 30 Jan 2023 14:55:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236352AbjA3NzC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 30 Jan 2023 08:55:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33692 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236601AbjA3Nyy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 30 Jan 2023 08:54:54 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1751E38EB6
        for <linux-man@vger.kernel.org>; Mon, 30 Jan 2023 05:54:52 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id o36so2021897wms.1
        for <linux-man@vger.kernel.org>; Mon, 30 Jan 2023 05:54:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Vlv5Pu46HdpJWRL6e3XAFZSaY8AwnyaLykc82j5ZZJY=;
        b=mU73ZkdE5YdqWKVxuLpIqV9lwtSKPd2IlYxuAWmbueOUDKV1GxCkYYTUlsCen6m8hx
         7jCs3uk2Z84ZhubwUcWup2OKkXfEXtvDkTyMYLWrcC2VDPmmfwxIAMMTgj7s2t5tKXIs
         KwGbpXHHRn6H0yo+MZefUBxJpqFRMCqvchXuQ6bTuMyIHi5zjopieiSyBZxNmT/PjEGv
         4wa+ORKSLrr1Ku7V1NXDQHEtRT+i/jhSi6fYc3MItp7O6PSXo2cFhr1NxoLLwq+dULrE
         cEYxY/eNLEFjut/yT3aOSfEDDuhP+RbGQLSwkCAhxqADewz8M+dRBfMSTsFY0d9KyxRn
         l3mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Vlv5Pu46HdpJWRL6e3XAFZSaY8AwnyaLykc82j5ZZJY=;
        b=086WLd+W3IIwSJggYK6URGgdqhw0Ji44H+sZdNiOR99QVCG8T6yA0dyViN6+3Mv4iU
         O3vp4T7xD3vGhYfPvq3HCz8fEtgLlx1Zf0d64gA4CsivEqiNELcgQN3j1ut+IXgijIOq
         ACD1bVjFFMJiokprxdkC54ruhDh9BeiJu7QOKq0SGJqHzWeBIy4wsEKY3mQJ6aoskoKl
         N3xDC3THpcT8SmfTl9ozTH4jMronW0TalMkhOABju3OBcngWXgRyp4l3VDuT/3p0lKp2
         O0jMRhWkTMaol6kVANO17CgkwYVLdBHM9mJ9nkZ6mnGD2jCPKHhhVxlDk9p5K7s4bcUs
         I5rA==
X-Gm-Message-State: AFqh2krqRXfb1Na41oARWR0L8OA5MFmszQHYsOX61YBsmo+g1tX35qKa
        xpbABaFF85hJbJCd8Vg5gvY=
X-Google-Smtp-Source: AMrXdXuTXH/C4HN0gmwVLXamPetvVxULFvEklAY7fnDEbYXH9ylYOoBXUJtEq3XfGxazgi+llzkNdQ==
X-Received: by 2002:a05:600c:920:b0:3da:22a6:7b6b with SMTP id m32-20020a05600c092000b003da22a67b6bmr50906781wmp.13.1675086890574;
        Mon, 30 Jan 2023 05:54:50 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id l16-20020a7bc350000000b003d9aa76dc6asm19100965wmj.0.2023.01.30.05.54.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Jan 2023 05:54:50 -0800 (PST)
Message-ID: <e09ac267-0c0f-56df-2f38-f6fd345f5ad2@gmail.com>
Date:   Mon, 30 Jan 2023 14:54:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 1/3] timespec.3type: tv_nsec is impl-def-type, glibc llong
 not a bug
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Jakub Wilk <jwilk@jwilk.net>,
        =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
        linux-man@vger.kernel.org
References: <4a67167df30db6019a6320dc92a953f9df3f4db2.1674915219.git.nabijaczleweli@nabijaczleweli.xyz>
 <cfda064c-b3f0-d541-bbee-e3a72c0b3cf3@gmail.com>
 <20230130070838.5mgjdbrfhtlww5t7@jwilk.net>
 <34f497d7-7aba-84b6-c9b8-1d8bbcf183e5@gmail.com>
 <20230130135030.yj7dcbcdj35xwap2@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230130135030.yj7dcbcdj35xwap2@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------wb5ZPfnEnIJEpLh00U0UoOKT"
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
--------------wb5ZPfnEnIJEpLh00U0UoOKT
Content-Type: multipart/mixed; boundary="------------GWkkKU71eewtd4ooYLFYtLPk";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Jakub Wilk <jwilk@jwilk.net>, =?UTF-8?B?0L3QsNCx?=
 <nabijaczleweli@nabijaczleweli.xyz>, linux-man@vger.kernel.org
Message-ID: <e09ac267-0c0f-56df-2f38-f6fd345f5ad2@gmail.com>
Subject: Re: [PATCH 1/3] timespec.3type: tv_nsec is impl-def-type, glibc llong
 not a bug
References: <4a67167df30db6019a6320dc92a953f9df3f4db2.1674915219.git.nabijaczleweli@nabijaczleweli.xyz>
 <cfda064c-b3f0-d541-bbee-e3a72c0b3cf3@gmail.com>
 <20230130070838.5mgjdbrfhtlww5t7@jwilk.net>
 <34f497d7-7aba-84b6-c9b8-1d8bbcf183e5@gmail.com>
 <20230130135030.yj7dcbcdj35xwap2@illithid>
In-Reply-To: <20230130135030.yj7dcbcdj35xwap2@illithid>

--------------GWkkKU71eewtd4ooYLFYtLPk
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiENCg0KT24gMS8zMC8yMyAxNDo1MCwgRy4gQnJhbmRlbiBSb2JpbnNvbiB3
cm90ZToNCj4gSGkgQWxleCwNCj4gDQo+IEF0IDIwMjMtMDEtMzBUMTQ6MTU6NTArMDEwMCwg
QWxlamFuZHJvIENvbG9tYXIgd3JvdGU6DQo+PiBPbiAxLzMwLzIzIDA4OjA4LCBKYWt1YiBX
aWxrIHdyb3RlOg0KPj4+ICogQWxlamFuZHJvIENvbG9tYXIgPGFseC5tYW5wYWdlc0BnbWFp
bC5jb20+LCAyMDIzLTAxLTI5IDE2OjQ4Og0KPj4+Pj4gKy5CUiAiwqDCoMKgIC8qXChkYSov
wqDCoCB0dl9uc2VjOyIgIsKgIC8qIE5hbm9zZWNvbmRzIFsiIDAgIiwgIiA5OTk5OTk5OTkg
Il0gKi8iDQo+Pj4+DQo+Pj4+IEknbSB0ZW1wdGVkIHRvIG1lcmdlIHRoaXMgcGF0Y2guwqAg
SXQncyBzb29vIHF1dGUgLyrihpMqLw0KPj4+DQo+Pj4gSSB3YW50IG1hbiBwYWdlcyBsZWdp
YmxlLCBub3QgY3V0ZS4NCj4+DQo+PiBJIGtub3csIEkga25vdy4NCj4+DQo+Pj4gUGxlYXNl
IG1ha2UgaXQNCj4+Pg0KPj4+ICAgwqAgLyogc2VlIGJlbG93ICovIHR2X25zZWMNCj4+Pg0K
Pj4+IG9yIG1heWJlDQo+Pj4NCj4+PiAgIMKgIGxvbmcgLyogYnV0IHNlZSBiZWxvdyAqLyB0
dl9uc2VjDQo+Pj4NCj4+PiAoZ2l2ZW4gdGhhdCBDMjMgaXMgbm90IGEgdGhpbmcgeWV0KS4N
Cj4+DQo+PiBUaGUgcmVhc29uIHdoeSBJIHNlcmlvdXNseSBjb25zaWRlcmVkIC8q4oaTKi8g
aXMgdGhhdCBpdCBpcyBhIGJpdA0KPj4gc2hvY2tpbmcgdG8gdGhlIHJlYWRlciwgd2hpY2gg
d2lsbCBwcm9tcHQgaXQgdG8gcmVhZCB0aGUgcmVzdCBvZiB0aGUNCj4+IHBhZ2UgdG8gc2Vl
IHdoYXQgdGhlIGhlbGwgdGhhdCBpcy4NCj4gDQo+IEV2ZW4gbW9yZSBzaG9ja2luZyB3aWxs
IGJlICd2Jywgd2hpY2ggaXMgd2hhdCBpdCB3aWxsIGRlZ3JhZGUgdG8gb24NCj4gQVNDSUks
IElTTyA4ODU5LCBhbmQgY29kZSBwYWdlIDEwNDcgdGVybWluYWxzLiAgT24gdG9wIG9mIGJl
aW5nDQo+IHN0YXJ0bGluZywgaXQgd2lsbCBsb29rIHNpbXBseSBsaWtlIGFuIGVycm9yLg0K
DQpNYWtlcyBzZW5zZS4NCg0KPiANCj4+IEknbSB3b3JyaWVkIHRoYXQgaWYgd2UgbWFrZSBp
dCBgbG9uZ2AgcGx1cyBhIGNvbW1lbnQgdG8gc2VlIGJlbG93LA0KPj4gbWFueSB3aWxsIGln
bm9yZSBpdC4NCj4gDQo+IFRoYXQncyBvbiB0aGVtLiAgIi8qIHNlZSBiZWxvdyAqLyIgbWVh
bnMgd2hhdCBpdCBzYXlzLiAgQSBwZXJzb24gY2Fubm90DQo+IHJlYXNvbmFibHkgY2xhaW0g
dGhleSB3ZXJlbid0IHdhcm5lZC4NCj4gDQo+PiAvKiBzZWUgYmVsb3cgKi8gd2l0aCBubyBt
ZW50aW9ucyB0byBgbG9uZ2AgbWlnaHQgYmUgYSByZWFzb25hYmxlDQo+PiBhbHRlcm5hdGl2
ZS4gTWF5YmUgSSdkIHVzZSAvKiAuLi4gKi8NCj4+DQo+PiBXaGF0IGRvIHknYWxsIHRoaW5r
IGFib3V0IGl0Pw0KPiANCj4gSSB0aGluaw0KPiANCj4gbG9uZyAvKiBzZWUgYmVsb3cgKi8g
dHZfbnNlYzsNCj4gDQo+IG1lZXRzIHRoZSByZXF1aXJlbWVudHMgYXQgaXNzdWUuDQoNCkkg
dGhpbmsgc28uDQoNCkNoZWVycywNCg0KQWxleA0KDQo+IA0KPiBSZWdhcmRzLA0KPiBCcmFu
ZGVuDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------GWkkKU71eewtd4ooYLFYtLPk--

--------------wb5ZPfnEnIJEpLh00U0UoOKT
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPXzB8ACgkQnowa+77/
2zINsA//XRiFVo6w2GpR5XvezE4Bgu/kqn58nhlSfVBlEwdRzQhuphLcFZuFKUzl
0I5LfcvIWMeehAVqyMQLXCcg3g4RJzD+WqmFBAmwrNyNoqhUizGS6mhLvVAqcIpH
CNou1WlfYHZei6lVT5C+jRTgmkX/8kDjPsvnxbyw2ZUZRdr2yAh5RoWIP4bhkRgK
c9hV+8hynebXDlHuNtAQjJjXdcFWXGaLeoLxpdOgXtLJN9dpQVIjhQZxPpkPsI8O
PCq89PYHdJSxvHbVNH5Um0Gb29whd1aKz4YfTAoFNjNzyMHLPP9H9r9mNT9D2UEV
LK4zaRwPj0WPxwshirRTwfjd//a6BU2I51uhVoOd7rdObPHsAz+3bcvGmKGHJi+S
LTmqFZlAhmHCCUHYgWWqNd+ld1V0D1NUFVOzQkT21hdtfHQk4uDbTHS7HAlnZ5fb
MtyogqJ05YlQ0BU4hPcj4D83D8JCe4w5cFtYu6mOn/IEeihpH4riEluvFJphWZXN
gkpcy/v28Ckt9Qp+cT9VJqGoOefJJ8LpcBSqajXcxW5OmXMcSdD22Adzy5QaH7QX
7cZmTUbenUMMj4VJV6ue3TZ6PfRXq9TjHz0Ycv7rC5J1FLsImles+DWqO1aaajJE
YQ9dFpckXx5ZKw7JY8P7isWoi9UJHtxDCbKz1/xzj8jkLWWRF48=
=x5+W
-----END PGP SIGNATURE-----

--------------wb5ZPfnEnIJEpLh00U0UoOKT--
