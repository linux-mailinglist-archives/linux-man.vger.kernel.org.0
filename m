Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6492F5FD9F1
	for <lists+linux-man@lfdr.de>; Thu, 13 Oct 2022 15:08:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229764AbiJMNIL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 13 Oct 2022 09:08:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39064 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229579AbiJMNIK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 13 Oct 2022 09:08:10 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F59F147055
        for <linux-man@vger.kernel.org>; Thu, 13 Oct 2022 06:08:04 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id n12so2723620wrp.10
        for <linux-man@vger.kernel.org>; Thu, 13 Oct 2022 06:08:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S0OYAgpWQbnSUr8xYCf8AMcp/Kf7SVROmv0ywWhzwc4=;
        b=B3X/XsWJ4a91AAb1wiaDHb2FajK5lZw+MBQJPAoV1kOO+8iMD2I37aEoCfRSmenC2e
         +zs5F0IB00x+rXGkl76bX/kz0wX7wP5ju74CbrzpA2qy95Rpmw8hxLN5KJz6fWmwPzQT
         TVF7w1xzOuqsW4ohZjNEATYyKA242Gg/QsQRFUI2dpBD+hYVLzYVdtnsdd2D/C5W+Mt+
         vGXfX3Q5mo2xI27XqSAQYXl7X90JGWxAFrIXnBL5CZl4gH3MX1F2bjqLU7Zc0vj1EouP
         icS1PW+LlGfixzbNTk262DOF7nxTpm3hgO8L8xDUduMqCib6b2UA7EJOkGOxkjXn/iub
         Wkag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=S0OYAgpWQbnSUr8xYCf8AMcp/Kf7SVROmv0ywWhzwc4=;
        b=ujVACTpRE1erhSxLo7EqHcu/qgUJX3/U+OhZZTuMbM2FLGm7u1bqdYPSX3tgNSCTtx
         4RxoXae+DY09gLAKh6tGaYNKn8mhIsUPzRsmUEjIFCJ8gIgPkeKE/nrQ5sERXMUqlW8L
         s70WY+QXjDAkDE6IOyaiuiWWo7ABheUF/Z38nyetr+S55e4NqdDd7viq/mO6itG4ZHSz
         djCWmiVPqKASSI8nt3d993osDK2b/MwZeMAtlpECAW/TKxKAKibi+QE3WKo9hCqT+dEO
         EKNUI6yqCMK30z+qPna8ZnaxCmSIQk0pPKWqopy1BCP7D57st7UYnk+4QEAokQDa76z1
         3k8g==
X-Gm-Message-State: ACrzQf0OZLJ5rHTwj+ULmwlPnkc4QQPpQxPrTAZWCI6OfuGphY4qcDwe
        RM93S9KlN38geEOwRML9sqDsReDWN64=
X-Google-Smtp-Source: AMsMyM4p7WLwEmXHa9VA6dloSXFzmGnDAm/s1nhwkJjy5TH9i1iiOssCvqj/Q+rE+ifFehJRRveR2g==
X-Received: by 2002:a5d:64c7:0:b0:22e:43a6:2801 with SMTP id f7-20020a5d64c7000000b0022e43a62801mr22159008wri.612.1665666483316;
        Thu, 13 Oct 2022 06:08:03 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id s4-20020a5d4244000000b0023055fc5df5sm1944931wrr.112.2022.10.13.06.08.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Oct 2022 06:08:02 -0700 (PDT)
Message-ID: <0f177941-d432-516d-7610-bd38dd30c9f5@gmail.com>
Date:   Thu, 13 Oct 2022 15:08:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [PATCH] time_t.3type: reference _TIME_BITS
Content-Language: en-US
To:     Sam James <sam@gentoo.org>
Cc:     linux-man@vger.kernel.org
References: <20221013003313.1809731-1-sam@gentoo.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221013003313.1809731-1-sam@gentoo.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------jz9FzI7vU3cQh87IBCEmQokt"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------jz9FzI7vU3cQh87IBCEmQokt
Content-Type: multipart/mixed; boundary="------------WSDSm52KGIyGg3Y9vyMajcxl";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Sam James <sam@gentoo.org>
Cc: linux-man@vger.kernel.org
Message-ID: <0f177941-d432-516d-7610-bd38dd30c9f5@gmail.com>
Subject: Re: [PATCH] time_t.3type: reference _TIME_BITS
References: <20221013003313.1809731-1-sam@gentoo.org>
In-Reply-To: <20221013003313.1809731-1-sam@gentoo.org>

--------------WSDSm52KGIyGg3Y9vyMajcxl
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgU2FtLA0KDQpPbiAxMC8xMy8yMiAwMjozMywgU2FtIEphbWVzIHdyb3RlOg0KPiBKdXN0
IGxpa2Ugd2UgZG8gd2l0aCBfRklMRV9PRkZTRVRfQklUUyBpbiBvZmZfdC4zdHlwZS4NCj4g
DQo+IFJlZmVyZW5jZTogaHR0cHM6Ly93aWtpLmdlbnRvby5vcmcvd2lraS9Qcm9qZWN0OlRv
b2xjaGFpbi90aW1lNjRfbWlncmF0aW9uDQo+IFJlZmVyZW5jZTogaHR0cHM6Ly9zb3VyY2V3
YXJlLm9yZy9waXBlcm1haWwvbGliYy1hbHBoYS8yMDIyLUphbnVhcnkvMTM0OTg1Lmh0bWwN
Cj4gU2lnbmVkLW9mZi1ieTogU2FtIEphbWVzIDxzYW1AZ2VudG9vLm9yZz4NCg0KTG9va3Mg
Z29vZC4gIEhvd2V2ZXIsIEkgc2VlIHRoZXJlJ3Mgbm8gZG9jdW1lbnRhdGlvbiBhdCBhbGwg
YWJvdXQgDQpfVElNRV9CSVRTIGluIHRoZSBtYW4tcGFnZXMuICBNYXliZSB5b3Ugd2FudCB0
byBzZW5kIGEgcGF0Y2ggZm9yIGZ0bSg3KT8NCg0KVGhhbmtzIQ0KDQpBbGV4DQoNCj4gLS0t
DQo+ICAgbWFuM3R5cGUvdGltZV90LjN0eXBlIHwgNiArKysrKysNCj4gICAxIGZpbGUgY2hh
bmdlZCwgNiBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvbWFuM3R5cGUvdGlt
ZV90LjN0eXBlIGIvbWFuM3R5cGUvdGltZV90LjN0eXBlDQo+IGluZGV4IGQ0MGRkMGMwZC4u
OWI4ZjA3MzU2IDEwMDY0NA0KPiAtLS0gYS9tYW4zdHlwZS90aW1lX3QuM3R5cGUNCj4gKysr
IGIvbWFuM3R5cGUvdGltZV90LjN0eXBlDQo+IEBAIC03MCw2ICs3MCwxMiBAQCBQT1NJWC4x
LTIwMDEgYW5kIGxhdGVyLg0KPiAgIFBPU0lYLjEtMjAwMSBhbmQgbGF0ZXIuDQo+ICAgLlBE
DQo+ICAgLlNIIE5PVEVTDQo+ICtPbiBzb21lIGFyY2hpdGVjdHVyZXMsDQo+ICt0aGUgd2lk
dGggb2YNCj4gKy5JIHRpbWVfdA0KPiArY2FuIGJlIGNvbnRyb2xsZWQgd2l0aCB0aGUgZmVh
dHVyZSB0ZXN0IG1hY3JvDQo+ICsuQlIgX1RJTUVfQklUUyAuDQo+ICsuUFANCj4gICAuVFAN
Cj4gICAuSSB0aW1lX3QNCj4gICBUaGUgZm9sbG93aW5nIGhlYWRlcnMgYWxzbyBwcm92aWRl
DQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------WSDSm52KGIyGg3Y9vyMajcxl--

--------------jz9FzI7vU3cQh87IBCEmQokt
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNIDbEACgkQnowa+77/
2zLI2A/7BTkPPFG8coY04kjMWEF66HKoSlok8Rg6K627zrbPbFcRI9LHoPuqJnxm
TMH5gJyrfJwgk0NbOuHyz2SPQBUSzjaiWPPXojMSWZ6LqJQ84vNY9m/i6VS1eYSr
XnfJj0oMlTkhgx3egMCev1lna4uIqcxTL19XbCmvg8BUBuUJDwG1PibagMqnaLwm
l2FhKbLEDoasK2BeYEYejrvpR9/GyKqIft1b47TAr7k1j5jX+AUco3pe7g7UUqYG
KmBg9knu1Z7i5EBdf4gccoJ210y4IZTN/az2b+9rX8Zjspz7FOuGw6VAiCgsrPmI
XWstC9Y99DkP14TFUd82pD7OFbdBrBXFg93r8Br+3/cYGk9o3Bhd0Pczcj6Qibq7
qxbWuyCLW74T3I6hxWvkG4MBbE1Ns06R2at+8C4d6daVnTKyzXiPJcaSU968QHTn
MaP3KSHDJRB3Q3a3fYMppXs7I5tNMzD7EsKo3c7c/gbUkRIqEq62HqravX1EsNIg
y6A4yopmgfOG0ry8ckSkDJ62LNqzVdnniz5Rr7iIhkbCuaQZr7l7pnCWzw6RS+JI
wVd4poh6PvXEyJSPkQ144RtGEEnPnK7HkN7dgWLD4z+qnBPHlmVHmB2u9msy92yj
EiSqCjDQtTMObnPFhJ5sSAbujelCPenWNT/alD22T0Vxgn902ZM=
=xVFI
-----END PGP SIGNATURE-----

--------------jz9FzI7vU3cQh87IBCEmQokt--
