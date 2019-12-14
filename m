Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5C12611EFD2
	for <lists+linux-man@lfdr.de>; Sat, 14 Dec 2019 02:57:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726170AbfLNBz7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 13 Dec 2019 20:55:59 -0500
Received: from mail-ot1-f68.google.com ([209.85.210.68]:39830 "EHLO
        mail-ot1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726046AbfLNBz7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 13 Dec 2019 20:55:59 -0500
Received: by mail-ot1-f68.google.com with SMTP id 77so1374062oty.6
        for <linux-man@vger.kernel.org>; Fri, 13 Dec 2019 17:55:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=q8bT7L5SWKtfNEkF1UxNyh86GMf9hJ7jBrH+lGtBeoE=;
        b=YyW5E/opIGuyU7fg3pOL8bKFdbrQjFmEURF/NhzYGhw6tGtnFJnQmy+4Pqln+DrJE5
         3i0ptLDgYAtMFjrrrTjEPzvwNor+4w8xugR7sn94xgDPZHOnmpuu9eKEjgbcjBhWbOwb
         MFOz5psv30v139voKLtPLAJBgt5/5PyST57pwOBFMNuCHYpLZbfvnS2TN1x03Aw7yt1d
         OHSiWmAlce768KPyqKFJUUrFADn2eeysWGrLc8LzdW9NCw9njQ2Opd+b2v94K/7zl16R
         y/rCPXIBst4rb211BkFhECYENa8U9DyYuLAdSVx15z5peMfyl0zNlYP+26e+xIVGfEXe
         HwkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=q8bT7L5SWKtfNEkF1UxNyh86GMf9hJ7jBrH+lGtBeoE=;
        b=MywRNiEsxP9NuuBvVPVsdIDb+EXLaR5C8/huIsxTSmH7kr+QjqBPxQxMgNmTzILFaB
         TeDbUSTyYj741+R6wFLCWTCCIo/KQXFQAtcb0AORQva8bHYW5r/KXxJLgjt83wAFLp/d
         mZYZmetis2HNpG/gKQhsutkNn8zQFMOnQOTyoFPRXCLWmyefG3lZG3NHmzpszirCqpUJ
         vGFFp0dGS24Ng9xXaQeB8Pmg0D4WGphHyTkXEwOdyyBBNLiJqSzBFxmzbYtVJmFdyMf9
         vZRyU9LWqV9A+yxyLs4hjCI/quAeWw7DwArpOvBLJKuhkA5xHt4QmE8UvC59HRGSC8lJ
         bYvA==
X-Gm-Message-State: APjAAAX3LhMQWoDo7BNIwv0+gETc3la2RXDcVmTpjlmLHjJqmbpUhMDp
        aMxed+lDAhDIkfsY1omt5ROhPX4V9RM=
X-Google-Smtp-Source: APXvYqyYA39DzmhYPaGBs2f0YtoEy+C/E57ku+z1/1NkHZI2lyd8FI0WFln9pQu8XtrXNJ9LBbJ+Ww==
X-Received: by 2002:a9d:d0b:: with SMTP id 11mr18675965oti.287.1576288558199;
        Fri, 13 Dec 2019 17:55:58 -0800 (PST)
Received: from ?IPv6:2600:1700:dac0:2450::38? ([2600:1700:dac0:2450::38])
        by smtp.gmail.com with ESMTPSA id b206sm3976755oif.30.2019.12.13.17.55.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Dec 2019 17:55:57 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] quotactl.2: add EINVAL situation of Q_XQUOTARM call
To:     Yang Xu <xuyang2018.jy@cn.fujitsu.com>
References: <1575353153-18936-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <ca655f38-5269-d0bc-55df-74a74197e4dd@gmail.com>
Date:   Sat, 14 Dec 2019 02:55:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <1575353153-18936-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Yang Xu,

On 12/3/19 7:05 AM, Yang Xu wrote:
> Since kernel commit 3dd4d40b4208("xfs: Sanity check flags
> of Q_XQUOTARM call"), it has added flags check. If it is
> not usr,grp,prj quota type, it will report EINVAL.
> 
> Signed-off-by: Yang Xu <xuyang2018.jy@cn.fujitsu.com>
> ---
>  man2/quotactl.2 | 12 ++++++++++--
>  1 file changed, 10 insertions(+), 2 deletions(-)
> 
> diff --git a/man2/quotactl.2 b/man2/quotactl.2
> index 34d3cfca8..d636818bd 100644
> --- a/man2/quotactl.2
> +++ b/man2/quotactl.2
> @@ -666,8 +666,10 @@ value containing flags (the same as in
>  .I d_flags
>  field of
>  .I fs_disk_quota
> -structure) which identify what types of quota should be removed
> -(note that the quota type passed in the
> +structure, check flags since Linux 5.5)
> +.\" 3dd4d40b420846dd35869ccc8f8627feef2cff32
> +which identify what types of quota
> +should be removed(note that the quota type passed in the
>  .I cmd
>  argument is ignored, but should remain valid in order to pass preliminary
>  quotactl syscall handler checks).
> @@ -736,6 +738,12 @@ is
>  .BR Q_QUOTAON ,
>  but the specified quota file is corrupted.
>  .TP
> +.B EINVAL
> +.I cmd
> +is
> +.BR Q_XQUOTARM ,
> +but the addr does not point to valid quota types.
> +.TP
>  .B ENOENT
>  The file specified by
>  .I special

Thanks. I applied you patch, and then tweaked a little,
so that the change became as below.

Thanks,

Michael


diff --git a/man2/quotactl.2 b/man2/quotactl.2
index 34d3cfca8..43552a0d6 100644
--- a/man2/quotactl.2
+++ b/man2/quotactl.2
@@ -666,11 +666,13 @@ value containing flags (the same as in
 .I d_flags
 field of
 .I fs_disk_quota
-structure) which identify what types of quota should be removed
-(note that the quota type passed in the
+structure)
+which identify what types of quota
+should be removed.
+(Note that the quota type passed in the
 .I cmd
 argument is ignored, but should remain valid in order to pass preliminary
-quotactl syscall handler checks).
+quotactl syscall handler checks.)
 .IP
 Quotas must have already been turned off.
 The
@@ -736,6 +738,15 @@ is
 .BR Q_QUOTAON ,
 but the specified quota file is corrupted.
 .TP
+.BR EINVAL " (since Linux 5.5)"
+.\" 3dd4d40b420846dd35869ccc8f8627feef2cff32
+.I cmd
+is
+.BR Q_XQUOTARM ,
+but
+.I addr
+does not point to valid quota types.
+.TP
 .B ENOENT
 The file specified by
 .I special


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
