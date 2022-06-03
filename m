Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5826553CD34
	for <lists+linux-man@lfdr.de>; Fri,  3 Jun 2022 18:29:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238628AbiFCQ3M (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 3 Jun 2022 12:29:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40280 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235093AbiFCQ3M (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 3 Jun 2022 12:29:12 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9D6251337
        for <linux-man@vger.kernel.org>; Fri,  3 Jun 2022 09:29:09 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id h5so11102799wrb.0
        for <linux-man@vger.kernel.org>; Fri, 03 Jun 2022 09:29:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=8P3IUAJ6Namx5ukv8wI3LNVD5ZQ5v7zZNEIhbbGFd8o=;
        b=khiB+NR7/QV5sYQElbh7m3NijiJkwdg79znfzOTG9oPDK53aJLN8Xtrk4DGjBiLCAu
         aVEUej6Z7mAF0m1oAd6/5nm7iIyIrcopxUtkJh7OpTCtO3YnTHNMhHkfZaHWQCpmaopC
         zAe2APJuGzMaGXosJ5QUQydpHTlVJ94/+zFO26cLpgsyfypNSMAC9JmRE9h2fDWkfFP0
         1shXx/t5ZGConYHSkjaIgo3vSF8IGhwrxnBmAt/tghIYNT1HKJKZzdCc4hSMmdlRDJDX
         g5v/14eZLy4ifCiApiRNnPr7XsMVxR00RK0+GPaiHStGyp2042FUYbZVa52sdxSxcSEA
         UJqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=8P3IUAJ6Namx5ukv8wI3LNVD5ZQ5v7zZNEIhbbGFd8o=;
        b=Fahwb1hZ85dzlfsvk+rx1qTYKkRMCMGBy0E9Ye2gea+uTokU0Az7FjlWRwXhHEvdGa
         9gO+YP89VnlGbLf4/+1PHdz8UeyUjlu3sk2u2PfE3yrPsEp2g56OCUxOYj5v5qFaAJf8
         3by1BOc7U4269pqp3fjaILz1hPlLu4g89M6XNh2QzXgUimHhxxBOgqYdhL+xkAyVEGAf
         iGrkakYn4bSIauX0DptFsp+7I2FdLDBQvwkimgDpFLkv/DVNhxxlNuJosSv2Ayb8kmD4
         LWfQnQwgkxAHTblR+mXfpkWsVuqfVhBTUpKlrDAJgIwydEAflwlMbsKGi42w4tdFuOJb
         NMew==
X-Gm-Message-State: AOAM532cyHtm6oyAHrpTXdHVNV4/1/nSn8/AH8WL3M0hcau952qi7KZm
        pdhpVy1FLIdmW7Q111gtmss=
X-Google-Smtp-Source: ABdhPJzxUXK+4gLA95/SKWGCOuhPXY9ydCmPjwAGkYlFZmBglqsDhxIoJf2jDRKo5NbocGPNQJ1/mA==
X-Received: by 2002:adf:fbce:0:b0:20f:ca5b:c4cf with SMTP id d14-20020adffbce000000b0020fca5bc4cfmr8846058wrs.421.1654273748428;
        Fri, 03 Jun 2022 09:29:08 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id z13-20020a5d44cd000000b0020e6c51f070sm7974619wrr.112.2022.06.03.09.29.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Jun 2022 09:29:07 -0700 (PDT)
Message-ID: <1e244741-f436-7d06-3578-27235ca35a5c@gmail.com>
Date:   Fri, 3 Jun 2022 18:29:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [patch] netlink.7: tfix
Content-Language: en-US
To:     Aswin C <realc@protonmail.com>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
References: <qEqafaXK8G2yiM_fV30PRia0b4c3xTBI_8OxyNnH2jvKzUUUqfOqR88UcxUT4mjOFikCuPmQfDGiJTPFHFrlEp_k7ePwNNkMY7J4-ql5MH8=@protonmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <qEqafaXK8G2yiM_fV30PRia0b4c3xTBI_8OxyNnH2jvKzUUUqfOqR88UcxUT4mjOFikCuPmQfDGiJTPFHFrlEp_k7ePwNNkMY7J4-ql5MH8=@protonmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------MvAG3iOtadJT8vdDcXoDU8iy"
X-Spam-Status: No, score=-3.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------MvAG3iOtadJT8vdDcXoDU8iy
Content-Type: multipart/mixed; boundary="------------Iof1lPQ150wvfrPn09vaH2k7";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Aswin C <realc@protonmail.com>,
 "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Message-ID: <1e244741-f436-7d06-3578-27235ca35a5c@gmail.com>
Subject: Re: [patch] netlink.7: tfix
References: <qEqafaXK8G2yiM_fV30PRia0b4c3xTBI_8OxyNnH2jvKzUUUqfOqR88UcxUT4mjOFikCuPmQfDGiJTPFHFrlEp_k7ePwNNkMY7J4-ql5MH8=@protonmail.com>
In-Reply-To: <qEqafaXK8G2yiM_fV30PRia0b4c3xTBI_8OxyNnH2jvKzUUUqfOqR88UcxUT4mjOFikCuPmQfDGiJTPFHFrlEp_k7ePwNNkMY7J4-ql5MH8=@protonmail.com>

--------------Iof1lPQ150wvfrPn09vaH2k7
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQXN3aW4sDQoNCk9uIDYvMi8yMiAwOTowNywgQXN3aW4gQyB3cm90ZToNCj4gRml4IHRo
ZSBzcGVsbGluZyBvZiB0aGUgd29yZCAnYXBwZW5kZWQnDQo+IA0KPiBTaWduZWQtb2ZmLWJ5
OiBBc3dpbiBDIDxyZWFsY0Bwcm90b25tYWlsLmNvbT4NCg0KVGhhbmtzIGZvciB0aGUgcGF0
Y2guICBCdXQgdGhpcyB3YXMgYWxyZWFkeSBmaXhlZCBpbiBteSB0cmVlLg0KU2VlIA0KPGh0
dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvc3JjL2FseC9saW51eC9tYW4tcGFnZXMv
bWFuLXBhZ2VzLmdpdC9jb21taXQvbWFuNy9uZXRsaW5rLjc/aWQ9NzM3MWVmOWU0YWFlYTQ2
OTJmYjUyNjk5MzQxMmM2YjAzYzY3YzgxYj4NCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCj4gLS0t
DQo+ICAgbWFuNy9uZXRsaW5rLjcgfCAyICstDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvbWFuNy9uZXRs
aW5rLjcgYi9tYW43L25ldGxpbmsuNw0KPiBpbmRleCA2YjA0ZmVhZDkuLjI5OTFlYzdlZCAx
MDA2NDQNCj4gLS0tIGEvbWFuNy9uZXRsaW5rLjcNCj4gKysrIGIvbWFuNy9uZXRsaW5rLjcN
Cj4gQEAgLTE5MSw3ICsxOTEsNyBAQCBzdHJ1Y3R1cmUsDQo+ICAgLkIgTkxNU0dfRE9ORQ0K
PiAgIG1lc3NhZ2UgdGVybWluYXRlcyBhIG11bHRpcGFydCBtZXNzYWdlLg0KPiAgIEVycm9y
IG1lc3NhZ2VzIGdldCB0aGUNCj4gLW9yaWdpbmFsIHJlcXVlc3QgYXBwZW5lZCwgdW5sZXNz
IHRoZSB1c2VyIHJlcXVlc3RzIHRvIGNhcCB0aGUNCj4gK29yaWdpbmFsIHJlcXVlc3QgYXBw
ZW5kZWQsIHVubGVzcyB0aGUgdXNlciByZXF1ZXN0cyB0byBjYXAgdGhlDQo+ICAgZXJyb3Ig
bWVzc2FnZSwgYW5kIGdldCBleHRyYSBlcnJvciBkYXRhIGlmIHJlcXVlc3RlZC4NCj4gICAu
UFANCj4gICAuaW4gKzRuDQo+IC0tDQo+IDIuMzYuMQ0KDQotLSANCkFsZWphbmRybyBDb2xv
bWFyDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------Iof1lPQ150wvfrPn09vaH2k7--

--------------MvAG3iOtadJT8vdDcXoDU8iy
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmKaNtIACgkQnowa+77/
2zIoOhAAgrtKauSZ0yEHNmB/62yfKk8vFFrlv0up2+7OZLzIaQGt2TXJoh+MN0t0
dKsUl0XKjQv3l1XBrQqEZodTe9wOQ52X33oqEQADmFZCXRhUT0gm6qpr9jKc91Wt
TTPT5Ywic6soZs8CahHvGo9iUew6bOEu5IWRKPwMDzD41x9A6SXSb9s6TzhRB+hY
Fmy0E/ovBvxInvJZeuKcRy60gAwwFyjnpY1wLijBMoV2K0j/vTLnxf0BCP1Svy3G
KMWJEtSXMDZhkdzDs634SJw7nmLOZzzAldxuwsC3vcc5OKXBS384yEIdx2uBnju4
p+8qP5UDX2CM1w42uSS7clzutToJU/Mso+coCBSwiyCN4i9g3MuANY824kSqOqjB
3KlHHc3HQLDjje25P/1p46DRPMAdi/SwlzMXsk0T/aVHgUnVVTx/bgJBDFv0ro+u
+ZERr7ffdb3Xm5JjcZyZZajnx4Qbaz8vwRnruB5GU5WXd1xsGMWlaNNDR/GJ5leK
vk7fPtEqXQrjRMEA7adERjsvXQmK6jWsZy5CI4jOb2JanGWJ683fZ7VmSnBAAzTT
3Ue7COB/DNhSaqfpJiv2ehliOGlR9h5K+6Ctdv1xS/RJtDwl2UXCROlPXFKPvtFD
cY5p9Rsv9hUPaC59ODFMtDkkru/KMauXiXsR7blROoi48TolbcU=
=jSS0
-----END PGP SIGNATURE-----

--------------MvAG3iOtadJT8vdDcXoDU8iy--
