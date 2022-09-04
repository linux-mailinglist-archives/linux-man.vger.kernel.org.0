Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7A8665AC7EF
	for <lists+linux-man@lfdr.de>; Mon,  5 Sep 2022 00:06:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231952AbiIDWGw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Sep 2022 18:06:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35298 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231735AbiIDWGv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Sep 2022 18:06:51 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D784F24BC5
        for <linux-man@vger.kernel.org>; Sun,  4 Sep 2022 15:06:49 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id n17so9080808wrm.4
        for <linux-man@vger.kernel.org>; Sun, 04 Sep 2022 15:06:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date;
        bh=e1IR9N1AH83R//UbDvRQhgLb5dWHdGoJaw9j0516/1w=;
        b=jCsIN7gyvIUzdyDT7F9JE4mehoivDIvt7Gvd1jnNPeSZr+jL9G5gNYrBW7bZWBn9qL
         dcRfhaOINNAMLYORzhJ0q7sTVOAdz4HjJXRp0mSmxZvDzpzN5ylHvTb87hQ+HME5oJaO
         d79ckHPmMdJVdaCynhEzckQJUocFfd4yYkI0t+lUbQ0JllRZY9LQNzvNFnNytmv42l47
         vkM/JZPGi+V0M3wjiBhS/fID6F+0UcAHQeQqL1yN7SeSifzNExSne6suX17PQjAbQrZV
         mNEFhoyWrF5ETMkKr6v886cw2hG0dQyXy+GsIalsZ+JqqhxaB/IiZqhUN2gfigiS5TSp
         pfEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date;
        bh=e1IR9N1AH83R//UbDvRQhgLb5dWHdGoJaw9j0516/1w=;
        b=51SysZ0UCFy2odyUvQrt/OpFMqAKYRSTrzZ7dIaFdoSIhQRxkyW/FCp/k+5Tr1mGwA
         iI0FRrQqLrPAIptorcV8N0k5EApb1Lz5UinbFCtEqU4r99ORrRakqJmuJs0TaKKwYj2y
         HgYtiBJr3DbC8tnFdhPQZMpRUthU5hGxui8F6ojRvc08BWeHQMGkheY5w4jTMrbZU0b1
         v6PeypObK0tVJD5+pEz79fimdFtUDKiAuoEgVcCN/kW7X/miGBBc9GcWzgGIvJ5uwVJZ
         lYdcK3QI6NhGRZgwaPohHS7Lva/cyC+n8c7PX2ukXYvV5ruhQOROBZO7RKpqusc+cw0l
         iT4g==
X-Gm-Message-State: ACgBeo2ICZp3bGC0VAEwXB14t3/E+xhc29zQckIzPuYy/G+5uaAwoLai
        g6HmxuCVWYmqpGfR5BX8GGqJQzj7tM8=
X-Google-Smtp-Source: AA6agR5uvGYI0O59zwtt03X3IdtapnAAgqJV+a8+d2/EOnMHmGGy/8lKHq6K2oqkIM/IwUNQ5Z5REg==
X-Received: by 2002:a5d:5941:0:b0:225:3fc3:d923 with SMTP id e1-20020a5d5941000000b002253fc3d923mr22635689wri.522.1662329208325;
        Sun, 04 Sep 2022 15:06:48 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id g40-20020a05600c4ca800b003a4f1385f0asm8631961wmp.24.2022.09.04.15.06.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Sep 2022 15:06:47 -0700 (PDT)
Message-ID: <328552ac-44ba-a499-f592-43238ede471c@gmail.com>
Date:   Mon, 5 Sep 2022 00:06:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Subject: Re: [PATCH v2] _Generic.3: New page documenting _Generic()
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Florian Weimer <fweimer@redhat.com>
Cc:     linux-man@vger.kernel.org, JeanHeyd Meneide <wg14@soasis.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Ingo Schwarze <schwarze@usta.de>
References: <20220820171009.34196-1-alx.manpages@gmail.com>
 <20220821115506.22850-1-alx.manpages@gmail.com>
 <87mtbv4chu.fsf@oldenburg.str.redhat.com>
 <28eb6a53-7865-d75d-8903-77b63e09222d@gmail.com>
In-Reply-To: <28eb6a53-7865-d75d-8903-77b63e09222d@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------20owm5OQRYKsKQhZpQ3qoViN"
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------20owm5OQRYKsKQhZpQ3qoViN
Content-Type: multipart/mixed; boundary="------------2lOrluuQG8UREs6154R7lMmM";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Florian Weimer <fweimer@redhat.com>
Cc: linux-man@vger.kernel.org, JeanHeyd Meneide <wg14@soasis.org>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Ingo Schwarze <schwarze@usta.de>
Message-ID: <328552ac-44ba-a499-f592-43238ede471c@gmail.com>
Subject: Re: [PATCH v2] _Generic.3: New page documenting _Generic()
References: <20220820171009.34196-1-alx.manpages@gmail.com>
 <20220821115506.22850-1-alx.manpages@gmail.com>
 <87mtbv4chu.fsf@oldenburg.str.redhat.com>
 <28eb6a53-7865-d75d-8903-77b63e09222d@gmail.com>
In-Reply-To: <28eb6a53-7865-d75d-8903-77b63e09222d@gmail.com>

--------------2lOrluuQG8UREs6154R7lMmM
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gOS80LzIyIDIzOjE2LCBBbGVqYW5kcm8gQ29sb21hciB3cm90ZToNCj4gQW4gYWx3YXlz
X2lubGluZSBmdW5jdGlvbiB3aXRoIG5vIGV4dGVybiBkZWZpbml0aW9uIGJlaGF2ZXMgYXMg
aWYgaXQgDQo+IHdlcmUgYSBtYWNybyAodHJ5aW5nIHRvIHRha2UgYSBwb2ludGVyIHRvIGl0
LCBvciBzb21ldGhpbmcgdGhhdCBuZWVkcyBhIA0KPiBsaW5rZXIgc3ltYm9sLCB3aWxsIHJl
c3VsdCBpbiBsaW5rZXIgZXJyb3JzLCB3aGljaCBpcyBub3QgdGhlIG1vc3QgDQo+IHJlYWRh
YmxlIGVycm9yLCBidXQgZ29vZCBlbm91Z2gpLCBpbiB0aGUgc2Vuc2UgdGhhdCBpdCBkb2Vz
bid0IGhhdmUgQUJJIA0KPiBpc3N1ZXMsIGJ1dCBoYXMgdGhlIGJlbmVmaXQgb2Ygbm90IGNy
ZWF0aW5nIGNvZGUgZXhwb25lbnRpYWxseS4NCj4gDQoNCkFsdGhvdWdoIG9mIGNvdXJzZSBu
b3QgYmVpbmcgYWJsZSB0byB0YWtlIHBvaW50ZXJzIHRvIGl0IGlzIGEgcHJvYmxlbSANCmZv
ciBsaWJjLiAgVGhlIG1hY3JvIHdpdGggX0dlbmVyaWMgaGFzIHRoZSBzYW1lIGlzc3VlLiAg
bGliYyBzZWVtcyB0byANCm5lZWQgcHJlcHJvY2Vzc29yICNpZi4NCg==

--------------2lOrluuQG8UREs6154R7lMmM--

--------------20owm5OQRYKsKQhZpQ3qoViN
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmMVIW8ACgkQnowa+77/
2zIufQ/9H7QaBff9PKKHy1j69SVXejhancwpxz4wbAz1qi/8bxDzB0QdrZgkWSU3
P/bqdE9WGC9q611Cjo0pJ3AjkZn0vKXj0shm8tt+KbeJWGDl8U8wSeZvPXY9Xf6X
7wTDYxrMn+31hu2BHbwzbB34tEwRe98+YXsAREqzoAy9rAcc+40lJLqA9wvuPim2
BjVg+iqOPGaXL15PaZ+ov/uhjlOXpDCEbCsGbw2DpXL34WPLZ0U/KJUzJDMu2iu9
vjXq7SfKuiTkoQLtN+DNSqS37ArZKAKkpm+wCEgGWWs81hrZ/Gtwnz5OhK45IHIN
OlhENTfMsyTfE5Smze28qTmiyYQs+XEk5zdRUopwSA2f3HUnPxzMCy398hUlQavA
vb5PkPoYuSrb/XbFz6vR/2UWJeMpAsK+s3v41AvskGt0oDJzaK1jCDYSnaMz0rWN
JBEJvdXWx4NmNkBthcdZ5+puiN+5fi4YCISgyJr6BR2B1Wdez8StC7jzTBazH7cS
OMo4ndx+geilDD1xwQZUOtq0EY705ThtItBRxQ/si0kqXrT6MR2GZ/JpqkVhfKPH
QMwqBZzQCM7OpC6UwGx0iCMzdqVR/qtiZbs3x4JlGMBOEb1rxLCgP//IbGokwCnb
GpTOHd+fn/pRJ1tW49oNi4TvGNYTChdcEbvipbWn0UvkG+wewWQ=
=mYA0
-----END PGP SIGNATURE-----

--------------20owm5OQRYKsKQhZpQ3qoViN--
