Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 530357A6C9A
	for <lists+linux-man@lfdr.de>; Tue, 19 Sep 2023 23:00:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232994AbjISVAO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Sep 2023 17:00:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40532 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229627AbjISVAO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Sep 2023 17:00:14 -0400
Received: from mail-vs1-xe2b.google.com (mail-vs1-xe2b.google.com [IPv6:2607:f8b0:4864:20::e2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A6E5BBD
        for <linux-man@vger.kernel.org>; Tue, 19 Sep 2023 14:00:04 -0700 (PDT)
Received: by mail-vs1-xe2b.google.com with SMTP id ada2fe7eead31-45260b91a29so1392065137.2
        for <linux-man@vger.kernel.org>; Tue, 19 Sep 2023 14:00:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1695157203; x=1695762003; darn=vger.kernel.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ZH2+ALzvef2xkXwQ0mUWEzvNEnQx/4z2H+K47/1O8v4=;
        b=jqbs5RHKnKNkXRgCrnWJTPnY/YwkN6/vZh2s1pENNJEtpbI9Qd6X3tvf0IRI/WOJNJ
         3Tux1K9mYMaL4L83+xopT5BbSsW5V83biwtyPRCIBxA+efcUWq1B2lERpdKArrptglvW
         r5pjPcKK0fuup6uIm5jY0bDSz2D0BQIEAFtuV9wY+CYt5iY6+RNBaiYeTQTSskJ1VKX9
         S4ndgApuPdL/U/8sD9tGT5B/rChM4pOmNQZk9ZfTcK8el1fJfFOlLmAD2IYR3d/45Pi4
         /UKzoORYOA3PLcDoMw6AIhgMDSaPYwBgMCIGpfOT5/2KCVVcn9Bca4Mk5u7aE/hOXjz0
         PQnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695157203; x=1695762003;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZH2+ALzvef2xkXwQ0mUWEzvNEnQx/4z2H+K47/1O8v4=;
        b=BmKsmdk1Z10v2zXfFUmQtHn7Q4AjYxilmcKSAnSa7XxHVO1odh33VNVRzNxth2+BuX
         /pbSVFkVClf8f5EmM9PCEweIWd93hN5Rrzq1aE9C3y2wyhLN4npRFBLPZtF2oB8ys+Zm
         Tdckblp+WTjm1xqASfxrzOcZsz3sr9oatSa4SAFsoQjqkGvLNPc7o4MnG+yXZJG63qXS
         302vxNeH15ijxV6rLecCo02CDigXT3LGxLG3568Gv3p8H/ZCdQd53WKYraJFBEDUhh9J
         6AHUpq+wm6czUafsETaxogQvr8OvJuXKLU9Gs4mDKUwlf5GTwEftXKRU/+W3Cw9Cga5x
         dDrQ==
X-Gm-Message-State: AOJu0Yz4vbpNM8eqGNO/cBzMns0keungfCMjQ/qEidwGYsgGZGH34zwH
        g0YAxFG7weL/G8LiwB3eE/HirEhBJ2uwOCjUD3wzZmp0xhQGReR8M7O4+g==
X-Google-Smtp-Source: AGHT+IGgLP2HQ91sQ46MP/DSpKQL3XjOPFdgpdDBbxCkN5eqlkxbFFmszPu+TKtthxQPs1niJUlDtspgEvFjiyEIcNY=
X-Received: by 2002:a05:6102:3672:b0:450:fcad:ff23 with SMTP id
 bg18-20020a056102367200b00450fcadff23mr1017751vsb.32.1695157203575; Tue, 19
 Sep 2023 14:00:03 -0700 (PDT)
MIME-Version: 1.0
From:   enh <enh@google.com>
Date:   Tue, 19 Sep 2023 13:59:52 -0700
Message-ID: <CAJgzZoqty5f=ivODLB6pvZpm4bZWAt83ET5jpMwrEb9oVqS6MQ@mail.gmail.com>
Subject: [PATCH] difftime.3: be more explict about "difference".
To:     linux-man <linux-man@vger.kernel.org>,
        "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        Paul Eggert <eggert@cs.ucla.edu>
Content-Type: multipart/mixed; boundary="000000000000f5c4f10605bc8ac0"
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
        USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--000000000000f5c4f10605bc8ac0
Content-Type: text/plain; charset="UTF-8"

Personally I think the NOTES section should be moved to the main body
for clarity, but it seems worth being explicit that there's no leap
seconds magic here --- it's just "fancy subtraction".

Signed-off-by: Elliott Hughes <enh@google.com>
---
 man3/difftime.3 | 1 +
 1 file changed, 1 insertion(+)

--000000000000f5c4f10605bc8ac0
Content-Type: application/octet-stream; 
	name="0001-difftime.3-be-more-explict-about-difference.patch"
Content-Disposition: attachment; 
	filename="0001-difftime.3-be-more-explict-about-difference.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_lmqstlx70>
X-Attachment-Id: f_lmqstlx70

RnJvbSA0MzM3MzdiN2Y4MThjNDllZDQzNTRlYjE3OGU4NWI0NmY2OWFhODQ5IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBFbGxpb3R0IEh1Z2hlcyA8ZW5oQGdvb2dsZS5jb20+CkRhdGU6
IFR1ZSwgMTkgU2VwIDIwMjMgMjA6NTU6MzYgKzAwMDAKU3ViamVjdDogW1BBVENIXSBkaWZmdGlt
ZS4zOiBiZSBtb3JlIGV4cGxpY3QgYWJvdXQgImRpZmZlcmVuY2UiLgoKUGVyc29uYWxseSBJIHRo
aW5rIHRoZSBOT1RFUyBzZWN0aW9uIHNob3VsZCBiZSBtb3ZlZCB0byB0aGUgbWFpbiBib2R5CmZv
ciBjbGFyaXR5LCBidXQgaXQgc2VlbXMgd29ydGggYmVpbmcgZXhwbGljaXQgdGhhdCB0aGVyZSdz
IG5vIGxlYXAKc2Vjb25kcyBtYWdpYyBoZXJlIC0tLSBpdCdzIGp1c3QgImZhbmN5IHN1YnRyYWN0
aW9uIi4KClNpZ25lZC1vZmYtYnk6IEVsbGlvdHQgSHVnaGVzIDxlbmhAZ29vZ2xlLmNvbT4KLS0t
CiBtYW4zL2RpZmZ0aW1lLjMgfCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoK
ZGlmZiAtLWdpdCBhL21hbjMvZGlmZnRpbWUuMyBiL21hbjMvZGlmZnRpbWUuMwppbmRleCBiODUy
NTRjZDAuLmRmYjc1MjUxYiAxMDA2NDQKLS0tIGEvbWFuMy9kaWZmdGltZS4zCisrKyBiL21hbjMv
ZGlmZnRpbWUuMwpAQCAtMjksNiArMjksNyBAQCBiZXR3ZWVuIHRpbWUgXGZJdGltZTFcZlAgYW5k
IHRpbWUgXGZJdGltZTBcZlAsIHJlcHJlc2VudGVkIGFzIGEKIEVhY2ggb2YgdGhlIHRpbWVzIGlz
IHNwZWNpZmllZCBpbiBjYWxlbmRhciB0aW1lLCB3aGljaCBtZWFucyBpdHMKIHZhbHVlIGlzIGEg
bWVhc3VyZW1lbnQgKGluIHNlY29uZHMpIHJlbGF0aXZlIHRvIHRoZQogRXBvY2gsIDE5NzAtMDEt
MDEgMDA6MDA6MDAgKzAwMDAgKFVUQykuCitUaGlzIGZ1bmN0aW9uIGRvZXMgbm90IHRha2UgbGVh
cCBzZWNvbmRzIGludG8gYWNjb3VudC4KIC5TSCBBVFRSSUJVVEVTCiBGb3IgYW4gZXhwbGFuYXRp
b24gb2YgdGhlIHRlcm1zIHVzZWQgaW4gdGhpcyBzZWN0aW9uLCBzZWUKIC5CUiBhdHRyaWJ1dGVz
ICg3KS4KLS0gCjIuNDIuMC40NTkuZ2U0ZTM5NmZkNWUtZ29vZwoK
--000000000000f5c4f10605bc8ac0--
