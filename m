Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5400874BE30
	for <lists+linux-man@lfdr.de>; Sat,  8 Jul 2023 17:29:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230414AbjGHP3b (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Jul 2023 11:29:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229726AbjGHP3a (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Jul 2023 11:29:30 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC8B51737
        for <linux-man@vger.kernel.org>; Sat,  8 Jul 2023 08:29:24 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 430DE60D3E
        for <linux-man@vger.kernel.org>; Sat,  8 Jul 2023 15:29:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BBB85C433C8;
        Sat,  8 Jul 2023 15:29:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1688830163;
        bh=QJWsW/DnOGAVJM10kel15ZXfP1BRmszf8tX+J6mb6Fo=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=BK6gzW1GuHSl54yE6fKHxWULDqTogxmBB5L4vrqoksS1zqLGqCqK/MCqr9zKZF5Lq
         4/Z/7ZsniEC3fu49EJeWEUTboD+0IHnaoLm/JIyO6/3E4RSoJVSdcAU1QwW3tmGs5c
         oSiPSXEt2cQgSSwoSRx+8LrdpUG/Dixq+ZffZeCPrrZ9cwpIaVgG3bEwvZrmFPhmFj
         kxoILFmLm+2RNr4pIag6Z+NdunHR4Y0JtRLd1yW8E85aQMcYIHKEvgpImb4jcKknFb
         f/6K6AQhOjn7KBJCgLN+puQ+jowovU6uAhcELsyLxZCUer/HoMQdMPvFcjMfN+Pjid
         m5rXc6lsZm64w==
Message-ID: <69f90d0f-4731-2a7d-9e6c-e1dd0b36c404@kernel.org>
Date:   Sat, 8 Jul 2023 17:29:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [patch] recv.2: correct non-existent name msg_iovec
Content-Language: en-US
To:     Rob Linden <rlinden@redhat.com>
Cc:     linux-man@vger.kernel.org
References: <CAP0H_AFpK56deW+_Lb0Q3-51Z6kiL_G-SBYmC2GDnpTmrWj0FQ@mail.gmail.com>
From:   Alejandro Colomar <alx@kernel.org>
In-Reply-To: <CAP0H_AFpK56deW+_Lb0Q3-51Z6kiL_G-SBYmC2GDnpTmrWj0FQ@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------B5EARsQy4ytgOH4YF0ufk1mN"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------B5EARsQy4ytgOH4YF0ufk1mN
Content-Type: multipart/mixed; boundary="------------jAr21aADtABSjbY1NBXTTMKS";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Rob Linden <rlinden@redhat.com>
Cc: linux-man@vger.kernel.org
Message-ID: <69f90d0f-4731-2a7d-9e6c-e1dd0b36c404@kernel.org>
Subject: Re: [patch] recv.2: correct non-existent name msg_iovec
References: <CAP0H_AFpK56deW+_Lb0Q3-51Z6kiL_G-SBYmC2GDnpTmrWj0FQ@mail.gmail.com>
In-Reply-To: <CAP0H_AFpK56deW+_Lb0Q3-51Z6kiL_G-SBYmC2GDnpTmrWj0FQ@mail.gmail.com>

--------------jAr21aADtABSjbY1NBXTTMKS
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gNi8xOS8yMyAxMzo0OSwgUm9iIExpbmRlbiB3cm90ZToNCj4gSGVsbG8gQWxlamFuZHJv
IQ0KDQpIZWxsbyBSb2IhDQoNClNvcnJ5IGZvciB0aGUgZGVsYXk7IEkndmUgYmVlbiBvbiB2
YWNhdGlvbi4gIFBsZWFzZSBkb24ndCBzdGFydCBuZXcNCnRocmVhZHMgZm9yIGNvbnRpbnVp
bmcgYW4gb2xkIG9uZSwgYXMgaXQgbWFrZXMgaXQgZGlmZmljdWx0IHRvIGZvbGxvdy4NCklz
IHRoaXMganVzdCBhIHJlc2VuZCBvZiB0aGUgcHJldmlvdXMgcGF0Y2g/DQoNClRoYW5rcywN
CkFsZXgNCg0KPiANCj4gSSB0aGluayB0aGVyZSBpcyBhIG1pc3Rha2Ugb24gdGhlIG1hbnBh
Z2UgZm9yIHJlY3YuIEluIHRoZSBkZXNjcmlwdGlvbiBvZg0KPiB0aGUgZmxhZyBNU0dfRVJS
UVVFVUUgaXQgc2F5cyB0aGF0IGRhdGEgaXMgcGFzc2VkIHZpYSAibXNnX2lvdmVjIi4gVGhp
cyBpcw0KPiBwcm9iYWJseSByZWZlcnJpbmcgdG8gbXNnX2lvdiBpbiBzdHJ1Y3QgbXNnaGRy
DQo+IChmcm9tIC91c3IvaW5jbHVkZS9iaXRzL3NvY2tldC5oKS4gQSAibXNnX2lvdmVjIiBk
b2Vzbid0IHNlZW0gdG8gZXhpc3QuDQo+IE1heWJlIGl0IHdhcyBzcGVsbGVkIHdyb25nIGJl
Y2F1c2UgaXQncyBvZiB0eXBlIHN0cnVjdCBpb3ZlYy4NCj4gSWYgaXQgaXMgaW5kZWVkIHdy
b25nIHRoZW4gdGhlIGZvbGxvd2luZyBwYXRjaCBjb3JyZWN0cyBpdDoNCj4gDQo+IFNpZ25l
ZC1vZmYtYnk6IFJvYiBMaW5kZW4gPHJsaW5kZW5AcmVkaGF0LmNvbT4NCj4gDQo+ICBGcm9t
IDgzMGExYjEyMzNlYjY5YmQ4YTRhNjQyOTY1ODFkMDk0ZmIwZWRjNDYgTW9uIFNlcCAxNyAw
MDowMDowMCAyMDAxDQo+IEZyb206IHJva2tiZXJ0IDxyb2trYmVydEBnbWFpbC5jb20+DQo+
IERhdGU6IFR1ZSwgNiBKdW4gMjAyMyAxMDowMDoyMCArMDIwMA0KPiBTdWJqZWN0OiBbUEFU
Q0hdIHJlY3YuMjogZmllbGQgbXNnX2lvdiBpbiBzdHJ1Y3QgbXNnaGRyIGlzIHdyb25nbHkg
Y2FsbGVkDQo+ICAgbXNnX2lvdmVjLiBDb3JyZWN0ZWQgdG8gbXNnX2lvdi4NCj4gDQo+IC0t
LQ0KPiAgIG1hbjIvcmVjdi4yIHwgMiArLQ0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL21hbjIvcmVjdi4y
IGIvbWFuMi9yZWN2LjINCj4gaW5kZXggMjdkNmQ2MTJjLi42MmU0M2M5YWEgMTAwNjQ0DQo+
IC0tLSBhL21hbjIvcmVjdi4yDQo+ICsrKyBiL21hbjIvcmVjdi4yDQo+IEBAIC0xNTksNyAr
MTU5LDcgQEAgYW5kDQo+ICAgZm9yIG1vcmUgaW5mb3JtYXRpb24uDQo+ICAgVGhlIHBheWxv
YWQgb2YgdGhlIG9yaWdpbmFsIHBhY2tldCB0aGF0IGNhdXNlZCB0aGUgZXJyb3INCj4gICBp
cyBwYXNzZWQgYXMgbm9ybWFsIGRhdGEgdmlhDQo+IC0uSVIgbXNnX2lvdmVjIC4NCj4gKy5J
UiBtc2dfaW92IC4NCj4gICBUaGUgb3JpZ2luYWwgZGVzdGluYXRpb24gYWRkcmVzcyBvZiB0
aGUgZGF0YWdyYW0gdGhhdCBjYXVzZWQgdGhlIGVycm9yDQo+ICAgaXMgc3VwcGxpZWQgdmlh
DQo+ICAgLklSIG1zZ19uYW1lIC4NCj4gLS0NCj4gMi4zOS4yDQo+IA0KPiANCj4gQWxsIHRo
ZSBiZXN0LA0KPiByb2INCj4gDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9t
YXIuZXMvPg0KR1BHIGtleSBmaW5nZXJwcmludDogQTkzNDg1OTRDRTMxMjgzQTgyNkZCREQ4
RDU3NjMzRDQ0MUUyNUJCNQ0KDQo=

--------------jAr21aADtABSjbY1NBXTTMKS--

--------------B5EARsQy4ytgOH4YF0ufk1mN
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmSpgM8ACgkQnowa+77/
2zJyYw/+KxhvXBlNHGPZDvhXEWaDDuzH0wzEq0cjo+uKqfxaJn3htr7L71GjmDNE
Ef+OSu34UIkqxzWyjlzKoiDXLDHBmeN/ZT9Kkczkp3tHPDzOsxRas6mrPl47vfPK
dtEu2hVmwdi6rbtNBtKsglBcJaopYzF9okmICfrQ5UsKAAoJMKONDxoQliIpOaZd
tE0K8cTlxcq0207TLUoWQEbBN6RPmiJqdJDaKoAK4ShfW0/Ww2P2zweplYgtv+l5
KcJ4UplYfZoSAZItNB7p3Jsd6gzcUUJZQM7yNHWYMF6s8cngXA8tnD3P05OvRilk
x7zD+dAY+CxUA2HiXQEUeHi2Lfc44T6Q6MeukuCgk3mT4veS87M2kyxzXZij9266
m99iIfB9NC+GdWMZ6FkuxUpsEkjTWLnpZS3/uHRZ31L8AOAY5JWz+G7Za8qsLKWx
KKcAfrzae6111zwPMwcGt5vKHQllWDk6jITdF/Je89MhdkYAJtJmAdqZvAJs7i0A
L534x6WdtU3feytFbm2HMP0utYL5VbFhGMgvvhXJq+ePddqdmnbW9qUYqs2AolqN
Br+wPNaHl2KNA61EwcRAeBKq0m3gMudoegRkC/JdykKCuJuMT3fDD2UAHfUFSI+C
X83zcUE97yO6pafrgqc9wqhoh30xIUtkomlZQ1EAfhLKWue94Qw=
=lyJd
-----END PGP SIGNATURE-----

--------------B5EARsQy4ytgOH4YF0ufk1mN--
