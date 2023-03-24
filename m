Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CEF5A6C7793
	for <lists+linux-man@lfdr.de>; Fri, 24 Mar 2023 07:07:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231419AbjCXGHR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 24 Mar 2023 02:07:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33222 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230372AbjCXGHR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 24 Mar 2023 02:07:17 -0400
Received: from mail-qk1-x732.google.com (mail-qk1-x732.google.com [IPv6:2607:f8b0:4864:20::732])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2FB0415540
        for <linux-man@vger.kernel.org>; Thu, 23 Mar 2023 23:07:16 -0700 (PDT)
Received: by mail-qk1-x732.google.com with SMTP id u15so173608qkk.4
        for <linux-man@vger.kernel.org>; Thu, 23 Mar 2023 23:07:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679638035;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=yzxJyia6Z86NLlyOLYY3tojnV7f5QQrmfdOSjBLbwtY=;
        b=pRLBMkfdxt8tLq+2+9ZkOpiZlWBtKcwyldDeet/ZXlU+vin9l/PqxqEzU05OzQoyRh
         tF+xe3SxPJ6x0YAjbKacbt60LjcXWY5dO/KNfGZBLp0BKmLAMoPTZvP/lknBD+NHdbHj
         sfiq9f6qnWlRbO9ZbvJ2thIyRZF5WF9k7cvIvIe5ZPewKPSLsPlm3NV5CM4j/vv0ATcI
         SXRTJ3e/sQcWWGhQgnsgxMnGIrZABUzmdQrovBXk9ZihA+kp2fn1oj42m7jMwoSUMmFM
         RcS2aZS4k9L6M0XlPQi9KBNNICWW5Gf/7ZSEBeO+2U+lbHI0QL6OPEGq11mcm75cQs+f
         KEVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679638035;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yzxJyia6Z86NLlyOLYY3tojnV7f5QQrmfdOSjBLbwtY=;
        b=WGCPtKYe/ZxtdxJ5731FnbkBb4J0YJEdyjHe2HgJqGf2FMcamqgMrjlXIo284eFgQI
         98odO2uY3jFiTmb6uyaj85YcYNc4LwG4kJT7Ryj0t2t8oQqdd7qAirJ2vCUUCL36akkw
         TOaKp00jAlEtU4I+sPriHZcyIeF5Dt12zWIPU0djYzCGfUib0D8ztrv4dCOwQmGZT8Ae
         LwmDikuVUnB1CjcJ8GNKyZVuNnJjaGmWidGnVnr9FMhOPaPIMiaz1bvaZBABher7mroO
         ZmUfkblDYQSpV8JUKDol75YmYQjnUWhQmATfCRnf5M84z5emGtpV24+6+vAGvWYRSgnQ
         W/0w==
X-Gm-Message-State: AO0yUKWNfymwz6zP8Dgv1Agp4dc4sP1PFYKnQ5G3cl1IL0oo0ONr5x9l
        cLgotO5LNdRMHSsZr4YE67n1+8ePdaJ/osDZgfQ=
X-Google-Smtp-Source: AK7set+Xdlc+QagbWfjrDr5rEsJ2x6ATd/B6EtxR2h8u7G9neZBRpmq2lXJWAyXu7qA5km21FUZ+E6adubI3+quCDAE=
X-Received: by 2002:a05:620a:21ce:b0:746:145:5ae with SMTP id
 h14-20020a05620a21ce00b00746014505aemr381226qka.2.1679638035278; Thu, 23 Mar
 2023 23:07:15 -0700 (PDT)
MIME-Version: 1.0
References: <CAD66C+aECcWHSogwDygQnHOvDCayHbH2emKrsUhVxkg48KzXfA@mail.gmail.com>
 <6c5593f5-efc0-564d-83fa-430328b31231@gmail.com> <CAD66C+Y_b_9j1Oty=kbt2jZywzdVOen4i31ndhqyTTCRp=-xTg@mail.gmail.com>
 <5858fd32-aced-7f87-a1c2-2b92c002e4d3@gmail.com>
In-Reply-To: <5858fd32-aced-7f87-a1c2-2b92c002e4d3@gmail.com>
From:   Mingye Wang <arthur200126@gmail.com>
Date:   Fri, 24 Mar 2023 14:07:04 +0800
Message-ID: <CAD66C+bWn5Vm3gKa=ygvqyAkELpdCz82huqMk6FJG2Z87B0=Fw@mail.gmail.com>
Subject: [PATCHv2] feature_test_macros.7: document clang fortify support
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Sam James <sam@gentoo.org>,
        Erik Pilkington <erik.pilkington@gmail.com>
Content-Type: multipart/mixed; boundary="00000000000071f98a05f79f3411"
X-Spam-Status: No, score=0.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--00000000000071f98a05f79f3411
Content-Type: text/plain; charset="UTF-8"

Hi Alex,

Attached is the revised patch.

> That means, unformatted GCC 4.0 and Clang 2.6.

I've done that in the new version, but there are still a lot of ".BR
gcc (1)" in my version
of the tree from other pages. Are these to be changed in the future?

Best,
Mingye

--00000000000071f98a05f79f3411
Content-Type: application/octet-stream; 
	name="0001-feature_test_macros.7-document-clang-fortify-support.patch"
Content-Disposition: attachment; 
	filename="0001-feature_test_macros.7-document-clang-fortify-support.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_lfm53zb10>
X-Attachment-Id: f_lfm53zb10

RnJvbSBhNGQ3MjkwY2ZmMWRkZmFjMWNkM2I3YWI1ODc3ZTM4OTg3YzRlNzc0IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBNaW5neWUgV2FuZyA8YXJ0aHVyMjAwMTI2QGdtYWlsLmNvbT4K
RGF0ZTogV2VkLCAyMiBNYXIgMjAyMyAxNjoxODoyNyArMDgwMApTdWJqZWN0OiBbUEFUQ0hdIGZl
YXR1cmVfdGVzdF9tYWNyb3MuNzogZG9jdW1lbnQgY2xhbmcgZm9ydGlmeSBzdXBwb3J0CgpUaGlz
IGNvbW1pdCBsaXN0cyBib3RoIGdjYyBhbmQgY2xhbmcgdmVyc2lvbnMuIEl0IGFsc28gaGFwcGVu
cyB0byBmaXgKdGhlICJnbGliYyA0LjAiIG1pc3Rha2UgaW4gYjMyNGUxN2QzMjA4Yzk0MDYyMmFi
MTkyNjA5YjgzNjkyOGQ1YWE4ZC4KClNpZ25lZC1vZmYtYnk6IE1pbmd5ZSBXYW5nIDxhcnRodXIy
MDAxMjZAZ21haWwuY29tPgotLS0KIG1hbjcvZmVhdHVyZV90ZXN0X21hY3Jvcy43IHwgMTQgKysr
KysrKy0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvbWFuNy9mZWF0dXJlX3Rlc3RfbWFjcm9zLjcgYi9tYW43L2ZlYXR1
cmVfdGVzdF9tYWNyb3MuNwppbmRleCA0ZGM5Yjk1OTQuLjUxNTVmMTllZiAxMDA2NDQKLS0tIGEv
bWFuNy9mZWF0dXJlX3Rlc3RfbWFjcm9zLjcKKysrIGIvbWFuNy9mZWF0dXJlX3Rlc3RfbWFjcm9z
LjcKQEAgLTY1NSwxNSArNjU1LDE1IEBAIEZvciBleGFtcGxlLCBhIHByb2dyYW0gd2hlcmUKIHNp
emUgYXJndW1lbnQgaXMgdmFyaWFibGUKIGNhbiBub3cgYmUgZm9ydGlmaWVkLgogLklQCi1Vc2Ug
b2YgdGhpcyBtYWNybyByZXF1aXJlcyBjb21waWxlciBzdXBwb3J0LCBhdmFpbGFibGUgd2l0aAot
LkJSIGdjYyAoMSkKLXNpbmNlIGdsaWJjIDQuMC4KLS5JUAorVXNlIG9mIHRoaXMgbWFjcm8gcmVx
dWlyZXMgY29tcGlsZXIgc3VwcG9ydCwgYXZhaWxhYmxlIHNpbmNlCitnY2MgNC4wIGFuZCBjbGFu
ZyAyLjYuCiBVc2Ugb2YKIC5CIF9GT1JUSUZZX1NPVVJDRQotc2V0IHRvIDMgcmVxdWlyZXMKLS5C
UiBnY2MgKDEpCi12ZXJzaW9uIDEyLjAgb3IgbGF0ZXIuCitzZXQgdG8gMyByZXF1aXJlcyBnY2Mg
MTIuMCBvciBsYXRlciwgb3IgY2xhbmcgOS4wIG9yIGxhdGVyLAoraW4gY29uanVuY3Rpb24gd2l0
aCBnbGliYyAyLjMzIG9yIGxhdGVyLgorLlwiIGdsaWJjIGlzIG5vdCBhbiBhYnNvbHV0ZSByZXF1
aXJlbWVudCAoZ2NjIGhhcyBsaWJzc3A7IE5ldEJTRC9uZXdsaWIKKy5cIiBhbmQgRGFyd2luIGVh
Y2ggaGF2ZSB0aGVpciBvd24gaW1wbGVtZW50YXRpb24pLCBidXQgbGV0J3Mga2VlcCBpdAorLlwi
IHNpbXBsZS4KIC5TUyBEZWZhdWx0IGRlZmluaXRpb25zLCBpbXBsaWNpdCBkZWZpbml0aW9ucywg
YW5kIGNvbWJpbmluZyBkZWZpbml0aW9ucwogSWYgbm8gZmVhdHVyZSB0ZXN0IG1hY3JvcyBhcmUg
ZXhwbGljaXRseSBkZWZpbmVkLAogdGhlbiB0aGUgZm9sbG93aW5nIGZlYXR1cmUgdGVzdCBtYWNy
b3MgYXJlIGRlZmluZWQgYnkgZGVmYXVsdDoKLS0gCjIuNDAuMC53aW5kb3dzLjEKCg==
--00000000000071f98a05f79f3411--
