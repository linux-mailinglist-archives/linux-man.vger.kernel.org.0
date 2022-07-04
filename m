Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 038A3565F33
	for <lists+linux-man@lfdr.de>; Mon,  4 Jul 2022 23:53:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229554AbiGDVxx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 4 Jul 2022 17:53:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51220 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230330AbiGDVxw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 4 Jul 2022 17:53:52 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C677641B
        for <linux-man@vger.kernel.org>; Mon,  4 Jul 2022 14:53:51 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id o4so15028481wrh.3
        for <linux-man@vger.kernel.org>; Mon, 04 Jul 2022 14:53:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=uQsALaX8dvcHgMC5f3h/baURMVxbwy9QyqJiBoSOBB4=;
        b=cONeqyP8SjjdNRNtq0jSPr0Q5DDeVAKQx7fdN/z7cxhPlPQZsmDOktcvhBkhVpq/L/
         n+rJ+ZAaS85zEAy7BgX8kMGaflL8tnQfJIlqUD1LEfo5boZTDhierOK0Vnz2+RL+NUVZ
         BmZFTiov6uV+j7mVVi6zGer4H5zlQ6iC5w+pwb3NZqAaOOp7ivSSINOXIHRX6ZDBmDvK
         vVzdJ5Mthw0og4sEyVGwYb5SVRdHZNeizFajLkXJwlgCeGsC1XiCgvRFTakxYwNxaSDC
         lWCr+hPFIS4le39KdcFsu37iOG3E9d5LmuJvaKi3kOgYlgFNltieDQp680QfEj1Vddjh
         xAXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=uQsALaX8dvcHgMC5f3h/baURMVxbwy9QyqJiBoSOBB4=;
        b=6c/SfT2PnLYQqR/wugX+LdPxrOc+SA+AD1dc0lAUASG+oh8B6gP9sJP3Yin8t5dxLP
         xieguNevxLo+RtZEkRvGmbx+7qTtEELqQKaNct6fX4wNAC5/U9UCcsc3ijk9yPFF7m0F
         Vo1SgONCI9Q8xoQmjnT70qIC0kbKOwkN6EIkE8tyWLknbetrVXrM+YpRk2YbQbQIQyDX
         w0o6JyK6pV/Sv7LcBXA0fauAwNLq6XSRHP4WHF5AcsBLwVNvZgI4Rm/voIQuBp9ki56l
         uY18JLpFqn3wPzeKjMR2c8J9+CKG2p46vWXx4TY1pLDylHFWVBDM4+ve5N1t4+YfnGWZ
         LQgw==
X-Gm-Message-State: AJIora8RdLiF4aR28+p9nRD36n4/Bw8hpYpSKkWxTcztaU1l/xhy3hic
        45Ijr2Dqno5aK0tVdL8H147jB6/Gohg=
X-Google-Smtp-Source: AGRyM1u39n5kWVZicxexbKnN/E3hZjTO1LUE/nQKSYkDc6LjRYIYMA6OUnLzBjVZ2hkk9g3haN6V2w==
X-Received: by 2002:a5d:504f:0:b0:21b:a39f:7e6f with SMTP id h15-20020a5d504f000000b0021ba39f7e6fmr27754415wrt.129.1656971630169;
        Mon, 04 Jul 2022 14:53:50 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id v192-20020a1cacc9000000b003975c7058bfsm21003147wme.12.2022.07.04.14.53.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Jul 2022 14:53:49 -0700 (PDT)
Message-ID: <edf43027-572d-adae-1a4a-9b3c6ac441a9@gmail.com>
Date:   Mon, 4 Jul 2022 23:53:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 1/4] fts.3: note that lstat(2) may also provide fts_statp
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <552ae4935239ba9240303b1802bd3c8913b564c5.1656887003.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <552ae4935239ba9240303b1802bd3c8913b564c5.1656887003.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0ZihMID9kRcT4q9103zZNLRr"
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
--------------0ZihMID9kRcT4q9103zZNLRr
Content-Type: multipart/mixed; boundary="------------W2QOcsNOde2JpX0O0iC6EhN0";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <edf43027-572d-adae-1a4a-9b3c6ac441a9@gmail.com>
Subject: Re: [PATCH 1/4] fts.3: note that lstat(2) may also provide fts_statp
References: <552ae4935239ba9240303b1802bd3c8913b564c5.1656887003.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <552ae4935239ba9240303b1802bd3c8913b564c5.1656887003.git.nabijaczleweli@nabijaczleweli.xyz>

--------------W2QOcsNOde2JpX0O0iC6EhN0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkg0L3QsNCxIQ0KDQpPbiA3LzQvMjIgMDA6MjMsINC90LDQsSB3cm90ZToNCj4gU2lnbmVk
LW9mZi1ieTogQWhlbGVuaWEgWmllbWlhxYRza2EgPG5hYmlqYWN6bGV3ZWxpQG5hYmlqYWN6
bGV3ZWxpLnh5ej4NCj4gLS0tDQo+ICAgbWFuMy9mdHMuMyB8IDI1ICsrKysrKysrKysrKysr
KysrKy0tLS0tLS0NCj4gICAxIGZpbGUgY2hhbmdlZCwgMTggaW5zZXJ0aW9ucygrKSwgNyBk
ZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9tYW4zL2Z0cy4zIGIvbWFuMy9mdHMu
Mw0KPiBpbmRleCA0OTVhZTFkOGIuLmJmM2UwNzVmMiAxMDA2NDQNCj4gLS0tIGEvbWFuMy9m
dHMuMw0KPiArKysgYi9tYW4zL2Z0cy4zDQo+IEBAIC0xMDQsNyArMTA0LDcgQEAgdHlwZWRl
ZiBzdHJ1Y3QgX2Z0c2VudCB7DQo+ICAgICAgIHN0cnVjdCBfZnRzZW50ICpmdHNfcGFyZW50
OyAgIC8qIHBhcmVudCBkaXJlY3RvcnkgKi8NCj4gICAgICAgc3RydWN0IF9mdHNlbnQgKmZ0
c19saW5rOyAgICAgLyogbmV4dCBmaWxlIHN0cnVjdHVyZSAqLw0KPiAgICAgICBzdHJ1Y3Qg
X2Z0c2VudCAqZnRzX2N5Y2xlOyAgICAvKiBjeWNsZSBzdHJ1Y3R1cmUgKi8NCj4gLSAgICBz
dHJ1Y3Qgc3RhdCAgICAqZnRzX3N0YXRwOyAgICAvKiBzdGF0KDIpIGluZm9ybWF0aW9uICov
DQo+ICsgICAgc3RydWN0IHN0YXQgICAgKmZ0c19zdGF0cDsgICAgLyogW2xdc3RhdCgyKSBp
bmZvcm1hdGlvbiAqLw0KPiAgIC5cIiBBbHNvOg0KPiAgIC5cIiAgICAgaW5vX3QgZnRzX2lu
bzsgICAgICAgICAgICAgICAgICAvKiBpbm9kZSAob25seSBmb3IgZGlyZWN0b3JpZXMpKi8N
Cj4gICAuXCIgICAgIGRldl90IGZ0c19kZXY7ICAgICAgICAgICAgICAgICAgLyogZGV2aWNl
IChvbmx5IGZvciBkaXJlY3RvcmllcykqLw0KPiBAQCAtMTg2LDcgKzE4Niw3IEBAIEEgcmVn
dWxhciBmaWxlLg0KPiAgIC5UUA0KPiAgIC5CIEZUU19OUw0KPiAgIEEgZmlsZSBmb3Igd2hp
Y2ggbm8NCj4gLS5CUiBzdGF0ICgyKQ0KPiArLlJCIFsgbCBdIHN0YXQgKDIpDQoNCkkgd2Fz
IHRyeWluZyB0byBndWVzcyBpbiB3aGljaCBjYXNlIGxzdGF0KDIpIGhhcyBpbmZvIGJ1dCBz
dGF0KDIpIA0KaGFzbid0LiAgSSBndWVzcyBpdCdzIGluIHRoZSBjYXNlIG9mIGEgZGFuZ2xp
bmcgbGluayAoRU5PRU5UIGZvciANCnN0YXQoMikpLCByaWdodD8gIEFueSBvdGhlciBjYXNl
cz8NCg0KSSBndWVzcyB0aGF0IHdvdWxkIGJlIGEgZ29vZCB0aGluZyB0byBhZGQgdG8gdGhl
IGNvbW1pdCBtc2cuDQoNCkNoZWVycywNCg0KQWxleA0KDQo+ICAgaW5mb3JtYXRpb24gd2Fz
IGF2YWlsYWJsZS4NCj4gICBUaGUgY29udGVudHMgb2YgdGhlDQo+ICAgLkkgZnRzX3N0YXRw
DQo+IEBAIC0xOTcsNyArMTk3LDcgQEAgZmllbGQgd2lsbCBiZSBzZXQgdG8gaW5kaWNhdGUg
d2hhdCBjYXVzZWQgdGhlIGVycm9yLg0KPiAgIC5UUA0KPiAgIC5CIEZUU19OU09LDQo+ICAg
QSBmaWxlIGZvciB3aGljaCBubw0KPiAtLkJSIHN0YXQgKDIpDQo+ICsuUkIgWyBsIF0gc3Rh
dCAoMikNCj4gICBpbmZvcm1hdGlvbiB3YXMgcmVxdWVzdGVkLg0KPiAgIFRoZSBjb250ZW50
cyBvZiB0aGUNCj4gICAuSSBmdHNfc3RhdHANCj4gQEAgLTMyOCw3ICszMjgsNyBAQCBmaWVs
ZCBhcmUgdW5kZWZpbmVkLg0KPiAgIC5UUA0KPiAgIC5JIGZ0c19zdGF0cA0KPiAgIEEgcG9p
bnRlciB0bw0KPiAtLkJSIHN0YXQgKDIpDQo+ICsuUkIgWyBsIF0gc3RhdCAoMikNCj4gICBp
bmZvcm1hdGlvbiBmb3IgdGhlIGZpbGUuDQo+ICAgLlwiIC5FbA0KPiAgIC5QUA0KPiBAQCAt
MzkxLDcgKzM5MSwxMyBAQCBpbnN0ZWFkIG9mIHRoZSBzeW1ib2xpYyBsaW5rcyB0aGVtc2Vs
dmVzLg0KPiAgIElmIHRoaXMgb3B0aW9uIGlzIHNldCwgdGhlIG9ubHkgc3ltYm9saWMgbGlu
a3MgZm9yIHdoaWNoDQo+ICAgLkkgRlRTRU5UDQo+ICAgc3RydWN0dXJlcw0KPiAtYXJlIHJl
dHVybmVkIHRvIHRoZSBhcHBsaWNhdGlvbiBhcmUgdGhvc2UgcmVmZXJlbmNpbmcgbm9uZXhp
c3RlbnQgZmlsZXMuDQo+ICthcmUgcmV0dXJuZWQgdG8gdGhlIGFwcGxpY2F0aW9uIGFyZSB0
aG9zZSByZWZlcmVuY2luZyBub25leGlzdGVudCBmaWxlczoNCj4gK3RoZQ0KPiArLkkgZnRz
X3N0YXRwDQo+ICtmaWVsZCBpcyBvYnRhaW5lZCB2aWENCj4gKy5CUiBzdGF0ICgyKQ0KPiAr
d2l0aCBhIGZhbGxiYWNrIHRvDQo+ICsuQlIgbHN0YXQgKDIpLg0KPiAgIEVpdGhlcg0KPiAg
IC5CIEZUU19MT0dJQ0FMDQo+ICAgb3INCj4gQEAgLTQ0Miw3ICs0NDgsMTEgQEAgb2YgdGhl
IHRhcmdldCBmaWxlcyB0aGV5IHBvaW50IHRvLg0KPiAgIElmIHRoaXMgb3B0aW9uIGlzIHNl
dCwNCj4gICAuSSBGVFNFTlQNCj4gICBzdHJ1Y3R1cmVzIGZvciBhbGwgc3ltYm9saWMgbGlu
a3MgaW4gdGhlDQo+IC1oaWVyYXJjaHkgYXJlIHJldHVybmVkIHRvIHRoZSBhcHBsaWNhdGlv
bi4NCj4gK2hpZXJhcmNoeSBhcmUgcmV0dXJuZWQgdG8gdGhlIGFwcGxpY2F0aW9uOg0KPiAr
dGhlDQo+ICsuSSBmdHNfc3RhdHANCj4gK2lzIG9idGFpbmVkIHZpYQ0KPiArLkJSIGxzdGF0
ICgyKS4NCj4gICBFaXRoZXINCj4gICAuQiBGVFNfTE9HSUNBTA0KPiAgIG9yDQo+IEBAIC03
NDksNyArNzU5LDcgQEAgZm9yIGFueSBvZiB0aGUgZXJyb3JzIHNwZWNpZmllZCBmb3INCj4g
ICAuQlIgb3BlbmRpciAoMyksDQo+ICAgLkJSIHJlYWRkaXIgKDMpLA0KPiAgIGFuZA0KPiAt
LkJSIHN0YXQgKDIpLg0KPiArLlJCIFsgbCBdIHN0YXQgKDIpLg0KPiAgIC5QUA0KPiAgIElu
IGFkZGl0aW9uLA0KPiAgIC5CUiBmdHNfY2hpbGRyZW4gKCksDQo+IEBAIC04MTEsNiArODIx
LDcgQEAgYSBwcm9ncmFtIHVzaW5nIHRoZSBMRlMgQVBJcyAoZS5nLiwgd2hlbiBjb21waWxp
bmcgd2l0aA0KPiAgIC5TSCBTRUUgQUxTTw0KPiAgIC5CUiBmaW5kICgxKSwNCj4gICAuQlIg
Y2hkaXIgKDIpLA0KPiArLkJSIGxzdGF0ICgyKSwNCj4gICAuQlIgc3RhdCAoMiksDQo+ICAg
LkJSIGZ0dyAoMyksDQo+ICAgLkJSIHFzb3J0ICgzKQ0KDQotLSANCkFsZWphbmRybyBDb2xv
bWFyDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------W2QOcsNOde2JpX0O0iC6EhN0--

--------------0ZihMID9kRcT4q9103zZNLRr
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLDYWwACgkQnowa+77/
2zK9yA/+L0PgyDFYPHBHLE5XRk0MpppWbNTLCeWC9qwAhWPT85i1ORJVM/0otn0E
knmDcFE5uBnsE6iU5jnW2gj7hTAC+q+jhinwSCPyUu8RpcyoXl4YkfSk0bLXuHMQ
fN1DVkz4TruhrSZ1vEpXEDcwgYgYzOyaT1OIDG4WjuncIl5/6JsByeUFsYACLhMd
SN3FQP3KbBGjiiHS6hJiSkafVHo0nBy33KR2ATjtDBOswPEh/XEqtJdmtvAvNMtP
jIMGhFvzxaOBXvW1tDA6NCgknLIS8r+YZ4LlnHdc0rrmXNsstu6gMv/zxDVZPBoV
XmfZWL0xYnWYwn4qS5J5XhvBAR/Ll+cn+S7bUjj9OOjqbyFKi2t0t/vsHbtFgHTH
hn+sCUY5S0dbttZ79yLGu4wWVjUVI0iP3tm/sIpHUT6PNcpcyxIRnt2fkXLIAjbS
Rg0M0ElixEp5Zz86JXV1fiixnlOc76w10eV7n8JgLUr1aUq4sctfPZkkpgSB+ody
NGP+J+buB0o0cA7i9B6zkUTPEi+vU/iyyWfC00dMDh6mzT+lmpEj9WTEIMxjQE81
xZqnkLm60XdQBCTjO8waT2Get9eJlMhYRw7GSPssY9+9zYVFWiKvPdWP0qDCePzq
NM8PwpbKEDzsr5nqvKkHHotOSQTArDq/WJi3Wk7fPAS1dWww51c=
=PnJD
-----END PGP SIGNATURE-----

--------------0ZihMID9kRcT4q9103zZNLRr--
