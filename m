Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 413425951C9
	for <lists+linux-man@lfdr.de>; Tue, 16 Aug 2022 07:16:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232896AbiHPFQg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 16 Aug 2022 01:16:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56864 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231979AbiHPFQS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 16 Aug 2022 01:16:18 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 177035FF78
        for <linux-man@vger.kernel.org>; Mon, 15 Aug 2022 14:34:55 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id bs25so10475146wrb.2
        for <linux-man@vger.kernel.org>; Mon, 15 Aug 2022 14:34:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=RgJchO/lCOc1w5baZtj9HXY3LNnweoPDqkVUdUKobEw=;
        b=S4cZy8uryWpXLZ+8OcovuBd3I8ma+vQsY1pxUppswoJ+n7imqq9V5GPvmGqoJTxkay
         Zp8TdAYGV6EWMDSho/lRSPu2qMPLVDG37z7fuhBeqbpEUZ1UoC9GgClYDELp3k9t1iK0
         DDQXKhamOx0Gr7Q+/LFkNveDvlobHA4hKIHFF8Al4B7FHn5y2AfMIPNcCLsb18lGyqMn
         8nTI8KpNUAiuD6gB6W5blBVWPPXQFm3h5MuKwwBXEoGBUQOySdbRpuLh3cefwFDaeLl2
         rB+9wJxuFBixChnN066Wtu16+6C0GQhdVaZfJyPvgLPxXYufq7HN9hDzuiRWvC4vzivx
         MI/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=RgJchO/lCOc1w5baZtj9HXY3LNnweoPDqkVUdUKobEw=;
        b=KO5GwsqsA6wmMcIRNFRFR8hq+pVD2VuuqfjL+QQSeCCqXieDp+V7FfVUJhOiHQX5os
         TfbOaEJnwzrWjqIOG/YCmbxV4e5CUhFSoO1QHc6rUtvClrmkWoYphkEfhvqO6v4i7YME
         bHnB6Pxd9DEgQcbMydxPoJwfrfnfsFZfpzXqM+S1XTKb5BdyBbv9wZJ+xyXiOxUpRDN/
         T5gDDB9U0nvqwZhFzanMfjtnS+PZWfQPl81p8wFpaOhmaBb/9C3+jBUFumEP4B0SPgnx
         /J1nxve6ddWWVswmwgxKsqfoUXQwcxgWn18yEHr7y3xe7SvHKqSC5z2fninGRea18e2n
         mTdA==
X-Gm-Message-State: ACgBeo39ojRPRuwGEwM8eDc8jrLWbQqwop0s9n5TDPaXC7qJ+Q9EatR+
        uEUE5kvSy0niHotnlNnbRKYcvXDrti4=
X-Google-Smtp-Source: AA6agR7RMtc99FeKIXxMI5gBtuqnFeN6iBwtSNicaFywbj/XfBKDGs8bCqB7fzKYRzbgn+w54WnGSQ==
X-Received: by 2002:a05:6000:52:b0:21f:1396:a5f with SMTP id k18-20020a056000005200b0021f13960a5fmr9309853wrx.368.1660599293158;
        Mon, 15 Aug 2022 14:34:53 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id f16-20020adfb610000000b002237fd66585sm8216066wre.92.2022.08.15.14.34.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Aug 2022 14:34:52 -0700 (PDT)
Message-ID: <0e43db38-5c00-5ff2-4395-eca7bb8996a0@gmail.com>
Date:   Mon, 15 Aug 2022 23:34:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH] proc.5: Document idle state in /proc/pid/stat
Content-Language: en-US
To:     Brett Holman <bholman.devel@gmail.com>, linux-man@vger.kernel.org,
        mtk.manpages@gmail.com, peterz@infradead.org
Cc:     markus@trippelsdorf.de
References: <20220808201405.ombk6trwp4p42rri@isa>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220808201405.ombk6trwp4p42rri@isa>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0O3bYB18G9ukJBc0reNWQnRw"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------0O3bYB18G9ukJBc0reNWQnRw
Content-Type: multipart/mixed; boundary="------------8gXUPu6Y4fdyd1dl8lCS48ls";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Brett Holman <bholman.devel@gmail.com>, linux-man@vger.kernel.org,
 mtk.manpages@gmail.com, peterz@infradead.org
Cc: markus@trippelsdorf.de
Message-ID: <0e43db38-5c00-5ff2-4395-eca7bb8996a0@gmail.com>
Subject: Re: [PATCH] proc.5: Document idle state in /proc/pid/stat
References: <20220808201405.ombk6trwp4p42rri@isa>
In-Reply-To: <20220808201405.ombk6trwp4p42rri@isa>

--------------8gXUPu6Y4fdyd1dl8lCS48ls
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJldHQsDQoNCk9uIDgvOC8yMiAyMjoxNCwgQnJldHQgSG9sbWFuIHdyb3RlOg0KPiBT
aWduZWQtb2ZmLWJ5OiBCcmV0dCBIb2xtYW4gPGJob2xtYW4uZGV2ZWxAZ21haWwuY29tPg0K
DQpQYXRjaCBhcHBsaWVkLg0KDQpUaGFua3MsDQoNCkFsZXgNCg0KPiAtLS0NCj4gDQo+IFBy
aW50aW5nIHRhc2sgc3RhdGUgaWRsZSB3aXRoICJJIiB3YXMgYWRkZWQgaW4gMDZlYjYxODQ0
ZDg0MWQwMDMyYTk5NS4NCj4gDQo+IFRoaXMgd2FzIG5vdGljZWQgdG8gYmUgbWlzc2luZyB3
aGlsZSBmaXhpbmcgcGFyc2luZyBjb2RlIGluIGNsb3VkLWluaXQNCj4gKGNvbW1pdCBmNTFj
MzUyZTZjNmE3ZDA1YTYxMzA4YykuDQo+IA0KPiAgIG1hbjUvcHJvYy41IHwgMyArKysNCj4g
ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEv
bWFuNS9wcm9jLjUgYi9tYW41L3Byb2MuNQ0KPiBpbmRleCBmNWE3NzFiMjIuLjVkMjcxMDM3
NyAxMDA2NDQNCj4gLS0tIGEvbWFuNS9wcm9jLjUNCj4gKysrIGIvbWFuNS9wcm9jLjUNCj4g
QEAgLTIxMzUsNiArMjEzNSw5IEBAIFdha2luZyAoTGludXggMi42LjMzIHRvDQo+ICAgUGFy
a2VkIChMaW51eCAzLjkgdG8NCj4gICAuXCIgY29tbWl0IDc0ZTM3MjAwZGU4ZTljNGUwOWI3
MGMyMWMzZjEzYzIwNzFlNzc0NTcNCj4gICAzLjEzIG9ubHkpDQo+ICsuSVAgSQ0KPiArLlwi
IGNvbW1pdCAwNmViNjE4NDRkODQxZDAwMzJhOTk1MGNlN2Y4ZTc4M2VlNDljMGQwDQo+ICtJ
ZGxlIChMaW51eCA0LjE0IG9ud2FyZCkNCj4gICAuUkUNCj4gICAuVFANCj4gICAoNCkgXGZJ
cHBpZFxmUCBcICVkDQoNCi0tIA0KQWxlamFuZHJvIENvbG9tYXINCjxodHRwOi8vd3d3LmFs
ZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------8gXUPu6Y4fdyd1dl8lCS48ls--

--------------0O3bYB18G9ukJBc0reNWQnRw
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmL6u/sACgkQnowa+77/
2zJoYA//fNy407joQVKk6tWTsr8/Q/RrrrsanELguwx+nRBqbAk/qT45g8ObpYH1
30uWHInit5EXh8vKBcL51zwrrXD7QQcFMWcVjKN/Qzpxm6d094SeIXbjgZmZtnes
DDvL4L/bnSRFE1n5pXawnHL27wvuhdb4TUX31JE0bOt3fD3+H9f73AnTJfwMrkgm
Lg/lRrioX+TEaje6tvd+Ep5wp/kvXrYoiAsZsU7DXkLkB98EyGZLMvioevCr6Kof
sMiq0AEHtveHYYjpFcEn1xpmfx9AFXiiWXoT6wq4SzpNbg07z+4j9/hTk9xQXzhZ
GuoaH23SlAY5ZGrmbtVDfzdIMfb0SxQFwA6hzCspi0tafFRVc0FecFTpjNB/FkoX
2nD9nt+PiGYOjMXL7dbSz4P4+i3Wjvgek4UvA0BMYq5+eQOxt/D3DQXwEEkxFYmC
JVHcOjXPtA0q/04Xx65gikQdkHAs3odm0KE4GEZE3JjjZkIKFLow8FCshZ76KQyz
gF5D/MR9IQL7tLuFLpxEk8uM1Z1ayzVVYHaDxoU0Ah54wRqhJs191Fr6x/s3qcqC
cYWhoqB02UJ6X19/BbeTjCKemgcmkhw+ikiwB65gaMZsaXtjJgNK4kqW58myWy9r
WRYsOul/u/yEOR3F9KU2E14oJd6t59n16H9ptxLzkNHGVICsiuU=
=8Kn+
-----END PGP SIGNATURE-----

--------------0O3bYB18G9ukJBc0reNWQnRw--
