Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5A26B44B908
	for <lists+linux-man@lfdr.de>; Tue,  9 Nov 2021 23:52:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243483AbhKIWzL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 9 Nov 2021 17:55:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57866 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243290AbhKIWy5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 9 Nov 2021 17:54:57 -0500
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BAB13C04A41D
        for <linux-man@vger.kernel.org>; Tue,  9 Nov 2021 14:28:11 -0800 (PST)
Received: by mail-lf1-x12e.google.com with SMTP id bu18so1215270lfb.0
        for <linux-man@vger.kernel.org>; Tue, 09 Nov 2021 14:28:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=MvDNfpr7cGeYQW494BeM5c6EyoTEZTzkAIfJaWCUni0=;
        b=scZps4IbLGm/DEOEvqLeFHWzk39jGCgt6LjYAWUONqqmk6nnJvpBRFuaSYzceVtii5
         gDdVkOyZP+6nF7HrfwC6s/r0TbKx4OOqdUgNxCJXTLwM8mVgm6ySqrIUVF4w0DN9DR1n
         04EMzkq9YpJPdDXXsolTOHYzX1nweZeq3duqIv8+aG46Z7zMvQQ2Ro9x21/m2bVl/t7H
         eWA6JU5WF4iTUEXE8zfLCWq++RGjZRg89/fIb+PCI/fA4RUJ5G+784U8jtAgZXoLWTyk
         OYEcy3jYjG21qUtmAYDLzo6Sp0UZfwW1CT7JSCU9pYsTmIwnzmj1+zs2g8uojA0CPRdg
         +R6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=MvDNfpr7cGeYQW494BeM5c6EyoTEZTzkAIfJaWCUni0=;
        b=QsRqm3S/HkefylyFPS76DxbM+uPTNezI5WSLyhLKqgGZ/MzzeGjnvX6GLM+QxpolPc
         wKo6VjlnQZWoHhUCuNSrKKQ6b8xKURrKC+iFGfjRhLknVo5Cz65uCcZoU/+fiE6Vi7/v
         8QplpExPKR4FGBKNbzrTdf0f8EfWbtHjm09ahNXP3hRdLJF8vcN0H8M2f23jvac2AnmS
         S4V3fQeolcBcKjbzZ4cpbK+gTypbJ4FERfq6NJmOvhBpQQhQkhlE2f1FtQdKYPoRJgSP
         N++hZ+Pp6VGeKnhZr3MJxk860GBLDb6471G4PnwwH7hx2Cn7B/9aEiFjsWXFxmYOHlM0
         tsfg==
X-Gm-Message-State: AOAM532I/4oZ6bxp2+FDmLBu2OdEZRobJ5ULW+g3YqL8jlMeB/jDHcTl
        e+x8nu6GZUbI5gL/v1VkRWxwUrd9M8NjN4ET/lW2WyQ4tUaH5oGF
X-Google-Smtp-Source: ABdhPJwo8bMW37OmGpALHJb5yKqqO1CoIZKSCOCta1We/MzL+U6uC35V7fzQQRjJY9GaDO6tI2/Eh5r7TRRja+ZKnfw=
X-Received: by 2002:a05:6512:3341:: with SMTP id y1mr10274415lfd.645.1636496889846;
 Tue, 09 Nov 2021 14:28:09 -0800 (PST)
MIME-Version: 1.0
From:   enh <enh@google.com>
Date:   Tue, 9 Nov 2021 14:27:59 -0800
Message-ID: <CAJgzZoqZ1yfFtP0Zbc+i5aGS1bn6VJu2dHaa9CJhJr2P7QfSiQ@mail.gmail.com>
Subject: [PATCH] pthread_atfork.3: wfix.
To:     linux-man <linux-man@vger.kernel.org>
Cc:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Clarify that the pthread_atfork() callback list is a global, not
per-thread.

The use of "this thread" implied to some readers that pthread_atfork()
maintained per-thread lists of callbacks. Given that the next sentence
already explains that the callbacks are run in the context of the thread
that calls fork(), I actually think it would be fine not to mention
threads at all in the earlier sentence, but for now I've gone with what
I think was intended to be written.
---
 man3/pthread_atfork.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/pthread_atfork.3 b/man3/pthread_atfork.3
index b727cb48e..3e61e797f 100644
--- a/man3/pthread_atfork.3
+++ b/man3/pthread_atfork.3
@@ -39,7 +39,7 @@ The
 .BR pthread_atfork ()
 function registers fork handlers that are to be executed when
 .BR fork (2)
-is called by this thread.
+is called by any thread in a process.
 The handlers are executed in the context of the thread that calls
 .BR fork (2).
 .PP
-- 
2.34.0.rc0.344.g81b53c2807-goog
