Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CD74465F83C
	for <lists+linux-man@lfdr.de>; Fri,  6 Jan 2023 01:39:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232474AbjAFAjN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Jan 2023 19:39:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49288 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232367AbjAFAjN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Jan 2023 19:39:13 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 010284F12B
        for <linux-man@vger.kernel.org>; Thu,  5 Jan 2023 16:39:11 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id m26-20020a05600c3b1a00b003d9811fcaafso115098wms.5
        for <linux-man@vger.kernel.org>; Thu, 05 Jan 2023 16:39:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JbvnMQYtd/VnGkO7jUaAY5TKLpRJQMoSA4nqz4EnI3s=;
        b=dQBwPK5ba8taQbr3oHZtkPReh20dPOJrtFSgWGtNE9qkXDCrEIVxmE378utUHPsKXy
         7aDjkH6ac1gnWe7i6d7WqcfTiBIR+3abzc4owAzBPK4LPoAXO8PyhTtC2DKMEKaajFVV
         lORHUpBVw/M+ChT1Eeq/eVnZv+0knmd2//AepRll7BayyCcCs4fzXBUhzbqQGqsv2PNN
         vWWP9Ois7AhhcrdWAHUg1muLqWVseMB4Q8i3XXWVw2oE+LzWAVQ0oKWquesgVgJNXN0E
         /pv99jNd0t3Km3TPIWH6v7T3ojACu76t8G2WXwGdjMxxw8CrFzyR32hPHe6aOiV7hn1m
         a4YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JbvnMQYtd/VnGkO7jUaAY5TKLpRJQMoSA4nqz4EnI3s=;
        b=NvQvZk8F04E9UNXNiKTTCh89e77As4WO49O7TF//+ZBJmkQLD7r1M9wI8yhCGhuLmG
         iPhriuKE9hVsCUn+uTNsUEU2Y6HDfLQvVsNY1ZAql2Cx2dotDOB4IEQ1vevPpRGQcTMt
         sNQzs1yynuKhiYQWAxBb9Hdv/NdTb+qNaAMbultcwWcuKSfc8Bt6+sjXJ2ARjT7/VcQl
         sKr26X7XBGi9xkGLg1Wn5tCo65SQufi1jBOMJnhwrdwBTQCzwvOzi9y9eNOBdY5QgcXl
         6iWiVu7/1UHdK+GhqJQjjZLe2/93fD04i/BVaLwB+9fCwfpABycSE5EZ5RPlkL64wxGx
         ZX1w==
X-Gm-Message-State: AFqh2kovdCkdK1QPUdAdRV4DOOpEn7GZe7w8sqlfEhCzer2rHEI+/bBg
        AmHtrcQhV2UI4DH12f2omoE=
X-Google-Smtp-Source: AMrXdXuRQh6yJUXZMkyRmLD+TdG8IxC3UUC0tPDnt2pD7NI0ZyLryDb2XEatv4r8KEMZocD9HO25RQ==
X-Received: by 2002:a05:600c:1da3:b0:3d0:965f:63ed with SMTP id p35-20020a05600c1da300b003d0965f63edmr37861652wms.23.1672965550571;
        Thu, 05 Jan 2023 16:39:10 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id g9-20020a05600c310900b003c5571c27a1sm5582681wmo.32.2023.01.05.16.39.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Jan 2023 16:39:10 -0800 (PST)
Message-ID: <1a37e727-f673-c3bf-2524-823100858b2e@gmail.com>
Date:   Fri, 6 Jan 2023 01:39:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v3 07/13] libc.7: ffix
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230105225303.bpo7ot4zcsthw2gv@illithid>
 <7aa64afd-86ea-fa04-9e97-98b60ff8b264@gmail.com>
 <20230106001719.imokpcfcqbuuuxka@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230106001719.imokpcfcqbuuuxka@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------jbDMyp6oAUMDeJkZvYcZc0jC"
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
--------------jbDMyp6oAUMDeJkZvYcZc0jC
Content-Type: multipart/mixed; boundary="------------N2ttRla5leGrZJz1QF3pBF7D";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <1a37e727-f673-c3bf-2524-823100858b2e@gmail.com>
Subject: Re: [PATCH v3 07/13] libc.7: ffix
References: <20230105225303.bpo7ot4zcsthw2gv@illithid>
 <7aa64afd-86ea-fa04-9e97-98b60ff8b264@gmail.com>
 <20230106001719.imokpcfcqbuuuxka@illithid>
In-Reply-To: <20230106001719.imokpcfcqbuuuxka@illithid>

--------------N2ttRla5leGrZJz1QF3pBF7D
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KT24gMS82LzIzIDAxOjE3LCBHLiBCcmFuZGVuIFJvYmluc29uIHdy
b3RlOg0KPiBIaSBBbGV4LA0KPiANCj4gQXQgMjAyMy0wMS0wNlQwMDo1MzoxMSswMTAwLCBB
bGVqYW5kcm8gQ29sb21hciB3cm90ZToNCj4+IE9uIDEvNS8yMyAyMzo1MywgRy4gQnJhbmRl
biBSb2JpbnNvbiB3cm90ZToNCj4+PiAqIFNldCBwYWdlIHRvcGljIGluIGxvd2VyY2FzZS4N
Cj4+PiAqIFVzZSB0eXBvZ3JhcGhlcidzIHF1b3RhdGlvbiBtYXJrcyBpbnN0ZWFkIG9mICci
JyBmb3IgcXVvdGF0aW9uLg0KPj4NCj4+IElzbid0IGl0IGVxdWl2YWxlbnQgaW4gcnVubmlu
ZyB0ZXh0PyAgJyInIGlzIHNpbXBsZXIgdG8gdHlwZS4NCj4gDQo+IE5vLCBpdCdzIG5vdCBl
cXVpdmFsZW50IGFueXdoZXJlIGV4Y2VwdCBvbiB0aGUgImFzY2lpIiwgImxhdGluMSIsIGFu
ZA0KPiAiY3AxMDQ3IiBvdXRwdXQgZGV2aWNlcy4NCj4gDQo+ICQgZ3JvZmYgLW1hbiAtVHBk
ZiA8PEVPRiA+IHF1b3RlLnBkZg0KPiAuVEggZm9vIDEgMjAyMy0wMS0wNSAiZ3JvZmYgdGVz
dCBzdWl0ZSINCj4gLlNIIE5hbWUNCj4gZm9vIFwtICJmcm9ibmljYXRlIiBhIFwobHFiYXJc
KHJxDQo+IEVPRg0KPiAkIGV2aW5jZSBxdW90ZS5wZGYNCg0KRm9yIHNvbWUgcmVhc29uLCBJ
IG1vbWVudGFyaWx5IHRob3VnaCB0aGF0IHRob3NlIHdvdWxkIHByb2R1Y2UgdGhlIHNhbWUg
Y29kZS4NCkkgdGhpbmsgSSB3YXMgY29uZnVzZWQgYnkgc29tZSBvdGhlciB0aGluZzogaW4g
c29tZSBjYXNlcyB5b3UgY2FuIHVzZSAnIicsIGJ1dCANCmluIG90aGVycyB5b3UgbXVzdCB1
c2UgXChkcSAobWFjcm8gYXJndW1lbnRzKS4gIFByb2JhYmx5IHRoYXQgdHJpZ2dlcmVkIGEg
d3JvbmcgDQpjb25uZWN0aW9uIGluIG15IGJyYWluLi4uDQoNCldoaWNoIGJ5IHRoZSB3YXkg
cmVtaW5kcyBtZSB0aGF0IGluIGxhbmd1YWdlLCB3ZSB1c2UgdGhlIGVsbGlwc2VzIHRvZ2V0
aGVyIHdpdGggDQp0aGUgbGFzdCB3b3JkLiAgV2hlcmUgZGlkIHRoaXMgaWRlYSBvZiBzZXBh
cmF0aW5nIGl0IGluIHN5bm9wc2VzIGNvbWUgZnJvbT8gDQpNYXliZSBsb2dpYyB0aGlua2lu
Zywgc3VjaCBhcyBwbGFjaW5nIHRoZSBwZXJpb2Qgb3V0c2lkZSBvZiBxdW90ZXMuLi4NCg0K
U28sIEkgZ3Vlc3MgSSdsbCBwaWNrIHRoYXQgcGF0Y2guICBJJ2xsIHRlbGwgeW91IGlmIEkg
ZG8uDQoNCkNoZWVycywNCg0KQWxleA0KDQo+IA0KPiBJdCBfaXNfIHNpbXBsZXIgdG8gdHlw
ZSBqdXN0ICIsIGFuZCBtYW55IG90aGVyIG1hbiBwYWdlIGF1dGhvcnMgc2VlbSB0bw0KPiBo
YXZlIGZvdW5kIGl0IHNvLiAgVGhhdCBpcyB3aHkgSSBoYXZlIHByb3Bvc2VkIGEgYFFgIHF1
b3RhdGlvbiBtYWNybywNCj4gYmVjYXVzZSB3aXRob3V0IGl0LCBtYW4gcGFnZSBhdXRob3Jz
IHNlZW0gdG8gZm9yZWdvIHF1b3RhdGlvbiBlbnRpcmVseQ0KPiBpbiBmYXZvciBvZiBpdGFs
aWNzLCBib2xkLCBvciBub3RoaW5nLg0KPiANCj4gaHR0cHM6Ly9saXN0cy5nbnUub3JnL2Fy
Y2hpdmUvaHRtbC9ncm9mZi8yMDIyLTEyL21zZzAwMDc4Lmh0bWwNCj4gDQo+IEhpc3Rvcmlj
YWxseSwgVGVYLXN0eWxlIHF1b3RhdGlvbiBgYGxpa2UgdGhpcycnIGhhcyBiZWVuIHNlZW4g
aW4gKnJvZmYNCj4gZG9jdW1lbnRzLCBidXQgdGhlIHByYWN0aWNlIGlzIGFsbW9zdCBub25l
eGlzdGVudCBpbiB0aGUgTGludXggbWFuLXBhZ2VzDQo+IGNvcnB1cy4NCj4gDQo+IGBgVGhp
cycnIGlzIHNvIHVnbHkgb24gSVNPIDg4NTkgYW5kIGxhdGVyIGNoYXJhY3RlciBzZXQtYmFz
ZWQgdGVybWluYWxzDQo+IHRoYXQgSSBkb24ndCB3b25kZXIgd2h5IHBlb3BsZSBhdm9pZCBp
dC4NCj4gDQo+IGh0dHBzOi8vd3d3Lm9wZW4tc3RkLm9yZy9KVEMxL1NDMi9XRzMvZG9jcy9u
NDExLnBkZg0KPiANCj4gLi4uaXMgYSBjb3B5IG9mIHBhcnQgMSBvZiBFQ01BLTk0LCB0aGUg
Z3JhdGlzIGVxdWl2YWxlbnQgb2YgSVNPIDg4NTksDQo+IGFuZCBzaG93cyB3aGF0IHRoZSAn
IGFuZCBgIGdseXBocyBhcmUgc3VwcG9zZWQgdG8gbG9vayBsaWtlLg0KPiANCj4gUmVnYXJk
cywNCj4gQnJhbmRlbg0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVz
Lz4NCg==

--------------N2ttRla5leGrZJz1QF3pBF7D--

--------------jbDMyp6oAUMDeJkZvYcZc0jC
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmO3ba0ACgkQnowa+77/
2zIExQ/9F7uL81I2j7BKGJsTzNS9YYcTmStlrojT/5o4Fr2xz1EjYADfeZSqP0c2
TyIa6b2Cdu3nqkpB5CU19Smp7tuXtIlKOpKPRGHImYKj5Bqa6wCjPI2lduVIif7Y
awnBkYHLQ/yNlxJE3HYT9jS0z+iu0xJXf48FQ3oONk4YR/G7Ij8jRJvEcgbWQVaX
LPgWmx1i2X4EFS4NHtwpI1G+pt8MwWV0CWn+XgkYeBSMoc6L98TA1xu16VmeFUWV
PFonDeuXTd3xPD1R7FSkUdq8e3SHckzQpmfkuo7faTbe+RPjjP92InxLr55TuQyv
8tsPlsXg4tlCJsdUi5n61sE4l5CuO6y9lHQWs2xx6J1U8d2c2P69tloMen0rJar+
pp5ifoDeFv08xAZ7u4DiYAUlt4YFPBJIzvuYZtvcxLJKTQ9+Oy5b4+NBGPhYNTYq
oViiwDvHe6CyBcgAJpY0G+KGXcb8kCtqW4yFcNvVpwmEg420ejb+DUkHDKOcZjK1
uhF71bdqxNOhHSxw+Uz6Jtabvx+pNZ68q/r66x7Kmg90YufERnyX9TY3+AbOPDt1
beFPOhDmCkomXWNsVSzKUEG5p7zHoXtYneKGh8a6lT6cRwwh6EqUzLw8gKQuUQnq
Y+s8kbXF75luKT6hn8PuBkKiGeeGeL5C9AmsHcO+vF2InfZkCHI=
=BGKT
-----END PGP SIGNATURE-----

--------------jbDMyp6oAUMDeJkZvYcZc0jC--
