Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7BF31660E8C
	for <lists+linux-man@lfdr.de>; Sat,  7 Jan 2023 13:07:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231421AbjAGMHF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Jan 2023 07:07:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232272AbjAGMHE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Jan 2023 07:07:04 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC7875E656
        for <linux-man@vger.kernel.org>; Sat,  7 Jan 2023 04:07:02 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id b24-20020a05600c4a9800b003d21efdd61dso2799610wmp.3
        for <linux-man@vger.kernel.org>; Sat, 07 Jan 2023 04:07:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ix4/DiEolvYyWxq1YSTjcU/3OTrWp+Prsz/Y6OkzjVA=;
        b=U15GdHeeBwJqP6RzrcDQaw3N67UWVgEFZsQW+fI31DCxCDQoyXxzSEBDH0ZSbRcgIf
         lIyV3gBUJ6Qh70gh9jsB4gwTOvYr/q+Fst954lJ/ejlG6dDpjG98piVJWjRYwK9LdBoX
         8x+50TlrjqYoMVdEcvH5841Zdzl++ywpVpmMHUziiecoAWc5HPqnRejBTrsxOzg2viqj
         YCAc6ztxOGQ+l8I96Z6wLtjb2s61FxiZU9Q81lcwnnp3Ot3HasJNSssiGIXQUM/q62ck
         aq5qD+PhCrhz6r67eNRv2BdWjuxlIkSn3CjzqpwMqGCCGa78eqLn368fmdKWXh+OaZc1
         E8lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Ix4/DiEolvYyWxq1YSTjcU/3OTrWp+Prsz/Y6OkzjVA=;
        b=KBfgwgGO/tBbDuw71tYXE5KoR1BIF7aaWHX/WaT0Iz0a30hlL+doUB5zkU55+x2b39
         bZm0Mb5c7m1NlqEbeR+IFkHLx7zBMIIFWV0sRIjuKgbk2eQdMrH+wAwEbSXm6tdKnXHD
         5BJU2cCocwkAEfwYoGTS+0I4TVKyEZLw9z5mRSW9xsDOsRXSRuSetiSI3sWMwNnC220r
         yJ1rdqnmKrDHapeIt82v8qE07SR+GsZ+HcakePCrk6CyCxYJfQp4lowcTaWnZww2LJDn
         6DORDj1XWja3X74k1K/IOglPCXfFYNtWFZDuKi5JyGwZC6fiuslG7CZP1ItGemZBS9kM
         TepQ==
X-Gm-Message-State: AFqh2kqbA5koTi3mB1Uoo1m/ik+6MHjmqXyLmJmU3fSdkFIx7MrsL6qa
        fLJkDZaitn8MOC6TDn8vwJc=
X-Google-Smtp-Source: AMrXdXtcLGqVyYaOMeDjXGmFwZbQ6Vr0QvlFtKYIpZxdIp7k7HXV4WbIkVj38irEI8VcoNxYvvKz+Q==
X-Received: by 2002:a05:600c:1d89:b0:3d3:5cd6:781 with SMTP id p9-20020a05600c1d8900b003d35cd60781mr40918169wms.37.1673093221219;
        Sat, 07 Jan 2023 04:07:01 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id iv14-20020a05600c548e00b003b47b80cec3sm10885523wmb.42.2023.01.07.04.07.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Jan 2023 04:07:00 -0800 (PST)
Message-ID: <4abb06ac-05a1-f274-8d43-09c31ec6fb76@gmail.com>
Date:   Sat, 7 Jan 2023 13:06:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v4 01/10] ldconfig.8: Drop discussion of libc4,5 support.
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230107095413.iz7jsiynquonpsvi@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230107095413.iz7jsiynquonpsvi@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------UJgcOvou15wDamA4PxxU8o8j"
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
--------------UJgcOvou15wDamA4PxxU8o8j
Content-Type: multipart/mixed; boundary="------------WuWR0hE1OA0wV93fwKClHeHn";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <4abb06ac-05a1-f274-8d43-09c31ec6fb76@gmail.com>
Subject: Re: [PATCH v4 01/10] ldconfig.8: Drop discussion of libc4,5 support.
References: <20230107095413.iz7jsiynquonpsvi@illithid>
In-Reply-To: <20230107095413.iz7jsiynquonpsvi@illithid>

--------------WuWR0hE1OA0wV93fwKClHeHn
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEvNy8yMyAxMDo1NCwgRy4gQnJhbmRlbiBSb2JpbnNvbiB3cm90ZToNCj4gRHJv
cCBtdWx0aXBsZSBwYXJhZ3JhcGhzIGRpc2N1c3NpbmcgbGliYzQgYW5kIGxpYmM1IHNoYXJl
ZCBsaWJyYXJ5DQo+IHN1cHBvcnQuICBJdCB3YXMgcmVtb3ZlZCB1cHN0cmVhbSBpbiBKdWx5
OyBhbm5vdGF0ZSBjb21taXQuDQoNClBhdGNoIGFwcGxpZWQuICBUaGFua3MhDQoNCkFsZXgN
Cg0KPiAtLS0NCj4gICBtYW44L2xkY29uZmlnLjggfCAzNyArKystLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygr
KSwgMzQgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvbWFuOC9sZGNvbmZpZy44
IGIvbWFuOC9sZGNvbmZpZy44DQo+IGluZGV4IGRlMmI3YTVjMy4uMzZiODkxZGFiIDEwMDY0
NA0KPiAtLS0gYS9tYW44L2xkY29uZmlnLjgNCj4gKysrIGIvbWFuOC9sZGNvbmZpZy44DQo+
IEBAIC01Nyw0MCArNTcsOSBAQCBvcg0KPiAgIC5CIFwlbGRjb25maWcNCj4gICBjaGVja3Mg
dGhlIGhlYWRlciBhbmQgZmlsZW5hbWVzIG9mIHRoZSBsaWJyYXJpZXMgaXQgZW5jb3VudGVy
cyB3aGVuDQo+ICAgZGV0ZXJtaW5pbmcgd2hpY2ggdmVyc2lvbnMgc2hvdWxkIGhhdmUgdGhl
aXIgbGlua3MgdXBkYXRlZC4NCj4gLS5QUA0KPiAtLkIgXCVsZGNvbmZpZw0KPiAtd2lsbCBh
dHRlbXB0IHRvIGRlZHVjZSB0aGUgdHlwZSBvZiBFTEYgbGlicmFyaWVzDQo+IC0oaS5lLiwN
Cj4gLWxpYmM1IG9yIGxpYmM2L2dsaWJjKQ0KPiAtYmFzZWQgb24gd2hhdCBDIGxpYnJhcmll
cywNCj4gLWlmIGFueSwNCj4gLXRoZSBsaWJyYXJ5IHdhcyBsaW5rZWQgYWdhaW5zdC4NCj4g
LS5cIiBUaGUgZm9sbG93aW5nIHNlbnRlbmNlIGxvb2tzIHN1c3BlY3QNCj4gLS5cIiAocGVy
aGFwcyBoaXN0b3JpY2FsIGNydWZ0KSAtLSBNVEssIEp1bCAyMDA1DQo+IC0uXCIgVGhlcmVm
b3JlLCB3aGVuIG1ha2luZyBkeW5hbWljIGxpYnJhcmllcywNCj4gLS5cIiBpdCBpcyB3aXNl
IHRvIGV4cGxpY2l0bHkgbGluayBhZ2FpbnN0IGxpYmMgKHVzZSBcLWxjKS4NCj4gLS5QUA0K
PiAtU29tZSBleGlzdGluZyBsaWJyYXJpZXMgZG8gbm90IGNvbnRhaW4gZW5vdWdoIGluZm9y
bWF0aW9uDQo+IC10byBhbGxvdyB0aGUgZGVkdWN0aW9uIG9mIHRoZWlyIHR5cGUuDQo+IC1U
aGVyZWZvcmUsDQo+IC10aGUNCj4gLS5JIC9ldGMvbGQuc28uY29uZg0KPiAtZmlsZSBmb3Jt
YXQgYWxsb3dzIHRoZSBzcGVjaWZpY2F0aW9uIG9mIGFuIGV4cGVjdGVkIHR5cGUuDQo+IC1U
aGlzIGlzIHVzZWQNCj4gLS5JIG9ubHkNCj4gLWZvciB0aG9zZSBFTEYgbGlicmFyaWVzIHdo
aWNoIHdlIGNhbiBub3Qgd29yayBvdXQuDQo+IC1UaGUgZm9ybWF0DQo+IC1pcyAiZGlybmFt
ZT1UWVBFIiwNCj4gLXdoZXJlIFRZUEUgY2FuIGJlIGxpYmM0LA0KPiAtbGliYzUsDQo+IC1v
ciBsaWJjNi4NCj4gLShUaGlzIHN5bnRheCBhbHNvIHdvcmtzIG9uIHRoZSBjb21tYW5kIGxp
bmUuKQ0KPiAtU3BhY2VzIGFyZQ0KPiAtLkkgbm90DQo+IC1hbGxvd2VkLg0KPiAtQWxzbyBz
ZWUgdGhlDQo+IC0uQiBcLXANCj4gLW9wdGlvbi4NCj4gKy5cIiBTdXBwb3J0IGZvciBsaWJj
NCBhbmQgbGliYzUgZHJvcHBlZCBpbg0KPiArLlwiIDhlZTg3ODU5MmM0YTY0MjkzNzE1MmM4
MzA4YjhmYWVmODZiY2ZjNDAgKDIwMjItMDctMTQpIGFzICJvYnNvbGV0ZQ0KPiArLlwiIGZv
ciBvdmVyIHR3ZW50eSB5ZWFycyIuDQo+ICAgLkIgXCVsZGNvbmZpZw0KPiAgIHNob3VsZCBu
b3JtYWxseSBiZSBydW4gYnkgdGhlIHN1cGVydXNlciBhcyBpdCBtYXkgcmVxdWlyZSB3cml0
ZQ0KPiAgIHBlcm1pc3Npb24gb24gc29tZSByb290IG93bmVkIGRpcmVjdG9yaWVzIGFuZCBm
aWxlcy4NCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------WuWR0hE1OA0wV93fwKClHeHn--

--------------UJgcOvou15wDamA4PxxU8o8j
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmO5YGMACgkQnowa+77/
2zJAaRAAgceyJSa1VoAlCsaEL4uLCJzrhEgQ7ci0yEPTL0mCJoMZMvr20ddpxeIf
AU4N+q7Q85hMdE93+8voaKvtPs5unNzqy8ngZcMDTg4lMxlB6NgDm0v7lSISF8/c
niUvQdnFM4SQupil7HmCo3gW8W9P7Zc/9QOPNryQ+UkfbZqjhzeoNc9FfgcJ0+qn
YkFVI3+O9AqpH90ssHAQkVs2fXZdOlKTJoVBxkAjWIg44HQjQa5mJYJG6HU+WUgn
+TpDjSa/B20aOXNATUVEXMj4aaIIZLPGKdu9rXuofjk+rPyYSLst8SqMaF0h/dzO
SIj9i1HBxPV+AUr/99v7JMnjOSgpiA6qXbqY3Y5X+nnWqMXISjElK8zIKFSfePEj
KWqasnax9xwmsA4xTBLu30NXvPNKHyvAhzKQRrGzab55RFYxTeeLV3yKy9zKz7QP
XDRji6NPZmhw1qUVY4LWpg5vWbw66VmxiUm7UvC+TzB42QjcGlbwtVLyvVf3VYQm
negTmuEdGVmeE8lcng3qUr7gMTvhEkHtjskekw30wUMVaAuZieR9RBcHF7WJNhZ8
mVD9465LYkwYAOiN8tx5IMqAK3jox0prO/zLwLZEtKa3peL1Xifvzh9tDEfBoSqH
D+S88pcapMs6pYq3q4kzUMrSkncSy7+2G/5/7H5uPzw483GaRyk=
=XVQ4
-----END PGP SIGNATURE-----

--------------UJgcOvou15wDamA4PxxU8o8j--
