Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AA7B05FE57C
	for <lists+linux-man@lfdr.de>; Fri, 14 Oct 2022 00:41:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229460AbiJMWlP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 13 Oct 2022 18:41:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57356 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229526AbiJMWlO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 13 Oct 2022 18:41:14 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0366513F90
        for <linux-man@vger.kernel.org>; Thu, 13 Oct 2022 15:41:13 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id b4so5023709wrs.1
        for <linux-man@vger.kernel.org>; Thu, 13 Oct 2022 15:41:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ik0UTKuLLua7K6wi2FDfjOff2xXWdQgDGtkFN/x5/ag=;
        b=pk/J9Iq+6fIy1ZIksKdcjuTnFdyek400eCczc5+MnOGR6uFvKaFnyXEx6NTckkeJHt
         d9D0zt5nI3U6+OJ4nbzLhvfBVA+AHMWOfzqlKnLKqpAA/RooFwodasS3EXP+OE22+LFj
         pkg8Pyn/oQcMxw3JzMZ+qk9L9TcyI7NepPWIQ3jv8ri8dlpA3Q4anUR2X3X4AquaXKds
         xo69mvByCR/A+CVOk8PNtAHiHX1aamRuCQPuXYVCFL9WWAcWDuhCkyDZPKfGyBVUwFhI
         8bhxns66DTtns4Wo+96jiM6DjyRDOP7BnkVGXrXNJfEmb++0QzYxeI9OxzhaljiN4LEP
         PY2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ik0UTKuLLua7K6wi2FDfjOff2xXWdQgDGtkFN/x5/ag=;
        b=kuAaQBu6V7Kkz7DQ5RIvsIulNFgOMuK6JECPSIb+HGwzxJJTYZ8xPlmvnv6NtgeVgP
         vwo3epUqFi+e7AxmHsJmSxeP3gxG5Nyw5MwHY1cTHQW8wSOa0YeHm/gQAogNdmAJMk9P
         bE8kCnT0PUKHfhIqGsjmAJ8u24v6/f8VZTc/In1WxNdNzIZceYtBwz/SFPsP94AZsAEO
         AS6kLDQmAQyfYM1gYZiTv1jIGpj2YGz6C4gWwl0XN2PpP+hC9v8hCm2G8QHKvPy3T2QG
         2GZBttMeer1WoFE8RXgMan43VWeAV9MLKUWRuHJOFawVLeGE92S6SVR+KZLBhFBIO14j
         5cwQ==
X-Gm-Message-State: ACrzQf0gXfQWsixCpXFtdDAUeQsVRLjEhVfV+IClwT2V0ZXciL5rv6t4
        gEz68pESnREXL1YDP3gMLx2UkBBmStI=
X-Google-Smtp-Source: AMsMyM4E8UbDV14fWYCT6oqA/KRWH2bG4q7/sMNIwU3rmjfX1ntjHpqrAHl0tt4tNaM8uJHOPAnllg==
X-Received: by 2002:a5d:64cd:0:b0:22e:2fc1:9511 with SMTP id f13-20020a5d64cd000000b0022e2fc19511mr1296680wri.415.1665700871559;
        Thu, 13 Oct 2022 15:41:11 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id m19-20020a05600c4f5300b003a2e92edeccsm5731268wmq.46.2022.10.13.15.41.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Oct 2022 15:41:11 -0700 (PDT)
Message-ID: <5effd43e-7677-aa63-56e5-156d7560b4ef@gmail.com>
Date:   Fri, 14 Oct 2022 00:41:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [PATCH v2] feature_test_macros.7: document -D_FORTIFY_SOURCE=3
Content-Language: en-US
To:     Sam James <sam@gentoo.org>
Cc:     linux-man@vger.kernel.org
References: <20221013210626.1553315-1-sam@gentoo.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221013210626.1553315-1-sam@gentoo.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------mSEXVX55mNB7I0f3SAiVKFn8"
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
--------------mSEXVX55mNB7I0f3SAiVKFn8
Content-Type: multipart/mixed; boundary="------------jr14ogPD0Jbm02DSepX8O70O";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Sam James <sam@gentoo.org>
Cc: linux-man@vger.kernel.org
Message-ID: <5effd43e-7677-aa63-56e5-156d7560b4ef@gmail.com>
Subject: Re: [PATCH v2] feature_test_macros.7: document -D_FORTIFY_SOURCE=3
References: <20221013210626.1553315-1-sam@gentoo.org>
In-Reply-To: <20221013210626.1553315-1-sam@gentoo.org>

--------------jr14ogPD0Jbm02DSepX8O70O
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgU2FtLA0KDQpPbiAxMC8xMy8yMiAyMzowNiwgU2FtIEphbWVzIHdyb3RlOg0KPiBSZWZl
cmVuY2U6IGh0dHBzOi8vZGV2ZWxvcGVycy5yZWRoYXQuY29tL2Jsb2cvMjAyMS8wNC8xNi9i
cm9hZGVuaW5nLWNvbXBpbGVyLWNoZWNrcy1mb3ItYnVmZmVyLW92ZXJmbG93cy1pbi1fZm9y
dGlmeV9zb3VyY2UNCj4gUmVmZXJlbmNlOiBodHRwczovL2RldmVsb3BlcnMucmVkaGF0LmNv
bS9hcnRpY2xlcy8yMDIyLzA5LzE3L2djY3MtbmV3LWZvcnRpZmljYXRpb24tbGV2ZWwNCj4g
U2lnbmVkLW9mZi1ieTogU2FtIEphbWVzIDxzYW1AZ2VudG9vLm9yZz4NCg0KUGF0Y2ggYXBw
bGllZC4NCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCj4gLS0tDQo+ICAgbWFuNy9mZWF0dXJlX3Rl
c3RfbWFjcm9zLjcgfCAxNCArKysrKysrKysrKysrKw0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAx
NCBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvbWFuNy9mZWF0dXJlX3Rlc3Rf
bWFjcm9zLjcgYi9tYW43L2ZlYXR1cmVfdGVzdF9tYWNyb3MuNw0KPiBpbmRleCBjZGQ5NjJm
N2YuLmYwNTdjMWM4NyAxMDA2NDQNCj4gLS0tIGEvbWFuNy9mZWF0dXJlX3Rlc3RfbWFjcm9z
LjcNCj4gKysrIGIvbWFuNy9mZWF0dXJlX3Rlc3RfbWFjcm9zLjcNCj4gQEAgLTYzNCw5ICs2
MzQsMjMgQEAgYW5kIHJlc3VsdCBpbiBjb21waWxlciB3YXJuaW5nczsNCj4gICBvdGhlciBj
aGVja3MgdGFrZSBwbGFjZSBhdCBydW4gdGltZSwNCj4gICBhbmQgcmVzdWx0IGluIGEgcnVu
LXRpbWUgZXJyb3IgaWYgdGhlIGNoZWNrIGZhaWxzLg0KPiAgIC5JUA0KPiArV2l0aA0KPiAr
LkIgX0ZPUlRJRllfU09VUkNFDQo+ICtzZXQgdG8gMywgYWRkaXRpb25hbCBjaGVja2luZyBp
cyBhZGRlZCB0byBpbnRlcmNlcHQgc29tZSBmdW5jdGlvbg0KPiArY2FsbHMgdXNlZCB3aXRo
IGFuIGFyZ3VtZW50IG9mIHZhcmlhYmxlIHNpemUgd2hlcmUgdGhlIGNvbXBpbGVyIGNhbg0K
PiArZGVkdWNlIGFuIHVwcGVyIGJvdW5kIGZvciBpdHMgdmFsdWUuDQo+ICtGb3IgZXhhbXBs
ZSwgYSBwcm9ncmFtIHdoZXJlIG1hbGxvYydzIHNpemUgYXJndW1lbnQgaXMgdmFyaWFibGUN
Cj4gK2NhbiBub3cgYmUgZm9ydGlmaWVkLg0KDQpJIHJlZmxvd2VkIHRoaXMgdGV4dCBhIGxp
dHRsZSBiaXQgKHJhdGlvbmFsZTogc2VtYW50aWMgbmV3bGluZXMpLCBhbmQgDQphbHNvIGZv
cm1hdHRlZCBtYWxsb2MoMykuDQoNClRoZSBtZW50aW9uIHRvIG1hbGxvYygzKSB3YXMgdXNl
ZnVsLCBJTU8gOikNCg0KPiArLklQDQo+ICAgVXNlIG9mIHRoaXMgbWFjcm8gcmVxdWlyZXMg
Y29tcGlsZXIgc3VwcG9ydCwgYXZhaWxhYmxlIHdpdGgNCj4gICAuQlIgZ2NjICgxKQ0KPiAg
IHNpbmNlIHZlcnNpb24gNC4wLg0KPiArLklQDQo+ICtGb3IgdXNlIG9mDQo+ICsuQiBfRk9S
VElGWV9TT1VSQ0UNCj4gK3NldCB0byAzLCB0aGVuDQo+ICsuQlIgZ2NjICgxKQ0KPiArdmVy
c2lvbiAxMi4wIG9yIGxhdGVyIGlzIHJlcXVpcmVkLg0KDQpBbmQgcmV3b3JkZWQgdGhpcyBh
IGJpdC4NCg0KPiAgIC5TUyBEZWZhdWx0IGRlZmluaXRpb25zLCBpbXBsaWNpdCBkZWZpbml0
aW9ucywgYW5kIGNvbWJpbmluZyBkZWZpbml0aW9ucw0KPiAgIElmIG5vIGZlYXR1cmUgdGVz
dCBtYWNyb3MgYXJlIGV4cGxpY2l0bHkgZGVmaW5lZCwNCj4gICB0aGVuIHRoZSBmb2xsb3dp
bmcgZmVhdHVyZSB0ZXN0IG1hY3JvcyBhcmUgZGVmaW5lZCBieSBkZWZhdWx0Og0KDQotLSAN
CjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------jr14ogPD0Jbm02DSepX8O70O--

--------------mSEXVX55mNB7I0f3SAiVKFn8
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNIlAYACgkQnowa+77/
2zKhVw/+J9u0ShXdve6ynqDyTK/xQeZpZnmelGUDa5tfN/sgiqryjiyIT2tmgMsP
1RlLBkAcPdFp23uKfABRIl/JI1okXvp7gkSSdTV7ZBOUzOhZVaeh0TXiIdY8sXBz
mIdDO8pmX+zu1ktZyljm4qGcb+xUl2RIlHDho3l59O+0tdS4HzJi9zqaPVJ+obPN
voDZ2dMUO8S4eY0HEr/BHmgMCWywvkxqsBNZu4VVbBAJPbD1pj8twWrP8Ux5gLuW
oWWswen5NFyYd7qrDEJimtJKj7kvNahdauILQIeqWT2VsLO4oBqkvV7WDgNNlNa8
JENGhlTL1dDTTAqLsH6DNoqTMPwRNF7kI73z7cq3V57fpy5zK+yT+YFhgl5qXsMK
rpXXIEeAOMrcxGJ9CXws9uYXN+Tlld93JMchCoUw3hZoMMTtcWWSI93anKRx7I4n
2rkz8p7JnoBLmt5DEDS10/GjCw7QZzELKtBf3RTMqd3GXumGTlWtghDuz3vxhlV5
SQqfcw+jzpqNowSDXjD4UP44+JxJ3k+ewefBiXFjdlNKPI1BcTDz3xQZNUqk1Ivw
3BmAu9whm+qn5dfjQGSWuICD1BIFLd5TA7EpjomPteHLrQU28SmRIB3lxab60x4s
+BSI5kqTO8rxQta55eQ2NU3UEKeHAC7mghhMUBYVEJJf2t2B+Mc=
=HABI
-----END PGP SIGNATURE-----

--------------mSEXVX55mNB7I0f3SAiVKFn8--
