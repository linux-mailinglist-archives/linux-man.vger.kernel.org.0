Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 07C61680044
	for <lists+linux-man@lfdr.de>; Sun, 29 Jan 2023 17:42:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233855AbjA2QmB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 29 Jan 2023 11:42:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43230 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229910AbjA2QmA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 29 Jan 2023 11:42:00 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 100D41027E
        for <linux-man@vger.kernel.org>; Sun, 29 Jan 2023 08:41:59 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id t18so9064852wro.1
        for <linux-man@vger.kernel.org>; Sun, 29 Jan 2023 08:41:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZvsP5RZzUIAgs9lZnsFZpsyiiax7O/m2GcuXyWQXEkY=;
        b=Nx+eV0tPH5fBky7y4eAkfqFFs7KzNn1EoTdH6wUHRTbXg4nRpRrhsyrLb+Dju50PAW
         HpbFQXPl2u0qDVM8wKzw8Ez8XQVkfX7JuSta/aVz6CdBoXl9A43uq0N7R+JU1/GZdaGf
         dX5RlfQl1zvBEWnx3CHHOrC2NAOj+KF2OhFkxeuQmBWctcB8xmOWwydbiVgbr+j42hal
         9G7lpTJdr60rAbskYme/68vKBJTS0sLvwsd6iQFVn/P0C4+gVvopaRE/jiyLFCoS1tAD
         9OJsMp/XATXS7WPjNuTizEsySJVDFP1RuG7WjPBSf75n2sMDSxSsLNpWUFyX2qZTaWHF
         fx8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ZvsP5RZzUIAgs9lZnsFZpsyiiax7O/m2GcuXyWQXEkY=;
        b=DDeC8YPI5vBC/C1LVFlJJhkOdtEKvOH9M2G43lDzmytbdXGscy0XqZb6txunjoIVhf
         VCWc7vuZh2Asuv3RZ5vShJni/x8qhEu85PZTovTpO/XZkMN/V592d2JD42hPMnnUTA4R
         j/ECSMEhivM2Y9P7tg0t7OnOYXDkfBzW6rtXM+CXOIMkuKg93+bY3sLOhabNskjPaFfM
         SLLsqFrobuqWOMBjLoPE65NXtJgPMr1pKoMmOlljcJvioq+DWW9CyBZO8821HF5JEU++
         2zcO5AlI+CKYIJeHgmucMPlqZVl6k88t/TQ685IX4KZ/z6kC8XWVI90qoSwwXHNjOv7D
         ovbw==
X-Gm-Message-State: AO0yUKVWBte5e6eCteD8q0M2WnHwB7h+ePGu5TwQ3TxkmBc1TWJx7O0u
        RydZO5NWOqpzkC/yTq87EbXPtPlSbXw=
X-Google-Smtp-Source: AK7set8rsUMTzZwr8rUvWWgCeoqlyrUG3fawWsMhqBMI1RvuIsIsXeN30z7Vd7c8O1W//so8LTX+ww==
X-Received: by 2002:adf:f48d:0:b0:2bf:be35:2303 with SMTP id l13-20020adff48d000000b002bfbe352303mr13579721wro.34.1675010517633;
        Sun, 29 Jan 2023 08:41:57 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id g6-20020adfe406000000b002bf95500254sm9629422wrm.64.2023.01.29.08.41.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Jan 2023 08:41:57 -0800 (PST)
Message-ID: <9962eefe-0125-d847-ae47-d25658a75610@gmail.com>
Date:   Sun, 29 Jan 2023 17:41:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v2 1/3] timespec.3type: tv_nsec is impl-def-type, glibc
 llong not a bug
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <20230129162944.353r46pnt6fbcqeg@tarta.nabijaczleweli.xyz>
 <dd82d5ab07d5a0aafee6a1166a757a22c39f52af.1675009892.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <dd82d5ab07d5a0aafee6a1166a757a22c39f52af.1675009892.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------y242yXYIsYzFZbldXpvhUOL1"
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
--------------y242yXYIsYzFZbldXpvhUOL1
Content-Type: multipart/mixed; boundary="------------WYjIbGQM0y9HP1vVQj1vYU1w";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <9962eefe-0125-d847-ae47-d25658a75610@gmail.com>
Subject: Re: [PATCH v2 1/3] timespec.3type: tv_nsec is impl-def-type, glibc
 llong not a bug
References: <20230129162944.353r46pnt6fbcqeg@tarta.nabijaczleweli.xyz>
 <dd82d5ab07d5a0aafee6a1166a757a22c39f52af.1675009892.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <dd82d5ab07d5a0aafee6a1166a757a22c39f52af.1675009892.git.nabijaczleweli@nabijaczleweli.xyz>

--------------WYjIbGQM0y9HP1vVQj1vYU1w
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkg0L3QsNCxLA0KDQpPbiAxLzI5LzIzIDE3OjMxLCDQvdCw0LEgd3JvdGU6DQo+IG4zMDkx
IGFjY2VwdHMgbjMwNjYsIG1ha2luZyBpdCBwYXJ0IG9mIHRoZSBuZXh0IHdvcmtpbmcgZHJh
ZnQgYW5kIEMyMzoNCj4gICAgaHR0cHM6Ly93d3cub3Blbi1zdGQub3JnL2p0YzEvc2MyMi93
ZzE0L3d3dy9kb2NzL24zMDkxLmRvYw0KPiANCj4gVXBkYXRlIHRpbWVzcGVjLjN0eXBlIGFw
cHJvcHJpYXRlbHksIGxhcmdlbHkgbWlycm9yaW5nIG15IHBhcGVyLg0KPiANCj4gU2lnbmVk
LW9mZi1ieTogQWhlbGVuaWEgWmllbWlhxYRza2EgPG5hYmlqYWN6bGV3ZWxpQG5hYmlqYWN6
bGV3ZWxpLnh5ej4NCj4gLS0tDQo+ICAgbWFuM3R5cGUvdGltZXNwZWMuM3R5cGUgfCA0NyAr
KysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPiAgIDEgZmlsZSBj
aGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspLCAzMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYg
LS1naXQgYS9tYW4zdHlwZS90aW1lc3BlYy4zdHlwZSBiL21hbjN0eXBlL3RpbWVzcGVjLjN0
eXBlDQo+IGluZGV4IDdjZDgwY2U4Ni4uMzdkYzJkYTYxIDEwMDY0NA0KPiAtLS0gYS9tYW4z
dHlwZS90aW1lc3BlYy4zdHlwZQ0KPiArKysgYi9tYW4zdHlwZS90aW1lc3BlYy4zdHlwZQ0K
PiBAQCAtMTYsMTQgKzE2LDI4IEBAIFN0YW5kYXJkIEMgbGlicmFyeQ0KPiAgIC5QUA0KPiAg
IC5CIHN0cnVjdCB0aW1lc3BlYyB7DQo+ICAgLkJSICIgICAgdGltZV90ICB0dl9zZWM7IiAi
ICAgLyogU2Vjb25kcyAqLyINCj4gLS5CUiAiICAgIGxvbmcgICAgdHZfbnNlYzsiICIgIC8q
IE5hbm9zZWNvbmRzIFsiIDAgIiwgIiA5OTk5OTk5OTkgIl0gKi8iDQo+ICsuQlIgIiAgICAv
KlwoZGEqLyAgIHR2X25zZWM7IiAiICAvKiBOYW5vc2Vjb25kcyBbIiAwICIsICIgOTk5XChh
cTk5OVwoYXE5OTkgIl0gKi8iDQo+ICAgLkIgfTsNCj4gICAuRUUNCj4gICAuU0ggREVTQ1JJ
UFRJT04NCj4gICBEZXNjcmliZXMgdGltZXMgaW4gc2Vjb25kcyBhbmQgbmFub3NlY29uZHMu
DQo+ICsuUFANCj4gKy5JIHR2X25zZWMNCj4gK2lzIG9mIGFuIGltcGxlbWVudGF0aW9uLWRl
ZmluZWQgc2lnbmVkIHR5cGUgY2FwYWJsZSBvZiBob2xkaW5nIHRoZSBzcGVjaWZpZWQgcmFu
Z2UuDQoNCkFoaCwgbm93IEkgcmVtZW1iZXIhICBJIGhhZCBzb21ldGhpbmcgaW4gbWluZCB0
aGlzIG1vcm5pbmcsIHRoYXQgSSBmb3Jnb3Qgd2hlbiANCndyaXRpbmcgdGhlIGVtYWlsLg0K
DQpUaGUgdGhpbmcgaXMsIG1hdGhlbWF0aWNhbGx5LCB0aGUgdGVybSBmb3IgdGhpcyB3b3Vs
ZCBiZSBpbnRlcnZhbCwgcmF0aGVyIHRoYW4gDQpyYW5nZS4NCg0KSSBzdGFydGVkIHVzaW5n
IGl0IGluIHRoZSBmb2xsb3dpbmcgY29kZToNCg0KPGh0dHBzOi8vZ2l0aHViLmNvbS9zaGFk
b3ctbWFpbnQvc2hhZG93L3B1bGwvNjI0I2lzc3VlY29tbWVudC0xMzg0MDI5MTM4Pg0KPGh0
dHBzOi8vZ2l0aHViLmNvbS9zaGFkb3ctbWFpbnQvc2hhZG93L3B1bGwvNjI0L2ZpbGVzI2Rp
ZmYtZGUyZjg1NjdjZWQwYWU5NGRkOWM3ODBhMDI5NDdjZGEyOGE2YWRlYjYxYzhjZDc1ZDE2
NDVjOTM1NjdiY2M2ZlIxMDM+DQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy9z
cmMvYWx4L2FseC9saWJjL2xpYmMtcmFuZC5naXQvdHJlZS9pbmNsdWRlL2MvcmFuZC9jc3Jh
bmQvY3NyYW5kX3VuaWZvcm0uaD4NCg0KV291bGQgeW91IG1pbmQgdXNpbmcgaW50ZXJ2YWwg
aGVyZT8NCg0KPiArVW5kZXIgZ2xpYmMsIHRoaXMgaXMgdXN1YWxseQ0KPiArLklSIGxvbmcg
LA0KPiArYW5kDQo+ICsuSSBsb25nIGxvbmcNCj4gK29uIFgzMi4NCj4gK0l0IGNhbiBiZSBz
YWZlbHkgZG93bi1jYXN0IHRvIGFueSBjb25jcmV0ZSAzMi1iaXQgaW50ZWdlciB0eXBlIGZv
ciBwcm9jZXNzaW5nLg0KPiAgIC5TSCBTVEFOREFSRFMNCj4gICBDMTEgYW5kIGxhdGVyOw0K
PiAgIFBPU0lYLjEtMjAwMSBhbmQgbGF0ZXIuDQo+ICsuU0ggVkVSU0lPTlMNCj4gK1ByaW9y
IHRvIEMyMywNCj4gKy5JIHR2X25zZWMNCj4gK3dhcw0KPiArLklSIGxvbmcgLg0KPiAgIC5T
SCBOT1RFUw0KPiAgIFRoZSBmb2xsb3dpbmcgaGVhZGVycyBhbHNvIHByb3ZpZGUgdGhpcyB0
eXBlOg0KPiAgIC5JUiA8YWlvLmg+ICwNCj4gQEAgLTMzLDM3ICs0Nyw2IEBAIFRoZSBmb2xs
b3dpbmcgaGVhZGVycyBhbHNvIHByb3ZpZGUgdGhpcyB0eXBlOg0KPiAgIC5JUiA8c3lzL3Nl
bGVjdC5oPiAsDQo+ICAgYW5kDQo+ICAgLklSIDxzeXMvc3RhdC5oPiAuDQo+IC0uU0ggQlVH
Uw0KPiAtVW5kZXIgZ2xpYmMsDQo+IC0uSSB0dl9uc2VjDQo+IC1pcyB0aGUNCj4gLS5JIHN5
c2NhbGwNCj4gLWxvbmcsDQo+IC10aG91Z2ggdGhpcyBhZmZlY3RzIG9ubHkgZnJpbmdlIGFy
Y2hpdGVjdHVyZXMgbGlrZSBYMzIsDQo+IC13aGljaCBpcyBJTFAzMiwgYnV0IHVzZXMgdGhl
IExQNjQgQU1ENjQgc3lzY2FsbCBBQkkuDQo+IC1JbiByZWFsaXR5LCB0aGUgZmllbGQgZW5k
cyB1cCBiZWluZyBkZWZpbmVkIGFzOg0KPiAtLlBQDQo+IC0uaW4gKzRuDQo+IC0uRVgNCj4g
LSNpZiBfX3g4Nl82NF9fICYmIF9fSUxQMzJfXyAgLyogPT0geDMyICovDQo+IC0gICAgbG9u
ZyBsb25nICB0dl9uc2VjOw0KPiAtI2Vsc2UNCj4gLSAgICBsb25nICAgICAgIHR2X25zZWM7
DQo+IC0jZW5kaWYNCj4gLS5FRQ0KPiAtLmluDQo+IC0uUFANCj4gLVRoaXMgaXMgYSBsb25n
LXN0YW5kaW5nIGFuZCBsb25nLWVuc2hyaW5lZCBnbGliYyBidWcNCj4gLS5VUiBodHRwczov
L3NvdXJjZXdhcmUub3JnL2J1Z3ppbGxhL3Nob3dfYnVnLmNnaT9pZD0xNjQzNw0KPiAtLkkg
IzE2NDM3DQo+IC0uVUUgLA0KPiAtYW5kIGFuIGluY29tcGF0aWJsZSBleHRlbnNpb24gdG8g
dGhlIHN0YW5kYXJkczsNCj4gLWhvd2V2ZXIsIGFzIGV2ZW4gYSAzMi1iaXQNCj4gLS5JIGxv
bmcNCj4gLWNhbiBob2xkIHRoZSBlbnRpcmUNCj4gLS5JIHR2X25zZWMNCj4gLXJhbmdlLA0K
PiAtaXQncyBhbHdheXMgc2FmZSB0byBmb3JjaWJseSBkb3duLWNhc3QgaXQgdG8gdGhlIHN0
YW5kYXJkIHR5cGUuDQoNCklmIHRoZSBDIHN0YW5kYXJkcyBhbmQgUE9TSVggZG9uJ3Qgd2Fu
dCB0byBhZGQgYSB0eXBlIGZvciBpdCwgbGV0IHVzIGRpc2FncmVlIA0Kd2l0aCB0aGVpciBk
ZWNpc3Npb24uDQoNCkxldCdzIGFkZCBhIGJ1ZzoNCg0KVGhlcmUncyBubyBwb3J0YWJsZSB3
YXkgdG8gZGVjbGFyZSB0byBwb2ludGVyIHRvIHR2X25zZWMsIHNpbmNlIHlvdSBuZXZlciBr
bm93IA0KZm9yIHN1cmUgaWYgaXQgd2lsbCBiZSBsb25nKiBvciBsbG9uZyouDQoNCkRvIHlv
dSBhZ3JlZT8NCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCj4gICAuU0ggU0VFIEFMU08NCj4gICAu
QlIgY2xvY2tfZ2V0dGltZSAoMiksDQo+ICAgLkJSIGNsb2NrX25hbm9zbGVlcCAoMiksDQoN
Ci0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------WYjIbGQM0y9HP1vVQj1vYU1w--

--------------y242yXYIsYzFZbldXpvhUOL1
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPWodQACgkQnowa+77/
2zIqjw/+Mc7O0kU5WTZExKYjzqBOsTkm31I8C1qmSg38wegol7PwYMK/jVWiIeNa
cG4TFBlpVYg1nLWCYrFVePCzYX+0DSpr2z+eDzabd3idKUL8RCK4VT1pehsvPydY
lc/C+QrJTCIXfwwceus74OKd36ocenN272m1bNE1cuwon3hFL2HxoONGqsQnslil
WlVyxu+kPW2NOjYHKbbA0UUbz2k7YltE6kFxh5pnwtoWnciFNy+/fRrR+/WPtf+n
GckWutP55LRq9oA7BfQJMOlxdSBEnpHBGoEyeMdJN0FP/7k4jexDpeqdRG5m16F4
e8gZzS7YoHtUOJwsOcoGjF1Ibk55MUZ2dRmwWyX0DX8MzVjV0T1YpHTOb42sZ6GP
iO3IhaNScHnTe5ExoRjcL/Rip+8JNmM44SxXYSp1YQGZfgDXxMElIaIpkmHLD1IN
sKArNKvNLMWLCvbqxYGR9qRfDnqj1owRJS3IRndoxb1DvY05YdznN5EpE0gJjgFn
Fsz8DTrs5yb9BQ2swwhgKkJoClC+8VT1cXaqciKhMaor7IFsUpVGr62iUfeomUPO
7xt9+e/j36CgD+shRbCZvdm42TnLJrZqTagpfe1Wpe0xAN4vvMB94VVYEbnczB2I
myuslmcm8H187BPZleFS66UfZ08XKqlnSGc73UtRwhobuFWSLvw=
=h/K5
-----END PGP SIGNATURE-----

--------------y242yXYIsYzFZbldXpvhUOL1--
