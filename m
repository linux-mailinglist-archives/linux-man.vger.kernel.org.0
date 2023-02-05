Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B583C68B0DB
	for <lists+linux-man@lfdr.de>; Sun,  5 Feb 2023 17:09:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229537AbjBEQJq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 Feb 2023 11:09:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229519AbjBEQJp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 Feb 2023 11:09:45 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6BB8CBB96
        for <linux-man@vger.kernel.org>; Sun,  5 Feb 2023 08:09:44 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id c4-20020a1c3504000000b003d9e2f72093so9200247wma.1
        for <linux-man@vger.kernel.org>; Sun, 05 Feb 2023 08:09:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YyzZrY8IBdrb1lSR1fvRCbmSK8fwpgucEtF3SguPtCI=;
        b=pGQfpkn8uCSC0hSonq5wEkOmFWK3KS6gSCyHTUGblbioV3t/Qt0PvOhqYPKZIcEbqs
         FQU5dHvq27LlB/s1gmMZOEZpS5XjAedmftZkKKgDtjpfOSwr7e5MnMnNPd2+VYkOYjx5
         nczp7yptgC1zFwuekITA4eD2vKp8DlwmM5XPvbDWNrnS7WVECM5671Aa0D5/toOq8JcI
         2SO78uDmZIOuQXUGAdX992RoU7V4N7oraKdUYlY4uPF1ieSoQjdGvugnffmD0azuBiAO
         lqLo0CkgJP2AFiAO70FocSvu8MzW6C8PMZmktt/iWmCn9Mifu03YwFErB/a9mREDJ5mP
         ITGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YyzZrY8IBdrb1lSR1fvRCbmSK8fwpgucEtF3SguPtCI=;
        b=h9H2W22Jgq9QJMzakuD+WZ2BSGpF2ews7zn0ND1z+K6CGBMvyYj7XPYI5WPbHXn7B2
         iswQF6BOJvLeeX94sIITMhjVAVAgGtHcGz12tQ5C0uAe8idPqCwPJUeqO4RhQ5eSCB3i
         YVfjiwExrq16+SeAHM6ZGY0Jc3YgS3g8w0B5GPTdjPL3QB5R73AS5UxApdwcwL8FHgqs
         KYBCdqojS0+DsXY2Av6+sEUmjPR04H8lQXxlLdAZg4gjV/OLGiEoKGFaxtBp+swliT7f
         rewuibm/FRiDwMd7JBk92jTI7rE5YCljgqkqx6KYRRsZrEISsDqMXn6rNh6umKWVssOn
         iy5w==
X-Gm-Message-State: AO0yUKXETfTTZqNIDHCus/UD8qTCvIFPAnGn3/RFM5kXprp+ANVHP5p0
        4zB6OyXaK3if03ARLDM5ZGY=
X-Google-Smtp-Source: AK7set95VgniHV6A2kb3pQIS4u8KHYb8K3+FDUu3Dg6DveaG73M+9cqQZ8tROzert8ZKjJ3aqqLm3g==
X-Received: by 2002:a05:600c:46ce:b0:3df:e1d1:e14c with SMTP id q14-20020a05600c46ce00b003dfe1d1e14cmr14787378wmo.20.1675613382889;
        Sun, 05 Feb 2023 08:09:42 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id w14-20020a05600c474e00b003dfe57f6f61sm8357655wmo.33.2023.02.05.08.09.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 Feb 2023 08:09:42 -0800 (PST)
Message-ID: <d45af25b-e935-0d06-445c-89f2bb11f713@gmail.com>
Date:   Sun, 5 Feb 2023 17:09:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v3 1/3] timespec.3type: tv_nsec is impl-def-type, glibc
 llong not a bug
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     Jakub Wilk <jwilk@jwilk.net>, linux-man@vger.kernel.org
References: <4a67167df30db6019a6320dc92a953f9df3f4db2.1674915219.git.nabijaczleweli@nabijaczleweli.xyz>
 <cfda064c-b3f0-d541-bbee-e3a72c0b3cf3@gmail.com>
 <20230130070838.5mgjdbrfhtlww5t7@jwilk.net>
 <34f497d7-7aba-84b6-c9b8-1d8bbcf183e5@gmail.com>
 <20230130183835.majak2kl4acc7djn@tarta.nabijaczleweli.xyz>
 <d405a259-1c15-eded-5cda-7852c223b43a@gmail.com>
 <20230205154907.mqgw2e6m6u4yjsai@tarta.nabijaczleweli.xyz>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230205154907.mqgw2e6m6u4yjsai@tarta.nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------K659ooXv0ApWEYgZaPMnQhif"
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------K659ooXv0ApWEYgZaPMnQhif
Content-Type: multipart/mixed; boundary="------------j3Ly2zbJFaNYXAQziO8SWlYg";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: Jakub Wilk <jwilk@jwilk.net>, linux-man@vger.kernel.org
Message-ID: <d45af25b-e935-0d06-445c-89f2bb11f713@gmail.com>
Subject: Re: [PATCH v3 1/3] timespec.3type: tv_nsec is impl-def-type, glibc
 llong not a bug
References: <4a67167df30db6019a6320dc92a953f9df3f4db2.1674915219.git.nabijaczleweli@nabijaczleweli.xyz>
 <cfda064c-b3f0-d541-bbee-e3a72c0b3cf3@gmail.com>
 <20230130070838.5mgjdbrfhtlww5t7@jwilk.net>
 <34f497d7-7aba-84b6-c9b8-1d8bbcf183e5@gmail.com>
 <20230130183835.majak2kl4acc7djn@tarta.nabijaczleweli.xyz>
 <d405a259-1c15-eded-5cda-7852c223b43a@gmail.com>
 <20230205154907.mqgw2e6m6u4yjsai@tarta.nabijaczleweli.xyz>
In-Reply-To: <20230205154907.mqgw2e6m6u4yjsai@tarta.nabijaczleweli.xyz>

--------------j3Ly2zbJFaNYXAQziO8SWlYg
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDIvNS8yMyAxNjo0OSwg0L3QsNCxIHdyb3RlOg0KPiBPbiBTdW4sIEZlYiAwNSwg
MjAyMyBhdCAwNDozOTo0OVBNICswMTAwLCBBbGVqYW5kcm8gQ29sb21hciB3cm90ZToNCj4+
IEknbGwgYXBwbHkgdGhlIGZvbGxvd2luZyBkaWZmIHRvIHlvdXIgcGF0Y2gsIGlmIHlvdSBh
Z3JlZToNCj4+DQo+PiBPbiAxLzMwLzIzIDE5OjM4LCDQvdCw0LEgd3JvdGU6DQo+PiBkaWZm
IC0tZ2l0IGEvbWFuM3R5cGUvdGltZXNwZWMuM3R5cGUgYi9tYW4zdHlwZS90aW1lc3BlYy4z
dHlwZQ0KPj4gaW5kZXggOWI5ZTA4M2JiLi5jM2M2OWNmZDIgMTAwNjQ0DQo+PiAtLS0gYS9t
YW4zdHlwZS90aW1lc3BlYy4zdHlwZQ0KPj4gKysrIGIvbWFuM3R5cGUvdGltZXNwZWMuM3R5
cGUNCj4+IEBAIC0xNiw3ICsxNiw4IEBAIC5TSCBTWU5PUFNJUw0KPj4gICAuUFANCj4+ICAg
LkIgc3RydWN0IHRpbWVzcGVjIHsNCj4+ICAgLkJSICIgICAgdGltZV90ICAgICB0dl9zZWM7
IiAiICAgLyogU2Vjb25kcyAqLyINCj4+IC0uQlIgIiAgICAvKiAuLi4gKi8gIHR2X25zZWM7
IiAiICAvKiBOYW5vc2Vjb25kcyBbIiAwICIsICIgOTk5XChhcTk5OVwoYXE5OTkgIl0gKi8i
DQo+PiArLlJCICIgICAgLyogLi4uICovIiAiICB0dl9uc2VjOyIgXA0KPj4gKyIgIC8qIE5h
bm9zZWNvbmRzIFsiIDAgIiwgIiA5OTlcW2FxXTk5OVxbYXFdOTk5ICJdICovIg0KPj4gICAu
QiB9Ow0KPj4gICAuRUUNCj4+ICAgLlNIIERFU0NSSVBUSU9ODQo+IFN1cmUsIGdvIHdpbGQu
DQo+IA0KPj4gVGhlIC8qIC4uLiAqLyBzaG91bGQgbm90IGJlIGZvcm1hdHRlZCwgc2luY2Ug
aXQncyBub3QgYSBsaXRlcmFsIChpZiB5b3UNCj4+IGZvdW5kIGl0IGZvcm1hdHRlZCBhbnl3
aGVyZSwgdGhhdCdzIGEgYnVnOyBwbGVhc2UgcmVwb3J0KS4NCj4gVGhlcmUncyAuQiAiI2Rl
ZmluZSBFT0YgIC8qIC4uLiAqLyIgaW4gbWFuM2NvbnN0L0VPRi4zY29uc3QsDQo+IGJ1dCBi
ZXNpZGVzIHRoYXQsIGFsbCBhcmUgaW4gZlIsIHllYWguDQoNClRoYW5rcyEgIEZpeGVkLiAg
QW5kIEkgYWxyZWFkeSBhcHBsaWVkIHRoZSBnbG9iYWwgY2hhbmdlIHRvIHVzZSBcW2FxXSBh
bmQgXFtkcV0uDQoNCj4gDQo+INC90LDQsQ0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KLS0gDQo8
aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQpHUEcga2V5IGZpbmdlcnByaW50
OiBBOTM0ODU5NENFMzEyODNBODI2RkJERDhENTc2MzNENDQxRTI1QkI1DQo=

--------------j3Ly2zbJFaNYXAQziO8SWlYg--

--------------K659ooXv0ApWEYgZaPMnQhif
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPf1L0ACgkQnowa+77/
2zLSChAApsSd0eMM57X5SotLI+pJDbUgwVJRLMPCZ1JZXN2hHcKSNzspkOBQXMrB
dLhvZgDybJW4eJDXlRnXoMZxSuI4E5z/sWVoiHco+7gJJuwmZ3Zwp4CMY25c/O6Y
j2Ea4/T066quq+jZLHrffzuEameW3t42/XuiITczx/5nE5MCUMNyFimFqvukwplF
c/rWQ2syK2GnA0U2tHS4Cy7NUPTAmlcKPkqTKwgleKosutgIyZunkOL+J4ujLKR4
LFKVQdQjoxYeIdPcgAbEXR9PZIUUam4kh6RSZNyl9r5b45v14fOuzq1c8sliXoN8
vqOrPHHoeLoxwDpwwKC9M8pjOWINuF3eG/SkIKElK3LNGlaGoR5n1IP93axT2Zj2
UJVTWYmf8LzFsO318FPkVdL7iTJvfDkz3xtO21Jd+wM7Y2QJ1QuFFgfRvfIvXDVh
RKOetmfimaMU/aumDTuYx2QyeeqrtUIMR4e84Tn2hwiwKykb0HyOUcYwO9K6cOKG
7xA7A2GV0wcYLtxbB3Qqol41DuapIZcTcDzk2DkFPO8mPhMw6F7rUY6/4gL8A9gv
7nfjq5mxfEWflnUrWPlbj69MLlNJBN+nJ3Nqp/jAkB5+kDi5g1z+v1UUVmR2tF2B
/vGWvMU/UkC4PBw7sBqcf5991k1/exDOn80/SQOZoJFwBFphYWU=
=hFKn
-----END PGP SIGNATURE-----

--------------K659ooXv0ApWEYgZaPMnQhif--
