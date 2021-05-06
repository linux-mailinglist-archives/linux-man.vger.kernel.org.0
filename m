Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C5348375327
	for <lists+linux-man@lfdr.de>; Thu,  6 May 2021 13:45:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230372AbhEFLqM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 6 May 2021 07:46:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229777AbhEFLqM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 6 May 2021 07:46:12 -0400
Received: from mail-ua1-x930.google.com (mail-ua1-x930.google.com [IPv6:2607:f8b0:4864:20::930])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 276DFC061574
        for <linux-man@vger.kernel.org>; Thu,  6 May 2021 04:45:13 -0700 (PDT)
Received: by mail-ua1-x930.google.com with SMTP id n61so1609988uan.2
        for <linux-man@vger.kernel.org>; Thu, 06 May 2021 04:45:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=LhAYn5PKNVtwtw7yQHxTSqGozrCT/ZVUl4KW7UIY7Ls=;
        b=D96ShaMo6sgs8l/qLqeHlLzH5oK6XAUUAmVpk/efRMXlhnCeEFUQUUCRA0i/8Eb1xF
         R4QI0nn6m9T/nVIykcFry8XKIJdbPQ8aFrp8mdkZTqGkLntsyBGa2nIxF1p3IKiFAAJG
         ivUmbFYLmbsvaefqelpRW1F1T7UfWATLkiFjdpO3w9KUHNJllODeZhccOsXAXIXz96Fu
         evaZXAc8mRGPfgh2Sf1FiRgBLj37I/nKOBhzoxKr59lEEczPDzc4EBAeMwCk3ZQZ6RoF
         Gx6U0Yp/g4xVsuKDCEvYEVMOxs7Hsv4xCmUY0q8b/uXsaJFyFV9gHUIkEBae2C3RjqX/
         g3yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=LhAYn5PKNVtwtw7yQHxTSqGozrCT/ZVUl4KW7UIY7Ls=;
        b=aDF25ahzLsTOTEE5cJ6uCfhVc6LrBjHx+iqu3AdhvGj+cxe1wx3/wjxIprDkYqOT+4
         uqRibpx001Np2pV0K3ZIkFRLmRG+yPMplFDVQyTwgfJapECxHYpoFEOcntuAKU7eEVkO
         FRKPBFmr4GDOgjegmhDD/u/eMMDx8z/0wuPzNoxY/5ireWbQSGh1qxTRdLIUkoDddLPs
         n2a8B43FCKFos7UT0R6DbXhtDY+7G+KQgeBG8h4rWNT/7ECj6jWW3marSRKsaRiCJQha
         Ybd+iTnYqAQ9v7BWIbG1jxgq9LfoDijxub2m74CIUJmjARh24/lWG+jC1CkQtsW77wtN
         mLdw==
X-Gm-Message-State: AOAM531cdTLnXSDAF1tpoWmYFNhEZ3J0D9uxAoBSKwwNx6n6YL2YtbEz
        kAI9y8RbXXhaFBY3fZWycncRF5OytkvCxS5oIQjP3CcVR30QLQ==
X-Google-Smtp-Source: ABdhPJyBPT7or46gNiQIbZxNjXg4tqoElrffW2CaUOz0vWKv2BJpRjBCWneddrTIz4fEHnRBB6FtkMMB8+1230J2X+0=
X-Received: by 2002:a9f:2334:: with SMTP id 49mr2959694uae.69.1620301512227;
 Thu, 06 May 2021 04:45:12 -0700 (PDT)
MIME-Version: 1.0
From:   Akihiro Motoki <amotoki@gmail.com>
Date:   Thu, 6 May 2021 20:46:30 +0900
Message-ID: <CALhU9tkuovaHEhB6u6iL=V7+B51FYWEuBgRuekSojiibXnUzOw@mail.gmail.com>
Subject: [patch] fanotify.7: ffix
To:     linux-man@vger.kernel.org
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        alx.manpages@gmail.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

diff --git a/man7/fanotify.7 b/man7/fanotify.7
index ebe5c1d7f..6a7e70d75 100644
--- a/man7/fanotify.7
+++ b/man7/fanotify.7
@@ -147,7 +147,7 @@ influences what data structures are returned to
the event listener for each
 event.
 Events reported to a group initialized with one of these flags will
 use file handles to identify filesystem objects instead of file descriptors.
-.TP
+.PP
 After a successful
 .BR read (2),
 the read buffer contains one or more of the following structures:
