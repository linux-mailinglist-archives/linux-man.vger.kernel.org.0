Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2E9C66C452F
	for <lists+linux-man@lfdr.de>; Wed, 22 Mar 2023 09:39:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229833AbjCVIjY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 22 Mar 2023 04:39:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47632 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229656AbjCVIjW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 22 Mar 2023 04:39:22 -0400
Received: from mail-qt1-x82f.google.com (mail-qt1-x82f.google.com [IPv6:2607:f8b0:4864:20::82f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 329333B862
        for <linux-man@vger.kernel.org>; Wed, 22 Mar 2023 01:39:22 -0700 (PDT)
Received: by mail-qt1-x82f.google.com with SMTP id n2so21775818qtp.0
        for <linux-man@vger.kernel.org>; Wed, 22 Mar 2023 01:39:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679474361;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2CRlMDZ2z6r16UVopShHFpbbPxquoaFapwt5cF08/Qw=;
        b=REQKLElbVDNxwyEFNPvhWokReBux2tp4e1eDpVT/BsZh7JojeW6mV4YAyZUbde1qtd
         qCQdRxux9F+4n72zUiEhH++tjNGJ16GJSpbXZlwLiGYk85NIbZYN/I3OHGVWrWCdZdu4
         ZGq/TquTcRpG5Y2pfV/jrDbgoKYkXpTjk2GSl8iz5NOcQ0TIOLgeLIbDlLggE/5oBgAw
         z+VJEG7Eq6oICNyssV0gABa8GQyOBzgQk0dFyUZywr4XIhHDg2FC0EnZnxvmH9NDLsIM
         XXRSXhUywKobAq4DO7/zT9pbawclaxhvUpSuttTMKQ635l+rpne8NuikLg78co3NJO5e
         aUfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679474361;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2CRlMDZ2z6r16UVopShHFpbbPxquoaFapwt5cF08/Qw=;
        b=gBmk17xsWXbnrn9ri0DKxj66I75EL0HUE8d/omPYhB2YNDTtc1znXFTYNMkY6doGpi
         Ay8iZGlMCZIltvvhRTDmb43rk/YPAhyKk5lcH/Qtc7ZaNHD71y6HAdbNm0IhwpG/yfZ5
         vPh6250JgVpgnrQAB65Y61hR8ls9aHvx3InanTzit67O2Y5agJZ1Uzrb55MXHFmDpTA5
         Ev+obXOERTKSssHvUH8LNKjg46V4ePrMUvkFrVP/lScMEwGWoGGCUpIiAZqCkOxaGVMH
         puT7YhOsepzuGz38zu1cgM6S/X/OSASmAV1FnOAo2GaodQhSw04FghZ2HdlN0i0Bf76r
         oKEA==
X-Gm-Message-State: AO0yUKV3QWT9Nf6UUosrDh75WAzt1vm84uNTHl61vQQRsxwxF0D8fowk
        F0uVR3OaSG3RJlQ3w1CpbYEIK6BjZJAYZF+dizh26YEb9buWS39z
X-Google-Smtp-Source: AK7set9tsdVh0xlBWFrsXd+3tJNwz8TPDZ0a4Jg0hqaA9QpwIDdP6cTbIrdpzkxcmo5l1/y9wC2BWqYMs4cN/ig82Ng=
X-Received: by 2002:ac8:5906:0:b0:3de:fa64:ff24 with SMTP id
 6-20020ac85906000000b003defa64ff24mr1053831qty.4.1679474361260; Wed, 22 Mar
 2023 01:39:21 -0700 (PDT)
MIME-Version: 1.0
References: <CAD66C+aECcWHSogwDygQnHOvDCayHbH2emKrsUhVxkg48KzXfA@mail.gmail.com>
 <6c5593f5-efc0-564d-83fa-430328b31231@gmail.com>
In-Reply-To: <6c5593f5-efc0-564d-83fa-430328b31231@gmail.com>
From:   Mingye Wang <arthur200126@gmail.com>
Date:   Wed, 22 Mar 2023 16:39:09 +0800
Message-ID: <CAD66C+Y_b_9j1Oty=kbt2jZywzdVOen4i31ndhqyTTCRp=-xTg@mail.gmail.com>
Subject: [PATCH] feature_test_macros.7: document clang fortify support
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Sam James <sam@gentoo.org>,
        Erik Pilkington <erik.pilkington@gmail.com>
Content-Type: multipart/mixed; boundary="000000000000b70eb905f77918a5"
X-Spam-Status: No, score=0.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--000000000000b70eb905f77918a5
Content-Type: text/plain; charset="UTF-8"

Hi Alex,

It looks like Sam James has already documented level 3 of the macro.
The attached (no, git send-email is not happy with my proxy setup)
patch only adds some language related to clang. Here's to hoping the
system is happy with multipart mail.

I've CCed Erik Pilington, since he is the author of the LLVM-svn
352665, the change that introduced __builtin_dynamic_object_size() in
2019.

Regards,
Mingye Wang

--000000000000b70eb905f77918a5
Content-Type: application/octet-stream; 
	name="0001-feature_test_macros.7-document-clang-fortify-support.patch"
Content-Disposition: attachment; 
	filename="0001-feature_test_macros.7-document-clang-fortify-support.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_lfjfn6pr0>
X-Attachment-Id: f_lfjfn6pr0

RnJvbSBiMjFiYzQxNmYwNzcyYjNjNzc4M2ExY2IzOTZjY2U1YzBhMTcwNzEzIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBNaW5neWUgV2FuZyA8YXJ0aHVyMjAwMTI2QGdtYWlsLmNvbT4K
RGF0ZTogV2VkLCAyMiBNYXIgMjAyMyAxNjoxODoyNyArMDgwMApTdWJqZWN0OiBbUEFUQ0hdIGZl
YXR1cmVfdGVzdF9tYWNyb3MuNzogZG9jdW1lbnQgY2xhbmcgZm9ydGlmeSBzdXBwb3J0CgpUaGlz
IGNvbW1pdCBsaXN0cyBib3RoIGdjYyBhbmQgY2xhbmcgdmVyc2lvbnMuIEl0IGFsc28gaGFwcGVu
cyB0byBmaXgKdGhlICJnbGliYyA0LjAiIG1pc3Rha2UgaW4gYjMyNGUxN2QzMjA4Yzk0MDYyMmFi
MTkyNjA5YjgzNjkyOGQ1YWE4ZC4KClNpZ25lZC1vZmYtYnk6IE1pbmd5ZSBXYW5nIDxhcnRodXIy
MDAxMjZAZ21haWwuY29tPgotLS0KIG1hbjcvZmVhdHVyZV90ZXN0X21hY3Jvcy43IHwgMTUgKysr
KysrKysrKystLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9tYW43L2ZlYXR1cmVfdGVzdF9tYWNyb3MuNyBiL21hbjcvZmVh
dHVyZV90ZXN0X21hY3Jvcy43CmluZGV4IDRkYzliOTU5NC4uMWMyNzE5YTgwIDEwMDY0NAotLS0g
YS9tYW43L2ZlYXR1cmVfdGVzdF9tYWNyb3MuNworKysgYi9tYW43L2ZlYXR1cmVfdGVzdF9tYWNy
b3MuNwpAQCAtNjU1LDE1ICs2NTUsMjIgQEAgRm9yIGV4YW1wbGUsIGEgcHJvZ3JhbSB3aGVyZQog
c2l6ZSBhcmd1bWVudCBpcyB2YXJpYWJsZQogY2FuIG5vdyBiZSBmb3J0aWZpZWQuCiAuSVAKLVVz
ZSBvZiB0aGlzIG1hY3JvIHJlcXVpcmVzIGNvbXBpbGVyIHN1cHBvcnQsIGF2YWlsYWJsZSB3aXRo
CitVc2Ugb2YgdGhpcyBtYWNybyByZXF1aXJlcyBjb21waWxlciBzdXBwb3J0LCBhdmFpbGFibGUg
c2luY2UKIC5CUiBnY2MgKDEpCi1zaW5jZSBnbGliYyA0LjAuCi0uSVAKKzQuMAorYW5kCisuQlIg
Y2xhbmcgKDEpCisyLjYuCiBVc2Ugb2YKIC5CIF9GT1JUSUZZX1NPVVJDRQogc2V0IHRvIDMgcmVx
dWlyZXMKIC5CUiBnY2MgKDEpCi12ZXJzaW9uIDEyLjAgb3IgbGF0ZXIuCit2ZXJzaW9uIDEyLjAg
b3IgbGF0ZXIsIG9yCisuQlIgY2xhbmcgKDEpCit2ZXJzaW9uIDkuMCBvciBsYXRlciwgaW4gY29u
anVuY3Rpb24gd2l0aCBnbGliYyAyLjMzIG9yIGxhdGVyLgorLlwiIGdsaWJjIGlzIG5vdCBhbiBh
YnNvbHV0ZSByZXF1aXJlbWVudCAoZ2NjIGhhcyBsaWJzc3A7IE5ldEJTRC9uZXdsaWIKKy5cIiBh
bmQgRGFyd2luIGVhY2ggaGF2ZSB0aGVpciBvd24gaW1wbGVtZW50YXRpb24pLCBidXQgbGV0J3Mg
a2VlcCBpdAorLlwiIHNpbXBsZS4KIC5TUyBEZWZhdWx0IGRlZmluaXRpb25zLCBpbXBsaWNpdCBk
ZWZpbml0aW9ucywgYW5kIGNvbWJpbmluZyBkZWZpbml0aW9ucwogSWYgbm8gZmVhdHVyZSB0ZXN0
IG1hY3JvcyBhcmUgZXhwbGljaXRseSBkZWZpbmVkLAogdGhlbiB0aGUgZm9sbG93aW5nIGZlYXR1
cmUgdGVzdCBtYWNyb3MgYXJlIGRlZmluZWQgYnkgZGVmYXVsdDoKLS0gCjIuNDAuMC53aW5kb3dz
LjEKCg==
--000000000000b70eb905f77918a5--
