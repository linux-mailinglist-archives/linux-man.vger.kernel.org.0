Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6A86F718940
	for <lists+linux-man@lfdr.de>; Wed, 31 May 2023 20:20:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230017AbjEaSTs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 31 May 2023 14:19:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230283AbjEaSTp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 31 May 2023 14:19:45 -0400
Received: from mail-qt1-x82b.google.com (mail-qt1-x82b.google.com [IPv6:2607:f8b0:4864:20::82b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A46BA19F
        for <linux-man@vger.kernel.org>; Wed, 31 May 2023 11:19:17 -0700 (PDT)
Received: by mail-qt1-x82b.google.com with SMTP id d75a77b69052e-3f6c6320d4eso26951cf.1
        for <linux-man@vger.kernel.org>; Wed, 31 May 2023 11:19:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1685557157; x=1688149157;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=XMAQwpa1LHRvw8NzuH/LzqbKnEgYJRGjUJhxx5aK57I=;
        b=ZLYxD86WXQo9/JDt9t37cWVzAHV3XEU8Pk4/T6KZ7KPPz3/vmzOHXRRPVn2XolMphb
         yQ2xKmpAfL0gZVAheOTljwTZnP6vzOkCPc58A44RdqI+KjnrNZG3zeOecwGsCdkHyh8L
         zwssH5k6SdDlZ9ox9SsxQqTEwq0uyDGwE6F1+cRpwQRkRgxF2k0Z9IiCmCIr+JiYLEC7
         d9hX+pTUxUduYTvu1kn/9OHiCn1gCxiqUZjvyzVUmxoMbHiIos+gLqPbeaXsGZTGLzXL
         NQOlXPGElMtYRzWYH2Q2PxHc6D5VwUUH8Ej/S+A/jCCGiBal7HgFQt98Qs6Szn4yKX34
         P1lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685557157; x=1688149157;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XMAQwpa1LHRvw8NzuH/LzqbKnEgYJRGjUJhxx5aK57I=;
        b=ekLp3EKjUZF1PIsi1XHPFZ+rPdWJpv/ct7it0LkrN3RwdfsfvBttsmobgFn1KxL6kP
         fbblCf3W0y8g8/JUBlzbJ1QDUpPXxVZr5vAncUEawzrdpLUkZkOfUYbphOMn1XRc/wG/
         qc5wZd2Ep3kU6WEU9C+020s9AKNbidWRa3RIv7DPw4twsE9oqiP5V6aDMu2M+EWnefmK
         7dn9/Er4YOuOdrNsvj0sb8daFMLCpAOG6iSvzzc6yDNYnzdW3ioCBcdQejr5dZaO/3pF
         tAuNKYsefvuFvfXRlepU8KGu/DyXcYPWqI+G3OlPh7z5pse1g/dRBKGMY5+RxN/1ARrY
         YrSw==
X-Gm-Message-State: AC+VfDx0lkjEoI50fEmJU0zIoNjNI932UMXRoyiAkqCu5NzniuZ4Z9j6
        sSLJ7VsMq9K30grt2G4K/TmNMk0MZzDdgwVbcp5GyFKsPjB6hVAPZY8=
X-Google-Smtp-Source: ACHHUZ7bJ2HkEtJsRyx56GbSbD2zjGry1BKCMNgs4R2iVKoYYAR8p7hFkkKyljbUbybPM0kNtCapAQku7lekHkhnR74=
X-Received: by 2002:a05:622a:44:b0:3ef:3361:75d5 with SMTP id
 y4-20020a05622a004400b003ef336175d5mr7405qtw.11.1685557156588; Wed, 31 May
 2023 11:19:16 -0700 (PDT)
MIME-Version: 1.0
From:   Zijun Zhao <zijunzhao@google.com>
Date:   Wed, 31 May 2023 11:19:05 -0700
Message-ID: <CAELULbfH8n8Gst4Bi+d9vNhiRn4xDU-wgEau5s9cPQMFVd1tqg@mail.gmail.com>
Subject: [PATCH] Fix the man page of setsockopt.2
To:     alx@kernel.org
Cc:     linux-man@vger.kernel.org, Elliott Hughes <enh@google.com>,
        Dan Albert <danalbert@google.com>
Content-Type: multipart/mixed; boundary="00000000000091f47405fd015b7d"
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED,USER_IN_DEF_DKIM_WL,
        USER_IN_DEF_SPF_WL autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--00000000000091f47405fd015b7d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi there,
  We are annotating setsockopt()
[https://man7.org/linux/man-pages/man2/setsockopt.2.html] and we will
make optval _Nonnull because of the implementation:
https://elixir.bootlin.com/linux/latest/source/include/linux/sockptr.h#L44
but we find something confusing in the linux man page.

   From the linux man page, it said The option value is ignored. This
is strictly correct but this one should be corrected: If no option
value is to be supplied or returned, optval may be NULL. It should be
corrected and make it clear that it is _Nonnull.

  Also, to prove optval  should be _Nonnull, enh wrote a trivial test
program to open a socket and call SO_DETACH_FILTER. He got EINVAL for
null, but ENOENT for a dummy value, which makes sense, because he
doesn=E2=80=99t actually have a filter to detach, so that's the expected
error.

   Thank you!

Best,
Zijun Zhao

--00000000000091f47405fd015b7d
Content-Type: application/x-patch; name="changes.patch"
Content-Disposition: attachment; filename="changes.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_lic171at0>
X-Attachment-Id: f_lic171at0

RnJvbSAyYTY4NDUzOTM3YzQ2MmNmODg3MWEwMmQ2MjAwMmEwZDg0NjFkMGIwIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBaaWp1biBaaGFvIDx6aWp1bnpoYW9AZ29vZ2xlLmNvbT4KRGF0
ZTogV2VkLCAzMSBNYXkgMjAyMyAxMToxNjoxMSAtMDcwMApTdWJqZWN0OiBbUEFUQ0hdIE1vZGlm
eSBnZXRzb2Nrb3B0LjIgZG9jdW1lbnRhdGlvbgoKLS0tCiBtYW4yL2dldHNvY2tvcHQuMiB8IDUg
KysrLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvbWFuMi9nZXRzb2Nrb3B0LjIgYi9tYW4yL2dldHNvY2tvcHQuMgppbmRleCBh
MGNkYThlODcuLjI4MDU5NzkzYSAxMDA2NDQKLS0tIGEvbWFuMi9nZXRzb2Nrb3B0LjIKKysrIGIv
bWFuMi9nZXRzb2Nrb3B0LjIKQEAgLTc3LDkgKzc3LDEwIEBAIHNpemUgb2YgdGhlIGJ1ZmZlciBw
b2ludGVkIHRvIGJ5CiAuSVIgb3B0dmFsICwKIGFuZCBtb2RpZmllZCBvbiByZXR1cm4gdG8gaW5k
aWNhdGUgdGhlIGFjdHVhbCBzaXplIG9mCiB0aGUgdmFsdWUgcmV0dXJuZWQuCi1JZiBubyBvcHRp
b24gdmFsdWUgaXMgdG8gYmUgc3VwcGxpZWQgb3IgcmV0dXJuZWQsCiAuSSBvcHR2YWwKLW1heSBi
ZSBOVUxMLgorc2hvdWxkIGJlCisuQiBOT05OVUxMICwKK2V2ZW4gbm8gb3B0aW9uIHZhbHVlIGlz
IHRvIGJlIHN1cHBsaWVkIG9yIHJldHVybmVkLgogLlBQCiAuSSBPcHRuYW1lCiBhbmQgYW55IHNw
ZWNpZmllZCBvcHRpb25zIGFyZSBwYXNzZWQgdW5pbnRlcnByZXRlZCB0byB0aGUgYXBwcm9wcmlh
dGUKLS0gCjIuNDEuMC5yYzAuMTcyLmczZjEzMmI3MDcxLWdvb2cKCg==
--00000000000091f47405fd015b7d--
