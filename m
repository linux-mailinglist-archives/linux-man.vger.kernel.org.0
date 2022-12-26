Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DB9EA65654C
	for <lists+linux-man@lfdr.de>; Mon, 26 Dec 2022 23:29:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230523AbiLZW3V (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 26 Dec 2022 17:29:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229491AbiLZW3T (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 26 Dec 2022 17:29:19 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE40F2BE
        for <linux-man@vger.kernel.org>; Mon, 26 Dec 2022 14:29:17 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id ja17so8331439wmb.3
        for <linux-man@vger.kernel.org>; Mon, 26 Dec 2022 14:29:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2BzebSLCJKQYOdfEZS3+LcJOaJoBUuK+m5s/N4WhlZg=;
        b=Ohs5JcRAjGBUvm1p+YBLt8mcie2NenxuZLtBVVPKT4VIu6sQW1iECHb61XPSO/4/ST
         D4Z9KhfJDxVL7x3h0KFRioDfCmu6IGNB/8yTuUsvdR9MDnmMBEY1033euXGjJqQv/zyL
         QuTksAB6xDJ0slkDPAm052JcPFob2eNMSqZcf1TDGKdGDQxfWgYKGH9qpjbN56uD7A3z
         dKNMz9T3AucUVE0JYzOTlQRMANQ8YSao1rqTaAugsgDtGY184j8J+/n+NnWmLA2tSEPf
         FnrQqpj73ECi/2whKH1SKZM6vWCNtMfVbx0ER6SKLxsKdLiYNQqelQ3vYjCtvznHWjHO
         xNwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2BzebSLCJKQYOdfEZS3+LcJOaJoBUuK+m5s/N4WhlZg=;
        b=XcU+WIeRhMYyxTin09VwamQuM7t42SfFtcIKs72jHgiHTA4Pt3ZFWIkGfk8s6wWgLE
         oqqjo/k6cipieF5BjJlZqsNuFwHMDisntnlY7H7+5K0ctJHW143NMZalZ7oZBMe5jDUV
         O5NDJbqnzc1/aYoniBF0Nu+f735BnnLhslpA2RQYzt4da5S2HGYys4vcmKh9y7xiTa7M
         ev1b2fAxaZ+zg3Xyt0IhcBV8nWpMSvLlbWL2BUeq06/B7J9y+d9RLALJd28tM3IgOvhN
         CYw4qti5imfPGxRjw+HPpNMRK872vRXIvNfRWsX5gg8Hq6MTKVvKT1g4mZ7bLsVohoBt
         kL3Q==
X-Gm-Message-State: AFqh2kpvt8jswVQPInqnewT4oP3H5kiDqaFA9vRknHwSanpOB6A7zvkn
        knNNiKuIuVc1VLtHt3UA+EU=
X-Google-Smtp-Source: AMrXdXt0ebfuk+R7PORsbE+zlm4v3euqypMaAbYghAFaBTpzHWnRX+D9FB4E6/TPWv1K7kuiZrhTuw==
X-Received: by 2002:a05:600c:d2:b0:3d2:2b70:f2fd with SMTP id u18-20020a05600c00d200b003d22b70f2fdmr14213065wmm.21.1672093756405;
        Mon, 26 Dec 2022 14:29:16 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id s16-20020a1cf210000000b003c6bd12ac27sm15171167wmc.37.2022.12.26.14.29.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Dec 2022 14:29:15 -0800 (PST)
Message-ID: <92e5ad68-d013-43f5-cc3e-459daea93a83@gmail.com>
Date:   Mon, 26 Dec 2022 23:29:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH] Add example to rand.3
Content-Language: en-US
To:     Jonny Grant <jg@jguk.org>, Florian Weimer <fweimer@redhat.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>
References: <105835f5-359c-2646-f609-e73459ee2d3b@jguk.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <105835f5-359c-2646-f609-e73459ee2d3b@jguk.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------G3CqRNEjS2vjpytE5vP1we1Z"
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
--------------G3CqRNEjS2vjpytE5vP1we1Z
Content-Type: multipart/mixed; boundary="------------FxIVzKc1EMeEfK8seB2nLvjz";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jonny Grant <jg@jguk.org>, Florian Weimer <fweimer@redhat.com>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>,
 linux-man <linux-man@vger.kernel.org>,
 GNU C Library <libc-alpha@sourceware.org>
Message-ID: <92e5ad68-d013-43f5-cc3e-459daea93a83@gmail.com>
Subject: Re: [PATCH] Add example to rand.3
References: <105835f5-359c-2646-f609-e73459ee2d3b@jguk.org>
In-Reply-To: <105835f5-359c-2646-f609-e73459ee2d3b@jguk.org>

--------------FxIVzKc1EMeEfK8seB2nLvjz
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSm9ubnksDQoNCk9uIDEyLzI2LzIyIDIyOjUwLCBKb25ueSBHcmFudCB3cm90ZToNCj4g
SGkgQWxlamFuZHJvDQoNClBsZWFzZSBzZW5kIGFsc28gdG8gbXkgZW1haWwuDQoNCj4gUGxl
YXNlIGZpbmQgYmVsb3cgYSBwYXRjaC4NCj4gDQo+IDIwMjItMTItMjYgIEpvbmF0aGFuIEdy
YW50IDxqZ0BqZ3VrLm9yZz4NCj4gCSogbWFuMy9yYW5kLjM6IEFkZCBleGFtcGxlIHRvIHJh
bmQuMyBzZWVkIHdpdGggdGltZShOVUxMKQ0KPiANCj4gDQo+ICBGcm9tIDJkNDUwMTM1NGVh
NmM0NjUxNzNmZTZjMDg5ZGZiY2M4MDM5M2E2NDQgTW9uIFNlcCAxNyAwMDowMDowMCAyMDAx
DQo+IEZyb206IEpvbmF0aGFuIEdyYW50IDxqZ0BqZ3VrLm9yZz4NCj4gRGF0ZTogTW9uLCAy
NiBEZWMgMjAyMiAyMTo0ODoxNyArMDAwMA0KPiBTdWJqZWN0OiBbUEFUQ0hdIGFkZCByYW5k
LjMgZXhhbXBsZQ0KPiANCj4gU2lnbmVkLW9mZi1ieTogSm9uYXRoYW4gR3JhbnQgPGpnQGpn
dWsub3JnPg0KDQp0aW1lKE5VTEwpIGlzIG5vdCB0b28gZ29vZC4gIElmIHlvdSBjYWxsIGl0
IHNldmVyYWwgdGltZXMgcGVyIHNlY29uZCwgeW91J2xsIA0KZmluZCB0aGF0IGl0IG9ubHkg
Y2hhbmdlcyB0aGUgc2VlZCBldmVyeSBzZWNvbmQuICBUaGVyZSBhcmUgYmV0dGVyIHdheXMg
dG8gDQpwcm9kdWNlIGEgZ29vZCBzZWVkLg0KDQpIb3dldmVyLCBJIHByZWZlciBzdWdnZXN0
aW5nIGFyYzRyYW5kb20oKSByYXRoZXIgdGhhbiB3b3JrYXJvdW5kaW5nIHJhbmQoMykgdG8g
DQpnZXQgZ29vZCByZXN1bHRzLg0KDQpGbG9yaWFuLCBkaWQgeW91IGFscmVhZHkgbWVyZ2Ug
YXJjNHJhbmRvbSgpIHRvIGdsaWJjPw0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KPiAtLS0NCj4g
ICBtYW4zL3JhbmQuMyB8IDE0ICsrKysrKysrKysrKysrDQo+ICAgMSBmaWxlIGNoYW5nZWQs
IDE0IGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9tYW4zL3JhbmQuMyBiL21h
bjMvcmFuZC4zDQo+IGluZGV4IDU3MjQ3MTc0OS4uYzE1NDJmYjU2IDEwMDY0NA0KPiAtLS0g
YS9tYW4zL3JhbmQuMw0KPiArKysgYi9tYW4zL3JhbmQuMw0KPiBAQCAtMTY0LDYgKzE2NCwy
MCBAQCB3aGVuIGdvb2QgcmFuZG9tbmVzcyBpcyBuZWVkZWQuDQo+ICAgLkJSIHJhbmRvbSAo
MykNCj4gICBpbnN0ZWFkLikNCj4gICAuU0ggRVhBTVBMRVMNCj4gKw0KPiArQSBwb3NzaWJs
eSB1c2VmdWwgc2VlZCB2YWx1ZSB3b3VsZCBiZSBieSBjYWxsaW5nDQo+ICsuQlIgcmFuZCAo
KQ0KPiArd2l0aCB0aGUgcmVzdWx0IG9mDQo+ICsNCj4gKy5CUiB0aW1lICgpDQo+ICthcyB0
aGF0IHZhcmllcyB3aXRoIGV2ZXJ5IGNhbGwNCj4gKw0KPiArLkVYDQo+ICtzcmFuZCgodW5z
aWduZWQgaW50KXRpbWUoTlVMTCkpOw0KPiArLkVFDQo+ICsuaW4NCj4gKy5QUA0KPiArDQo+
ICAgUE9TSVguMS0yMDAxIGdpdmVzIHRoZSBmb2xsb3dpbmcgZXhhbXBsZSBvZiBhbiBpbXBs
ZW1lbnRhdGlvbiBvZg0KPiAgIC5CUiByYW5kICgpDQo+ICAgYW5kDQoNCi0tIA0KPGh0dHA6
Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------FxIVzKc1EMeEfK8seB2nLvjz--

--------------G3CqRNEjS2vjpytE5vP1we1Z
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOqIDoACgkQnowa+77/
2zKQsA//QjCTkMfqA/p9RupC3PyOrYYvyeyqaNWI1h2pIbN1C4KjgFDRvgFe0oBK
2D5MGzFtai9D4yoxUWqJ/PFfElqsimMg/3V4fvS6jb5ic4+iL+dJbC1eNY3GkBbZ
LzIzE8RZdSq4DgcbwYtF1sW13fxuMJRk9Yn78o1juIgB+5TcYRIDog3iMY73Ktcz
qdg2WozR3b0y8TPZpmLFFDtacA5xlEffa34lJ1gBQj+oajYshEddk4o05y2C9qKs
So9zvv6awhapmNLzza472dJ7ZQmu7Gw0T88aq1xoA2LmIlppoh7Tddhco2NeyQxY
YYMutgvb9ynIYTYGg26f7ZwXdPy3Kj1Nreb/i9LLqeST+kOsT31Z1hv8z5ds3bYk
4MZF56/5eba+uyqgG4cSwHYgT8iyJf5onBKHkRF8hHoRAgxPAUjYikrTlPtQ9xHl
7GbYcjWQobK5vd2/RlB2UtA+FsLkfJO+TLTGJMXtjEllvBXUG8CdLYUlWj5TEmK7
9YVuWxLWs4M39Zn1mYsPnXTzfA4MIpm3LoucIZroigRw8zN/9wgfE9xxrThCSdJL
5QXkeXKEYNIlRZMnbc9Oa54Bl3nj8iONMvUQWr+Vi2w3Wjl4deRCHqWKbg4QHx+Z
jzVfTv2BHt+MDzk1EJA6I5C56y1anwVbAC8LUFmP3dQ7KD58BZ8=
=J7Gj
-----END PGP SIGNATURE-----

--------------G3CqRNEjS2vjpytE5vP1we1Z--
