Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3E6581DCDD2
	for <lists+linux-man@lfdr.de>; Thu, 21 May 2020 15:18:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728186AbgEUNSq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 21 May 2020 09:18:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43722 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727846AbgEUNSq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 21 May 2020 09:18:46 -0400
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com [IPv6:2a00:1450:4864:20::642])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E9915C061A0E
        for <linux-man@vger.kernel.org>; Thu, 21 May 2020 06:18:45 -0700 (PDT)
Received: by mail-ej1-x642.google.com with SMTP id yc10so8710949ejb.12
        for <linux-man@vger.kernel.org>; Thu, 21 May 2020 06:18:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=0bRMCCHSgKxGtVeRWJhmNHraLksHqaC9rctK/edwkQM=;
        b=b6uFnW5860tQauRBBcPSfSoV/P7f7VmFc/fC+HVM4W2STYYouh8EEWV5jklH2WcxxL
         iiT4FWoW46LpX3QwJ0o4r3xzuJtpfrQtdO4h24hdBSc3qqeDa7DBGgkm2xlcI4VR6WjJ
         iuicSzc0hq3YBpFxSDyA6xyUa4QRtMTEKwq5XXgfJrtWUrlaMrw2xZyKEp2i94ySPDW4
         N3eNlupnQjGfN6Nzvh1N0A3PcPjkf1oPIxc8fGh5k/dVnVvMZ71uXWvsuOJ0Srp/hPsw
         Sboq5WH5rH0qsL8HruxeT6z5qQgrE5V02CrJb4l5UUQVMAZRz1vynTLHoqP4vv1keep3
         tmZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=0bRMCCHSgKxGtVeRWJhmNHraLksHqaC9rctK/edwkQM=;
        b=dVT0avEkZLp2JALC+vRtp3kSp6EEoHdPFy9ByXp+mq6huFPuG8jiG+sCLfU2gkUU6E
         gVlZ+pDr86L14XYXApd9VOxG4GfIsifqfsn1Th1XcikV0f55HXlJxRoTBapc62rtXSuG
         /TuONNhsrvHqUNFDcUEpshTS38SeseG7lpNf1XwPmNTEmLVYYfSFYNcqv5JnFFDVhmXz
         TDGkByVUEuwb5G9SgOTbuKonNxvRTQa4CzpYlQ1fWu4iHDwu92ilXYZmHT5QnVsUtVKT
         dH8xeKm1nI+sgsFm/W+la6/tj5sp8gX0tWgiSS7bwvDVZHqhvHPu0OExHI75s3Kk8PAo
         kN1A==
X-Gm-Message-State: AOAM531Jzfc8e7i/nfj5ehqReGrgYrquXSj9hAMV7PugYyBtc56F2DbC
        +ZkDkOBc/LqLdbLBeEKvfOAIGhetBZE8MDX5fRs=
X-Google-Smtp-Source: ABdhPJyx7Q9ItcZQjRNSt54cZOqmBBXrZFot/xt0c3DnpEk8Z3EndJDNPzX3vTJpcBE18ZYm8i9QzwkurPx4+tn/7pI=
X-Received: by 2002:a17:906:2dc8:: with SMTP id h8mr3700497eji.108.1590067124542;
 Thu, 21 May 2020 06:18:44 -0700 (PDT)
MIME-Version: 1.0
References: <87a722a6yl.fsf@oldenburg2.str.redhat.com> <CAKgNAkgM-NKziND+x+LZkcgJz_LKE94BK6VYqOz2b+A2c6idJw@mail.gmail.com>
 <87a7218pbk.fsf@oldenburg2.str.redhat.com> <CAKgNAkgjre_oBAJtvV1aR597nH5o2aH6pzBgOrURnaC_Kh0gcw@mail.gmail.com>
In-Reply-To: <CAKgNAkgjre_oBAJtvV1aR597nH5o2aH6pzBgOrURnaC_Kh0gcw@mail.gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Thu, 21 May 2020 15:18:33 +0200
Message-ID: <CAKgNAki7AzuBnHOYuVL9kLh1VRe7y8CDkj99a2ru1NEUXnYHnw@mail.gmail.com>
Subject: Re: [PATCH] ldconfig.8: Mention new default for --format in glibc 2.32
To:     Florian Weimer <fweimer@redhat.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Amended patch applied. Thanks for sending this, Florian!

Cheers,

Michael

diff --git a/man8/ldconfig.8 b/man8/ldconfig.8
index eb9c86dae..f770f1463 100644
--- a/man8/ldconfig.8
+++ b/man8/ldconfig.8
@@ -125,8 +125,12 @@ Cache format to use:
 .IR old ,
 .IR new ,
 or
-.IR compat
-(default).
+.IR compat .
+Since glibc 2.32, the default is
+.IR new .
+.\" commit cad64f778aced84efdaa04ae64f8737b86f063ab
+Before that, it was
+.IR compat .
 .TP
 .BI "\-C " cache
 Use
