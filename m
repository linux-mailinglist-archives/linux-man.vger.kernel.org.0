Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6A91D677269
	for <lists+linux-man@lfdr.de>; Sun, 22 Jan 2023 21:32:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229795AbjAVUcq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 22 Jan 2023 15:32:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44602 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230091AbjAVUcp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 22 Jan 2023 15:32:45 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F4192686
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 12:32:40 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id iv8-20020a05600c548800b003db04a0a46bso3602060wmb.0
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 12:32:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AuAPqT1nvG9RJfeQF5jSK6qQhwbwhYYCdokFdW+Foc4=;
        b=O06C/GYsZJB0c+LUmJYfN0zrXcSwKOnyNnrOmBAh7w+L1dohnAL6kY4np5OOWt9wxs
         YHAizPcOGHh3NL1JlJOTpyVr6W8ZA+gmToJ+zCn8zV8+ubafw8I2GBjPig+035Ehs0TL
         E8Mv4hPlmSQR4w/0Mm30VGuoonfMeOCajWyMqgnj0hjrjnsFcN+LFsBmZguZgjiEonTP
         PyEsjL+SEQJtHZF6eZSIKOcbV0YaRsIz9Zza3fVQq4KOvUHXwxgEkcIX3KbkNieY3W3E
         6n4QjxySOmgPBG2g3OdzMteBjfb+siJFtY0Uw+4q2cE+UxLj7hKmofyarG6RMPIRxUDD
         57Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=AuAPqT1nvG9RJfeQF5jSK6qQhwbwhYYCdokFdW+Foc4=;
        b=yPc5I6y9z84r6eKtd7F6HwxeyxdoKdW6acjnauTwweiyABRzBmlHPOHiQbG34o514o
         N3cawO4GJABZEvfzLpMNfu9V31XzIeki/RXjpVs0QTH9XulEzqLxcUza7pcr7Zpmfjb+
         dwr+w78bLYHzMAxPO20U0ZKy176KXu87dwIkTHatwxF/a01MY3yq7rxYd6m9XVF6QoGW
         JT6PZj3axqew1a+JhfEoOqjP1M9jbl8BJdBf9cThFTGPYH1h2LtqD0DRDvdXK3GmiQuB
         BoCrA1TVgTYi+w4/hV439EfZBFhuwywUg8Gh4Zgj26DWHV4b4edeyDTj+6aF6pG1keIX
         eyRg==
X-Gm-Message-State: AFqh2kqDj0B51uq5Cl3/DYcfEp/+v0ztWFpy87nuYQsB8Nx0PrTPjxC2
        r7uIQ5pKVtfg+9W3wN/6w1kn1LchdHQ=
X-Google-Smtp-Source: AMrXdXub4e14JNvFFR3qWPx1mmeFpYPQ6iJ8jMnF4136BFOpDZER8BrLnkGIkikAaPw9WVDniQxQsw==
X-Received: by 2002:a05:600c:982:b0:3da:f5b5:13ec with SMTP id w2-20020a05600c098200b003daf5b513ecmr20532669wmp.34.1674419558783;
        Sun, 22 Jan 2023 12:32:38 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id f13-20020a7bcc0d000000b003d9780466b0sm8630041wmh.31.2023.01.22.12.32.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Jan 2023 12:32:38 -0800 (PST)
Message-ID: <dc5054e5-e648-5879-cb3f-feaeefa20545@gmail.com>
Date:   Sun, 22 Jan 2023 21:32:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: Issue in man page regex.3
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <20230122193127.GA28944@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230122193127.GA28944@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------2FUNRGOlmdbKS3uhtT8BUHw5"
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------2FUNRGOlmdbKS3uhtT8BUHw5
Content-Type: multipart/mixed; boundary="------------69QW65XSKEnF0Vg0N59F4cdK";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Message-ID: <dc5054e5-e648-5879-cb3f-feaeefa20545@gmail.com>
Subject: Re: Issue in man page regex.3
References: <20230122193127.GA28944@Debian-50-lenny-64-minimal>
In-Reply-To: <20230122193127.GA28944@Debian-50-lenny-64-minimal>

--------------69QW65XSKEnF0Vg0N59F4cdK
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSGVsZ2UsDQoNCk9uIDEvMjIvMjMgMjA6MzEsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6
DQo+IFdpdGhvdXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPiAN
Cj4gSXNzdWU6ICAgIG51bGwtdGVybWluYXRlZCDihpIgTlVMLXRlcm1pbmF0ZWQNCg0KSSBw
cmVmZXIgTlVMLXRlcm1pbmF0ZWQgdG9vLCBidXQgdGhlcmUncyBhIGhpc3RvcmljIHRyYWRp
dGlvbiBvZiB1c2luZyANCm51bGwtdGVybWluYXRlZCBhbmQgc2ltaWxhciBzeW50YXggaW4g
dGhlIG1hbnVhbCBwYWdlcy4gIFRoZSBpbnRlbnQgaXMgdG8gcmVkdWNlIA0KY29uZnVzaW9u
IGJldHdlZW4gTlVMIGFuZCBOVUxMLiAgU2VlIG1hbi1wYWdlcyg3KS4NCg0KSSBiZWxpZXZl
IHRoYXQgZG9lc24ndCBtYWtlIGFueSBzZW5zZSwgc2luY2UgdGhlcmUncyBhdCBsZWFzdCBz
b21lIHZpc3VhbCANCmRpZmZlcmVuY2UgYmV0d2VlbiBOVUwgYW5kIE5VTEwsIGJ1dCB0aGUg
aXNuJ3QgYW55IGRpZmZlcmVuY2UgYmV0d2VlbiBudWxsIGFuZCANCm51bGwgKGFwYXJ0IGZy
b20gdGhlIGNvbnRleHQpLg0KDQpTb29vLCBJIG1heSBhcHBseSBwb2xpY3kgY2hhbmdlIHRv
IHN0b3AgdXNpbmcgRW5nbGlzaCBzeW50YXggZm9yIHRoZXNlIHRlcm1zLCANCmFuZCBzdGFy
dCB1c2luZyBOVUwgYW5kIE5VTEwgY29uc2lzdGVudGx5Lg0KDQpDaGVlcnMsDQoNCkFsZXgN
Cg0KDQo+IA0KPiAiQjxyZWdleGVjPigpICBpcyB1c2VkIHRvIG1hdGNoIGEgbnVsbC10ZXJt
aW5hdGVkIHN0cmluZyBhZ2FpbnN0IHRoZSINCj4gInByZWNvbXBpbGVkIHBhdHRlcm4gYnVm
ZmVyLCBJPHByZWc+LiAgSTxubWF0Y2g+IGFuZCBJPHBtYXRjaD4gYXJlIHVzZWQgdG8iDQo+
ICJwcm92aWRlIGluZm9ybWF0aW9uIHJlZ2FyZGluZyB0aGUgbG9jYXRpb24gb2YgYW55IG1h
dGNoZXMuICBJPGVmbGFncz4gaXMgdGhlIg0KPiAiYml0d2lzZS1CPG9yPiBvZiB6ZXJvIG9y
IG1vcmUgb2YgdGhlIGZvbGxvd2luZyBmbGFnczoiDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxl
amFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------69QW65XSKEnF0Vg0N59F4cdK--

--------------2FUNRGOlmdbKS3uhtT8BUHw5
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPNnV4ACgkQnowa+77/
2zKAlBAAnS8JmEGOIEwZXOgfTUSh83MkU0x7SZcp5v7Lg98L6kUQH8YpkCx7NUto
YoXTq9pkBied9mPTGpKfAr1yWG7NaL3zqAz3SLfzVBCvBaHfntDAgbD3lsy5E1UZ
I8y5SeFOi5upf75tIzQA0qoQLY8H0BUhKfdeYap6tNLfuZlV1DvzZlTMojf461kC
WMVjgTp1b/zNGB0vsqtOefIvNTftEXkUoxWDFuVTt8UOo+gY3qT1/y35U2LUOTDP
NKYYcPvKpUmS8RMUGciPkjPpJdLY4zQwcobol8PX8FwVLVGI0E7Ap3GuC/b/UCPJ
urvJkM0naV2rcs9ewxWkwFe+f0bTenfRi8yvbDcuYt+GJYvI6yB5cZ+rk5DmE27Z
hJ4BPufuDBqmA1MYrFHlrbh1cxHG/8jLMVeXWKCMBaOmjfDC8LxDZtIezL7tMdT+
EcDpQETkLttb37L9v21GqMbnD8ooA+8yAshegEwaQsaC8cDs9f3OZ412nto29koC
OJrryH+FxIvRmIXGVHC56MZlu1O8FzwoTYuLyyOiE3C5EoaV4UfVluRfoPm1X3RK
ulKnA9MuTZiri0gCjgwE3VaAIle9x/tSaYVWO9kUebxEuOr/lHRw3fsaFzdiaz00
BS3CRHGrYwqCkTzbXopTeaSJcva237xhIMseHpl6tj8tDXZpncQ=
=SERh
-----END PGP SIGNATURE-----

--------------2FUNRGOlmdbKS3uhtT8BUHw5--
