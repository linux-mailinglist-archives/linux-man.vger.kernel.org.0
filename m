Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 52156606037
	for <lists+linux-man@lfdr.de>; Thu, 20 Oct 2022 14:31:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229997AbiJTMbc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Oct 2022 08:31:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46292 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229996AbiJTMbc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Oct 2022 08:31:32 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B76221D557C
        for <linux-man@vger.kernel.org>; Thu, 20 Oct 2022 05:31:30 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id fn7-20020a05600c688700b003b4fb113b86so2082098wmb.0
        for <linux-man@vger.kernel.org>; Thu, 20 Oct 2022 05:31:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6MRUSc5qly3MknfKmkf9uqKgdaMWzgE8Ol4DyEPDU0Q=;
        b=CgEZKvP9qkRPVUVY/vb3lei5jAHStXC/gW+wEgS/UIUVjj21pCwWttNuqu7jPs2ZLX
         KPKVV2v6WTafuYKJVG1H4npVN1a2I8emISNt7nvPsr2pfeOP5T7fh74qfxwJsLzIqTbx
         4yA2DCOX6CAM4M4Vfb/4z6q4sLoxBgx56Nn6UaOZ4XGOZZDbOA6m2u6WfUHaQTAndiLQ
         1PorcCzMr2hzLkL6RAgl9urvR/aomipQxxLmoginnrrK5/ABmSzPaoHgJox/TW23H9SG
         OZ3QXNTbzxXTqeSxVaj3P5O++KfZIsCzPVuLLn82hcJMkQStUYfTvjTvFNsIXzK51U/z
         7EFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=6MRUSc5qly3MknfKmkf9uqKgdaMWzgE8Ol4DyEPDU0Q=;
        b=TWGAU3BYDhr4IyVUQCOn9u+lTayZeWOS5gqSCD4OPK6aeKdrTWCO4bYajoBvjHpsm7
         6uwf9ifx5BTwhyyDIal4Wz6sFk7RXdaOCh370tyeyFA7b52vSe+TBOmd0b0yVTxR5r0K
         AebdEa3XElLreWxE8fPWIZllN1HlmoakdpmEKXk8vshjwKujlJu1fPNR2fMrdgpFfqfE
         KgXulUENGWUVCS+Y1/NiFIMEFYoNkNicGx7B9fSrQhGA0oinEdMvyg5iJKHGBTDIYXGc
         cM9wWxXjmscy8A5Dz6OdCmWhannLnN5ShiO3FWWlWGStGTJUYFGqiW3AgHiNs5lXRJi2
         7FlQ==
X-Gm-Message-State: ACrzQf2hbC0N8dE7sFnkmlpL0FSzxJn2MIOcyseuQM8JIEzNp+jpTR4U
        /DyGSXJEpGUSK+5FgAP7uLn12I8DRo0=
X-Google-Smtp-Source: AMsMyM5kQNcwHN3lgJFZGc3/OjXi1ILtNW+Zx3Vf+8w82sJCFmv8jFJgCuMu32u3CUbpRpKqvNWOEg==
X-Received: by 2002:a7b:c4d9:0:b0:3c4:e77f:b991 with SMTP id g25-20020a7bc4d9000000b003c4e77fb991mr9502763wmk.104.1666269089066;
        Thu, 20 Oct 2022 05:31:29 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id a10-20020a056000188a00b0022e344a63c7sm16673005wri.92.2022.10.20.05.31.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Oct 2022 05:31:28 -0700 (PDT)
Message-ID: <c88dc3a0-5c1e-b0db-a307-115056b09226@gmail.com>
Date:   Thu, 20 Oct 2022 14:31:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH] Remove any mention of feature test macro requirements for
 mmap()
Content-Language: en-US
To:     John Scott <jscott@posteo.net>, Andreas Schwab <schwab@suse.de>
Cc:     linux-man@vger.kernel.org,
        GNU C Library <libc-alpha@sourceware.org>
References: <9514ccd17ebc5fed7b685e4e163e725148176972.camel@posteo.net>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <9514ccd17ebc5fed7b685e4e163e725148176972.camel@posteo.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------bKFRSmX0vee24P8X4vrGnlIn"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------bKFRSmX0vee24P8X4vrGnlIn
Content-Type: multipart/mixed; boundary="------------vRJVzA2lwe0Sja005CaCcDzr";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: John Scott <jscott@posteo.net>, Andreas Schwab <schwab@suse.de>
Cc: linux-man@vger.kernel.org, GNU C Library <libc-alpha@sourceware.org>
Message-ID: <c88dc3a0-5c1e-b0db-a307-115056b09226@gmail.com>
Subject: Re: [PATCH] Remove any mention of feature test macro requirements for
 mmap()
References: <9514ccd17ebc5fed7b685e4e163e725148176972.camel@posteo.net>
In-Reply-To: <9514ccd17ebc5fed7b685e4e163e725148176972.camel@posteo.net>

--------------vRJVzA2lwe0Sja005CaCcDzr
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSm9obiwgQW5kcmVhcywNCg0KT24gMTAvMTkvMjIgMTQ6MjUsIEpvaG4gU2NvdHQgd3Jv
dGU6DQo+IEknbSBub3Qgc3Vic2NyaWJlZCwgcGxlYXNlIENDIG1lLg0KPiANCj4gZ2xpYmMg
ZG9lc24ndCByZXF1aXJlX0dOVV9TT1VSQ0UgdG8gZXhwb3NlIGNlcnRhaW4gTUFQXyogY29u
c3RhbnRzDQo+IGFueW1vcmUgKE1BUF9BTk9OWU1PVVMgYmVpbmcgcGFydGljdWxhcmx5IG5v
dGV3b3J0aHkgYW1vbmcgdGhlbSBmb3INCj4gYmVpbmcgb24gdHJhY2sgZm9yIFBPU0lYIElz
c3VlIDgpLiBTZWUgdGhpcyBjb21taXQ6DQo+IGh0dHBzOi8vc291cmNld2FyZS5vcmcvZ2l0
Lz9wPWdsaWJjLmdpdDthPWNvbW1pdDtoPTk1NGI4ZjM4OTU4ZGU3MmM0NzEyMDg4NzM1ZWIx
NzUxMThmMTdiNTENCj4gDQo+IG9yIG15IGdsaWJjIGJ1ZyByZXBvcnQgd2hpY2ggdHJpZ2dl
cmVkIHRoZSBjaGFuZ2UgYXQNCj4gaHR0cHM6Ly9zb3VyY2V3YXJlLm9yZy9idWd6aWxsYS9z
aG93X2J1Zy5jZ2k/aWQ9MjkzNzUNCj4gDQo+IFRoaXMgaXMgYmVjYXVzZSBQT1NJWCByZXNl
cnZlcyBNQVBfIGNvbnN0YW50cyB0byB0aGUgaW1wbGVtZW50YXRpb24sIHNvDQo+IHRoZWly
IHVuY29uZGl0aW9uYWwgdmlzaWJpbGl0eSBpbiBzeXMvbW1hbi5oIGlzIGFsd2F5cyBhbGxv
d2VkLiBUaGlzIGlzDQo+IGFsc28gaGVscGZ1bCBmb3IgcG9ydGFibGUgYXBwbGljYXRpb24g
d3JpdGVycy4NCj4gDQo+IE90aGVyIEMgbGlicmFyaWVzIGxpa2UgbXVzbCBhbHJlYWR5IGV4
aGliaXQgdGhpcyBiZWhhdmlvci4NCj4gDQo+IEJlY2F1c2UgbW1hcCgpIGlzIGluIGEgUE9T
SVgtc3BlY2lmaWMgaGVhZGVyIGFscmVhZHksIHVzaW5nIGl0IHdpdGggYW55DQo+IGNvbWJp
bmF0aW9uIG9mIE1BUF8gY29uc3RhbnRzIGRvZXNuJ3QgcmVxdWlyZSBmZWF0dXJlIHRlc3Qg
bWFjcm9zLg0KPiANCj4gVGhhbmtzIGZvciB5b3VyIGNvbnNpZGVyYXRpb24NCj4gDQo+IA0K
PiAwMDAxLVJlbW92ZS1hbnktZmVhdHVyZS10ZXN0LW1hY3JvLXJlcXVpcmVtZW50cy1mb3It
bW1hcC5wYXRjaA0KPiANCj4gIEZyb20gNDc2MzI4ODg2MjdjYWMzZDA1NDdhOTY5YzU1ZDM4
NDhiM2IzNTBiNyBNb24gU2VwIDE3IDAwOjAwOjAwIDIwMDENCj4gRnJvbTogSm9obiBTY290
dDxqc2NvdHRAcG9zdGVvLm5ldD4NCj4gRGF0ZTogV2VkLCAxOSBPY3QgMjAyMiAwNjoyNToy
NSAtMDQwMA0KPiBTdWJqZWN0OiBbUEFUQ0hdIFJlbW92ZSBhbnkgZmVhdHVyZSB0ZXN0IG1h
Y3JvIHJlcXVpcmVtZW50cyBmb3IgbW1hcCgpDQo+IA0KPiBObyBmZWF0dXJlIHRlc3QgbWFj
cm9zIGFyZSByZXF1aXJlZCBhbnltb3JlLCBub3QgZXZlbg0KPiB0byBleHBvc2UgY2VydGFp
biBjb25zdGFudHMuIFNlZQ0KPiBodHRwczovL3NvdXJjZXdhcmUub3JnL2J1Z3ppbGxhL3No
b3dfYnVnLmNnaT9pZD0yOTM3NQ0KPiAtLS0NCj4gICBtYW4yL21tYXAuMiB8IDM1IC0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDM1
IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL21hbjIvbW1hcC4yIGIvbWFuMi9t
bWFwLjINCj4gaW5kZXggOWMzNDNmMi4uOGEyYmRkZiAxMDA2NDQNCj4gLS0tIGEvbWFuMi9t
bWFwLjINCj4gKysrIGIvbWFuMi9tbWFwLjINCj4gQEAgLTMyLDggKzMyLDYgQEAgU3RhbmRh
cmQgQyBsaWJyYXJ5DQo+ICAgLkJJICIgICAgICAgICAgIGludCAiIGZkICIsIG9mZl90ICIg
b2Zmc2V0ICk7DQo+ICAgLkJJICJpbnQgbXVubWFwKHZvaWQgKiIgYWRkciAiLCBzaXplX3Qg
IiBsZW5ndGggKTsNCj4gICAuZmkNCj4gLS5QUA0KPiAtU2VlIE5PVEVTIGZvciBpbmZvcm1h
dGlvbiBvbiBmZWF0dXJlIHRlc3QgbWFjcm8gcmVxdWlyZW1lbnRzLg0KPiAgIC5TSCBERVND
UklQVElPTg0KPiAgIC5CUiBtbWFwICgpDQo+ICAgY3JlYXRlcyBhIG5ldyBtYXBwaW5nIGlu
IHRoZSB2aXJ0dWFsIGFkZHJlc3Mgc3BhY2Ugb2YNCj4gQEAgLTcyNywzOSArNzI1LDYgQEAg
ZmxhZyBpcyBzcGVjaWZpZWQsIGFuZA0KPiAgIC5JIGFkZHINCj4gICBpcyAwIChOVUxMKSwg
dGhlbiB0aGUgbWFwcGVkIGFkZHJlc3Mgd2lsbCBiZSAwIChOVUxMKS4NCj4gICAuUFANCj4g
LUNlcnRhaW4NCj4gLS5JIGZsYWdzDQo+IC1jb25zdGFudHMgYXJlIGRlZmluZWQgb25seSBp
ZiBzdWl0YWJsZSBmZWF0dXJlIHRlc3QgbWFjcm9zIGFyZSBkZWZpbmVkDQo+IC0ocG9zc2li
bHkgYnkgZGVmYXVsdCk6DQo+IC0uQiBfREVGQVVMVF9TT1VSQ0UNCj4gLXdpdGggZ2xpYmMg
Mi4xOSBvciBsYXRlcjsNCg0KV2Ugc2hvdWxkIGtlZXAgc29tZSBub3RpY2UgdGhhdCBpbiB0
aGUgcGFzdCBpdCB3YXMgbmVlZGVkLiAgQlRXLCBpcyANCmdsaWJjIGJhY2twb3J0aW5nIHRo
ZSBmaXggdG8gb2xkIHN1cHBvcnRlZCB2ZXJzaW9ucz8NCg0KVGhhbmtzLA0KDQpBbGV4DQoN
Ci0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------vRJVzA2lwe0Sja005CaCcDzr--

--------------bKFRSmX0vee24P8X4vrGnlIn
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNRP5gACgkQnowa+77/
2zLbNxAAimz5s1PpQkpsNixvfL49P/GiY0eJopQyHzMy5BFvC+TS41lclTWo0sWt
87E0RWIOu6ru97uJSWrDR9GkoTBlHr9RUD5Qgs64zYnN8wf0gIU6HFj5Jz8F53ze
r44h1bybVBcD04nIU775J1C6cKYDoy1wqUpIJLY8BVaXwUt7eGV0bH7rRm25jVMn
NuUqBKNZo7zdb2b1fiMyyiU26Acv6OdVpcyS4lQrCy/MN9wvpjfFVCjevfYnYgZf
i3rWKZq6kmLXWNfr3c6cWFfsH7OFK2Nfn4EzwWY0SKiad4+jlIjqhQ2VQPy8NNZt
xyvrL5AYyjb6gS4PtaFhopFD1VyXtdxLiM8XVxm9giZ+BeFE7CmFJv1cK5LiFKBL
jw2Z+r4+7YyRnTN3qXeoqnexLwqZhOXzU8TuTb2prfM6+zOwvq6vRTMUPd4qzCg8
2xWA8Wf9uNqG7qYgOkDIqoUSvu4JcSVX3CUszpoOoofQ//luWJGA9smRrhkYWrnB
AIcgdmBOXxs5kmTO01B4teEAEQFKShLrZG+kbWtWeWxhNiXMw/bKk738TM6mz1wU
XbAVI2O6gRsQ7I+n7gj9lwaGLgllzUg00YCBbkpGzUyFNFOr3+OPLcU/BuVguwWB
4/BYub1eLFbdqhee7fCkEgn5OjM3e4CLyFtw91Ib5K8GgESX6y0=
=gkeA
-----END PGP SIGNATURE-----

--------------bKFRSmX0vee24P8X4vrGnlIn--
