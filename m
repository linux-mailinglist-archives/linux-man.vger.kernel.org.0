Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 38E53708C44
	for <lists+linux-man@lfdr.de>; Fri, 19 May 2023 01:27:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229555AbjERX1z (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 18 May 2023 19:27:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39234 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229539AbjERX1y (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 18 May 2023 19:27:54 -0400
Received: from mail-qv1-xf34.google.com (mail-qv1-xf34.google.com [IPv6:2607:f8b0:4864:20::f34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AEDDFC1
        for <linux-man@vger.kernel.org>; Thu, 18 May 2023 16:27:52 -0700 (PDT)
Received: by mail-qv1-xf34.google.com with SMTP id 6a1803df08f44-6239144bd59so6448186d6.3
        for <linux-man@vger.kernel.org>; Thu, 18 May 2023 16:27:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1684452472; x=1687044472;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=fQnIRB+9xwLLOp4+FdFBS08hpbnlG9c6Ydc1vYTZYO8=;
        b=B4MCT9MxlGYo7m5CCbFO1NzMAiOpWKUw39+m0AyikKRSuaM3ctqYwY0baz17PJFIBf
         lMp/rAqbdZVd3Ejh2jQX7QmElyXCZkeqKwnKGLkAXQdq1U3CUDBVZ0BIPOyaAvtqCCHV
         h5w4uRd9MyxcMtf1Z/i2gQrJqO2/JZ+oOQhV5ka+tGRQKMPKd4vV03ALAbbxu0R6wLvs
         xbuEQi9ZXTPs3xCkSdDl6F6S1CuOiDNpI/BNRD4j3B/09P3+owJq1phGKGP6N1lX7noC
         QKO27OmZ0imYba/UdaX+ZIMVLsT1vBiSk5n/hlC9+UJSS2CsckxuRkJ7nfb0Oq3aYD8a
         CWKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684452472; x=1687044472;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fQnIRB+9xwLLOp4+FdFBS08hpbnlG9c6Ydc1vYTZYO8=;
        b=Pm2PTk/IDi6SRKxr+Z3FpEyS5GjQK5vE2XYV8oPOn3g1XlbfIM557gqpWMhqSDRYSd
         69K0A5cKV6N9BZzNjiGtBRXPMSKyzDtzp2Gy15ZdGNhDRhft40vsJ59Y4awOeY8eH39p
         DJ0BHzKUTawq60oDdJBxXiIvO77bz2LMFWfucRmZFOB18zsg0awKTvDFtyzu+P43YYhG
         9TxYfz76ws5c6WXDBq2owdLd3NzKDhf7PZ7Muk5ZnvgqQKZfcQTpJm4PXcvlbWICGJwC
         5LfbMvOR9wckU0D2mwqvP5TszjX7mIQHHkOG3GKPtfiiB4u1qDrRxHVRIj6qoWfXJTeE
         jdmA==
X-Gm-Message-State: AC+VfDxhSRwgaEN5OoL3V0us3bEAZmTiv+ietlVQzG2WEgniLoZO7yxt
        xGpb7nYram/PY3yl4DfptYKuROss0OG/ZCsNj1DNTA==
X-Google-Smtp-Source: ACHHUZ4R5srADuZvJpJFWHd02TQC2cCCY0AldUQ8En4U2gwjFg2K9jr6E4NruUQP+AUerL37LxKRW6UU+HQDdIYuQEY=
X-Received: by 2002:a05:6214:2524:b0:621:3da:d3d5 with SMTP id
 gg4-20020a056214252400b0062103dad3d5mr1659029qvb.23.1684452471822; Thu, 18
 May 2023 16:27:51 -0700 (PDT)
MIME-Version: 1.0
References: <CAELULbeXgZWn+Nw_rpUzkGgNCtb7oFf1+JS=KnNVuLhcF5Vabg@mail.gmail.com>
In-Reply-To: <CAELULbeXgZWn+Nw_rpUzkGgNCtb7oFf1+JS=KnNVuLhcF5Vabg@mail.gmail.com>
From:   Zijun Zhao <zijunzhao@google.com>
Date:   Thu, 18 May 2023 16:27:40 -0700
Message-ID: <CAELULbf=z2WWpHm5QDTK81oWTC9zMZJg2MA69mjOorJQ5QAzGw@mail.gmail.com>
Subject: Re: [PATCH] Fix the man page
To:     alx@kernel.org
Cc:     linux-man@vger.kernel.org, Elliott Hughes <enh@google.com>
Content-Type: multipart/mixed; boundary="00000000000039e8c605fc00273b"
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--00000000000039e8c605fc00273b
Content-Type: text/plain; charset="UTF-8"

Hi there,
  We are annotating settimeofday(), gettimeofday() and we will make tv
Nonnull if compilation warnings will

result. But after checking
https://elixir.bootlin.com/linux/latest/source/kernel/time/time.c#L199
nd https://elixir.bootlin.com/linux/latest/source/kernel/time/time.c#L224,

we think tv is okay to be nullable. So we make the fix to make it more clear.

Best,

Zijun Zhao

--00000000000039e8c605fc00273b
Content-Type: application/octet-stream; name="fix.patch"
Content-Disposition: attachment; filename="fix.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_lhtrcrep0>
X-Attachment-Id: f_lhtrcrep0

RnJvbSA3NjBkOGUwN2M4YjE1Y2ZjYjg4ZGU5ZjA2NGRiOGNhZTU3N2Y3YWM3IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBaaWp1biBaaGFvIDx6aWp1bnpoYW9AZ29vZ2xlLmNvbT4KRGF0
ZTogRnJpLCAxMiBNYXkgMjAyMyAxOTowMzo0NyAtMDcwMApTdWJqZWN0OiBbUEFUQ0hdIEZpeCB0
aGUgbWFuIHBhZ2UKCldlIGFyZSBhbm5vdGF0aW5nIHNldHRpbWVvZmRheSgpIGFuZCB3ZSB3aWxs
IG1ha2UgdHYgTm9ubnVsbCBpZiBjb21waWxhdGlvbiB3YXJuaW5ncyB3aWxsCnJlc3VsdC4gQnV0
IGFmdGVyIGNoZWNraW5nIGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L2xhdGVzdC9z
b3VyY2Uva2VybmVsL3RpbWUvdGltZS5jI0wxOTksCndlIHRoaW5rIGl0IGlzIG9rYXkgdG8gYmUg
bnVsbGFibGUuIFNvIHdlIG1ha2UgdGhlIGZpeCB0byBtYWtlIGl0IG1vcmUgY2xlYXIuCi0tLQog
bWFuMi9nZXR0aW1lb2ZkYXkuMiB8IDMgLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9tYW4yL2dldHRpbWVvZmRheS4yIGIvbWFuMi9nZXR0aW1lb2ZkYXku
MgppbmRleCA5ZDEzNGZhNDkuLjFlNzFjNWI3MCAxMDA2NDQKLS0tIGEvbWFuMi9nZXR0aW1lb2Zk
YXkuMgorKysgYi9tYW4yL2dldHRpbWVvZmRheS4yCkBAIC05Miw5ICs5Miw2IEBAIG9yCiBpcyBO
VUxMLCB0aGUgY29ycmVzcG9uZGluZyBzdHJ1Y3R1cmUgaXMgbm90IHNldCBvciByZXR1cm5lZC4K
IC5cIiBGSVhNRSAuIFRoZSBjb21waWxhdGlvbiB3YXJuaW5nIGxvb2tzIHRvIGJlIGdvaW5nIGF3
YXkgaW4gZ2xpYmMgMi4xNwogLlwiIHNlZSBnbGliYyBjb21taXQgNGI3NjM0YTVlMDNiMGRhNmY4
ODc1ZGU5ZDNmNzRjMWNmNmYyYTZlOAotKEhvd2V2ZXIsIGNvbXBpbGF0aW9uIHdhcm5pbmdzIHdp
bGwgcmVzdWx0IGlmCi0uSSB0dgotaXMgTlVMTC4pCiAuXCIgVGhlIGZvbGxvd2luZyBpcyBjb3Zl
cmVkIHVuZGVyIEVQRVJNIGJlbG93OgogLlwiIC5QUAogLlwiIE9ubHkgdGhlIHN1cGVydXNlciBt
YXkgdXNlCi0tIAoyLjQwLjEuNjA2LmdhNGIxYjEyOGQ2LWdvb2cKCg==
--00000000000039e8c605fc00273b--
