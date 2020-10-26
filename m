Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DF308299A54
	for <lists+linux-man@lfdr.de>; Tue, 27 Oct 2020 00:21:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2404504AbgJZXVa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 26 Oct 2020 19:21:30 -0400
Received: from mail-pj1-f68.google.com ([209.85.216.68]:40560 "EHLO
        mail-pj1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2404241AbgJZXVa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 26 Oct 2020 19:21:30 -0400
Received: by mail-pj1-f68.google.com with SMTP id l2so3852984pjt.5
        for <linux-man@vger.kernel.org>; Mon, 26 Oct 2020 16:21:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=z+9IxNMpsijatLEbNV67i4bcVXURqR5gmMYLEBYKB48=;
        b=RTv/4B4ivoCmujSiczKA//SI9s2kru5nHH7KHrhNnIrZDrt8i85SuOz4P10bPOX9EY
         +69NQVp9buJsVBCEE5Kdx48CBlR2kp0/iW45fgarbmjyVng8oz2GVisDOlDtm15k2VI6
         A3jE55OGy00eMhHJPxcvpY2opHCIq8pvaLs0hd5bVKVAUHtZQwCtL1pg2jQkDdMKKRYL
         3kIFlPKLik4qqdrgqGpPANMxuC2H75XrIOABF0TwE6InDWixqAQqGuDwVHv92VDviDN7
         +FNdYt4WV6c07K4GOocztutegJdyxWm3/Z5jdhOd0em5UOqxcHgW+FanVRnDICIvaPy4
         k2FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=z+9IxNMpsijatLEbNV67i4bcVXURqR5gmMYLEBYKB48=;
        b=fXrRH5oLShiUZBkCTiJkmozNLg2NcRO95YQS8+9laTmFofKwOG1R8bvm2MoR8zWZfG
         aOkHH9VY2nTGdtiPaxIFyUMMgLt37AMXkejJekRwd1MZfnYOk7kof9HHxZ7zFB0TqHS0
         yyPOn/BI0QeWQAL3Sfnhygm2RZFNvOoBIDb7lITdoLQdUrqWj2LWszm4UNeK90X+wlYY
         F/Afjjr2n3PEZiNc0L5eohJDGtv/mVi2RLN3mlutUJxfNiRQVWodXGRT6MEEfLTR0Emz
         CmMS4DunpXfFg6mL1w8/JRtlH75T9anUHbdcxTi7yPlN5ZfGZRkS/3o/BUCB++T0mdhv
         N7wg==
X-Gm-Message-State: AOAM530ouupJDmWEj9cqWXaoF/1GJLP2jzKMO/51dtiFppSrP7mbMyjm
        2ZBn/qWW9VIRRFAnIPqvuvqEdNfzEP61/a+28DQ=
X-Google-Smtp-Source: ABdhPJwmfcTfe65P/1nMPM9JdCMMfTarQcS4E1nQI13cckEeAglarW2Df9TJCvLVDEA/AUh+4wpogWed97tF4wu7oFI=
X-Received: by 2002:a17:90a:a389:: with SMTP id x9mr17906608pjp.99.1603754489579;
 Mon, 26 Oct 2020 16:21:29 -0700 (PDT)
MIME-Version: 1.0
References: <CAFDeuWPmWWHatxnZ9HsYN2fp3gagHOKCsKmVDj0F6us9XWKwFQ@mail.gmail.com>
 <20200913141808.GM3265@brightrain.aerifal.cx> <CAFDeuWM5Bu1Hq7FFUBvoxHJfEUTD=FDK35aJUQEYFGyCnx37NQ@mail.gmail.com>
In-Reply-To: <CAFDeuWM5Bu1Hq7FFUBvoxHJfEUTD=FDK35aJUQEYFGyCnx37NQ@mail.gmail.com>
From:   =?UTF-8?B?w4lyaWNvIFJvbGlt?= <erico.erc@gmail.com>
Date:   Mon, 26 Oct 2020 20:21:18 -0300
Message-ID: <CAFDeuWNrOMC=qrTLXdRO01ZUrBCKttn7+TWHDqr9hkTWS0QiyA@mail.gmail.com>
Subject: Re: [PATCH v3] posix_fallocate.3: add EOPNOTSUPP error code.
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, musl@lists.openwall.com,
        ericonr@disroot.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

As can be seen in

https://git.musl-libc.org/cgit/musl/tree/src/fcntl/posix_fallocate.c?id=73cc775bee53300c7cf759f37580220b18ac13d3

musl libc returns the syscall's errors directly, which means it doesn't
perform the same emulation as glibc, and can return EOPNOTSUPP to an
application, which isnt't listed in ERRORS.
---

Made a small correction to the formatting for fd.

 man3/posix_fallocate.3 | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/man3/posix_fallocate.3 b/man3/posix_fallocate.3
index 3152dd54f..8ea37261a 100644
--- a/man3/posix_fallocate.3
+++ b/man3/posix_fallocate.3
@@ -98,6 +98,13 @@ There is not enough space left on the device
containing the file
 referred to by
 .IR fd .
 .TP
+.B EOPNOTSUPP
+The filesystem containing the file referred to by
+.I fd
+does not support this operation.
+This error code can be returned by libc's that don't perform the
+emulation shown in NOTES, such as musl libc.
+.TP
 .B ESPIPE
 .I fd
 refers to a pipe.
-- 
2.29.0
