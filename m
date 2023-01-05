Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3FD8765F7D4
	for <lists+linux-man@lfdr.de>; Fri,  6 Jan 2023 00:44:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234584AbjAEXod (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Jan 2023 18:44:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236076AbjAEXoY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Jan 2023 18:44:24 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6AC9434D7F
        for <linux-man@vger.kernel.org>; Thu,  5 Jan 2023 15:44:21 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id m3so83481wmq.0
        for <linux-man@vger.kernel.org>; Thu, 05 Jan 2023 15:44:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q12jgtcXm4TqB2p6Sc5QelaJ0jJ+G5HwEIfig5KN3fM=;
        b=MPN99T4/a+vr6jFNGW1aNkLmxz3IfGJj9PLhxXBmuFsSBVapm+zgdDCE6vMPeZtAM0
         I8Egx0FWZqU7lg6qerUd5TAUWt0zo9g10WUGMZnqXskTHHnED6/DEouDOYSR9HLoIpQi
         CkiD9YyWioSWWlZl9Sat4xs0nZezOL72FK6R5tTMTQHv2OzcaYVHgkgUGfpHo+AbQl8b
         pqAuY+X8Tf0Y4xpUzCoSwMDkoPbIA7uDS3ia11dgbTVf1JsvlyRJH3hwkc7CUWYn3BPB
         7lRysSMflCtfRESzgNpYCYz0O8p4ZUerb6QeaanZ/3hG5mumRi5oLBx0SNlXdzx1FaRl
         2liQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=q12jgtcXm4TqB2p6Sc5QelaJ0jJ+G5HwEIfig5KN3fM=;
        b=KIu36BHaxaXGTmBSVBENvru/xlXSOA4ZMEWT6qIlgAT4/toX/7g0bmC4GsuITj5vRb
         /Cv8qRad2NEKaK9Pz66ZlYIabAUevJ9lJoygWSbK8NY9VIKr5g8nsdK5k4lCUQ9/HSPY
         CdC+Z4INOiIP/u2mcUNSpcaaYet2U93TiU/THHzHAZuZQU0Rls4PI6Ro9gNA6lu6Hemk
         jXGSI/+D1NN1Ktx/EtRV35mdvLYlv+lvnqtauO/C6Rb4V7GQWhvs3vjtFBMloufIgBFV
         e4jYci5ML70jmoHFDJLyEzIhWjrqoMYHp6lPRQ9mGYuvedkvBe9NdFeb3iESWl91zjsU
         EKrA==
X-Gm-Message-State: AFqh2kpIRqLONiuYbVgx/dYgXRf+6hPlnXJtjOoqxGerP1vync3mG6GE
        zo4ODbaDE42ZdEB9nPK0mg0=
X-Google-Smtp-Source: AMrXdXt8WRFGmX670aVvZNc/7d1FptftyKbrYAOyaMEhY+J/xa3y4a+CbEpxBcy7MMbR0iOY9Ogo6A==
X-Received: by 2002:a05:600c:3844:b0:3d3:4406:8a3a with SMTP id s4-20020a05600c384400b003d344068a3amr45476682wmr.30.1672962259907;
        Thu, 05 Jan 2023 15:44:19 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id az28-20020a05600c601c00b003cf57329221sm4079845wmb.14.2023.01.05.15.44.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Jan 2023 15:44:19 -0800 (PST)
Message-ID: <5d220f10-cca0-9b3d-666b-573653abb735@gmail.com>
Date:   Fri, 6 Jan 2023 00:44:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v3 03/13] ldconfig.8: ffix
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230105225225.luzsuhpxhjpi5256@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230105225225.luzsuhpxhjpi5256@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------goEEksA0AKyXYER53yyrHIus"
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
--------------goEEksA0AKyXYER53yyrHIus
Content-Type: multipart/mixed; boundary="------------TllIsFAf4mh97LLcs04flErg";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <5d220f10-cca0-9b3d-666b-573653abb735@gmail.com>
Subject: Re: [PATCH v3 03/13] ldconfig.8: ffix
References: <20230105225225.luzsuhpxhjpi5256@illithid>
In-Reply-To: <20230105225225.luzsuhpxhjpi5256@illithid>

--------------TllIsFAf4mh97LLcs04flErg
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KT24gMS81LzIzIDIzOjUyLCBHLiBCcmFuZGVuIFJvYmluc29uIHdy
b3RlOg0KPiAqIFNldCBwYWdlIHRvcGljIGluIGxvd2VyY2FzZS4NCj4gKiBSZXdyaXRlIHN5
bm9wc2VzIHRvIHVzZSBncm9mZiBtYW4oNykgYFNZYC9gWVNgIGV4dGVuc2lvbiBtYWNyb3Mu
DQo+ICogUmV3cml0ZSBzeW5vcHNlcyB0byB1c2UgbWFuKDcpIGZvbnQgbWFjcm9zIGluc3Rl
YWQgb2YgKnJvZmYgZm9udA0KPiAgICBzZWxlY3Rpb24gZXNjYXBlIHNlcXVlbmNlcy4NCj4g
KiBJbiBzeW5vcHNlcywgc2V0IGVsbGlwc2VzIGFzIHNlcGFyYXRlICJvcGVyYW5kcyIgdG8g
YmV0dGVyIHN1Z2dlc3QNCj4gICAgYXJndW1lbnQgc2VwYXJhdGlvbiBieSB3aGl0ZSBzcGFj
ZS4NCg0KUGxlYXNlIGtlZXAgdGhlIGVsbGlwc2VzIGFzIGEgc2VwYXJhdGUgb25lLiAgSSB3
YW50IHRvIGRpc2N1c3MgaXQgc2VwYXJhdGVseS4NCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCj4g
KiBJbiBzeW5vcHNlcywgcHJldmVudCBicmVha3Mgd2l0aGluIG9wdGlvbiBicmFja2V0cy4N
Cj4gKiBUeXBlc2V0IGVsbGlwc2VzIG1vcmUgYXR0cmFjdGl2ZWx5IG9uIHRyb2ZmIGRldmlj
ZXMuDQo+ICogUmV3cml0ZSBvcHRpb24gbGlzdCB0byB1c2UgbWFuKDcpIGZvbnQgbWFjcm9z
IGluc3RlYWQgb2YgKnJvZmYgZm9udA0KPiAgICBzZWxlY3Rpb24gZXNjYXBlIHNlcXVlbmNl
cy4NCj4gKiBVc2UgZ3JvZmYgbWFuKDcpIGBUUWAgZXh0ZW5zaW9uIG1hY3JvIHRvIGluY2x1
ZGUgbXVsdGlwbGUgdGFncyBmb3INCj4gICAgb3B0aW9ucyB3aXRoIGxvbmcgc3lub255bXMg
aW5zdGVhZCBvZiBjb21tYSBub3RhdGlvbi4NCj4gKiBTZXQgbGl0ZXJhbHMgdXNlZCBhcyBh
cmd1bWVudHMgdG8gYC1jYCBvcHRpb24gaW4gYm9sZCwgbm90IGl0YWxpY3MuDQo+IA0KPiBT
aWduZWQtb2ZmLWJ5OiBHLiBCcmFuZGVuIFJvYmluc29uIDxnLmJyYW5kZW4ucm9iaW5zb25A
Z21haWwuY29tPg0KPiAtLS0NCj4gICBtYW44L2xkY29uZmlnLjggfCA2OCArKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tDQo+ICAgMSBmaWxlIGNo
YW5nZWQsIDQ0IGluc2VydGlvbnMoKyksIDI0IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAt
LWdpdCBhL21hbjgvbGRjb25maWcuOCBiL21hbjgvbGRjb25maWcuOA0KPiBpbmRleCBjZWUw
Yzc1ODMuLjM0NjAyNzVhZCAxMDA2NDQNCj4gLS0tIGEvbWFuOC9sZGNvbmZpZy44DQo+ICsr
KyBiL21hbjgvbGRjb25maWcuOA0KPiBAQCAtNSwyMiArNSwzMCBAQA0KPiAgIC5cIg0KPiAg
IC5cIiBNb2RpZmllZCwgNiBNYXkgMjAwMiwgTWljaGFlbCBLZXJyaXNrLCA8bXRrLm1hbnBh
Z2VzQGdtYWlsLmNvbT4NCj4gICAuXCIgICBDaGFuZ2UgbGlzdGVkIG9yZGVyIG9mIC91c3Iv
bGliIGFuZCAvbGliDQo+IC0uVEggTERDT05GSUcgOCAoZGF0ZSkgIkxpbnV4IG1hbi1wYWdl
cyAodW5yZWxlYXNlZCkiDQo+ICsuVEggbGRjb25maWcgOCAoZGF0ZSkgIkxpbnV4IG1hbi1w
YWdlcyAodW5yZWxlYXNlZCkiDQo+ICAgLlNIIE5BTUUNCj4gICBsZGNvbmZpZyBcLSBjb25m
aWd1cmUgZHluYW1pYyBsaW5rZXIgcnVuLXRpbWUgYmluZGluZ3MNCj4gICAuU0ggU1lOT1BT
SVMNCj4gLS5QRCAwDQo+IC0uQlIgL3NiaW4vbGRjb25maWcgIiBbIiBcLW5OdlZYICJdIFsi
IFwtQyAiIFxmSWNhY2hlXGZQXSBbIiBcLWYgIiBcZkljb25mXGZQXSBbIiBcLXIgIiBcZkly
b290XGZQXSINCj4gLS5JUiBkaXJlY3RvcnkgLi4uDQo+IC0uUFANCj4gLS5CIC9zYmluL2xk
Y29uZmlnDQo+ICsuU1kgL3NiaW4vbGRjb25maWcNCj4gKy5cIiBUT0RPPzogLWMsIC0tZm9y
bWF0LCAtaSwgLS1pZ25vcmUtYXV4LWNhY2hlLCAtLXByaW50LWNhY2hlLA0KPiArLlwiIC0t
dmVyYm9zZSwgLVYsIC0tdmVyc2lvbiwgLT8sIC0taGVscCwgLS11c2FnZQ0KPiArLlJCIFsg
XC1uTnZWWCBdDQo+ICsuUkIgWyBcLUNcflxjDQo+ICsuSVIgY2FjaGUgXQ0KPiArLlJCIFsg
XC1mXH5cYw0KPiArLklSIGNvbmYgXQ0KPiArLlJCIFsgXC1yXH5cYw0KPiArLklSIHJvb3Qg
XQ0KPiArLklSIGRpcmVjdG9yeSBcfi5cfC5cfC4NCj4gKy5ZUw0KPiArLlNZIC9zYmluL2xk
Y29uZmlnDQo+ICAgLkIgXC1sDQo+ICAgLlJCIFsgXC12IF0NCj4gLS5JUiBsaWJyYXJ5IC4u
Lg0KPiAtLlBQDQo+IC0uQiAvc2Jpbi9sZGNvbmZpZw0KPiArLklSIGxpYnJhcnkgXH4uXHwu
XHwuDQo+ICsuWVMNCj4gKy5TWSAvc2Jpbi9sZGNvbmZpZw0KPiAgIC5CIFwtcA0KPiAtLlBE
DQo+ICsuWVMNCj4gICAuU0ggREVTQ1JJUFRJT04NCj4gICAuQiBcJWxkY29uZmlnDQo+ICAg
Y3JlYXRlcyB0aGUgbmVjZXNzYXJ5IGxpbmtzIGFuZCBjYWNoZSB0byB0aGUgbW9zdCByZWNl
bnQgc2hhcmVkDQo+IEBAIC0xMTMsMzUgKzEyMSw0MSBAQCBGYWlsdXJlIHRvIGZvbGxvdyB0
aGlzIHBhdHRlcm4gbWF5IHJlc3VsdCBpbiBjb21wYXRpYmlsaXR5IGlzc3Vlcw0KPiAgIGFm
dGVyIGFuIHVwZ3JhZGUuDQo+ICAgLlNIIE9QVElPTlMNCj4gICAuVFANCj4gLS5CUiBcLWMg
IiBcZklmbXRcZlAsICIgXC1cLWZvcm1hdD1cZklmbXRcZlANCj4gKy5CSSBcLWNcfiBmbXQN
Cj4gKy5UUQ0KPiArLkJJIFwtXC1mb3JtYXQ9IGZtdA0KPiAgIChTaW5jZSBnbGliYyAyLjIp
DQo+ICAgLlwiIGNvbW1pdCA0NWVjYTRkMTQxYzA0Nzk1MGRiNDhjNjljODk0MTE2M2QwYTYx
ZmNkDQo+IC1DYWNoZSBmb3JtYXQgdG8gdXNlOg0KPiAtLklSIG9sZCAsDQo+IC0uSVIgbmV3
ICwNCj4gK1VzZSBjYWNoZSBmb3JtYXQNCj4gKy5JUiBmbXQgLA0KPiArd2hpY2ggaXMgb25l
IG9mDQo+ICsuQlIgb2xkICwNCj4gKy5CUiBuZXcgLA0KPiAgIG9yDQo+IC0uSVIgXCVjb21w
YXQgLg0KPiArLkJSIFwlY29tcGF0IC4NCj4gICBTaW5jZSBnbGliYyAyLjMyLA0KPiAgIHRo
ZSBkZWZhdWx0IGlzDQo+IC0uSVIgbmV3IC4NCj4gKy5CUiBuZXcgLg0KPiAgIC5cIiBjb21t
aXQgY2FkNjRmNzc4YWNlZDg0ZWZkYWEwNGFlNjRmODczN2I4NmYwNjNhYg0KPiAgIEJlZm9y
ZSB0aGF0LA0KPiAgIGl0IHdhcw0KPiAtLklSIFwlY29tcGF0IC4NCj4gKy5CUiBcJWNvbXBh
dCAuDQo+ICAgLlRQDQo+IC0uQkkgIlwtQyAiIGNhY2hlDQo+ICsuQkkgXC1DXH4gY2FjaGUN
Cj4gICBVc2UNCj4gICAuSSBjYWNoZQ0KPiAgIGluc3RlYWQgb2YNCj4gICAuSVIgL2V0Yy9s
ZC5zby5jYWNoZSAuDQo+ICAgLlRQDQo+IC0uQkkgIlwtZiAiIGNvbmYNCj4gKy5CSSBcLWZc
fiBjb25mDQo+ICAgVXNlDQo+ICAgLkkgY29uZg0KPiAgIGluc3RlYWQgb2YNCj4gICAuSVIg
L2V0Yy9sZC5zby5jb25mIC4NCj4gICAuVFANCj4gLS5CUiBcLWkgIiwgIiBcLVwtaWdub3Jl
XC1hdXhcLWNhY2hlDQo+ICsuQiBcLWkNCj4gKy5UUQ0KPiArLkIgXC1cLWlnbm9yZVwtYXV4
XC1jYWNoZQ0KPiAgIChTaW5jZSBnbGliYyAyLjcpDQo+ICAgLlwiIGNvbW1pdCAyN2Q5ZmZk
YTE3ZGY0ZDIzODg2ODdhZmQxMjg5Nzc3NGZkZTM5YmNjDQo+ICAgSWdub3JlIGF1eGlsaWFy
eSBjYWNoZSBmaWxlLg0KPiBAQCAtMTY3LDIzICsxODEsMjkgQEAgVW5sZXNzDQo+ICAgaXMg
YWxzbyBzcGVjaWZpZWQsDQo+ICAgbGlua3MgYXJlIHN0aWxsIHVwZGF0ZWQuDQo+ICAgLlRQ
DQo+IC0uQlIgXC1wICIsICIgXC1cLXByaW50XC1jYWNoZQ0KPiArLkIgXC1wDQo+ICsuVFEN
Cj4gKy5CIFwtXC1wcmludFwtY2FjaGUNCj4gICBQcmludCB0aGUgbGlzdHMgb2YgZGlyZWN0
b3JpZXMgYW5kIGNhbmRpZGF0ZSBsaWJyYXJpZXMgc3RvcmVkIGluDQo+ICAgdGhlIGN1cnJl
bnQgY2FjaGUuDQo+ICAgLlRQDQo+IC0uQkkgIlwtciAiIHJvb3QNCj4gKy5CSSBcLXJcfiBy
b290DQo+ICAgQ2hhbmdlIHRvIGFuZCB1c2UNCj4gICAuSSByb290DQo+ICAgYXMgdGhlIHJv
b3QgZGlyZWN0b3J5Lg0KPiAgIC5UUA0KPiAtLkJSIFwtdiAiLCAiIFwtXC12ZXJib3NlDQo+
ICsuQiBcLXYNCj4gKy5UUQ0KPiArLkIgXC1cLXZlcmJvc2UNCj4gICBWZXJib3NlIG1vZGUu
DQo+ICAgUHJpbnQgY3VycmVudCB2ZXJzaW9uIG51bWJlciwNCj4gICB0aGUgbmFtZSBvZiBl
YWNoIGRpcmVjdG9yeSBhcyBpdCBpcyBzY2FubmVkLA0KPiAgIGFuZCBhbnkgbGlua3MgdGhh
dCBhcmUgY3JlYXRlZC4NCj4gICBPdmVycmlkZXMgcXVpZXQgbW9kZS4NCj4gICAuVFANCj4g
LS5CUiBcLVYgIiwgIiBcLVwtdmVyc2lvbg0KPiArLkIgXC1WDQo+ICsuVFENCj4gKy5CIFwt
XC12ZXJzaW9uDQo+ICAgUHJpbnQgcHJvZ3JhbSB2ZXJzaW9uLg0KPiAgIC5UUA0KPiAgIC5C
IFwtWA0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------TllIsFAf4mh97LLcs04flErg--

--------------goEEksA0AKyXYER53yyrHIus
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmO3YNIACgkQnowa+77/
2zLGxhAAntwoUAb+Njrtqz69uMvSIMXi2DdB0Sqr1CmzcJxLZ5XwCJeojHFIh/3S
tci1uq6iDu80ZvgsRRknk7irmKU9yeL81/uhHiwtYrDp2sJJiwou6aNC9oCFy5NE
MtXg4ZhZcdiuCNFSK3kkSyBdCO+EWmmVbZVLno0B6DpdJkxNo4fhEyJTfHLhQ+ZF
We+8P9rspaEIQtbTx+NVYhCqEK5mIrNhQq1A+CNQ1iH1wOmmTcxlCCRAlLi4O8pk
0QEvpOUpajQIDZfyRnhRPfI4nSw0dkY5iPmTFTK3qAF9B5ErYzH0jOX8CaX3SM/4
TqyiwD9XGBFGm87xQyY5dALsYbLrVa857+nCdYgmGTM8RrBDIYR2PrwrEkXT0xlT
cY08ytUGtj7KANoIvk9LK4Vpp46fTuEU5d8yRpWwmiqjoKQqasPxNsdsprPlTSx+
fS/9B2wle5N7n+CJRuxHUR7lAxoJ9w4BctZsq/+RxFeqK5a3HYJzxuXrfMpUNstR
c1NWzX8M03U4aqbO8/FCGVBepADUlovd6abHoRl9cqgmHZmd7xCeE5KoWiDtb307
eq0csiP/BorfMwtgUc/PKMyl8j8zuMjIrV2fHAc1ti4dy1FO9TpUysp3vraOCeZB
DHgQ015XaSX5pZ/3nqoCYhg4CMW2vCT2cQ0pFzJfwlzQnQ5x2jg=
=dQRA
-----END PGP SIGNATURE-----

--------------goEEksA0AKyXYER53yyrHIus--
