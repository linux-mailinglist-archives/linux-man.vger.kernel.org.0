Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5A301624EA3
	for <lists+linux-man@lfdr.de>; Fri, 11 Nov 2022 01:00:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230377AbiKKAAF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Nov 2022 19:00:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42988 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230175AbiKKAAE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Nov 2022 19:00:04 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36A382AE1
        for <linux-man@vger.kernel.org>; Thu, 10 Nov 2022 16:00:02 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id l14so4445964wrw.2
        for <linux-man@vger.kernel.org>; Thu, 10 Nov 2022 16:00:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QUs2SYWsruTzvKk5HfragqbK4YHVLPz++T7+hhJDva0=;
        b=pubSxS+OB/NSbO8liyED4+DihkLKZY2CHT3d5MqyjnFut3L8uDbwq+fzlgPVxFpYHg
         wgUyUxiCjx1E8KhFVOKRjOheqiOLy4CO24zEawA1F+0EQRwJAOATuKSvsP6Mioq894Up
         Npe/Ml4lCdq9Ym8NFPLc3Y/j0Uy/t2mGpd4nUqlPAZXn/OUHbUhGTHmEoYuN884Qsu1E
         DkO652ce778WhZo/LabuTKCwk990qA5CREIoOmXhdJxLfDZCCzMJTUtE4Obgd7qy0drr
         GusRLYB7k/6tH4PED9rqsKWG14s96qczZyotcOgh7cx6ffUxENg1oPuASZB2j5+o6/36
         iWtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QUs2SYWsruTzvKk5HfragqbK4YHVLPz++T7+hhJDva0=;
        b=sbjIsxVEpig47NMH4jHarDY+cJJ2+Tn9zt2A/7UUFzA5ABV+Fom7LKgiBsw4hsNSo+
         q6mtYT/OlJsUccML58QceowhIbR4c0OguO829WgalsQlzJXPppPTM32lOPj1cyyQ8jw0
         go3Gyj9SVXfe0CPtBbQUJIaYdPCrmqJzchiQa1lkIO6/k2e9Cn+LbiNNASEYaFSgTf+W
         GQNhyKDq+uD3vtxk8BXj1DodQdTDR1IzyeCGvnp6inyVRnSv5rFbWJvVq0OVdKE7lS4n
         d/xhxkQ7tb7GQxXMirQxsrGYRYCGONRIQL34WqDC54ny01JrMXkb/743IZs0hsKq1GzR
         kzEQ==
X-Gm-Message-State: ACrzQf1RYCa9YiV8ECKf7ikwSx1Qo5JQuTwjVtdj2fqxOyyK4vJHEYOS
        /CFEPkz1grIH/oF6WxnurU58AJMm5bA=
X-Google-Smtp-Source: AMsMyM7g6wk/ebWI8HiaRHZRia5/20DpSxalcvQwEban+Kp/Em2Hk4JqiwpL1qzy58pchSF2WJ+KxQ==
X-Received: by 2002:a05:6000:606:b0:236:63d4:fbbe with SMTP id bn6-20020a056000060600b0023663d4fbbemr1118945wrb.574.1668124800667;
        Thu, 10 Nov 2022 16:00:00 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id w16-20020a5d4050000000b002365b759b65sm386632wrp.86.2022.11.10.15.59.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Nov 2022 16:00:00 -0800 (PST)
Message-ID: <7c72c8b0-ddb1-ec66-3886-57f2f7ac192f@gmail.com>
Date:   Fri, 11 Nov 2022 00:59:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH v2] memmem.3: Add list of known systems where this is
 available
Content-Language: en-US
To:     Andrew Clayton <andrew@digital-domain.net>,
        Alejandro Colomar <alx@kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20221110001318.10696-1-andrew@digital-domain.net>
 <20221110233138.63585-1-andrew@digital-domain.net>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221110233138.63585-1-andrew@digital-domain.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------WZeX4POFqp4MOhTHST00vIA6"
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
--------------WZeX4POFqp4MOhTHST00vIA6
Content-Type: multipart/mixed; boundary="------------ZKOrQ2hoq0doX72vabCkuRes";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Andrew Clayton <andrew@digital-domain.net>,
 Alejandro Colomar <alx@kernel.org>, Michael Kerrisk <mtk.manpages@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <7c72c8b0-ddb1-ec66-3886-57f2f7ac192f@gmail.com>
Subject: Re: [PATCH v2] memmem.3: Add list of known systems where this is
 available
References: <20221110001318.10696-1-andrew@digital-domain.net>
 <20221110233138.63585-1-andrew@digital-domain.net>
In-Reply-To: <20221110233138.63585-1-andrew@digital-domain.net>

--------------ZKOrQ2hoq0doX72vabCkuRes
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQW5kcmV3LA0KDQpPbiAxMS8xMS8yMiAwMDozMSwgQW5kcmV3IENsYXl0b24gd3JvdGU6
DQo+IFdoaWxlIGxvb2tpbmcgYXQgd2hpY2ggc3lzdGVtcyBwcm92aWRlIG1lbW1lbSgzKSBJ
IGhhdmUgYmVlbiBhYmxlIHRvDQo+IGRpc2Nlcm4gdGhlIGZvbGxvd2luZzoNCj4gDQo+ICAg
IG11c2wgbGliYyBzaW5jZSB2MC45LjcgKDIwMTIpDQo+ICAgIGJpb25pYyBzaW5jZSBBbmRy
b2lkIDkgKDIwMTgpDQo+IA0KPiAgICBGcmVlQlNEIHNpbmNlIDYuMCAoMjAwNSkNCj4gICAg
T3BlbkJTRCBzaW5jZSA1LjQgKDIwMTMpDQo+ICAgIE5ldEJTRA0KPiAgICBtYWNPUw0KPiAg
ICBJbGx1bW9zDQo+IA0KPiBGb3IgbWFjT1MgYW5kIElsbHVtb3MgSSBjaGVja2VkIHRoZSBt
ZW1tZW0oMykgbWFuIHBhZ2Ugb24gdGhvc2Ugc3lzdGVtcy4NCj4gRm9yIHRoZSByZXN0IHRo
ZXJlIGFyZSBsaW5rcyBiZWxvdyB0byBvbi1saW5lIG1hbiBwYWdlcyBvciBjb21taXQgbG9n
cy4NCj4gDQo+IFdoZXJlIEkgY291bGQgZGV0ZXJtaW5lIHdoYXQgdmVyc2lvbiBtZW1tZW0o
Mykgd2FzIGludHJvZHVjZWQsIEkndmUNCj4gbm90ZWQgdGhhdCBpbiB0aGUgbWFuIHBhZ2Uu
DQo+IA0KPiBMaW5rOiA8aHR0cDovL2dpdC5tdXNsLWxpYmMub3JnL2NnaXQvbXVzbC9jb21t
aXQvc3JjL3N0cmluZy9tZW1tZW0uYz9pZD1jODZmMjk3NGUyYWNkMzMwYmUyZDU4NzE3M2Rk
NGRkNTZkYjgyZTIyPg0KPiBMaW5rOiA8aHR0cHM6Ly9hbmRyb2lkLmdvb2dsZXNvdXJjZS5j
b20vcGxhdGZvcm0vYmlvbmljLysvYW5kcm9pZC05LjAuMF9yMy9saWJjL2Jpb25pYy9tZW1t
ZW0uY3BwPg0KPiBMaW5rOiA8aHR0cHM6Ly93d3cuZnJlZWJzZC5vcmcvY2dpL21hbi5jZ2k/
cXVlcnk9bWVtbWVtJnNla3Rpb249MyZmb3JtYXQ9aHRtbD4NCj4gTGluazogPGh0dHBzOi8v
bWFuLm9wZW5ic2Qub3JnL21lbW1lbS4zPg0KPiBMaW5rOiA8aHR0cHM6Ly9hbm9uaGcubmV0
YnNkLm9yZy9zcmMvZGlmZi85NmEzN2Q1MzYyNzEvY29tbW9uL2xpYi9saWJjL3N0cmluZy9t
ZW1tZW0uYz4NCj4gU3VnZ2VzdGVkLWJ5OiBBbGVqYW5kcm8gQ29sb21hciA8YWx4QGtlcm5l
bC5vcmc+DQo+IFNpZ25lZC1vZmYtYnk6IEFuZHJldyBDbGF5dG9uIDxhbmRyZXdAZGlnaXRh
bC1kb21haW4ubmV0Pg0KPiAtLS0NCj4gDQo+ICAgdjI6DQo+ICAgIC0gUmVtb3ZlIHJlZmVy
ZW5jZXMgdG8gYmlvbmljIGFuZCBtYWNPUyBmcm9tIHRoZSBtYW4gcGFnZQ0KPiAgICAtIENv
bnZlcnQgJiB0byBhbmQNCj4gICAgLSBVc2UgT3hmb3JkIGNvbW1hDQo+ICAgIC0gQWRkIGRh
dGVzIHdoZXJlIGtub3duIHRvIHRoZSBjb21taXQgbWVzc2FnZQ0KPiAgICAtIFVzZSBwcmVz
ZW50IHRlbnNlIGZvciB0aGUgc3ViamVjdCBsaW5lDQoNCk9oLCB0aGFua3MgZm9yIHRoaXMg
b25lISAgSSBoYWRuJ3QgcmVhbGl6ZWQuICA6UA0KDQo+IA0KPiAgIG1hbjMvbWVtbWVtLjMg
fCA0ICsrKy0NCj4gICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0
aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvbWFuMy9tZW1tZW0uMyBiL21hbjMvbWVtbWVt
LjMNCj4gaW5kZXggMTM0ZGZmYWIwLi5jYjBkM2UxOTUgMTAwNjQ0DQo+IC0tLSBhL21hbjMv
bWVtbWVtLjMNCj4gKysrIGIvbWFuMy9tZW1tZW0uMw0KPiBAQCAtNTgsNyArNTgsOSBAQCBU
fQlUaHJlYWQgc2FmZXR5CU1ULVNhZmUNCj4gICAuc3AgMQ0KPiAgIC5TSCBTVEFOREFSRFMN
Cj4gICBUaGlzIGZ1bmN0aW9uIGlzIG5vdCBzcGVjaWZpZWQgaW4gUE9TSVguMSwNCj4gLWJ1
dCBpcyBwcmVzZW50IG9uIGEgbnVtYmVyIG9mIG90aGVyIHN5c3RlbXMuDQo+ICtidXQgaXMg
cHJlc2VudCBvbiBhIG51bWJlciBvZiBvdGhlciBzeXN0ZW1zLA0KPiAraW5jbHVkaW5nOiBt
dXNsIGxpYmMgMC45Ljc7IEZyZWVCU0QgNi4wLCBPcGVuQlNEIDUuNCwNCj4gK05ldEJTRCwg
YW5kIElsbHVtb3MuDQoNCkkndmUgYmVlbiB0aGlua2luZyBhYm91dCB0aGUgbGluZSBicmVh
a3MuICBJJ20gbm90IHN1cmUgaG93IEknZCBzcGxpdCB0aGVtLCBidXQgDQpJJ20gbm90IGhh
cHB5IHdpdGggdGhlIGN1cnJlbnQgc3VnZ2VzdGlvbi4NCg0KUGxlYXNlIHNlZSBtYW4tcGFn
ZXMoNykgYWJvdXQgc2VtYW50aWMgbmV3bGluZXMsIGFuZCBzZWUgaWYgeW91IGNvbWUgdXAg
d2l0aCANCnNvbWV0aGluZyBuaWNlci4NCg0KbWFuLXBhZ2VzKDcpOg0KICAgIFVzZSBzZW1h
bnRpYyBuZXdsaW5lcw0KICAgICAgICBJbiAgdGhlICBzb3VyY2Ugb2YgYSBtYW51YWwgcGFn
ZSwgbmV3IHNlbnRlbmNlcyBzaG91bGQgYmUNCiAgICAgICAgc3RhcnRlZCBvbiBuZXcgbGlu
ZXMsIGxvbmcgc2VudGVuY2VzIHNob3VsZCBiZSBzcGxpdCBpbnRvDQogICAgICAgIGxpbmVz
IGF0IGNsYXVzZSBicmVha3MgKGNvbW1hcywgc2VtaWNvbG9ucywgIGNvbG9ucywgIGFuZA0K
ICAgICAgICBzbyBvbiksIGFuZCBsb25nIGNsYXVzZXMgc2hvdWxkIGJlIHNwbGl0IGF0IHBo
cmFzZSBib3VuZOKAkA0KICAgICAgICBhcmllcy4gICBUaGlzICBjb252ZW50aW9uLCAgc29t
ZXRpbWVzICBrbm93biBhcyAic2VtYW50aWMNCiAgICAgICAgbmV3bGluZXMiLCBtYWtlcyBp
dCBlYXNpZXIgdG8gc2VlIHRoZSBlZmZlY3Qgb2YgIHBhdGNoZXMsDQogICAgICAgIHdoaWNo
IG9mdGVuIG9wZXJhdGUgYXQgdGhlIGxldmVsIG9mIGluZGl2aWR1YWwgc2VudGVuY2VzLA0K
ICAgICAgICBjbGF1c2VzLCBvciBwaHJhc2VzLg0KDQo8aHR0cHM6Ly9naXQua2VybmVsLm9y
Zy9wdWIvc2NtL2RvY3MvbWFuLXBhZ2VzL21hbi1wYWdlcy5naXQvY29tbWl0Lz9pZD02ZmY2
ZjQzZDY4MTY0Zjk5YThjM2ZiNjZmNDUyNWQxNDU1NzEzMTBjPg0KDQpDaGVlcnMsDQoNCkFs
ZXgNCg0KPiAgIC5TSCBCVUdTDQo+ICAgLlwiIFRoaXMgZnVuY3Rpb24gd2FzIGJyb2tlbiBp
biBMaW51eCBsaWJyYXJpZXMgdXAgdG8gYW5kIGluY2x1ZGluZyBsaWJjIDUuMC45Ow0KPiAg
IC5cIiB0aGVyZSB0aGUNCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5l
cy8+DQo=

--------------ZKOrQ2hoq0doX72vabCkuRes--

--------------WZeX4POFqp4MOhTHST00vIA6
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNtkH8ACgkQnowa+77/
2zJJLQ//XIR3dke6nT0bFy54AcnVJDZYLgJfg1PUd8Zzy69DcL1yny/hAKvwg59i
P1XCMh2WydERdDxllkNsYWdblvUfeIKAbxbE3jYkKb3+bX1KUatEEqF3X5uUybHS
NAFqUy4d5WzSMxNBRsovb0QvK4uQDioe/Ut0S4Eeow7C0aiT4J6C7IEELojEPIpL
/qgg3bxLR/2BHLcQnD/ZDXvlqDW1jERL3rVekcJO8JtL1SMuo/yMzDAE1ZbqfRPm
RVEzc6l1b/6JsRnXsHHcAjZHgl7uGjPbMYLTKgO04usl4u5tsrVKX9BbRoffQROY
fDExNOqiEx6X8mb065YwZ76vk6aq9hy0rc1rCH+obLcQM64Mpf0AEsYt1RrLpBIr
mAdGAznZ1ztEkpDrKR7rUBH2P0xGZRG43N+opVmlH+HVg0DsDTDzHAXDkRI/urVk
wtjQdGGX2faZDPell0jJRLPDqFL/COG5oaEfhsXoXkIZd8rdPo4e9xn6lC1nS/2Z
vVoLN0xaInzOTiov7PMz4lxq/HN7caqepNtcu2YYAAdBbL+3TfgL82ru0rTGCA+i
xhFKDP3DNis0vw1i4zIkn9scLBOofEuTKRit+yOf3gtp8FBow7nhf2avjnHQCzEb
LAcW8urB264122T8mp94NYTDhUUODi1/EVSTGsThksS3Q1L2VZY=
=trbJ
-----END PGP SIGNATURE-----

--------------WZeX4POFqp4MOhTHST00vIA6--
