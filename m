Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7CECB65F901
	for <lists+linux-man@lfdr.de>; Fri,  6 Jan 2023 02:21:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234557AbjAFBV1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Jan 2023 20:21:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47342 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233701AbjAFBVH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Jan 2023 20:21:07 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64A6732276
        for <linux-man@vger.kernel.org>; Thu,  5 Jan 2023 17:16:14 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id ay40so159903wmb.2
        for <linux-man@vger.kernel.org>; Thu, 05 Jan 2023 17:16:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BhJllKYVsp3Onz7rvPbcL17B4DQK7FW55uGpscpSu5U=;
        b=FckyJpN2TDule/a8xaXSIuHjuzLdRxwPCMQY+ZteJjwdlCLZfqrezBN7Cilel5rZp6
         a8Bk5Z+Kzf1/MxIqL8es8B0YxgHPRZQMpOqcZ8Ndj22cET7FkKrFMy9rFHZOte9tOVyA
         UZTI+zMw+nhOPklwv6ul4e+TtYrGquXY0tf3MOq6YeZXuOAtnCHYTDEJkM8qOQxfbfpP
         8gp85yiKqITcj4Il6ZlpYKqgjeF4bhu3Xu6bRb/ZMT1UhnF1NYYhOg0nmOz/1BiVSAQ5
         45gp9ea/IJskK15FXMi4U/frszNapafDErNRRnr7m68UB9V1nEkxfPOhDdJhQZO5LaX8
         uceg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=BhJllKYVsp3Onz7rvPbcL17B4DQK7FW55uGpscpSu5U=;
        b=bk0moPy4G6v7+7EpqgCZ1y6uLLSXZokIxvR5x3MJ/NUvLvOn8GvYwaPjj7y8lcGt1j
         52fuIoCPyYjPVA2nnj8a1MCkE9oxvAEIyl1REvLnHVGpC49s5eAd2vxsEU4KLtVVBvEM
         vlpO2+LTj0oXyyA7CjQyuCjmjfb85itm9m9TtHOWObw9wWQSpn5CWp3RlWU2MPptwfZ6
         aNckhhYPQHFC7xv4kjMJ5jbXLnvPLkwK7memba8lmwrj0sd2oJlwdUz+YblDouIVRWqt
         Bcw6tb2uxmaebNuUw5O/qZLTRp9uJi6BjpQTv2B8iEw5/uM8Efa/zs4Fm025jZerRkAM
         YO6w==
X-Gm-Message-State: AFqh2koHqrlq9TJ39CTcJimV2X71tuWluKndNiX10SXt7wXbSu+xRYsa
        ZxTCjE/dAX+SU6T6x8I7+zw=
X-Google-Smtp-Source: AMrXdXsxLKoZPmlewGMTlzCvDLNWlt1MuLTd60W+ZbujbenGTHXaId76cRaIuuh/JvqaN75LRgse4w==
X-Received: by 2002:a05:600c:1f18:b0:3cf:5583:8b3f with SMTP id bd24-20020a05600c1f1800b003cf55838b3fmr36414317wmb.20.1672967719908;
        Thu, 05 Jan 2023 17:15:19 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id l15-20020a5d410f000000b002683695bf97sm38026477wrp.58.2023.01.05.17.15.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Jan 2023 17:15:19 -0800 (PST)
Message-ID: <24f4583f-45be-0d1d-06ae-8526e861f6e3@gmail.com>
Date:   Fri, 6 Jan 2023 02:15:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v3 04/13] ldconfig.8: wfix
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230105225235.6cjtz6orjzxzvo6v@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230105225235.6cjtz6orjzxzvo6v@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0JXdE2BtchCu5XQZGILmLDv0"
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------0JXdE2BtchCu5XQZGILmLDv0
Content-Type: multipart/mixed; boundary="------------fmrgLYym5LVwTh0DXoWfiz2u";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <24f4583f-45be-0d1d-06ae-8526e861f6e3@gmail.com>
Subject: Re: [PATCH v3 04/13] ldconfig.8: wfix
References: <20230105225235.6cjtz6orjzxzvo6v@illithid>
In-Reply-To: <20230105225235.6cjtz6orjzxzvo6v@illithid>

--------------fmrgLYym5LVwTh0DXoWfiz2u
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KT24gMS81LzIzIDIzOjUyLCBHLiBCcmFuZGVuIFJvYmluc29uIHdy
b3RlOg0KPiAqIFByb21vdGUgYSBwYXJlbnRoZXRpY2FsIHRvIHByaW1hcnkgZGlzY3Vzc2lv
bi4gIDY0LWJpdCBzeXN0ZW1zIGFyZSB0aGUNCj4gICAgbm9ybSBub3dhZGF5cy4NCj4gKiBQ
ZXJmb3JtIGEgS2VtcGVyIG5vdGVjdG9teS4gIFRoYXQgaXMsIHN0b3Agc2F5aW5nICJub3Rl
IHRoYXQiDQo+ICAgIGZvbGxvd2VkIGJ5IHNvbWUgZGVjbGFyYXRpdmUgc3RhdGVtZW50LiAg
VGhpcyB0cm9wZSBpcyBhbGwgb3ZlciBVbml4DQo+ICAgIGRvY3VtZW50YXRpb24gYW5kIEkg
ZXZlbiBzZWUgaXQgaW4gSVNPIHN0YW5kYXJkcy4gIFRoZSBsYXR0ZXIgZG9lc24ndA0KPiAg
ICBzZXJ2ZSB0byByZWNvbW1lbmQgaXQ7IGFzIERhdmUgS2VtcGVyIGhhcyBwb2ludGVkIG91
dCwgZXZlcnl0aGluZyB3ZQ0KPiAgICBwdXQgaW4gdGVjaG5pY2FsIGRvY3VtZW50YXRpb24g
c2hvdWxkIGJlIHdvcnRoeSBvZiBub3RlIHVubGVzcyBwbGFjZWQNCj4gICAgaW4gYSBmb290
bm90ZSwgbWFya2VkIGFzICJ1bm5lY2Vzc2FyeSBvbiBhIGZpcnN0IHJlYWRpbmciLCBvciBz
aW1pbGFyLg0KPiAgICBJdCBpcyB0aGUgZXhjZXB0aW9uLCBub3QgdGhlIHJ1bGUuICBJZiB5
b3UgZmVlbCB0aGUgbmVlZCB0byBzYXkgIm5vdGUNCj4gICAgdGhhdCIsIGNvbnNpZGVyIHdo
YXQgYWRqYWNlbnQgbWF0ZXJpYWwgeW91IHNob3VsZG4ndCBiZSBzYXlpbmcgYXQgYWxsLg0K
PiAqIFNheSAic3ltYm9saWMgbGluayIgaW5zdGVhZCBvZiAic3ltbGluayIuDQo+ICogV2hl
biBvbmUgc2VudGVuY2UgZXhwbGFpbnMgdGhlIHByZXZpb3VzLCB1c2UgYSBzZW1pY29sb24u
DQo+ICogUGxhY2UgdGhlIG1vZGlmaWVyICJvbmx5IiBtb3JlIGNhcmVmdWxseS4NCj4gKiBS
ZWNhc3Qgb3B0aW9uIGRlc2NyaXB0aW9ucyB0byBiZSBpbiB0aGUgaW1wZXJhdGl2ZSBtb29k
Lg0KPiAqIFJlY2FzdCBmaWxlIGRlc2NyaXB0aW9ucyB0byB1c2UgdGhlIHBhcmFncmFwaCB0
YWcgYXMgdGhlIHN1YmplY3Qgb2YNCj4gICAgdGhlIGZpcnN0IHNlbnRlbmNlLg0KPiANCj4g
U2lnbmVkLW9mZi1ieTogRy4gQnJhbmRlbiBSb2JpbnNvbiA8Zy5icmFuZGVuLnJvYmluc29u
QGdtYWlsLmNvbT4NCg0KUGF0Y2ggYXBwbGllZC4gIFRoYW5rcyENCg0KSSd2ZSBwdXNoZWQg
dGhlbSB0byBteSB3ZWJzaXRlLCBzbyB5b3UgY2FuIHN5bmMgd2l0aCB0aGF0LiAgSXQncyBp
biB0aGUgbWFpbiANCmJyYW5jaCAoYW55d2F5LCBpdCdzIG15IHN0dWZmLCBzbyBJIG1heSBy
ZWJhc2UgOikpLg0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KPiAtLS0NCj4gICBtYW44L2xkY29u
ZmlnLjggfCAyNiArKysrKysrKysrKystLS0tLS0tLS0tLS0tLQ0KPiAgIDEgZmlsZSBjaGFu
Z2VkLCAxMiBpbnNlcnRpb25zKCspLCAxNCBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1n
aXQgYS9tYW44L2xkY29uZmlnLjggYi9tYW44L2xkY29uZmlnLjgNCj4gaW5kZXggMzQ2MDI3
NWFkLi5kZTJiN2E1YzMgMTAwNjQ0DQo+IC0tLSBhL21hbjgvbGRjb25maWcuOA0KPiArKysg
Yi9tYW44L2xkY29uZmlnLjgNCj4gQEAgLTM4LDggKzM4LDggQEAgaW4gdGhlIGZpbGUNCj4g
ICBhbmQgaW4gdGhlIHRydXN0ZWQgZGlyZWN0b3JpZXMsDQo+ICAgLkkgL2xpYg0KPiAgIGFu
ZA0KPiAtLkkgL3Vzci9saWINCj4gLShvbiBzb21lIDY0LWJpdCBhcmNoaXRlY3R1cmVzIHN1
Y2ggYXMgeDg2LTY0LA0KPiArLklSIC91c3IvbGliIC4NCj4gK09uIHNvbWUgNjQtYml0IGFy
Y2hpdGVjdHVyZXMgc3VjaCBhcyB4ODYtNjQsDQo+ICAgLkkgL2xpYg0KPiAgIGFuZA0KPiAg
IC5JIC91c3IvbGliDQo+IEBAIC00OCw3ICs0OCw3IEBAIHdoaWxlDQo+ICAgLkkgL2xpYjY0
DQo+ICAgYW5kDQo+ICAgLkkgL3Vzci9saWI2NA0KPiAtYXJlIHVzZWQgZm9yIDY0LWJpdCBs
aWJyYXJpZXMpLg0KPiArYXJlIHVzZWQgZm9yIDY0LWJpdCBsaWJyYXJpZXMuDQo+ICAgLlBQ
DQo+ICAgVGhlIGNhY2hlIGlzIHVzZWQgYnkgdGhlIHJ1bi10aW1lIGxpbmtlciwNCj4gICAu
SSBsZC5zbw0KPiBAQCAtOTUsOSArOTUsOCBAQCBvcHRpb24uDQo+ICAgc2hvdWxkIG5vcm1h
bGx5IGJlIHJ1biBieSB0aGUgc3VwZXJ1c2VyIGFzIGl0IG1heSByZXF1aXJlIHdyaXRlDQo+
ICAgcGVybWlzc2lvbiBvbiBzb21lIHJvb3Qgb3duZWQgZGlyZWN0b3JpZXMgYW5kIGZpbGVz
Lg0KPiAgIC5QUA0KPiAtTm90ZSB0aGF0DQo+ICAgLkIgXCVsZGNvbmZpZw0KPiAtd2lsbCBv
bmx5IGxvb2sgYXQgZmlsZXMgdGhhdCBhcmUgbmFtZWQNCj4gK3dpbGwgbG9vayBvbmx5IGF0
IGZpbGVzIHRoYXQgYXJlIG5hbWVkDQo+ICAgLkkgbGliKi5zbyoNCj4gICAoZm9yIHJlZ3Vs
YXIgc2hhcmVkIG9iamVjdHMpIG9yDQo+ICAgLkkgbGRcLSouc28qDQo+IEBAIC0xMDUsNyAr
MTA0LDcgQEAgd2lsbCBvbmx5IGxvb2sgYXQgZmlsZXMgdGhhdCBhcmUgbmFtZWQNCj4gICBP
dGhlciBmaWxlcyB3aWxsIGJlIGlnbm9yZWQuDQo+ICAgQWxzbywNCj4gICAuQiBcJWxkY29u
ZmlnDQo+IC1leHBlY3RzIGEgY2VydGFpbiBwYXR0ZXJuIHRvIGhvdyB0aGUgc3ltbGlua3Mg
YXJlIHNldCB1cCwNCj4gK2V4cGVjdHMgYSBjZXJ0YWluIHBhdHRlcm4gdG8gaG93IHRoZSBz
eW1ib2xpYyBsaW5rcyBhcmUgc2V0IHVwLA0KPiAgIGxpa2UgdGhpcyBleGFtcGxlLA0KPiAg
IHdoZXJlIHRoZSBtaWRkbGUgZmlsZQ0KPiAgIC5SQiAoIGxpYmZvby5zby4xDQo+IEBAIC0x
NjIsMTMgKzE2MSwxMiBAQCBJZ25vcmUgYXV4aWxpYXJ5IGNhY2hlIGZpbGUuDQo+ICAgLlRQ
DQo+ICAgLkIgXC1sDQo+ICAgKFNpbmNlIGdsaWJjIDIuMikNCj4gLUxpYnJhcnkgbW9kZS4N
Cj4gLU1hbnVhbGx5IGxpbmsgaW5kaXZpZHVhbCBsaWJyYXJpZXMuDQo+IC1JbnRlbmRlZCBm
b3IgdXNlIGJ5IGV4cGVydHMgb25seS4NCj4gK0ludGVycHJldCBlYWNoIG9wZXJhbmQgYXMg
YSBsaWJhcnkgbmFtZSBhbmQgY29uZmlndXJlIGl0cyBsaW5rcy4NCj4gK0ludGVuZGVkIGZv
ciB1c2Ugb25seSBieSBleHBlcnRzLg0KPiAgIC5UUA0KPiAgIC5CIFwtbg0KPiAtUHJvY2Vz
cyBvbmx5IHRoZSBkaXJlY3RvcmllcyBzcGVjaWZpZWQgb24gdGhlIGNvbW1hbmQgbGluZS4N
Cj4gLURvbid0IHByb2Nlc3MgdGhlIHRydXN0ZWQgZGlyZWN0b3JpZXMsDQo+ICtQcm9jZXNz
IG9ubHkgdGhlIGRpcmVjdG9yaWVzIHNwZWNpZmllZCBvbiB0aGUgY29tbWFuZCBsaW5lOw0K
PiArZG9uJ3QgcHJvY2VzcyB0aGUgdHJ1c3RlZCBkaXJlY3RvcmllcywNCj4gICBub3IgdGhv
c2Ugc3BlY2lmaWVkIGluDQo+ICAgLklSIC9ldGMvbGQuc28uY29uZiAuDQo+ICAgSW1wbGll
cw0KPiBAQCAtMjE5LDE1ICsyMTcsMTUgQEAgdGhlIGNhY2hlIGlzIHN0aWxsIHJlYnVpbHQu
DQo+ICAgLlBEIDANCj4gICAuVFANCj4gICAuSSAvbGliL2xkLnNvDQo+IC1SdW4tdGltZSBs
aW5rZXIvbG9hZGVyLg0KPiAraXMgdGhlIHJ1bi10aW1lIGxpbmtlci9sb2FkZXIuDQo+ICAg
LlRQDQo+ICAgLkkgL2V0Yy9sZC5zby5jb25mDQo+IC1GaWxlIGNvbnRhaW5pbmcgYSBsaXN0
IG9mIGRpcmVjdG9yaWVzLA0KPiArY29udGFpbnMgYSBsaXN0IG9mIGRpcmVjdG9yaWVzLA0K
PiAgIG9uZSBwZXIgbGluZSwNCj4gICBpbiB3aGljaCB0byBzZWFyY2ggZm9yIGxpYnJhcmll
cy4NCj4gICAuVFANCj4gICAuSSAvZXRjL2xkLnNvLmNhY2hlDQo+IC1GaWxlIGNvbnRhaW5p
bmcgYW4gb3JkZXJlZCBsaXN0IG9mIGxpYnJhcmllcyBmb3VuZCBpbiB0aGUgZGlyZWN0b3Jp
ZXMNCj4gK2NvbnRhaW5zIGFuIG9yZGVyZWQgbGlzdCBvZiBsaWJyYXJpZXMgZm91bmQgaW4g
dGhlIGRpcmVjdG9yaWVzDQo+ICAgc3BlY2lmaWVkIGluDQo+ICAgLklSIC9ldGMvbGQuc28u
Y29uZiAsDQo+ICAgYXMgd2VsbCBhcyB0aG9zZSBmb3VuZCBpbiB0aGUgdHJ1c3RlZCBkaXJl
Y3Rvcmllcy4NCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=


--------------fmrgLYym5LVwTh0DXoWfiz2u--

--------------0JXdE2BtchCu5XQZGILmLDv0
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmO3diYACgkQnowa+77/
2zLmLw//d6mBd9ztnIFckrPYj2ws5Q3//6j+uHLrG7l7dqvzMdN8H/ffWYDsvUyb
dUDcs2Jlg9IY5UqvMzE4Ls5rvWAoj5oCsVnZtwBmbEH/cOPvKKR9cBvzWZ6citHf
/c9vwDaoefVsAojGTTHuOty4sVNyOMqCwNhr1SsRICYgynW/hkzDjQS6lw20tVLG
8Pc93sEt9UAoX2x1QaMO8iRXn7DsVdXQQZZWB3gAgB/C6P4Frb2J8bKqcWNdvl3N
cSskTxZwVuzGQV0JJkVB9+BENwLz1TsqqW7I2MeSdMZMLXgcmpw1M8+XP7GXDd9o
rHU6GTZ/GTS3S31VtB7gpB4B6VQqyfVZxJpyRHoUadil1ermThlcYba9bVcgmFJC
5kcBuMFJApkvVyPe/qlUiK6YdX9YqwcO8U1ryjHvxdiIyPADKHbMKOY0lbcCtkTr
BAeMUo+vmyjfabvMbn1VdWCrnd5LE6dRnVJMswGgXIr+zEQ5YhAcAKc2Uan3VZDL
0RqKYcnzeNroGQyV22ht+LqftLcBLk4w3JfyJgeekyMvWsB8JGUxj7DBL/GjrmE0
72+J3LAvz+rNVOomilYCJPT3L/D/M21AmjTqWAUeT3KLYeeRrOBkJohvalGOixtG
PdDjHD06Kf5njdhcZIr4q2AfjPr5Kad/l81HWscD9kBb6G+V5/o=
=7wkr
-----END PGP SIGNATURE-----

--------------0JXdE2BtchCu5XQZGILmLDv0--
