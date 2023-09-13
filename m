Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5C03C79F27E
	for <lists+linux-man@lfdr.de>; Wed, 13 Sep 2023 21:58:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230146AbjIMT6x (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 13 Sep 2023 15:58:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43518 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229642AbjIMT6x (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 13 Sep 2023 15:58:53 -0400
Received: from mail-qv1-xf34.google.com (mail-qv1-xf34.google.com [IPv6:2607:f8b0:4864:20::f34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE00C9E
        for <linux-man@vger.kernel.org>; Wed, 13 Sep 2023 12:58:48 -0700 (PDT)
Received: by mail-qv1-xf34.google.com with SMTP id 6a1803df08f44-64f3ad95ec0so1421936d6.1
        for <linux-man@vger.kernel.org>; Wed, 13 Sep 2023 12:58:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1694635128; x=1695239928; darn=vger.kernel.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=FqgvIWkJdlx21g04okFRgtRlTS254zep39AcX6YwBmw=;
        b=H2YY6QOlDzHP5iE4E4L0Witfsroeq8KFQt6ewBgfumggFo0ADT6MFA9jvSklrshKWC
         cxXPWQkVv9ghVr/dc3+ygkSWMV3pBiM47BPSDXpHiAGnGBbzeIJYyS6oVHy8rhIPYlVk
         hqXpY2nRbk7eE97drduEl8P3Y5/4lC3LgjWxLki6TEk7EEtIOVgQgOsPpf2qfSRe2QXz
         5KTGixuAy/05pFytJOPSPUemUE/+9Phlkvfy+Bs68G0f9ZXnoJ7Qo5u+Fv6JAQkKDvhC
         8/glCm/ljmssaLbS1cPRWbIHBXuaIQBlma3gKyBUzy3Ia5BEDK1XKwFQ6AVV5UCD/QhJ
         r/Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694635128; x=1695239928;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FqgvIWkJdlx21g04okFRgtRlTS254zep39AcX6YwBmw=;
        b=IiTFUdMOZaDmEMDtZ/Ta+Uw8VIcs4gqz5+F58hvMBaPIftJOh5MgmrK/DHYQw8LO/d
         qrPyw0was9jvSJdhy4+2myOS4LjfysgciiILUZHQ9fIoLw7RTTM/wILXc2BoqfcXr5h1
         o9vJe2lChgpnV1ZcAXMJ0ILxr7cxDQZGAizFCsZ40P7+JuzLLYvTkOpVgIgGK02u4Lvm
         VWE5aM5IgthfPbxYbsu4AqznMUIoXAXsYorkCJNg69/sKb1YZ8Mz0c/5o0Dga5SgTwsf
         1mLSP8VqH6kCSgjUAnnF9BxrAKzMXXlC/SEMRt5zWS+ryFy0gyhfHYQIBC5IfN8PZxO+
         /mtQ==
X-Gm-Message-State: AOJu0YzPtyQ/NJNKIK/N61iHUPDCXZIAKq28SkNGv3S0o9w8WjnhRt8E
        dzD1dnuVAJjDcHazGXvXy895aR84FtlXqoik6lmYsoBMRQWgDh3JrR84WtPQ
X-Google-Smtp-Source: AGHT+IELKPHLIIEcneKsBtIlNpD/QAkNisATNh37JpwPzjvEVYAJiAzZ47AGtP+axSsHj6FY8HpA9urBUmgSQ4+i54w=
X-Received: by 2002:a05:6214:5d90:b0:651:6e04:820 with SMTP id
 mf16-20020a0562145d9000b006516e040820mr3444171qvb.58.1694635127901; Wed, 13
 Sep 2023 12:58:47 -0700 (PDT)
MIME-Version: 1.0
From:   enh <enh@google.com>
Date:   Wed, 13 Sep 2023 12:58:36 -0700
Message-ID: <CAJgzZorvpAWUBMSWODo-AUBWD7ZwRtPVZ2V_DuzWbYWeBvvZsg@mail.gmail.com>
Subject: 3p page wording
To:     linux-man <linux-man@vger.kernel.org>,
        "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

is it a requirement that the 3p pages only contain text that's
explicitly in POSIX? the siginfo_t::si_addr description on
system_data_types.7 (which is what people see if they `man siginfo_t`)
says "Address of faulting instruction", which isn't true for all
signals, and caused enough confusion for the ART maintainers that they
came to me as Android's libc maintainer for an adjudication. meanwhile
the sigaction.2 page says "Memory location which caused fault" which
seems much more helpful.

i _was_ going to send you a patch, but then i checked
https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/signal.h.html
which has the same unfortunate "Address of faulting instruction"
wording. at which point i assume you want me to file an Austin Group
bug (which i'll do anyway:
https://www.austingroupbugs.net/view.php?id=1775), and presumably wait
for POSIX's wording to improve before changing system_data_types.7?
