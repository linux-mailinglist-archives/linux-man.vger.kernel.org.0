Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9842065716D
	for <lists+linux-man@lfdr.de>; Wed, 28 Dec 2022 01:41:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229674AbiL1Al0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Dec 2022 19:41:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47720 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229639AbiL1AlZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 27 Dec 2022 19:41:25 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EABBAC773
        for <linux-man@vger.kernel.org>; Tue, 27 Dec 2022 16:41:23 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id j17so8326512wrr.7
        for <linux-man@vger.kernel.org>; Tue, 27 Dec 2022 16:41:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zx6E2wtACCNteuR4vDklI9NCdCBeCz5TP/yK58f0l7U=;
        b=JtGChjI1YKUS9zVOs/PyaRbi6SZNk24Mu4v6dKFx3OT47ftgarK4x5i7j4ZPfqdS8L
         iFUqknRVCjnIacyoTD8Ox2eAi6FtB6FiiBpT1ZEauztZmvYGcdxuLpV9IUGX//FhJ0yx
         1/q+WLZ/bhGnfnIIgw+1WWBVc5UmhTMkg1oFWmMjl4kjZnd945gJNyW0H/Sgaqy1Jqsd
         /9dRqYNy2NrTFE4QEC0//I4b9GS0KBqfVOmvRmTAayY5uH/d9sJh+WTqPW85GJ5lpES6
         Cz2RhXJsdKTUCzQYpTXd37NQ20cc5Y7j5Zp3yL1wkuqp3eWQWAwinWF/F9PoOD7qSmyB
         EyRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zx6E2wtACCNteuR4vDklI9NCdCBeCz5TP/yK58f0l7U=;
        b=5SRc73C4eCIR8feBaNomWkoZE/+AYPPh0CAA+tceYG46Mgf7k+EhqkUmADRn9rsuLG
         BeIMMc+ksuhlrZCr55RWEBSjrAUExO2PgtkppijVOWo6RQFz9Gov3qe5MkSDxUdDTQfb
         CZiCLezVP21ERkTvrIAHG/ZMpGwmHNAdQw6h9hLPPfranvyNUwltQTAYTNDm6SY5qXca
         qrF6oFZ6k6hNFjCPDI5xRt2a14p4HtcynavJxUTXcKf84jBz9TMEEhRQxDQBEt3VdGnE
         FHeK+Em3rAFlHzf4N4dSZW8khphTLaevDPSWoWREZrz3nlItckzAktNTiwR/mX+y7FXw
         UI4Q==
X-Gm-Message-State: AFqh2krj8+ftIcACNAAmzIjmkRuKhg6jEdRgrsy45d3TInW+joJEHCPi
        ii0itc2RNNot9bLzVse5kVg=
X-Google-Smtp-Source: AMrXdXuZ23ev60NOPhir88guVlj7FztLe2VYmciLydhECfmLLTetvOoxVoWEQvASTW+I8GceG/yR/Q==
X-Received: by 2002:a05:6000:799:b0:272:e9b2:1fad with SMTP id bu25-20020a056000079900b00272e9b21fadmr10211937wrb.33.1672188082416;
        Tue, 27 Dec 2022 16:41:22 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id m17-20020a056000181100b002422202fa7fsm13683868wrh.39.2022.12.27.16.41.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Dec 2022 16:41:21 -0800 (PST)
Message-ID: <8d7b59a0-c068-93ec-7c8b-4a12d9f412e9@gmail.com>
Date:   Wed, 28 Dec 2022 01:41:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH] Add example to rand.3
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     =?UTF-8?Q?Cristian_Rodr=c3=adguez?= <crrodriguez@opensuse.org>,
        Jonny Grant <jg@jguk.org>, Florian Weimer <fweimer@redhat.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>
References: <105835f5-359c-2646-f609-e73459ee2d3b@jguk.org>
 <92e5ad68-d013-43f5-cc3e-459daea93a83@gmail.com>
 <CAPBLoAeLFYtzVP7ZqkThdT4Pan9aoW=YPqHDM9Wbh6Fn+tki7w@mail.gmail.com>
 <8bd20ea2-2031-173a-5b09-f6a74473ef8f@gmail.com>
 <20221228000010.iyrekqdj6fi5sf7d@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221228000010.iyrekqdj6fi5sf7d@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0OSOvdHcPxVkMozrMU5cjJFn"
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
--------------0OSOvdHcPxVkMozrMU5cjJFn
Content-Type: multipart/mixed; boundary="------------SjBeIm3IJSAWEMGi06af1x6v";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: =?UTF-8?Q?Cristian_Rodr=c3=adguez?= <crrodriguez@opensuse.org>,
 Jonny Grant <jg@jguk.org>, Florian Weimer <fweimer@redhat.com>,
 Michael Kerrisk <mtk.manpages@gmail.com>,
 linux-man <linux-man@vger.kernel.org>,
 GNU C Library <libc-alpha@sourceware.org>
Message-ID: <8d7b59a0-c068-93ec-7c8b-4a12d9f412e9@gmail.com>
Subject: Re: [PATCH] Add example to rand.3
References: <105835f5-359c-2646-f609-e73459ee2d3b@jguk.org>
 <92e5ad68-d013-43f5-cc3e-459daea93a83@gmail.com>
 <CAPBLoAeLFYtzVP7ZqkThdT4Pan9aoW=YPqHDM9Wbh6Fn+tki7w@mail.gmail.com>
 <8bd20ea2-2031-173a-5b09-f6a74473ef8f@gmail.com>
 <20221228000010.iyrekqdj6fi5sf7d@illithid>
In-Reply-To: <20221228000010.iyrekqdj6fi5sf7d@illithid>

--------------SjBeIm3IJSAWEMGi06af1x6v
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KT24gMTIvMjgvMjIgMDE6MDAsIEcuIEJyYW5kZW4gUm9iaW5zb24g
d3JvdGU6DQo+IEF0IDIwMjItMTItMjhUMDA6MzM6MTMrMDEwMCwgQWxlamFuZHJvIENvbG9t
YXIgd3JvdGU6DQo+PiBUaGUgb25seSBwcm9ibGVtIHdpdGggYXJjNHJhbmRvbSgpIGlzIHRo
ZSBsYWNrIG9mIHJlcGVhdGFiaWxpdHkuICBXaGVuDQo+PiB0ZXN0aW5nIGEgcHJvZ3JhbSB3
aXRoIHJhbmRvbSBkYXRhLCB5b3UnbGwgbmVlZCByZXBlYXRhYmxlIHJlc3VsdHMuDQo+PiBG
b3IgdGhhdCwgcmFuZCgzKSBKdXN0IFdvcmtzLiAgV2hlbiB5b3Ugd2FudCB1bnByZWRpY3Rh
YmxlIHJlc3VsdHMsDQo+PiB5b3UganVzdCBzZWVkIGl0IHdpdGggc29tZSByZWFsbHkgcmFu
ZG9tIHZhbHVlLCBhbmQgeW91J3JlIGZpbmUuICBZb3UNCj4+IG5lZWQgdG8gYmUgY2FyZWZ1
bCB0byBub3QgaW50cm9kdWNlIGJpYXMsIGJ1dCB0aGVyZSdzIG5vdGhpbmcgYmV0dGVyDQo+
PiBpbiBsaWJjLiAgSXQgd291bGQgYmUgbmljZSBpZiBsaWJjIHByb3ZpZGVkIGEgcmFuZF91
bmlmb3JtKDMpIHZhcmlhbnQNCj4+IG9mIHJhbmQoMyksIEJUVy4NCj4gDQo+IFBlcm1pdCBt
ZSB0byBjb3Vuc2VsIGFnYWluc3QgdGhhdCBsYXN0IHByb3Bvc2VkIG5hbWUuICBJbiBwcm9i
YWJpbGl0eQ0KPiB0aGVvcnkgInVuaWZvcm0iIGlzIGFscmVhZHkgd2lkZWx5IGFuZCB3ZWxs
IHVuZGVyc3Rvb2QgdG8gaW5kaWNhdGUgdGhlDQo+IG5hdHVyZSBvZiB0aGUgZGlzdHJpYnV0
aW9uLiAgQSAidW5pZm9ybSIgZGlzdHJpYnV0aW9uIGlzIG9uZSBpbiB3aGljaA0KPiBlYWNo
IG91dGNvbWUgaXMgcHJlY2lzZWx5IGVxdWFsbHkgbGlrZWx5Lg0KDQpUaGF0J3MgZXhhY3Rs
eSB3aGF0IEkgbWlzcyBmcm9tIHRoZSByYW5kKDMpIGludGVyZmFjZTsgYSB2YXJpYW50IHRo
YXQgcHJvZHVjZXMgYSANCnZhbHVlIHdpdGggdW5pZm9ybSBwcm9iYWJpbGl0eSB1cCB0byBz
b21lIG1heGltdW0uICBUaGVyZSdzIHRoZSBzYW1lIGZvciB0aGUgDQphcmM0cmFuZG9tKCkg
ZmFtaWx5IG9mIGZ1bmN0aW9uczoNCg0KPGh0dHBzOi8vd3d3LmdudS5vcmcvc29mdHdhcmUv
bGliYy9tYW51YWwvaHRtbF9tb25vL2xpYmMuaHRtbCNpbmRleC1hcmM0cmFuZG9tXzAwNWZ1
bmlmb3JtPg0KDQpGb3IgZXhhbXBsZSBJIHVzZWQgc29tZXRoaW5nIHNpbWlsYXIgdG8gdGhp
cyBhIGxvbmcgdGltZSBhZ286DQoNCiAgICAgI2luY2x1ZGUgPHN0ZGJpdC5oPg0KICAgICAj
aW5jbHVkZSA8c3RkaW50Lmg+DQogICAgICNpbmNsdWRlIDxzdGRsaWIuaD4NCg0KICAgICB1
aW50MzJfdA0KICAgICByYW5kX3VuaWZvcm0odWludDMyX3QgdXBwZXJfYm91bmQpDQogICAg
IHsNCiAgICAgICAgIHVpbnQzMl90ICByOw0KDQogICAgICAgICBkbyB7DQogICAgICAgICAg
ICAgciA9IHJhbmQoKTsNCiAgICAgICAgICAgICByICU9IHN0ZGNfYml0X2NlaWwodXBwZXJf
Ym91bmQpOw0KICAgICAgICAgfSB3aGlsZSAociA+PSB1cHBlcl9ib3VuZCk7DQoNCiAgICAg
ICAgIHJldHVybiByOw0KICAgICB9DQoNCihJIHVzZWQgQzIzIHN5bnRheCBmb3Igcm91bmRp
bmcgdXAgdG8gYSBwb3dlciBvZiAyLCB0byBhdm9pZCBzb21lIG1hZ2ljIG1hY3JvLiANClRo
YXQgbGluZSBpcyBub3QgbmVjZXNzYXJ5LCBidXQgaW1wcm92ZXMgcGVyZm9ybWFuY2UgY29u
c2lkZXJhYmx5IGZvciBzbWFsbCANCnVwcGVyIGJvdW5kcy4gIEkgZG9uJ3Qga25vdyBpZiBp
dCdzIGF2YWlsYWJsZSBhbHJlYWR5IGluIEdDQyBvciBDbGFuZy4pDQoNClRoYXQgZnVuY3Rp
b24gaXMgQVBJLWNvbXBhdGlibGUgd2l0aCBhcmM0cmFuZG9tX3VuaWZvcm0oKSwgYnV0IGl0
IHdvcmtzIHdpdGggDQpyYW5kKDMpLCBzbyBpdCBjYW4gZ2l2ZSByZXBlYXRhYmxlIHJlc3Vs
dHMuICBJZiBJIGRpZG4ndCBzY3JldyBpdCwgaXQgZ2l2ZXMgDQp1bmlmb3JtIHJlc3VsdHMu
DQoNCj4gDQo+IHJhbmRfZGV0ZXJtaW5pc3RpYygpIHdvdWxkIGdldCB0aGUgcmlnaHQgaWRl
YSBhY3Jvc3MgYnV0IGlzIGxlbmd0aHkuDQo+IA0KPiBSZWdhcmRzLA0KPiBCcmFuZGVuDQoN
CkNoZWVycywNCg0KQWxleA0KDQo+IA0KPiBQLlMuIEkgYXNrZWQgQmVydHJhbmQgdG8gdGFn
IGdyb2ZmIDEuMjMuMC5yYzIgZWFybGllciB0b2RheS4gIEhhcHB5DQo+ICAgICAgIGJlbGF0
ZWQgQm94aW5nIERheS4gIDstKQ0KDQpJIHNhdyA6KSAgQlRXLCB0aGUgQWRhIHRoaW5neSwg
aWYgaXQncyBvcGluaW9uYXRlZCBhcyB5b3Ugc2FpZCwgaXQgd2lsbCBoZWxwIA0KY29uc2lk
ZXJhYmx5IHRvIG1ha2UgaXQgZWFzaWVyIHRvIHJlYWQgOykNCg0KLS0gDQo8aHR0cDovL3d3
dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------SjBeIm3IJSAWEMGi06af1x6v--

--------------0OSOvdHcPxVkMozrMU5cjJFn
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOrkKgACgkQnowa+77/
2zJxgBAAi9MMtqtGRfpEBScTZS+DzHTdKgGF4BTXSfGcLunzg8qCxBf7VjXQaSN3
rSqRXJU33h7kLOGxN7oP2L/anUJFJQysoSErVVBK4Snh9KYuBQu9s1EmIyQicSAQ
bzYQyt53K1rJKM8+TIvrEONjzq+jdYmcjVo5HXLujs1zGJplTM9wblr7s2G4fi/4
nydoz4yTPcWNHd3zKldDEC/f4Rft/WR8Bwwi3Wq8ZCVjJwe3jiH9hhv9juJpDHgk
OyFlGJfRhJqOAVPqd4bbJbm3blh02E08Zhs1m7VbRXOptPsEVdfyOkyzAGyvdO6u
AN0xbwMtNwdAVJyIv2no2fmndWAZ39t9JkfL/eR8y051UMvs5zmuurffIYq/eRC9
b36Q+96UFMUNSzY08CagyFldAvSrz0GvqElWgyHFMHoQxaDUvtH93QeEKbQmO4A4
rS5S5QC4hW4msVKXZQPBRhapUi7Z6K9zRwfxLsBMSZW77ufV9Hptb9sN4bGPbwLi
1WaFuUJwbOkpKtoaNJzoe5PX3u/zZL7TQvo4yoqMBYtt6PTlHqwxKHT+Sr1fnu2a
nKto9PJSNku26xl/u8Oqtvxlr63w1QOmr2+Ln2wph6VytXE9nyx/Ea2RqgYJfPkx
VOBaNqOfuAmxAPEZrKdgnFJWeb/K+NQQO3qEQwQTxoxVnr9ySGc=
=9Im7
-----END PGP SIGNATURE-----

--------------0OSOvdHcPxVkMozrMU5cjJFn--
