Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9ACA165CA8E
	for <lists+linux-man@lfdr.de>; Wed,  4 Jan 2023 00:49:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233814AbjACXtM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 3 Jan 2023 18:49:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55416 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237765AbjACXtL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 3 Jan 2023 18:49:11 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B17C10B5B
        for <linux-man@vger.kernel.org>; Tue,  3 Jan 2023 15:49:10 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id bn26so11973913wrb.0
        for <linux-man@vger.kernel.org>; Tue, 03 Jan 2023 15:49:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PXcLh1JhykGrejLAsM9Khxozqx8T/Sv/YY+xIXQTRU0=;
        b=CHez0ZYxScm6O4hz0uOgXLyvQNj2+FsWioiXD7c0FtaUsycFvvl7ESGUSL2lNVfEMz
         V2Yfz5KdUgtFkyLhYtqXHc3hhFyUBZNf6xY1OnDfuHsPELPq5SR0RNtQMjd3pkfApiY+
         C1gJsWGUK0DADOzqZ/2srtSxy+GONpIA0qJ9GcetI+FFTZ1WqITp4h+TLDdjnwbnuwi+
         w5enfUdGSP/H2gjjWobOcT/W5A3MPb+5gwE7xqq4h/9kIRlT9JS68riqXeC9n5vdnkyn
         jdhiQpwXxVmLyob9kFyAfjaLXIS7jGkDn/AX+qKYUhKG3Oicxc2eTOs0oyDKMsd1RZUt
         1wQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=PXcLh1JhykGrejLAsM9Khxozqx8T/Sv/YY+xIXQTRU0=;
        b=GTjY+GuT2qc1zHMQsCE2UwRLN1k8V5Pwzb4zDKeDR9CbdvLflsgt3OE7TC91GQzV7W
         iR9MC/WoYTWOYLV/Ld+H7ZpQwlm6lMfPSSDzCabCkazxWy0a36PAk2+B0TmJHsGOoTnd
         FI7/j0/J1OCx0TRRh+F3xHIf20yg5GuMyam9aAaDAdzfUN3V/tCJn0RW5DRF+n7WlwiE
         vD8Rc9rtfQsKI8UfnXxqOi60I/ZKS5JqGXUv3p/HogrmvMdyJ2gDTtS+zlnnlEHtVH3n
         gST/BOcL8Sbr8h2za74HXXCPZmWVwQdBZ9VriysAqhGPKjKGgBe8pE7xlRHj/+9M0rNl
         JYKQ==
X-Gm-Message-State: AFqh2kphWZ+uxO1XPSE3fdfww75GZSUlvxsczqBqjyvK7N6lDj0a+ffY
        g3dcLki6DxEYWDBszyxF9CleKcgAaV4=
X-Google-Smtp-Source: AMrXdXtqu5qshrjEqynM7bCAkt8Ip0JSKEb9Sy8Bccd28yCqGJorJKuBwujQOnguh7ASCl3TPqgEvg==
X-Received: by 2002:a05:6000:818:b0:271:16e6:3d54 with SMTP id bt24-20020a056000081800b0027116e63d54mr27237700wrb.70.1672789748584;
        Tue, 03 Jan 2023 15:49:08 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id p11-20020adfe60b000000b002366e3f1497sm33060446wrm.6.2023.01.03.15.49.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Jan 2023 15:49:08 -0800 (PST)
Message-ID: <8d308ead-9efa-a040-adba-329297cb3bdc@gmail.com>
Date:   Wed, 4 Jan 2023 00:49:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH] timespec.3type: tfix: use correct name for nanosecond
 field
Content-Language: en-US
To:     =?UTF-8?Q?Thomas_Wei=c3=9fschuh?= <linux@weissschuh.net>,
        linux-man@vger.kernel.org
References: <20230103234534.48591-1-linux@weissschuh.net>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230103234534.48591-1-linux@weissschuh.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Zcm21eQpEkL70G0wwXQIw0Rl"
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------Zcm21eQpEkL70G0wwXQIw0Rl
Content-Type: multipart/mixed; boundary="------------zbIbcEUJkN7XYbKajgKzibdA";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?Q?Thomas_Wei=c3=9fschuh?= <linux@weissschuh.net>,
 linux-man@vger.kernel.org
Message-ID: <8d308ead-9efa-a040-adba-329297cb3bdc@gmail.com>
Subject: Re: [PATCH] timespec.3type: tfix: use correct name for nanosecond
 field
References: <20230103234534.48591-1-linux@weissschuh.net>
In-Reply-To: <20230103234534.48591-1-linux@weissschuh.net>

--------------zbIbcEUJkN7XYbKajgKzibdA
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgVGhvbWFzLA0KDQpPbiAxLzQvMjMgMDA6NDUsIFRob21hcyBXZWnDn3NjaHVoIHdyb3Rl
Og0KPiBUaGUgZmllbGQgaXMgY29ycmVjdGx5IGNhbGxlZCAidHZfbnNlYyIgYXMgaXQgaXMg
YWxzbyB1c2VkIGluIG90aGVyDQo+IHBsYWNlcyBpbiB0aGUgbWFucGFnZS4NCj4gDQo+IFNp
Z25lZC1vZmYtYnk6IFRob21hcyBXZWnDn3NjaHVoIDxsaW51eEB3ZWlzc3NjaHVoLm5ldD4N
Cg0KVGhhbmtzLiAgUGF0Y2ggYXBwbGllZC4gIEkgaGFkIHNlZW4gaXQsIGFuZCBJIHRob3Vn
aHQgSSBoYWQgZml4ZWQgaXQgcmVjZW50bHkuIA0KSXQgc2VlbXMgSSBkaWRuJ3QuDQoNCkNo
ZWVycywNCg0KQWxleA0KDQo+IC0tLQ0KPiAgIG1hbjN0eXBlL3RpbWVzcGVjLjN0eXBlIHwg
MiArLQ0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigt
KQ0KPiANCj4gZGlmZiAtLWdpdCBhL21hbjN0eXBlL3RpbWVzcGVjLjN0eXBlIGIvbWFuM3R5
cGUvdGltZXNwZWMuM3R5cGUNCj4gaW5kZXggZmRkZGNjNzc4ZDZjLi43Y2Q4MGNlODY2OWIg
MTAwNjQ0DQo+IC0tLSBhL21hbjN0eXBlL3RpbWVzcGVjLjN0eXBlDQo+ICsrKyBiL21hbjN0
eXBlL3RpbWVzcGVjLjN0eXBlDQo+IEBAIC0xNiw3ICsxNiw3IEBAIFN0YW5kYXJkIEMgbGli
cmFyeQ0KPiAgIC5QUA0KPiAgIC5CIHN0cnVjdCB0aW1lc3BlYyB7DQo+ICAgLkJSICIgICAg
dGltZV90ICB0dl9zZWM7IiAiICAgLyogU2Vjb25kcyAqLyINCj4gLS5CUiAiICAgIGxvbmcg
ICAgdHZfdXNlYzsiICIgIC8qIE5hbm9zZWNvbmRzIFsiIDAgIiwgIiA5OTk5OTk5OTkgIl0g
Ki8iDQo+ICsuQlIgIiAgICBsb25nICAgIHR2X25zZWM7IiAiICAvKiBOYW5vc2Vjb25kcyBb
IiAwICIsICIgOTk5OTk5OTk5ICJdICovIg0KPiAgIC5CIH07DQo+ICAgLkVFDQo+ICAgLlNI
IERFU0NSSVBUSU9ODQo+IA0KPiBiYXNlLWNvbW1pdDogNzQ3NGU0NTBkZTNkYzZjMmI5NmZh
ZGQzMjcxYjE2NDNiNGYwOTRhNg0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xv
bWFyLmVzLz4NCg==

--------------zbIbcEUJkN7XYbKajgKzibdA--

--------------Zcm21eQpEkL70G0wwXQIw0Rl
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmO0vu0ACgkQnowa+77/
2zK4fBAAqPxzrV7sV/Vmz9sO7Ah/VLNsb9ju5JJ909JulSD+A60IDwSEhNS/RIZ3
CxeGgo6710hjpGZ2Bnir0+iJS0Jw7sLN6SSba6Et2paLbfp4/GVZyWLqiMPNuAvk
KCgkvwvU3XLKhDwrCfBro2cM9JqmtYtNhbivRZgnF+w54lIA9ApMJQF6eAI2yANH
KCSt5u/ACjXXKYjRqZBbSuHD6Loq8wP4cxdcMXfLiMTOJxYk8sBRikO5PBQChtLr
ko2P8ORGeqcgb0FMO8yBQxjk/q6GJdCbTSj/ifaPNwtTdT2XZP/qAz8BwspjBWWf
1xZqecubgDHZUGhTL0qto6F8gTz7K6GTsMrPAQ3sYmUGDSfs2caVw1BdjfMVEMLk
sXO6WPJFBXPSe9NRqwht6k6s5KUAIV5gjf80xX0lUXUiosOLbzqbKr6KbzACPJIR
iSicbUgoOGHCSwYhbbf7yfAJNcCrazwYvrj0FFD1bHQ6yU8q5xGu+ds4CHAKgAC4
2Rbx6/OW2OrUQ3UKw19tZJ4/alOcSsOoAjfGbTZWE+8Ia5mZlevBG6JgBIpZldxC
kj8bJCKdBl1XzZ6GmJMXh3jU6yMWdtZV2B2U9aZl4oS/yCGrEQ1Qj1h9UU1nYkNG
zi5flaO9DtRJsClxF34s/zy4N+Yb+WOk9HKQUBg8AH7cMXuRshc=
=xR2G
-----END PGP SIGNATURE-----

--------------Zcm21eQpEkL70G0wwXQIw0Rl--
