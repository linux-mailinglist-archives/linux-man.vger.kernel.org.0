Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 83A4038226D
	for <lists+linux-man@lfdr.de>; Mon, 17 May 2021 02:59:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231491AbhEQBAe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 16 May 2021 21:00:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229948AbhEQBAd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 16 May 2021 21:00:33 -0400
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com [IPv6:2607:f8b0:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3AD06C061573
        for <linux-man@vger.kernel.org>; Sun, 16 May 2021 17:59:18 -0700 (PDT)
Received: by mail-ot1-x332.google.com with SMTP id i23-20020a9d68d70000b02902dc19ed4c15so4262940oto.0
        for <linux-man@vger.kernel.org>; Sun, 16 May 2021 17:59:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=ES5E7amYwbLlAQOvEgIm5FLuDDNxfriXAqTc5eMmg58=;
        b=JMkdk0rbdzKJraB7hpW3xJ+csW1iDd9OuZkZ5SQfSbAFfN2JFR0WrKXHLq4Df1N7yk
         9w62Iqn+v3GLyXwKc0BXinq7WickuU39x3zTj6RJAJ4XAxvqM0HVAlUPhrmSBKrS5qiZ
         SaEQRhqs1nFOBhwqCdQ3XsRLxCNgo/7zjN68ZbpWaCY/2c6fyf1p5Xl7mZBEDOMG49UK
         mdMf6ClefmGSCIewaJV8C24cQkLHM0NXFovIRX4oYeUpNn1B417pbL7AGwypRTIq4pd2
         oen8khr8ABkTa4lgE6N8PC9tEGMLxr0Yh/1N2CnrQtZnb+Hl3NljF+ivRwVEPPWqaJdz
         /Q+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=ES5E7amYwbLlAQOvEgIm5FLuDDNxfriXAqTc5eMmg58=;
        b=pWgXVXg690i+I057UIYh1I5CtwUdxDNPgpsLQzPxINdTQVhCJMj+tODC6Q7bKintzO
         /xQpc3r3Q7ttYKQsPuKr+Zilpq07IceaypOH1bsl1gq8IDC7WBDQx2m+0nVV88BAcXZv
         kmqV9UOcT1rqHpQLE4tdUXjjKdi6cvAEzJ2/H6zk5cdxX5HTvbLpzvPlSmMWFITJOi/Y
         iCZPDGBAjYSeLiWgRXhsSzWXNmwNutzQiO8fJSGrmLdz5QwZCJI2KKOGfYHTRURsGqmj
         +mClnlik5zXPgD6Ue4ImkM1ZONGLYA73pzl+ZBkb7cbJDLtJncYdB/1zAjimBGsPFyVF
         cShw==
X-Gm-Message-State: AOAM531iCmSnCkhIhs2OE6fY6ZFUwWiW1gKOZrR+2/56vDpKzgObR7t9
        E1BsKWu0PcjoeNThxZsjXZviq/GoDHTkqAbwXilmuGlt1AA=
X-Google-Smtp-Source: ABdhPJyaeVWDWc+pShcSapC5evcqSxLA1pZxQ1wC3WXMz2G2wc630VHMJ7XYoxovjbFxA0Ts6E76C+658MFzALIgnYI=
X-Received: by 2002:a05:6830:a:: with SMTP id c10mr39880248otp.114.1621213157667;
 Sun, 16 May 2021 17:59:17 -0700 (PDT)
MIME-Version: 1.0
References: <CAKHXDapvxah-BSSqdNSn1Dfgi-e02fd_gTiE0nWNNUTJx26YWg@mail.gmail.com>
 <CAKHXDaosEJJWw76UCAuvDkS4+4EGreQBG_HVL=T4Oss6wye_qA@mail.gmail.com>
In-Reply-To: <CAKHXDaosEJJWw76UCAuvDkS4+4EGreQBG_HVL=T4Oss6wye_qA@mail.gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 17 May 2021 12:59:06 +1200
Message-ID: <CAKgNAkhD4qeq412Qqj52sF=o2GkygqaDRziVKV1D8g5ELc1Vww@mail.gmail.com>
Subject: Re: tm_gmtoff field of struct tm is now undocumented
To:     Katsuhiro Numata <byakkomon@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Thank you Katsuhiro,

I have applied the following patch:

--- a/man3/ctime.3
+++ b/man3/ctime.3
@@ -425,6 +425,7 @@ The glibc version of \fIstruct tm\fP has additional fields
 .PP
 .in +4n
 .EX
+long tm_gmtoff;           /* Seconds east of UTC */
 const char *tm_zone;      /* Timezone abbreviation */
 .EE
 .in

Cheers,

Michael

On Mon, 17 May 2021 at 06:10, Katsuhiro Numata <byakkomon@gmail.com> wrote:
>
> I am sending it to the correct address (linux-man@vger.kernel.org).
>
> Sorry to bother you.
>
> ---------- Forwarded message ---------
> From: Katsuhiro Numata <byakkomon@gmail.com>
> Date: Mon, May 17, 2021 at 2:35 AM
> Subject: tm_gmtoff field of struct tm is now undocumented
> To: <mtk.manpages@gmail.com>, <alx.manpages@gmail.com>
> Cc: <man@vger.kernel.org>
>
>
> Hi, I suspect it was mistakenly removed in the following commit.
>
> https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/man3/ctime.3?id=ba39b288ab07149417867533821300256f310615&h=master
>
> Katsuhiro Numata



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
