Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0DB276D583B
	for <lists+linux-man@lfdr.de>; Tue,  4 Apr 2023 07:52:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233417AbjDDFwW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 4 Apr 2023 01:52:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43712 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233453AbjDDFwU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 4 Apr 2023 01:52:20 -0400
Received: from mail-qv1-xf30.google.com (mail-qv1-xf30.google.com [IPv6:2607:f8b0:4864:20::f30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 697741FEF
        for <linux-man@vger.kernel.org>; Mon,  3 Apr 2023 22:52:12 -0700 (PDT)
Received: by mail-qv1-xf30.google.com with SMTP id jl13so22692518qvb.10
        for <linux-man@vger.kernel.org>; Mon, 03 Apr 2023 22:52:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680587531;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=0tu4HIVWM2/KBZaX6TPmhhlIs14Zx9CChbyENqb36LU=;
        b=b2+HpyUL0sBcWZCdR648IyZ2ZV6TGu6tuMP46+PHPZ7WU/GaRNFovqtBLGxGlNMMaP
         e9QHxPFoz6ayxyHD5jyYrqQRxPcTWZ4JG6cQ2QpW6OjfNoDg2+rOQ5Z1/D+R+jFZHunx
         PrlyjRHC/yHcyV5cVR8e5EQEJzzDlJuxyBLPfbhFwBa43lnfQ3IdTgBFk5bLY9sD7rd9
         PrQ8BtVpuRqJ0v2hGAqX8akjkuzDe5U7oaRMo9hfXCZyOuPGlI6rUQNKt/LwMK9em3bo
         vWYpq3wsQvQ1b+pOxNeVZy0xrrJ5jtOER23BOFr80i0aDwVDK/BsqaX6zKN+nLxge1RL
         LLsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680587531;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0tu4HIVWM2/KBZaX6TPmhhlIs14Zx9CChbyENqb36LU=;
        b=nmHn9f7NtDh+hzb2W/NTFQwqle/8QV5IhDF7S+pcDHsL2zVXg7GB+kEZxr0EX7hW6l
         LuKQTIalQx79/YnOm04FkfjbC6J5K17ILrO8TRTZ0DENJbPKJDOHkz1hLP8siftXwjwV
         VPmKOwhupO+gCpSNmOyhhKbcXHC6fNyBmkQVZAc/qnjYxLP81yE2F3XzGjAQHrEz28no
         o2C7/CAXGTezGCsk3PnuMK/iCyjGc5vkfaxSwVcFc2J63PU3KL+YRCbbHUma2Y0XuDpq
         v96W/TAZNnpHHhY+XXJwZpI6T/EnR/cuCEvHaCiyk5tMYZ9lySecd124RgW0zU1Air9O
         8wrg==
X-Gm-Message-State: AAQBX9eYePHRqUzpGEYWQ/leOChWts/zgYDN6ggUqxVcSCszPHBjNDp2
        UF/YhLT4DmmB9e/6/Ma9PjbSoylxn8kd9kj1pU92r5sJLQRFC8It
X-Google-Smtp-Source: AKy350YRZqL/7TEUGvs63s+SRSk/+ieYj3aGE1RJFmsynV+CKElW8ZOR10nQWDELJkKm+v3+jvN8wtjX78BlRAjfHI0=
X-Received: by 2002:a05:6214:b30:b0:570:ed88:8a13 with SMTP id
 w16-20020a0562140b3000b00570ed888a13mr242067qvj.6.1680587531544; Mon, 03 Apr
 2023 22:52:11 -0700 (PDT)
MIME-Version: 1.0
From:   Mingye Wang <arthur200126@gmail.com>
Date:   Tue, 4 Apr 2023 13:52:01 +0800
Message-ID: <CAD66C+YQKWJQNv2i=8+BuL3Z5NzDQsG-1izhVxZ549xhMTTUjA@mail.gmail.com>
Subject: [RFC PATCH] malloc_usable_size.3: Warn about _FORTIFY_SOURCE interaction
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, siddhesh@gotplt.org
Content-Type: multipart/mixed; boundary="000000000000d51d6d05f87c463b"
X-Spam-Status: No, score=0.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--000000000000d51d6d05f87c463b
Content-Type: text/plain; charset="UTF-8"

Hi all,

In (somewhat) recent discussions about _FORTIFY_SOURCE level 3, a
common snag to hit seems to be abuse of malloc_usable_size(). The
attached patch is my attempt at making the situation easier to sort
through.

See siddhesh's comment on GitHub.[0] I wonder if the language needs to
be stronger.
  [0]: https://github.com/systemd/systemd/issues/22801#issuecomment-1343041481

Best,
Mingye Wang (Artoria2e5)

--000000000000d51d6d05f87c463b
Content-Type: application/octet-stream; 
	name="0001-malloc_usable_size.3-Warn-about-_FORTIFY_SOURCE-inte.patch"
Content-Disposition: attachment; 
	filename="0001-malloc_usable_size.3-Warn-about-_FORTIFY_SOURCE-inte.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_lg1uc25m0>
X-Attachment-Id: f_lg1uc25m0

RnJvbSBmMDYxNTIyNzY0ZWM0MTdlODA2MjJkYjU1Nzg1M2MyZDc0OTNiYmI3IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBNaW5neWUgV2FuZyA8YXJ0aHVyMjAwMTI2QGdtYWlsLmNvbT4K
RGF0ZTogVHVlLCA0IEFwciAyMDIzIDEzOjQzOjM5ICswODAwClN1YmplY3Q6IFtQQVRDSF0gbWFs
bG9jX3VzYWJsZV9zaXplLjM6IFdhcm4gYWJvdXQgX0ZPUlRJRllfU09VUkNFIGludGVyYWN0aW9u
CgpBYnVzZSBvZiBtYWxsb2NfdXNhYmxlX3NpemUoKSBpcyBjb21tb24gZW5vdWdoIHRvIHNuYXAg
dXAgUmVkaGF0J3MKdHJpYWxzIG9mIC1EX0ZPUlRJRllfU09VUkNFPTMuICBXYXJuIGFnYWluc3Qg
dGhpcyB0byBlYXNlIGRlYnVnZ2luZy4KClNpZ25lZC1PZmYtYnk6IE1pbmd5ZSBXYW5nIDxhcnRo
dXIyMDAxMjZAZ21haWwuY29tPgotLS0KIG1hbjMvbWFsbG9jX3VzYWJsZV9zaXplLjMgfCA5ICsr
KysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL21h
bjMvbWFsbG9jX3VzYWJsZV9zaXplLjMgYi9tYW4zL21hbGxvY191c2FibGVfc2l6ZS4zCmluZGV4
IDc1NGIyNTVkZS4uMTM2MWU2ZjFlIDEwMDY0NAotLS0gYS9tYW4zL21hbGxvY191c2FibGVfc2l6
ZS4zCisrKyBiL21hbjMvbWFsbG9jX3VzYWJsZV9zaXplLjMKQEAgLTYyLDUgKzYyLDE0IEBAIHRo
ZSBudW1iZXIgb2YgZXhjZXNzIGJ5dGVzIGluIGFuIGFsbG9jYXRpb24gZGVwZW5kcyBvbgogdGhl
IHVuZGVybHlpbmcgaW1wbGVtZW50YXRpb24uCiAuUFAKIFRoZSBtYWluIHVzZSBvZiB0aGlzIGZ1
bmN0aW9uIGlzIGZvciBkZWJ1Z2dpbmcgYW5kIGludHJvc3BlY3Rpb24uCisuUFAKKy5CUiBXYXJu
aW5nIDoKK1NvbWUgcHJvZ3JhbXMgYWJ1c2UKKy5CUiBtYWxsb2NfdXNhYmxlX3NpemUgKCkKK3Rv
IHJlZHVjZSB0aGUgbnVtYmVyIG9mIGNhbGxzIHRvCisuQlIgcmVhbGxvYyAoMykuCitTdWNoIHVz
ZSB3aWxsIGNvbmZ1c2UKKy5CUiBfRk9SVElGWV9TT1VSQ0UKK2xldmVsIDMsIGFzIGl0IG9ubHkg
a2VlcHMgdHJhY2sgb2YgdGhlIG9yaWdpbmFsIHJlcXVlc3RlZCBzaXplLgogLlNIIFNFRSBBTFNP
CiAuQlIgbWFsbG9jICgzKQotLSAKMi40MC4wLndpbmRvd3MuMQoK
--000000000000d51d6d05f87c463b--
