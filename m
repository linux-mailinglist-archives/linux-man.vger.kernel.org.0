Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0050C11BDC8
	for <lists+linux-man@lfdr.de>; Wed, 11 Dec 2019 21:19:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726589AbfLKUTi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 11 Dec 2019 15:19:38 -0500
Received: from mail-lf1-f47.google.com ([209.85.167.47]:45350 "EHLO
        mail-lf1-f47.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726411AbfLKUTi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 11 Dec 2019 15:19:38 -0500
Received: by mail-lf1-f47.google.com with SMTP id 203so17659625lfa.12
        for <linux-man@vger.kernel.org>; Wed, 11 Dec 2019 12:19:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=pju48qXjPw6wHBCCXM2pOeNe2GpEEIDWLHXIgI3aDRQ=;
        b=Gntg9PRvzf5TFgSfcb8Xpq8HTJ1u6MnLapIoi6szLMxtDVLIFv15Ja6QvYEW/4k2WT
         sppin9uDGPXxkY+cUzysj3L+la1fftR3V0bqN/Bw+HsfhlSlHS/spHQiml0h4tE0k85s
         VaQBtRZ+JOfuLwb3zk2vzfCYO+Xw6BwetB74ny3a50QX4CIxhuBqDuCZFoMq6YQDhrU0
         rVuvrx8W54+jGd1YVryDW5Awdmu2tuR4+W9lxEQnmxB2LcRUGLI5NvsSjeSr/PVtB//G
         hS8jCMmulUeq1EqhFZDs2reMzoK0Nrb4VkZO9MuOZ1ze8u726OJ4agiogoFX+tKCQZLE
         I76Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=pju48qXjPw6wHBCCXM2pOeNe2GpEEIDWLHXIgI3aDRQ=;
        b=sEVsTmL2tXs+Hqj/h718qL1aoeoV4DDSweKTG8QnCnpNKKfXylNANdQQF6SvI6cuUv
         UOz7A2vD86peUzIYsBM10ObIcRfsXqsbcL5uhJ2ZZQ+RU2jgSMbHtCmQqCHpoPOEB5mE
         OSWs8JJu8Dl/B/CZDBrI9py94NUDXn9ulrC0soC1Hr8MrLEYFq+amkPzSkvRjfLAlrsF
         uW3uiU5WtChBy7U/WgZRW2Ds2yk7HnccyL1pQvzrfZ2w9H9i3l+EbdnIMNGc8QmVd13F
         sFg40atHdRjmyK2z2y7nnYA4dEaeTPNxjKWfAvrVsGqmfB84tdt2YrShzzRg7XGywwUM
         JJWQ==
X-Gm-Message-State: APjAAAW3cm2vQMKo/1EhdjyAntby8GBXp2wVBPoJ/OnEiVDtjV7Ajzpf
        wD300p6Tbbf9SHvDiby17yx8vKd4xNN+TNcWDIv1qDSb
X-Google-Smtp-Source: APXvYqyUiyiLR0KuWqOAf0CuikfGiRaQ9z7G9sTrAwf3agGK3pMjCR5k0xjMdhnaplyUVX4/g2iLcgm9dGLEFic+Xks=
X-Received: by 2002:a19:23cb:: with SMTP id j194mr3488934lfj.79.1576095575845;
 Wed, 11 Dec 2019 12:19:35 -0800 (PST)
MIME-Version: 1.0
From:   Robin Kuzmin <kuzmin.robin@gmail.com>
Date:   Wed, 11 Dec 2019 12:19:24 -0800
Message-ID: <CAAztzVHSQPAxY4zcmxtj8v8geEu=SJiSPPBBsZRxUeacxHO+-w@mail.gmail.com>
Subject: elf.5.html: Resolving confusion.
To:     mtk@man7.org, linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

http://man7.org/linux/man-pages/man5/elf.5.html

I see the fragment:

       A section header table index is a subscript into this array.  Some
       section header table indices are reserved: the initial entry and the
       indices between SHN_LORESERVE and SHN_HIRESERVE.  The initial entry
       is used in ELF extensions for e_phnum, e_shnum and e_strndx; in othe=
r
       cases, each field in the initial entry is set to zero.  An object
       file does not have sections for these special indices:

       SHN_UNDEF
              This value marks an undefined, missing, irrelevant, or other=
=E2=80=90
              wise meaningless section reference.

I interpret it like this:

       A section header table index **(e_shstrndx)** is a subscript
into this array.  Some
       section header table indices are reserved:
       the initial entry **(index 0)**
       and the indices **from** SHN_LORESERVE **to** SHN_HIRESERVE **,
inclusive**.
       **Such reserved indices, except SHN_XINDEX (0xffff), cannot be
used in e_shstrndx.
       If e_shstrndx is SHN_XINDEX (0xffff) then the sh_link filed of
the initial ElfN_Shdr cannot contain such reserved indices.**
       The **three fields in the** initial entry ** - sh_info, sh_size
and sh_link - can be** used in ELF extensions for e_phnum, e_shnum and
**e_shstrndx correspondingly**. **If they are not used then they are
set to zero. All other fields of the initial entry are set to zero.**
       **The section header table entries with the following special
indices contain special values,         and in the ELF file there are
no sections associated with such entries.**

       SHN_UNDEF
              This value marks an undefined, missing, irrelevant, or other=
=E2=80=90
              wise meaningless section reference.
              **This index can be 0 in which case it means the initial
ElfN_Shdr with a special meaning described above.**

Is such an interpretation correct?

---
Join us at C++Now 2020 in May!
Robin Kuzmin, CppNow Speaker Liaison, speakers@cppnow.org. Please
allow 2 - 4 days for my reply.

Robin Kuzmin, kuzmin.robin@gmail.com.
Please share your expert opinion about my recent posts:
* The Build System of My Dream (draft)
* Booleans
