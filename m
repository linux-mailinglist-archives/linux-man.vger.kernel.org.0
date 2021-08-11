Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8D31E3E9AF3
	for <lists+linux-man@lfdr.de>; Thu, 12 Aug 2021 00:34:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232456AbhHKWe3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 11 Aug 2021 18:34:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57436 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232434AbhHKWe3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 11 Aug 2021 18:34:29 -0400
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com [IPv6:2607:f8b0:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D585BC061765
        for <linux-man@vger.kernel.org>; Wed, 11 Aug 2021 15:34:04 -0700 (PDT)
Received: by mail-ot1-x32e.google.com with SMTP id r19-20020a0568301353b029050aa53c3801so5326983otq.2
        for <linux-man@vger.kernel.org>; Wed, 11 Aug 2021 15:34:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=IyKMIFsJbyuQf/L4XnMa230lBxdICbX8Ny0eFLxi2EA=;
        b=EZ+Mk39VQ2FVgSOHuGphN1t0RKgzVEZj3w4F8+nB2ACaIOQmJ9q8/DHrpb21YaEGgR
         Gvt662SpraFTPJB43tDh8lt83SD3clsCAvvnt6O1nE6F/3pGz6KVCY8NYHPfZUlsaNPY
         SCMNECdiV+2QwCgd0YhOPiARRenKz8ZHzeaeiTsZEKgiAe6gLnM4GXd0GdMM1TGgdfV8
         TnTvDpr5RRp9Ab88P6+k/ICkg4RT5WflXUixGJV9NMPnFv7K3BTfEDct+Z4TuZTmI+6d
         qEvbiOuzfzeGqX7Pmn18rcWPRQQfmgkKNHZE9eAz0MLdOqjiRrk7vOUveG5bxp6Es74E
         vOlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=IyKMIFsJbyuQf/L4XnMa230lBxdICbX8Ny0eFLxi2EA=;
        b=q9TXWYLMLs+B56XI+UpHTXLr2uRonF/kLsF5vIWpFJ+tkM/wUDkN30n5M3QP8dWRHa
         HpKid+k2rNb4acY5NijG/rTRc2dwU/7cwe/e5SYuK9gqQErNm9DfeuPwIv4oWD7GhNTk
         q4nON6HXfUPyj2W2fAoqMnqXz67DICAqZASKvdHAyq0Z4BXc82cByu3+s9JCqNu1RIeS
         GlmI0igBGzHQt6bQu6NkfWH0Mc4aMrHQsDN9ecXYnnCrPO+4ni/XwH+JnSThUXeip9SG
         53fX1K0L2HMi202tdC+4WK34lFlA9c14vixcITC+Ig7P81Lwv6tXHzIlz+x9cESRP2l7
         m64g==
X-Gm-Message-State: AOAM533Y4jpaN3rMom1c2yLnlEOVIqBGg0XG9hrlFiOuhq14ZNourDSS
        gQEAlmrfSd+8FCTfydCPt9I2+4xZWWKZDKvVSjwAz73k
X-Google-Smtp-Source: ABdhPJyK+mff9i7xoUoU8OVs8wStcyJOMz7IH1rXLPe2YSY8oDXg77TX5ZC3JV+V3BqcNKS2QzPwtjvNX+pnPuLFWl0=
X-Received: by 2002:a9d:86e:: with SMTP id 101mr1031360oty.114.1628721244243;
 Wed, 11 Aug 2021 15:34:04 -0700 (PDT)
MIME-Version: 1.0
References: <20210728202008.3158-1-alx.manpages@gmail.com> <20210728202008.3158-8-alx.manpages@gmail.com>
 <78b9440a-1e5b-3f2f-65f7-e222dfa1e477@gmail.com> <557edcab-8036-9249-e7bb-cb4e3765f59d@gmail.com>
 <5d08063e-5109-3ea3-30d0-77af0c842029@gmail.com> <6372ea2d-e10b-0f71-126e-201363b0c6f9@gmail.com>
 <bZx77Wr724ZA6_R6yNtLRnnVtw6BkglNw8OOn8wgTeqUQkweplmlpNpywT_orgMA6BjKkQ7_XKS60BXG1uIqu35Ov9onsqt_bBsGR-l34Ac=@spmail.info>
In-Reply-To: <bZx77Wr724ZA6_R6yNtLRnnVtw6BkglNw8OOn8wgTeqUQkweplmlpNpywT_orgMA6BjKkQ7_XKS60BXG1uIqu35Ov9onsqt_bBsGR-l34Ac=@spmail.info>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Thu, 12 Aug 2021 00:33:52 +0200
Message-ID: <CAKgNAkjwp46ja_Zu=tUjR6YxraW5nk3cHWg3d5rj+h0oOV=E0Q@mail.gmail.com>
Subject: Re: [PATCH 07/32] printf.3: wfix
To:     Sergey Petrakov <kr@spmail.info>
Cc:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Sergey,

[...]

> I'm sorry that I didn't include this explanation in the
> initial email.

No problem. We're all learning...

Cheers,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
