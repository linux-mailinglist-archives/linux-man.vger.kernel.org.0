Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0969160296E
	for <lists+linux-man@lfdr.de>; Tue, 18 Oct 2022 12:37:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229463AbiJRKhC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 18 Oct 2022 06:37:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39424 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229592AbiJRKhB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 18 Oct 2022 06:37:01 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9B758F95F
        for <linux-man@vger.kernel.org>; Tue, 18 Oct 2022 03:36:56 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id c7-20020a05600c0ac700b003c6cad86f38so14688369wmr.2
        for <linux-man@vger.kernel.org>; Tue, 18 Oct 2022 03:36:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U98NvSNBFApQKz2kXkqgIYY3wnhoupzrBzpYM+Eqm2Q=;
        b=PLeN7HZ1iCDN8VneY8q2OOulK2wDzaXsmMFnrosMFOmX3MOzVYILODeWy8Wney7HKb
         aWfr/DpUXnRUiSjabutzwUkTkWxuEFLLaT6IYJ98PG2cVFZM4fX9Ex3hGaBiGh6ni5Ml
         DpQC/rmvvKe4HzfkLeo+TYY55oWe8gpJOn8JdQC7p2+fJxKb+eArkKFzXVd2VHsyXjXt
         G5MeL0Vj+HhozGj80Sb1GGAribqtoH2bRjRCISiH703YfpohnOJwTgnMqplOUitQO+nY
         pY+3DYXBd0HuJdAxayoqsrPzTXVH1M74R+CY/5LaNHyF/gYwX9cxeSYaMI+PjYDLaBip
         DqVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=U98NvSNBFApQKz2kXkqgIYY3wnhoupzrBzpYM+Eqm2Q=;
        b=cm9eKFNSpaSPjMfglCTL6RgK2sYCMsHJF7t0BIjOMSFWz9k7HE74eKjee1uPQl1BkY
         2FHVTrJM8trk98Wf7Y1bNKGgk6YyfHBOOWMHC5e1ZKkP6kEn14tOWpFOnKbku3Fk/y8O
         dlLtArnFBR2L48hYEptFkyV9BPDo/H5jayyjNjXq9Cyhmy2uHCEUCTf2sCQVP/u677x/
         cGoORYBPh1OfP2rVDdzbn4NA4wcwhlLSXkd2tA6U6tHsPP4piYqmYZ+wTidvvJfrhLXp
         jhpeiAQK/Z0BDKlNgLyVncLYcADS3JAT18ST4nV6F4CpU82jEFfdfdmkhx7s4+Wp2x7r
         ak2Q==
X-Gm-Message-State: ACrzQf2tdwaB1SdfTo0JNi9/J0sv1rqEiI1zyDp/nnvkgs8OjWG2VZtl
        ymuSAsYZV2I0p+APANlws8g=
X-Google-Smtp-Source: AMsMyM7fCxN3P1Auq/oWBeipiIbXTHAtoDC4fCDk5pM+8qHncpCPUoyahVnegmeivkAa54AKOTbLcQ==
X-Received: by 2002:a7b:ca4f:0:b0:3c6:ce01:bc4a with SMTP id m15-20020a7bca4f000000b003c6ce01bc4amr22991346wml.42.1666089414617;
        Tue, 18 Oct 2022 03:36:54 -0700 (PDT)
Received: from [192.168.43.80] ([46.6.220.148])
        by smtp.gmail.com with ESMTPSA id o13-20020a5d670d000000b0022cd0c8c696sm10861952wru.103.2022.10.18.03.36.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Oct 2022 03:36:53 -0700 (PDT)
Message-ID: <2de9de5f-c82d-f2ce-26e3-b9fabd88a08c@gmail.com>
Date:   Tue, 18 Oct 2022 12:36:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [PATCH man-pages 2/4] madvise.2: document reliable probe for
 advice support
Content-Language: en-US
To:     Zach OKeefe <zokeefe@google.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     Yang Shi <shy828301@gmail.com>, linux-mm@kvack.org,
        linux-man@vger.kernel.org
References: <20221017175523.2048887-1-zokeefe@google.com>
 <20221017175523.2048887-3-zokeefe@google.com>
From:   Alex Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221017175523.2048887-3-zokeefe@google.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------XHDgTbVfPmJtAThhgrO3qNdI"
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
--------------XHDgTbVfPmJtAThhgrO3qNdI
Content-Type: multipart/mixed; boundary="------------qvEbnHlxa0LONCGYvFZcT004";
 protected-headers="v1"
From: Alex Colomar <alx.manpages@gmail.com>
To: Zach OKeefe <zokeefe@google.com>, Michael Kerrisk <mtk.manpages@gmail.com>
Cc: Yang Shi <shy828301@gmail.com>, linux-mm@kvack.org,
 linux-man@vger.kernel.org
Message-ID: <2de9de5f-c82d-f2ce-26e3-b9fabd88a08c@gmail.com>
Subject: Re: [PATCH man-pages 2/4] madvise.2: document reliable probe for
 advice support
References: <20221017175523.2048887-1-zokeefe@google.com>
 <20221017175523.2048887-3-zokeefe@google.com>
In-Reply-To: <20221017175523.2048887-3-zokeefe@google.com>

--------------qvEbnHlxa0LONCGYvFZcT004
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgWmFjaCwNCg0KT24gMTAvMTcvMjIgMTk6NTUsIFphY2ggT0tlZWZlIHdyb3RlOg0KPiBG
cm9tOiBaYWNoIE8nS2VlZmUgPHpva2VlZmVAZ29vZ2xlLmNvbT4NCj4gDQo+IEVJTlZBTCBp
cyBhbiBvdmVybG9hZGVkIGVycm9yIGNvZGUgZm9yIG1hZHZpc2UoMikgYW5kIGl0J3Mgbm90
IGNsZWFyDQo+IHVuZGVyIHdoYXQgY29udGV4dCBpdCBtZWFucyAiYWR2aWNlIGlzIG5vdCB2
YWxpZCIgdnMgYW5vdGhlciBlcnJvci4NCj4gDQo+IEV4cGxpY2l0bHkgZG9jdW1lbnQgdGhh
dCBtYWR2aXNlKDAsIDAsIGFkdmljZSkgY2FuIHJlbGlhYmx5IGJlIHVzZWQgdG8NCj4gcHJv
YmUgZm9yIGtlcm5lbCBzdXBwb3J0IGZvciAiYWR2aWNlIiwgcmV0dXJuaW5nIHplcm8gaWZm
ICJhZHZpY2UiIGlzDQo+IHN1cHBvcnRlZCBieSB0aGUga2VybmVsLg0KPiANCj4gU2lnbmVk
LW9mZi1ieTogWmFjaCBPJ0tlZWZlIDx6b2tlZWZlQGdvb2dsZS5jb20+DQo+IC0tLQ0KPiAg
IG1hbjIvbWFkdmlzZS4yIHwgNyArKysrKysrDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDcgaW5z
ZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL21hbjIvbWFkdmlzZS4yIGIvbWFuMi9t
YWR2aXNlLjINCj4gaW5kZXggZTE0ZTBmN2ZiLi5hZGZlMjRjMjQgMTAwNjQ0DQo+IC0tLSBh
L21hbjIvbWFkdmlzZS4yDQo+ICsrKyBiL21hbjIvbWFkdmlzZS4yDQo+IEBAIC03ODksNiAr
Nzg5LDEzIEBAIHRoYXQgYXJlIG5vdCBtYXBwZWQsIHRoZSBMaW51eCB2ZXJzaW9uIG9mDQo+
ICAgaWdub3JlcyB0aGVtIGFuZCBhcHBsaWVzIHRoZSBjYWxsIHRvIHRoZSByZXN0IChidXQg
cmV0dXJucw0KPiAgIC5CIEVOT01FTQ0KPiAgIGZyb20gdGhlIHN5c3RlbSBjYWxsLCBhcyBp
dCBzaG91bGQpLg0KPiArLlBQDQo+ICsuQlIgbWFkdmlzZSAoMCwNCj4gKzAsDQo+ICsuSVIg
YWR2aWNlICkNCg0KRm9yIGV4cHJlc3Npb25zLCB3ZSBkb24ndCBmb2xsb3cgdGhlIHNhbWUg
aGlnaGxpZ2h0aW5nIHJ1bGVzIGFzIGluIA0KaWRlbnRpZmllcnMgYW5kIG1hbi1wYWdlIHJl
ZmVyZW5jZXMuICBJbnN0ZWFkIHdlIHVzZSBhbGwgaXRhbGljcy4gIFNlZSANCm1hbi1wYWdl
cyg3KToNCg0KICAgICAgICBFeHByZXNzaW9ucywgaWYgbm90IHdyaXR0ZW4gb24gYSBzZXBh
cmF0ZSBpbmRlbnRlZCAgbGluZSwNCiAgICAgICAgc2hvdWxkICBiZSAgc3BlY2lmaWVkIGlu
IGl0YWxpY3MuICBBZ2FpbiwgdGhlIHVzZSBvZiBub27igJANCiAgICAgICAgYnJlYWtpbmcg
c3BhY2VzIG1heSBiZSBhcHByb3ByaWF0ZSBpZiB0aGUgIGV4cHJlc3Npb24gIGlzDQogICAg
ICAgIGlubGluZWQgd2l0aCBub3JtYWwgdGV4dC4NCg0KQ2hlZXJzLA0KQWxleA0KDQo+ICt3
aWxsIHJldHVybiB6ZXJvIGlmZg0KPiArLkkgYWR2aWNlDQo+ICtpcyBzdXBwb3J0ZWQgYnkg
dGhlIGtlcm5lbCBhbmQgY2FuIGJlIHJlbGllZCBvbiB0byBwcm9iZSBmb3Igc3VwcG9ydC4N
Cj4gICAuXCIgLlNIIEhJU1RPUlkNCj4gICAuXCIgVGhlDQo+ICAgLlwiIC5CUiBtYWR2aXNl
ICgpDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0KDQo=

--------------qvEbnHlxa0LONCGYvFZcT004--

--------------XHDgTbVfPmJtAThhgrO3qNdI
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNOgcQACgkQnowa+77/
2zJZzQ/9EUqqx5T01Hr6/Bc2bdX1UkRoJlXTErCghL2pI06sULl3z7G/ClZdaq5g
j/ANjPxjgDzil0GJj7FY5mxNm55T0Us3mN1VqjvaYHGE5ZHCyMg/yRkFRp8YoQPD
fJsyELLGiOcYfwQB+IEiI+lWlg8RQcWyE9ija8ENtzz7NZSBCgiolp+fIhRLH07M
uK3ta1QNrhUp7iFpRm3akENiWfMY1ldaLussXUcc+91RYJhNx9/dBpDGjdvnPJ+x
7ByfiGcjZ+qziCVIG7PcdJikRiqFk3r/auXGOZiTjoT9O3ucXJ1eKYBE+NR9AQW+
Dsp6aA9IQrPuaetFTHrADEEXlsIyUrGkUbHNuhrgzMZKT9oVdlrkYU1tBmZzfIRr
IeXmG8kedEDmrqjWRp4GeHNM1oZTrqvOgtS7z5nhaA90PaxMGy0nXGvVCZcyg6gt
6R7Me7+PfadQ3IvGHnJ5koE4sgjcICZ2iPc2/nyK5CCVkmQ5dfj8VqnWpgHAVxeh
DXCB6lEvDazZtzxSzXHwxkoy3o4pd0iWmsXCR93zmrL8t02d7XkhmRujMc00QvAd
pDsKatPRBQ+Fz+42MJczj6v6cuq/Rhpt/lKJICjwwJgQqHokrF2/7/NR0JW/Oc3V
svUawHz6OpMNJ4kzsI/8vaTqMUu14bF2vQlrw5GQJMuXiRlPC4E=
=twPS
-----END PGP SIGNATURE-----

--------------XHDgTbVfPmJtAThhgrO3qNdI--
