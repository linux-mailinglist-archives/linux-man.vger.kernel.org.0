Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 807CF54375F
	for <lists+linux-man@lfdr.de>; Wed,  8 Jun 2022 17:31:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244123AbiFHPaz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Jun 2022 11:30:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43970 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245346AbiFHP3E (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Jun 2022 11:29:04 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E93D941603
        for <linux-man@vger.kernel.org>; Wed,  8 Jun 2022 08:25:59 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id m32-20020a05600c3b2000b0039756bb41f2so11262054wms.3
        for <linux-man@vger.kernel.org>; Wed, 08 Jun 2022 08:25:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=QOLgghDp6iWuD99al1PCvkIL03x2wez5UG5pBe4tffY=;
        b=ONHZ/D2xk8j7LtKsr8NcpHRMAuI4DM8DxrdJacWjOLiUpvfiiLKgGT7vgWL0PWFq7a
         X8zYVmTp9uUJ+a8GxaV2JxvBgjnjjfMmrvvv+ENWYX+JB1QMpnnWpzMHgheo30ZV2WIY
         KXwvaa5arXX7O/Jz9+A+BVahDahvu3RSAI56BwpqQaf7MqudmrzdzA72fgkT+8w/VzTY
         h5hXhCq1uCDjNfOcAD/NH6dPSgNn5LgKIe32Xz9iSNSqAu3G3QNvzShg7O53oCJo7HX8
         5pKD3OB8Z6fO5/JNXpkCaDUWu6OgQByZlnme/putzNLgp/tnlRZfFLfSaO2DVwDjUbsr
         QpIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=QOLgghDp6iWuD99al1PCvkIL03x2wez5UG5pBe4tffY=;
        b=apfJuVBnYMvHudFEhSw9j+lPJ7GtoXdrQ1buIlJd0m6nv42H7lmexU0K5o3/GxOyYp
         kYbkW4XS6OQi2zkw27qmnyLzxR9/jCJd3jA1PZjzxPuw2HjsDLXI2ZsgD1ZNthb9XOer
         /is8JBc+GIN34SleSoLKy5xC0xUcD+dnrnyoW909V+4DSMjAKCu5QsELzVbUuDNsua46
         j09KHVGxhNlnAf+dsiyXRPL9nUbhdQAq0Up4ufTsEo6vhk+pbEM6a1GLkS4ZEmvEsA+R
         pmXOYmytdEh8B9d0A346j5m1jwB7D8BlQ17ToUEk+VbjMhohFsshsX2yU3OvQerrAVIb
         Cdng==
X-Gm-Message-State: AOAM530OubCF0aHES9By8TfuWgIaziNoDRr3/sTAvtTZwQUu2z2TdhVo
        nVW2cjqLJq/C8PQs/IYgFlo=
X-Google-Smtp-Source: ABdhPJyl9BwzGu2utNgul2MJVvyHyXde2oZfxzGJngkwrfGXIgREz5i6m7w1CnN4EFgTl0ivsG06DQ==
X-Received: by 2002:a05:600c:350f:b0:397:7204:ce8e with SMTP id h15-20020a05600c350f00b003977204ce8emr65032973wmq.0.1654701958236;
        Wed, 08 Jun 2022 08:25:58 -0700 (PDT)
Received: from [192.168.157.138] ([62.77.182.180])
        by smtp.gmail.com with ESMTPSA id d14-20020a5d6dce000000b0020c5253d927sm21828852wrz.115.2022.06.08.08.25.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jun 2022 08:25:57 -0700 (PDT)
Message-ID: <06913835-a182-b7bc-d147-6740f5eb1eed@gmail.com>
Date:   Wed, 8 Jun 2022 17:28:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 0/4] mount_setattr.2: updates
Content-Language: en-US
To:     Christian Brauner <brauner@kernel.org>, linux-man@vger.kernel.org
Cc:     Christoph Hellwig <hch@infradead.org>,
        Aleksa Sarai <cyphar@cyphar.com>
References: <20220607133820.1721352-1-brauner@kernel.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220607133820.1721352-1-brauner@kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Pt0ls0v0oG2vlp5WhyXXG97H"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------Pt0ls0v0oG2vlp5WhyXXG97H
Content-Type: multipart/mixed; boundary="------------RNM4cNbeOo4Zz9LKsAcvYYjM";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Christian Brauner <brauner@kernel.org>, linux-man@vger.kernel.org
Cc: Christoph Hellwig <hch@infradead.org>, Aleksa Sarai <cyphar@cyphar.com>
Message-ID: <06913835-a182-b7bc-d147-6740f5eb1eed@gmail.com>
Subject: Re: [PATCH 0/4] mount_setattr.2: updates
References: <20220607133820.1721352-1-brauner@kernel.org>
In-Reply-To: <20220607133820.1721352-1-brauner@kernel.org>

--------------RNM4cNbeOo4Zz9LKsAcvYYjM
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gNi83LzIyIDE1OjM4LCBDaHJpc3RpYW4gQnJhdW5lciB3cm90ZToNCj4gRnJvbTogIkNo
cmlzdGlhbiBCcmF1bmVyIChNaWNyb3NvZnQpIiA8YnJhdW5lckBrZXJuZWwub3JnPg0KPiAN
Cj4gSGV5IGV2ZXJ5b25lLA0KPiANCj4gSGVyZSdzIGEgc2V0IG9mIHVwZGF0ZXMgZm9yIHRo
ZSBtb3VudF9zZXRhdHRyLjIgbWFuIHBhZ2UuDQo+IEkgd291bGQgcmVhbGx5IGFwcHJlY2lh
dGUgaXQgaWYgZ3JvZmYgc3ludGF4IGNvdWxkIGJlIGZpeGVkIHVwIGJ5DQo+IG1haW50YWlu
ZXJzLiBJIHRyaWVkIG15IGJlc3QgdG8gcmVtZW1iZXIgdGhlIGd1aWRlbGluZXMgdGhvdWdo
LiA6KQ0KPiANCj4gVGhhbmtzIQ0KPiBDaHJpc3RpYW4NCj4gDQo+IENocmlzdGlhbiBCcmF1
bmVyICg0KToNCj4gICAgbW91bnRfc2V0YXR0ci4yOiBhZGQgYW5kIGV4cGxhaW4gbWlzc2lu
ZyBFQlVTWSBlcnJvcg0KPiAgICBtb3VudF9zZXRhdHRyLjI6IHVwZGF0ZSBjb25kaXRpb25z
IHRvIGNyZWF0ZSBJRC1tYXBwZWQgbW91bnRzDQo+ICAgIG1vdW50X3NldGF0dHIuMjogdXBk
YXRlIGxpc3Qgb2Ygc3VwcG9ydGVkIGZpbGVzeXN0ZW1zDQo+ICAgIG1vdW50X3NldGF0dHIu
MjogZmZpeA0KDQpCVFcsIGZvciBuZXh0IHRpbWUsIGl0IHdvdWxkIGhlbHAgaWYgeW91IHB1
dCB0aGUgcGVvcGxlIHRoYXQgYXJlIENDZCBpbiANCnRoZSB0aHJlYWQgYWxzbyBpbiB0aGUg
cGF0Y2hlcyBhcyAiQ2M6IC4uLiIuICBUaGF0IHdvdWxkIGhlbHAgYSBsb3QhDQoNCkNoZWVy
cywNCg0KQWxleA0KDQo+IA0KPiAgIG1hbjIvbW91bnRfc2V0YXR0ci4yIHwgNjQgKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0NCj4gICAxIGZpbGUgY2hh
bmdlZCwgNTIgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pDQo+IA0KPiANCj4gYmFz
ZS1jb21taXQ6IGFlNmIyMjE4ODJjZTcxYmE4MmZjZGJlMDI0MTlhMjI1MTExNTAyZjANCg0K
DQotLSANCkFsZWphbmRybyBDb2xvbWFyDQpMaW51eCBtYW4tcGFnZXMgY29tYWludGFpbmVy
OyBodHRwOi8vd3d3Lmtlcm5lbC5vcmcvZG9jL21hbi1wYWdlcy8NCmh0dHA6Ly93d3cuYWxl
amFuZHJvLWNvbG9tYXIuZXMvDQo=

--------------RNM4cNbeOo4Zz9LKsAcvYYjM--

--------------Pt0ls0v0oG2vlp5WhyXXG97H
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmKgwDUACgkQnowa+77/
2zJ/6xAAkLTU9Ul2UAmHew+KRpY030BvFPBamBvVs0sN/PIHc5wfmO7cTYghuTGb
/e8ivgrj82yC5RJJkjLHmCdfVw96LJUMF7lndYn8xJU0yOSkTvmwfD8zuF/eaH/y
VLLu04Vb9v0tVFDUZ2Z64HSCiJ8jX7NacFtUIICKod3JTZxvsgU8SjkjsyWzdbUb
G3AaP0jmTgg8goNdh0QHbJiBbQO/x+VvXGlCPCPm3j6S1vHiN/xsCJzqx3mLXnSJ
NiT/aKOyN1eXrC7gSU9oB6xMqsWJPmDMoZUQY+iccPCgSrLOE60njq/QKF+ku2x9
R6bIbvn88FE6Epy5/lx9JVxRlqqh1dwmK7ECr5S+BJv4n/SLzQiLXSZTkaab2DhD
Ig6VbcrnX0iCWwvefMMCATjh1O2Oq3EQ8mQiEl40o2C3KJQy9uW6BO988A2Sbjkc
UaOXNyuLIYz0Rq8yesOmGCY9FELwKo4xg0/DXUblOUuyeH+0h4Fbem3Q+K93TCjV
HJ2Q8ptekWW0WbX3M+yDXc/r01ig+KhftPI+GWu7fFGwSFEOX9vp7BwUQS+Pr/vT
jRBMdNCrvlm5Vpl2CWnSSQAA2XSPHwBGznGyRW0IiIAsRlCTnkxYLhUCXQjRM6iM
K7frZdpy966AXk7C0fx6PbOGszKKy4E1iA4QYdwX6rRtPn1HykA=
=nZaz
-----END PGP SIGNATURE-----

--------------Pt0ls0v0oG2vlp5WhyXXG97H--
