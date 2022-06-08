Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CB060543768
	for <lists+linux-man@lfdr.de>; Wed,  8 Jun 2022 17:31:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244104AbiFHP1q (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Jun 2022 11:27:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43322 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242156AbiFHP1b (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Jun 2022 11:27:31 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 38AE611AFEC
        for <linux-man@vger.kernel.org>; Wed,  8 Jun 2022 08:23:45 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id l2-20020a05600c4f0200b0039c55c50482so3520919wmq.0
        for <linux-man@vger.kernel.org>; Wed, 08 Jun 2022 08:23:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=M0MYJMXQGxfuz58TPrmQAA96L8jixRW6I3BxJ+Jyl2o=;
        b=qCneCL0opAIIPDPNbLB0eblS9lYOaudk4sphDfyCCeF/sMC8ghoeZrU2/z5z8PSp1S
         zQMQ8rjEGjLIpk3dT+MFTRCPEmaqr06RNVUevwhIEaFVwdOmUBk9aNO0E9PeIQhYtsW6
         1zniMvr/dr7v3H6ZfTy/b/4RftZ858sbkZb6nY3jdsRwRAHQSCEw+SW/6fdbHWAHEvSO
         /WsqKZzWARjqt25V2hzZFM6JT7tDBmta1ECWqheAuOSHjZdg+ZJl1oS1i1nE4ThGJXWo
         RtMMlnBIaPh27xiujNGOR7yD+pF5vCcU+i8N9C6j7AbllQMvWvSM7s0GQCoAZxcVG30o
         k8Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=M0MYJMXQGxfuz58TPrmQAA96L8jixRW6I3BxJ+Jyl2o=;
        b=kbJ9fkTc8GXH/R5P1iAHX6Fy/Lq6O81H++yiFjSfDziXFPC5SlzCEpDVjVOCz5jwaV
         oeuGAwjgToXNzDtCsNVJa6IaZcJzLG5QuqqCabQE0h7SX5Qs6yMjRDPOit/W2FskQUU8
         oNmSxjo1KVheNmaOJLcphTUm53Bj3OH7l/vYA2Wfk9IuWU7JQhozfvfS29KRjMkdqmyB
         tQq5c/qCE7vtwomGaQg4sKeRD0b3lec0Tqh99Hj26jsVWjI7FZNowfaV3XZzrYA4gMKI
         hVv2T2i5FjLwW+vcSMeuVZB/3oD60tDQmwd1KNVZAy3r8L96tVVMKz+num76DX02rbSK
         g5Qw==
X-Gm-Message-State: AOAM531wI5ILJW0boDtjym010XJ8bnt23XMNrIP1z9OZe+ynwFnLJ2X4
        yW8EcIZo63WOzTLxfIUQwzc=
X-Google-Smtp-Source: ABdhPJw9eABczkebCqrnqOEt32uQ6gDxiYwLeiOicqacWwqLVBAMjEiDelseF8MSsonxKtl8aD8lIw==
X-Received: by 2002:a7b:cf14:0:b0:39c:690b:7078 with SMTP id l20-20020a7bcf14000000b0039c690b7078mr79456wmg.169.1654701823749;
        Wed, 08 Jun 2022 08:23:43 -0700 (PDT)
Received: from [192.168.157.138] ([62.77.182.180])
        by smtp.gmail.com with ESMTPSA id o5-20020a05600c4fc500b0039c5a765388sm6545883wmq.28.2022.06.08.08.23.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jun 2022 08:23:43 -0700 (PDT)
Message-ID: <ec9f2be3-fa4b-b7df-41d1-251893786104@gmail.com>
Date:   Wed, 8 Jun 2022 17:26:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 0/4] mount_setattr.2: updates
Content-Language: en-US
To:     Christian Brauner <brauner@kernel.org>, linux-man@vger.kernel.org
Cc:     Christoph Hellwig <hch@infradead.org>,
        Aleksa Sarai <cyphar@cyphar.com>
References: <20220607133820.1721352-1-brauner@kernel.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220607133820.1721352-1-brauner@kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------vyFeyIECgo19IttIBwV9O4V7"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------vyFeyIECgo19IttIBwV9O4V7
Content-Type: multipart/mixed; boundary="------------0Pdw9d0DH3zTjjx1iVY8AgXg";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Christian Brauner <brauner@kernel.org>, linux-man@vger.kernel.org
Cc: Christoph Hellwig <hch@infradead.org>, Aleksa Sarai <cyphar@cyphar.com>
Message-ID: <ec9f2be3-fa4b-b7df-41d1-251893786104@gmail.com>
Subject: Re: [PATCH 0/4] mount_setattr.2: updates
References: <20220607133820.1721352-1-brauner@kernel.org>
In-Reply-To: <20220607133820.1721352-1-brauner@kernel.org>

--------------0Pdw9d0DH3zTjjx1iVY8AgXg
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGksIENocmlzdGlhbiENCg0KT24gNi83LzIyIDE1OjM4LCBDaHJpc3RpYW4gQnJhdW5lciB3
cm90ZToNCj4gRnJvbTogIkNocmlzdGlhbiBCcmF1bmVyIChNaWNyb3NvZnQpIiA8YnJhdW5l
ckBrZXJuZWwub3JnPg0KPiANCj4gSGV5IGV2ZXJ5b25lLA0KPiANCj4gSGVyZSdzIGEgc2V0
IG9mIHVwZGF0ZXMgZm9yIHRoZSBtb3VudF9zZXRhdHRyLjIgbWFuIHBhZ2UuDQo+IEkgd291
bGQgcmVhbGx5IGFwcHJlY2lhdGUgaXQgaWYgZ3JvZmYgc3ludGF4IGNvdWxkIGJlIGZpeGVk
IHVwIGJ5DQo+IG1haW50YWluZXJzLiBJIHRyaWVkIG15IGJlc3QgdG8gcmVtZW1iZXIgdGhl
IGd1aWRlbGluZXMgdGhvdWdoLiA6KQ0KDQpTdXJlISAgTW9zdGx5IGxvb2tzIGdvb2QuICBB
cHBsaWVkOyBhbmQgSSBhcHBsaWVkIGEgc21hbGwgcGF0Y2ggb24gdG9wIA0Kb2YgdGhlbS4N
Cg0KSnVzdCBhIHNtYWxsIHJlbWluZGVyIGZyb20gbWFuKDcpOg0KICAgICAgICAuQiAgQm9s
ZA0KDQogICAgICAgIC5CSSBCb2xkIGFsdGVybmF0aW5nIHdpdGggaXRhbGljDQoNCiAgICAg
ICAgLkJSIEJvbGQgIGFsdGVybmF0aW5nICB3aXRoICBSb21hbg0KDQpJIGZpeGVkIHRoZSBj
dXJyZW50IHBhZ2VzIHRvIGhhdmUgYSBjb25zaXN0ZW50IHN0eWxlLiAgWW91IGNhbiBjaGVj
ayBvdXQgDQp0aGUgYWx4L21haW4gYnJhbmNoIGZyb20gdGhlIG9mZmljaWFsIGtlcm5lbC5v
cmcgcmVwby4NCg0KVGhhbmtzLA0KQWxleA0KDQoNCj4gDQo+IFRoYW5rcyENCj4gQ2hyaXN0
aWFuDQo+IA0KPiBDaHJpc3RpYW4gQnJhdW5lciAoNCk6DQo+ICAgIG1vdW50X3NldGF0dHIu
MjogYWRkIGFuZCBleHBsYWluIG1pc3NpbmcgRUJVU1kgZXJyb3INCj4gICAgbW91bnRfc2V0
YXR0ci4yOiB1cGRhdGUgY29uZGl0aW9ucyB0byBjcmVhdGUgSUQtbWFwcGVkIG1vdW50cw0K
PiAgICBtb3VudF9zZXRhdHRyLjI6IHVwZGF0ZSBsaXN0IG9mIHN1cHBvcnRlZCBmaWxlc3lz
dGVtcw0KPiAgICBtb3VudF9zZXRhdHRyLjI6IGZmaXgNCj4gDQo+ICAgbWFuMi9tb3VudF9z
ZXRhdHRyLjIgfCA2NCArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0t
LS0tLQ0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA1MiBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlv
bnMoLSkNCj4gDQo+IA0KPiBiYXNlLWNvbW1pdDogYWU2YjIyMTg4MmNlNzFiYTgyZmNkYmUw
MjQxOWEyMjUxMTE1MDJmMA0KDQpkaWZmIC0tZ2l0IGEvbWFuMi9tb3VudF9zZXRhdHRyLjIg
Yi9tYW4yL21vdW50X3NldGF0dHIuMg0KaW5kZXggNzE4YTRhZGFlLi4zNTJjOGU4NTIgMTAw
NjQ0DQotLS0gYS9tYW4yL21vdW50X3NldGF0dHIuMg0KKysrIGIvbWFuMi9tb3VudF9zZXRh
dHRyLjINCkBAIC00MTQsNyArNDE0LDcgQEAgYnV0IHRoZSBtb3VudCBzdGlsbCBob2xkcyBm
aWxlcyBvcGVuIGZvciB3cml0aW5nLg0KICAuVFANCiAgLkIgRUJVU1kNCiAgVGhlIGNhbGxl
ciB0cmllZCB0byBjcmVhdGUgYW4gSUQtbWFwcGVkIG1vdW50IHJhaXNpbmcNCi0uQlIgTU9V
TlRfQVRUUl9JRE1BUA0KKy5CIE1PVU5UX0FUVFJfSURNQVANCiAgYW5kIHNwZWNpZnlpbmcN
CiAgLkkgdXNlcm5zX2ZkDQogIGJ1dCB0aGUgbW91bnQgc3RpbGwgaG9sZHMgZmlsZXMgb3Bl
biBmb3Igd3JpdGluZy4NCkBAIC02NTEsMjYgKzY1MSwyNiBAQCBDdXJyZW50bHksIHRoZSBm
b2xsb3dpbmcgZmlsZXN5c3RlbXMgc3VwcG9ydCANCklELW1hcHBlZCBtb3VudHM6DQogIC5C
UiBleHQ0ICg1KQ0KICAoc2luY2UgTGludXggNS4xMikNCiAgLklQIFwoYnUNCi0uQlIgRkFU
DQorLkIgRkFUDQogIChzaW5jZSBMaW51eCA1LjEyKQ0KICAuSVAgXChidQ0KICAuQlIgYnRy
ZnMgKDUpDQogIChzaW5jZSBMaW51eCA1LjE1KQ0KICAuXCIgY29tbWl0IDViOWIyNmY1ZDBi
ODhiNzQwMDFkY2ZlNGFiOGE4ZjJmNGU3NDQxMTINCiAgLklQIFwoYnUNCi0uQlIgbnRmczMN
CisuQiBudGZzMw0KICAoc2luY2UgTGludXggNS4xNSkNCiAgLlwiIGNvbW1pdCA4MmNhZTI2
OWNmYTk1MzAzMmZiYjg5ODBhN2Q1NTRkNjBmYjAwYjE3DQogIC5JUCBcKGJ1DQotLkJSIGYy
ZnMNCisuQiBmMmZzDQogIChzaW5jZSBMaW51eCA1LjE4KQ0KICAuXCIgY29tbWl0IDk4NGZj
NGU3NmQ2MzM0NTQ5OWYwMWMwYzE5OGE0YjQ0ODYwY2YwMjcNCiAgLklQIFwoYnUNCi0uQlIg
ZXJvZnMNCisuQiBlcm9mcw0KICAoc2luY2UgTGludXggNS4xOSkNCiAgLlwiIGNvbW1pdCA2
YzQ1OWI3OGQ0NzkzYWZiYmE2ZDg2NGM0NjZjYzVjZDI5MzI0NTlkDQogIC5JUCBcKGJ1DQot
LkJSIG92ZXJsYXlmcw0KKy5CIG92ZXJsYXlmcw0KICAoSUQtbWFwcGVkIGxvd2VyIGFuZCB1
cHBlciBsYXllcnMgc3VwcG9ydGVkIHNpbmNlIExpbnV4IDUuMTkpDQogIC5QRA0KICAuUkUN
Cg0KDQotLSANCkFsZWphbmRybyBDb2xvbWFyDQpMaW51eCBtYW4tcGFnZXMgY29tYWludGFp
bmVyOyBodHRwOi8vd3d3Lmtlcm5lbC5vcmcvZG9jL21hbi1wYWdlcy8NCmh0dHA6Ly93d3cu
YWxlamFuZHJvLWNvbG9tYXIuZXMvDQo=

--------------0Pdw9d0DH3zTjjx1iVY8AgXg--

--------------vyFeyIECgo19IttIBwV9O4V7
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmKgv64ACgkQnowa+77/
2zIhJQ//b0RBzXdEQdSZz23vk00Qo84t/MJ7msCAsP/Jx5/XEunRSzlutyPZYNYQ
jvSan8LajDC3MoSBefGw2xaVnZG0BZQhr9WzA2iV7Wj/L+QPqGMAPWiE92Bib/Sh
PP3V/56uB/CjXJz6tc/XogdkT1YDj3fn5koLS71GSdxVug3cf0Q/6iGFzGZzhUnV
cVDwdZmE+7/28Rx+ED79ATuDcsKGquQ+L0ZTPmM4IzDgFUR47I1a9YpCYmBO814E
+4aqTJcEAq7TQaBb2c/bTyWgf3GFMNAJc1fyYZCH9340UwH97fHkCncltRdP1/zE
BtJQNQwbU6Uria8oVNzzgedY1ouTQ8DfSP2Jr3y0oGjp/3qAnqPtBUMfgOgbBGjC
tJ7Uzl8kNGojLg4TV+8HIslG4IzhuvKSdI7YZ4xiXYcQb8o8cO2cd2xXAy4ObJGD
+wChKXLEr0DBZ/etUD/RVriPxKekcLsVTtrik++ye68+Y8Lm78CZPFZ+kkdRUtmT
RUMnG7zQQCrcANYHf0ilQ+n+glMhSQiFQXkkzdLT1weVE4+nyvYrVMWKny2Abxze
1SZwkKWDl1+vp1a6N/WiMDWZLbX7DVoddzS6XYXJ06LzjlGHGdgBiD9YYXq7J2hT
KEQ+lcaKvJE4DGwPxRgcjSCQfTdFKW8NSF5hN4GgGaKfUYUf0D8=
=csC8
-----END PGP SIGNATURE-----

--------------vyFeyIECgo19IttIBwV9O4V7--
