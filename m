Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D2DA2787BFA
	for <lists+linux-man@lfdr.de>; Fri, 25 Aug 2023 01:26:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235709AbjHXX0B (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 24 Aug 2023 19:26:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52304 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244320AbjHXXZW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 24 Aug 2023 19:25:22 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7539212D
        for <linux-man@vger.kernel.org>; Thu, 24 Aug 2023 16:25:09 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-40057e09bbaso2905465e9.3
        for <linux-man@vger.kernel.org>; Thu, 24 Aug 2023 16:25:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692919508; x=1693524308;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=EOXQed/GutgSngtgQkiIxN51QqZIn6QUAVtQejW8Sb8=;
        b=S6maP8ESguWYsDUCDfFj3+J+SMiJUeiFiuPISVxAfWl6mEavmX2wl1BeSETowADE7+
         vXnoXAjkwLD+fBDCZbhE/MzCiNm8ISLf669NPTBmY9h4erpNHZb2Tq/Tohvahdu2IkeC
         HNQFV4zwfWerKZB8GEiEUnyoUWpvwB9MYAqCiNL8HndB9POckx68swVhSkhYZTXddkPm
         id2aXvZU3DgbCsy8uT+QHO3c4ZBWRF96kUR2AbODJQ3NPvxF3KALHsHa0PIHX2wff/no
         FUzOOKiM5TJ4kSFL6ZQqaNm3IEPcLP2/Rbgadi7EMU91XGkcdJGnj+w/UlZnqDYzGTqX
         u3yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692919508; x=1693524308;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EOXQed/GutgSngtgQkiIxN51QqZIn6QUAVtQejW8Sb8=;
        b=D03RXquP4kHxGXv2ZJG+VvhHDXSqk7oHDJwRmDH/dXvwNtPYSverLjKJ+BieqiUN9V
         Yj3N+oiv4UymWNuend/ipczKVjzk4ljGoaZ+NaaxpO3ntf7j12T3d3j3ipwC01fhh6/S
         d2RdQKgI5J0LviEaRA7a5w0kZqePkN5By3q0HQXkw1AIFVhRN2ZtjTFpTw3r8dl7aMZl
         OQjQAOGRl6BTt8JEVc2QzNOxNr8gKqPMGM4Md6luPvardoskLHqDB2mLUOeYcdrWaSNj
         ncT1cUJSUagekHQ+LYRHUFF3mbYG+Yr9lAZJKq9a62Pk8ry4Xz1paDT0UNJWES+tHRcS
         m4ww==
X-Gm-Message-State: AOJu0YwVIf6iQtmyN0WgZq+JzsswQkGkJVpVsvRxyXkPxpcSltokm1G+
        RyHpS33UwdHPpMxPsW2x4EIlrH9sQFtvvg==
X-Google-Smtp-Source: AGHT+IFXVrYEqfdSav49qvQam9A4NA4ScJeq1u/oH+Vd/lsky46icHTLJrd77v9vslEsML5y35QOwg==
X-Received: by 2002:a05:600c:204b:b0:3fe:485f:ed1b with SMTP id p11-20020a05600c204b00b003fe485fed1bmr13739429wmg.28.1692919508050;
        Thu, 24 Aug 2023 16:25:08 -0700 (PDT)
Received: from t420 (net-93-70-31-151.cust.vodafonedsl.it. [93.70.31.151])
        by smtp.gmail.com with ESMTPSA id d15-20020a5d538f000000b0031ae8d86af4sm446908wrv.103.2023.08.24.16.25.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Aug 2023 16:25:07 -0700 (PDT)
Date:   Fri, 25 Aug 2023 01:25:05 +0200
From:   Emanuele Torre <torreemanuele6@gmail.com>
To:     alx@kernel.org
Cc:     linux-man@vger.kernel.org
Subject: [man-pages] pidfd_send_signal(2) innacurately describes how to get a
 pidfd
Message-ID: <ZOfm0VZha-CLDYgX@t420>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/2.2.11 (2023-08-18)
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi.

Today, I was reading pidfd_send_signal(2), and I was suprised to see it
mentioning that you can get a PID file descriptor by opening a /proc/pid
directory.

  NOTES
    PID file descriptors
      The pidfd argument is a PID file descriptor, a file descriptor
      that refers to  process.  Such a file descriptor can be obtained
      in any of the following ways:
       .  by opening a /proc/pid directory;
       .  using pidfd_open(2); or
       .  via the PID file descriptor that is returned by a call to
          clone(2) or clone3(2) that specifies the CLONE_PIDFD flag.

Unfortunately, if you open /proc/123, you don't get a pidfd for the
process with pid 123; as expected, you will just get a directory file
descriptor for /proc/123.

And that directory file descriptor won't be usable as a PID file
descriptor either.
(openpidfd, and pidfdgetfd are just simple wrappers for pidfd_open, and
pidfd_getfd)

  $ pidfdgetfd 9 0 0 echo hello 9</proc/1584616
  pidfd_getfd: Bad file descriptor
  $ # you must use pidfd_open
  $ openpidfd 9 1584616 pidfdgetfd 9 0 0 echo hello
  hello

I also wrote a test program that uses a /proc/pid directory file
descriptor as pidfd for  waitid(P_PID)  and that also didnd't work
(waitid fails with EINVAL).

But those directory file descriptors do work as alternative to actual
pidfds for  pidfd_send_signal(2)  specifically.

I think the documentation should be changed to say that
pidfd_send_signal accepts either a PID file descriptor (obtainable using
pidfd_open or CLONE_PIDFD), or, alternatively, a file descriptor for a
/proc/pid directory to avoid confusions.

Thank you.

o/
 emanuele6
