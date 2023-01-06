Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0C1B6660A58
	for <lists+linux-man@lfdr.de>; Sat,  7 Jan 2023 00:41:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235845AbjAFXlS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 6 Jan 2023 18:41:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51014 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236453AbjAFXlJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 6 Jan 2023 18:41:09 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B83090879
        for <linux-man@vger.kernel.org>; Fri,  6 Jan 2023 15:41:02 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id o15so2120440wmr.4
        for <linux-man@vger.kernel.org>; Fri, 06 Jan 2023 15:41:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ys22f2zkqDtsI+I/lHkQoSadZjHB4hQPD+VO5rn26PE=;
        b=b8P6NrPNIAvhbrwzg0RHEzkHDVektHpSHYuwLJF/SHvCrC6KwVosVoKOVDq6FN6Bwv
         5EVFf0FTadTpGTCAO25h6lsiLjYLDzXUG+OqiEYIb3Nc53HjcI40wYpZe3biqFH+6/0O
         yuDJ6+iqlgo/EHXGATByqTXDgSQf+HFjX1n/6Kq2jpOVesUk3IgHyWQ3rftxuGFw8rwX
         ko9VWbVjICbxbkXKkwa32PPOLNLetPxuz4SukKNQHc/QsZ15JqYOdq3DSQ5BynU5w7aj
         +rDXdPvmVpeevRkrFY+I0FXDAy+rQi3GyWHhJdFqMqL7LFIneQYdrZ1xCFt8PMLePEue
         FtLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ys22f2zkqDtsI+I/lHkQoSadZjHB4hQPD+VO5rn26PE=;
        b=ezQ1LT4hYSo3j4RS6Wi8nOxhL6hrbOf/3Yr9tBCtFHsAONW5pkhLpW8Iy4Qppgi0ML
         tbbqQNwANcjyHSp+S0u4QHeNHKwRgor/pUtkbUPHi4vuKErHYFAs6wg9XI2d+EBHCFF/
         AnfHnK7/TIPPdvlvdT5kUfiu6sGEk96Jx9cMunsulc7Px3H/78mcZeC830DN3YylnzAh
         gpiyfsMoLOFQ//fePCGRVLhpU2d9RKR2h65xrU7pgpaz1DBSrc24nUExida/KwD1zW3b
         VMiJFAADJ97IPCF5/XpFaNjUdKIOAASF4L70+VeEGX5YRZOBH3wGQzqaUlkfwMPZ1nfl
         BE+w==
X-Gm-Message-State: AFqh2kqWlSZRz8lkywLQMbKNqzK1LfuyNRKfmtNBP1CWV6g2tLOTY69l
        TfoXJzB6baImUMPkdG4xrPw=
X-Google-Smtp-Source: AMrXdXu1wibkZ4zUGq9/jKWk1q7FbMoZ9bdnlgoopNKthYU2qYZPnMzWiUyModD3Ul6kPQ7P2/X2mQ==
X-Received: by 2002:a05:600c:3b22:b0:3c6:e63e:814b with SMTP id m34-20020a05600c3b2200b003c6e63e814bmr40349281wms.2.1673048460446;
        Fri, 06 Jan 2023 15:41:00 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id n14-20020a05600c3b8e00b003b49bd61b19sm8888271wms.15.2023.01.06.15.40.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Jan 2023 15:40:59 -0800 (PST)
Message-ID: <d5e09698-fe05-e33c-045d-2f10d0a6faf1@gmail.com>
Date:   Sat, 7 Jan 2023 00:40:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v3 07/13] libc.7: ffix
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230105225303.bpo7ot4zcsthw2gv@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230105225303.bpo7ot4zcsthw2gv@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------TZ0RRanaRi6o6i06oSRjcdDD"
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
--------------TZ0RRanaRi6o6i06oSRjcdDD
Content-Type: multipart/mixed; boundary="------------xBa0bJN6ZowKPaaD2FxKryAo";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <d5e09698-fe05-e33c-045d-2f10d0a6faf1@gmail.com>
Subject: Re: [PATCH v3 07/13] libc.7: ffix
References: <20230105225303.bpo7ot4zcsthw2gv@illithid>
In-Reply-To: <20230105225303.bpo7ot4zcsthw2gv@illithid>

--------------xBa0bJN6ZowKPaaD2FxKryAo
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KSSd2ZSBhbHJlYWR5IHB1c2hlZCB0aGUgY2hhbmdlcyB0byBrZXJu
ZWwub3JnLiAgUGxlYXNlIHJlYmFzZSBhbmQgcHJlcGFyZSB2NCANCndoZW4geW91J3JlIHJl
YWR5Lg0KDQpPbiAxLzUvMjMgMjM6NTMsIEcuIEJyYW5kZW4gUm9iaW5zb24gd3JvdGU6DQo+
ICogU2V0IHBhZ2UgdG9waWMgaW4gbG93ZXJjYXNlLg0KPiAqIFVzZSB0eXBvZ3JhcGhlcidz
IHF1b3RhdGlvbiBtYXJrcyBpbnN0ZWFkIG9mICciJyBmb3IgcXVvdGF0aW9uLg0KPiAqIEh5
cGVybGluayB0aGUgdGV4dCAiR05VIEMgTGlicmFyeSIgdG8gaXRzIHdlYnNpdGUuDQo+IA0K
PiBTaWduZWQtb2ZmLWJ5OiBHLiBCcmFuZGVuIFJvYmluc29uIDxnLmJyYW5kZW4ucm9iaW5z
b25AZ21haWwuY29tPg0KPiAtLS0NCj4gICBtYW43L2xpYmMuNyB8IDEzICsrKysrKystLS0t
LS0NCj4gICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygt
KQ0KPiANCj4gZGlmZiAtLWdpdCBhL21hbjcvbGliYy43IGIvbWFuNy9saWJjLjcNCj4gaW5k
ZXggNWRlYmEwYThlLi40M2VjMDI2OWYgMTAwNjQ0DQo+IC0tLSBhL21hbjcvbGliYy43DQo+
ICsrKyBiL21hbjcvbGliYy43DQo+IEBAIC0zLDIxICszLDIyIEBADQo+ICAgLlwiDQo+ICAg
LlwiIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBMaW51eC1tYW4tcGFnZXMtY29weWxlZnQN
Cj4gICAuXCINCj4gLS5USCBMSUJDIDcgKGRhdGUpICJMaW51eCBtYW4tcGFnZXMgKHVucmVs
ZWFzZWQpIg0KPiArLlRIIGxpYmMgNyAoZGF0ZSkgIkxpbnV4IG1hbi1wYWdlcyAodW5yZWxl
YXNlZCkiDQo+ICAgLlNIIE5BTUUNCj4gICBsaWJjIFwtIG92ZXJ2aWV3IG9mIHN0YW5kYXJk
IEMgbGlicmFyaWVzIG9uIExpbnV4DQo+ICAgLlNIIERFU0NSSVBUSU9ODQo+IC1UaGUgdGVy
bSAibGliYyIgaXMgY29tbW9ubHkgdXNlZCBhcyBhIHNob3J0aGFuZCBmb3INCj4gLXRoZSAi
c3RhbmRhcmQgQyBsaWJyYXJ5IiwNCj4gK1RoZSB0ZXJtIFwobHFsaWJjXChycSBpcyBjb21t
b25seSB1c2VkIGFzIGEgc2hvcnRoYW5kIGZvcg0KPiArdGhlIFwobHFzdGFuZGFyZCBDIGxp
YnJhcnlcKHJxDQoNClRoZSBjb21tYSB3YXMgYWNjaWRlbnRhbGx5IHJlbW92ZWQsIHJpZ2h0
Pw0KDQo+ICAgYSBsaWJyYXJ5IG9mIHN0YW5kYXJkIGZ1bmN0aW9ucyB0aGF0IGNhbiBiZSB1
c2VkIGJ5IGFsbCBDIHByb2dyYW1zDQo+ICAgKGFuZCBzb21ldGltZXMgYnkgcHJvZ3JhbXMg
aW4gb3RoZXIgbGFuZ3VhZ2VzKS4NCj4gICBCZWNhdXNlIG9mIHNvbWUgaGlzdG9yeQ0KPiAg
IChzZWUgYmVsb3cpLA0KPiAtdXNlIG9mIHRoZSB0ZXJtICJsaWJjIg0KPiArdXNlIG9mIHRo
ZSB0ZXJtIFwobHFsaWJjXChycQ0KPiAgIHRvIHJlZmVyIHRvIHRoZSBzdGFuZGFyZCBDIGxp
YnJhcnkgaXMgc29tZXdoYXQgYW1iaWd1b3VzIG9uIExpbnV4Lg0KPiAgIC5TUyBnbGliYw0K
PiAtQnkgZmFyIHRoZSBtb3N0IHdpZGVseSB1c2VkIEMgbGlicmFyeSBvbiBMaW51eCBpcyB0
aGUgR05VIEMgTGlicmFyeQ0KPiArQnkgZmFyIHRoZSBtb3N0IHdpZGVseSB1c2VkIEMgbGli
cmFyeSBvbiBMaW51eCBpcyB0aGUNCg0KSSB0aGluayB0aGlzICJieSBmYXIiIGRlc2VydmVz
IGEgY29tbWEuDQoNCkNoZWVycywNCg0KQWxleA0KDQo+ICAgLlVSIGh0dHA6Ly93d3cuZ251
Lm9yZ1w6L3NvZnR3YXJlXDovbGliYy8NCj4gK0dOVSBDIExpYnJhcnkNCj4gICAuVUUgLA0K
PiAgIG9mdGVuIHJlZmVycmVkIHRvIGFzDQo+ICAgLklSIGdsaWJjIC4NCj4gQEAgLTUwLDcg
KzUxLDcgQEAgdGhlcmUgd2FzIGZvciBhIHdoaWxlDQo+ICAgYSBmb3JrIG9mIGdsaWJjIDEu
eCBjcmVhdGVkIGJ5IExpbnV4IGRldmVsb3BlcnMgd2hvIGZlbHQgdGhhdCBnbGliYw0KPiAg
IGRldmVsb3BtZW50IGF0IHRoZSB0aW1lIHdhcyBub3Qgc3VmZmljaW5nIGZvciB0aGUgbmVl
ZHMgb2YgTGludXguDQo+ICAgT2Z0ZW4sDQo+IC10aGlzIGxpYnJhcnkgd2FzIHJlZmVycmVk
IHRvIChhbWJpZ3VvdXNseSkgYXMganVzdCAibGliYyIuDQo+ICt0aGlzIGxpYnJhcnkgd2Fz
IHJlZmVycmVkIHRvIChhbWJpZ3VvdXNseSkgYXMganVzdCBcKGxxbGliY1wocnEuDQo+ICAg
TGludXggbGliYyByZWxlYXNlZCBtYWpvciB2ZXJzaW9ucyAyLCAzLCA0LCBhbmQgNSwNCj4g
ICBhcyB3ZWxsIGFzIG1hbnkgbWlub3IgdmVyc2lvbnMgb2YgdGhvc2UgcmVsZWFzZXMuDQo+
ICAgTGludXggbGliYzQgd2FzIHRoZSBsYXN0IHZlcnNpb24gdG8gdXNlIHRoZSBhLm91dCBi
aW5hcnkgZm9ybWF0LA0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVz
Lz4NCg==

--------------xBa0bJN6ZowKPaaD2FxKryAo--

--------------TZ0RRanaRi6o6i06oSRjcdDD
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmO4sYIACgkQnowa+77/
2zL/Iw//ZgUSUkkuHymRebNnsw2tskbAFJDyuaW5cnK+mDDEAJTT5Ij8PE5QoRtU
CY6naMj3XtIcRqf+8FdqRAlp0y3nt8yqKP0brS95Fy4bo/RqXPX6hWL+Jv0zxh/O
O1kU2sZGW4pYJc4TdIX9QL2NwFizbafkXY1EryWiux2pGf66362+FFrDJRCi8uNg
SODv4uzRgJNbSihPavRaTCFkD1uXrytgSjO3MLXuG7jRTrWRqfUu0jRxL295yL9j
OPjp0ryP3sshyUx6rS+njp3aPGNS0+YZ0PkgiEEDYsnFuOKyBmTzYb26E9UU8aSg
G5Q7YTvQxm4MvH71K6XqW7Bj1buzYhjrbFCQsSB6/bVv2YRKp4i0aDfAPohZiIXX
BCXJJ9jnMdaIcOeo2YJ6KMWF8h3tvXRBPl3v6g0sXAVfLDwGv8wcTsMr/1Kcs5cy
QKEMMFV8DFVDP/v6ebDUDhUVD89+05FvCoeRP9jvF1TvKfBtVSOcpWxS6/rs8ghr
MseNGYPjANTDcb0Rt4FdjMRmSyw966d2HbGSaiICMbWJ3o8Jo79TbAmniqXmrmNi
UxaA90ZHLiFeMh8sH6SJ/GyZu9xoP1z8LF55zZuVmMVZPfRdjNw31u2x461mcDOA
OY/SHEfrW8CtUjmTH51T5TQ+5jBi6SkvRFCojWbuVOTCdSFqUcY=
=USU9
-----END PGP SIGNATURE-----

--------------TZ0RRanaRi6o6i06oSRjcdDD--
