Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 129B7586B8C
	for <lists+linux-man@lfdr.de>; Mon,  1 Aug 2022 15:03:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231950AbiHANDd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 1 Aug 2022 09:03:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39232 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232917AbiHANDd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 1 Aug 2022 09:03:33 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50C872181B
        for <linux-man@vger.kernel.org>; Mon,  1 Aug 2022 06:03:32 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id r83-20020a1c4456000000b003a3a22178beso3911932wma.3
        for <linux-man@vger.kernel.org>; Mon, 01 Aug 2022 06:03:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:cc:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=1QyaeJlR5Jd96bS/mtoDEBdN36YMIlhOuHr+6JWambk=;
        b=p0My2DCa/79PybXc8ld0UeUIOsyO8dU/gQ/iF0cMSocTdM8PXwIoEbiO6cHYLzoLCS
         PmqQFZ2H43B784vC6cBM7Zl0lh594El4ThF+Je8sNiIMiANBttQbk5gv16L7u+pkSWf4
         HX18X5axrcRVSVwzPiFlJh3+Rg6yAfIHQWFETABaRN9e5IoezUyuZieTTSXKBu+xFr+y
         Q9zgnjdZDzgIwtHVgclpqUG4CN1a80wBsDOBwsL5dPO3RthCab7+LG+QOmj3ZUnYs46H
         CVENbSlW5sW0hwWscr3riMbAa6uD0PQTVebcXsSTt6ijDMbYZkX0hFmubU7tjkCx0ty2
         nvIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:cc:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=1QyaeJlR5Jd96bS/mtoDEBdN36YMIlhOuHr+6JWambk=;
        b=L/Z742PTFZtEK+ee94A+0F5KwtF1Xvu1arG0wexAXyaEv/b3zSUoeBBYxGV+tlKbmb
         z1JMZ4fnD2FwTQkCT8f/VD5BqvyBdQnVhlUepfmO6ZTza8kHKsxVwfwrxhavHHoU59IQ
         VkKjInk//s5D8dqmHJhmGa8k7rZPwHxpvpdc/i5V8nD1/dp8TJDUYp0dqvddGWrJw9Gr
         bCb/57Q9tq81TVokdaiQUq92U4ANfH1apF/yMrTTZzFscluMoqFokxmtD802yUuaJFGf
         puL/nHXfWtgTP40kEtJBdlRaFRS+mqnTHpfcnzI3gjjLbERXwZjEfS/15iQXaiZ1uHkE
         ZWDQ==
X-Gm-Message-State: AJIora/q/e9cdmRsUI2/sr2mvYTxbl1q9EefE7Mv8bNL0BeKpmj455+S
        UpyM2D3XVmjYWsYY7CjG7YmgwiK4qro=
X-Google-Smtp-Source: AGRyM1umu+F3hESPFoJCakIpmUXrtYs/CLfXmHqKDuNXeH8Ol2yF8cnvQAQ/PCTixg6j8joPuV4iEQ==
X-Received: by 2002:a05:600c:a41:b0:39c:1512:98bd with SMTP id c1-20020a05600c0a4100b0039c151298bdmr11347203wmq.88.1659359010761;
        Mon, 01 Aug 2022 06:03:30 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id q5-20020a1ce905000000b003a320e6f011sm14834393wmc.1.2022.08.01.06.03.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Aug 2022 06:03:30 -0700 (PDT)
Message-ID: <d1e19ee4-d75a-86a5-e6c1-32dfd7460a3c@gmail.com>
Date:   Mon, 1 Aug 2022 15:03:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.2
Subject: Re: [PATCH 1/6] getrlimit.2: tfix
Content-Language: en-US
To:     =?UTF-8?B?xaB0xJtww6FuIE7Em21lYw==?= <stepnem@gmail.com>,
        linux-man@vger.kernel.org
References: <20220729114506.1669153-1-stepnem@gmail.com>
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220729114506.1669153-1-stepnem@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------36hDbtwE50K2GCD109IzEhp8"
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
--------------36hDbtwE50K2GCD109IzEhp8
Content-Type: multipart/mixed; boundary="------------bHKyY0zO1YxlpjiKz6EnDALd";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?xaB0xJtww6FuIE7Em21lYw==?= <stepnem@gmail.com>,
 linux-man@vger.kernel.org
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Message-ID: <d1e19ee4-d75a-86a5-e6c1-32dfd7460a3c@gmail.com>
Subject: Re: [PATCH 1/6] getrlimit.2: tfix
References: <20220729114506.1669153-1-stepnem@gmail.com>
In-Reply-To: <20220729114506.1669153-1-stepnem@gmail.com>

--------------bHKyY0zO1YxlpjiKz6EnDALd
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgxaB0xJtww6FuLA0KDQpPbiA3LzI5LzIyIDEzOjQ1LCDFoHTEm3DDoW4gTsSbbWVjIHdy
b3RlOg0KPiBTaWduZWQtb2ZmLWJ5OiDFoHTEm3DDoW4gTsSbbWVjIDxzdGVwbmVtQGdtYWls
LmNvbT4NCg0KSSBhcHBsaWVkIHRoZSA2IHBhdGNoZXMgZnJvbSB0aGUgcGF0Y2ggc2V0LCBp
bmNsdWRpbmcgdGhlIGNvbnRyb3ZlcnNpYWwgDQpcfiB2cyAnXCAnIG9uZS4gIEkgdGhpbmsg
dGhhdCBmaXggaXMgYmV0dGVyIGFzIGEgc2VwYXJhdGUgb25lLCB3aGljaCANCnNob3VsZCBp
bmNsdWRlIHJlZmVyZW5jZXMgdG8gdGhlIFNJIHRoYXQgSSBxdW90ZWQuDQoNCkknbGwgdHJ5
IHRvIGFwcGx5IGEgZ2xvYmFsIGZpeCBhYm91dCBzcGFjaW5nLiAgQW55d2F5LCBjb3VsZCB5
b3UgcGxlYXNlIA0Kc2hhcmUgdGhlIGdyZXAgY29tbWFuZHMgeW91IHVzZWQgdG8gZmluZCBp
dD8gIEl0IG1pZ2h0IGhlbHAgbWUgc2VlIHlvdSANCmNvbW1hbmQsIGluIGNhc2UgSSBtaXNz
IHNvbWUgY29ybmVyIGNhc2VzLg0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KPiAtLS0NCj4gICBt
YW4yL2dldHJsaW1pdC4yIHwgNCArKy0tDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0
aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9tYW4yL2dldHJs
aW1pdC4yIGIvbWFuMi9nZXRybGltaXQuMg0KPiBpbmRleCA2Y2RhNGQ0OGE5ODIuLmJkMzMw
Mjg5YThmYyAxMDA2NDQNCj4gLS0tIGEvbWFuMi9nZXRybGltaXQuMg0KPiArKysgYi9tYW4y
L2dldHJsaW1pdC4yDQo+IEBAIC00NTIsMTQgKzQ1MiwxNCBAQCBhbmQNCj4gICAuUFANCj4g
ICBJZiB0aGUNCj4gICAuSSBuZXdfbGltaXQNCj4gLWFyZ3VtZW50IGlzIGEgbm90IE5VTEws
IHRoZW4gdGhlDQo+ICthcmd1bWVudCBpcyBub3QgTlVMTCwgdGhlbiB0aGUNCj4gICAuSSBy
bGltaXQNCj4gICBzdHJ1Y3R1cmUgdG8gd2hpY2ggaXQgcG9pbnRzIGlzIHVzZWQgdG8gc2V0
IG5ldyB2YWx1ZXMgZm9yDQo+ICAgdGhlIHNvZnQgYW5kIGhhcmQgbGltaXRzIGZvcg0KPiAg
IC5JUiByZXNvdXJjZSAuDQo+ICAgSWYgdGhlDQo+ICAgLkkgb2xkX2xpbWl0DQo+IC1hcmd1
bWVudCBpcyBhIG5vdCBOVUxMLCB0aGVuIGEgc3VjY2Vzc2Z1bCBjYWxsIHRvDQo+ICthcmd1
bWVudCBpcyBub3QgTlVMTCwgdGhlbiBhIHN1Y2Nlc3NmdWwgY2FsbCB0bw0KPiAgIC5CUiBw
cmxpbWl0ICgpDQo+ICAgcGxhY2VzIHRoZSBwcmV2aW91cyBzb2Z0IGFuZCBoYXJkIGxpbWl0
cyBmb3INCj4gICAuSSByZXNvdXJjZQ0KPiANCj4gYmFzZS1jb21taXQ6IDVmYTJlY2I1MzY1
NmM5ZmRjYmQ1YTIxOTcyOTA2ZTNkYTMzY2I1MDQNCg0KLS0gDQpBbGVqYW5kcm8gQ29sb21h
cg0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------bHKyY0zO1YxlpjiKz6EnDALd--

--------------36hDbtwE50K2GCD109IzEhp8
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLnzyEACgkQnowa+77/
2zJUIw//cMpgdBiFJX4GW8pvFYEfogDm4hLpq80ZH8OKG+sE8WNLQi6b244KxxA4
jvBfXQTcjVxUa4hkNOa6i3b+PK006hoA0YIT8v9cjvcpwVJy6EX18RS3bCcFcbhp
KgsQvtQ5C5Uv0weWIyKXfmvS0exKQjNsjhhp9VH/5I5yhvOhqM/aEzUu13c1nTLT
oBCopKdX1ooUTdUyOcfQxDj0p9HZvdG9UFAZkAfNoODHJQp6KByJVBrp++vAo5x/
VI7B0MxxoZjGEUWrMI40SkN4edDw0n61A9s5zBZ7vzGgTjLUr9zO7Z2/QEgNVKIj
RYzFD06QpVfCnydMMSDhwZTU1E34awLoB+HkK1vYgso173ghWv1NHRd/kzteB+bk
Acs6ScyVlUhmwSGHd8uBEznKidMjvKfquKubXEyaPLoWfhaxfyAiPBWD6axwSb66
rdtTKXkbkT1BmEo1j8+Mqs8X/kotJxdsu4ZPlmlwSPwTl182Y1Br1XL9IZLL9NRy
NObxAPC41Sf3Q84f9dZMTq+/ulzfCRBUIT1HBmBTtQpn10yBZ1ZmPCYhmvOrgl0O
JZPVZZUfMl6SESqnRLwJPmoHvm4J1e/gHPmKcPjswr5OsM+TYIqDTVgRWvhuBVIP
WHti21vvsevW291q5CFIGFFRGEJ8sFWZn+NzY3+tsfViNFis0/M=
=l9yt
-----END PGP SIGNATURE-----

--------------36hDbtwE50K2GCD109IzEhp8--
