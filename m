Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8B598BE647
	for <lists+linux-man@lfdr.de>; Wed, 25 Sep 2019 22:23:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732204AbfIYUXd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 25 Sep 2019 16:23:33 -0400
Received: from mail-ed1-f49.google.com ([209.85.208.49]:39539 "EHLO
        mail-ed1-f49.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732181AbfIYUXd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 25 Sep 2019 16:23:33 -0400
Received: by mail-ed1-f49.google.com with SMTP id a15so4294560edt.6
        for <linux-man@vger.kernel.org>; Wed, 25 Sep 2019 13:23:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=MMeZZ//mGvk6VPuLkQt5Y8gcCSSbS7FSpRBm+Aun0Xg=;
        b=t1yj3y20JuTxxC52Ezzp9LlMuZRan9spzeQC7cihwdMwRLDw4ZbylQHc1gPRYO/mnO
         xnCacZEe3iniwXsqkKl0xziCBicpb7PGfbdMt+AhSSbnQBljY//wGIUeTvaX98IAz98P
         n3Db+H8IBca/4OJKPinuYKDQIT5BI8tetouikrHN9jCbMZMfKpWATGlyUzoZYE9GvALy
         z1dmlo5xuuhWx6hsPH27pog19msAQVGmUdlkvEzM2BMqDgEVp5N+5hhPU87ntUTSmTxI
         Hk/ytfyWrBM7RMht9lq8OG3X8pij2saPZsdf20kD/KU6QR3mK1uTzDrA7w/jX1ImFhgn
         OAwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=MMeZZ//mGvk6VPuLkQt5Y8gcCSSbS7FSpRBm+Aun0Xg=;
        b=VLp0avJEExl5PUb7oMcdFvXFcoiZyDLGu4snGqBNxdmk+W0EMyXwtrioOr7Rhw8ry1
         bIEl0+h7d1qFpdZ+rr5b8oPan9WgkERUf+oZrrtza/Qm4iEGguz/YicYf8mBNwf5Sj/W
         /U1O/J0JQlhyWzdRyhprQi7cSkKd5P8Z3rrj7X4vBtYRE0c4paUszIg4pHyXCEX3g4A7
         nyWrVortm2gXpymuMnrZlgTQn1g7RsuQXLIQ2Au+lt0MX4CQc92w9VBSRKzwxrU7Q9gL
         hpMKq9n5T98VKOT3QBa+9VQCcFQgSfgvY7q0mwjW8dV0E5YxOfNJp13AocL/y9ypqwxA
         v05Q==
X-Gm-Message-State: APjAAAVJ7YIEhe0V2UMgRRr5Zvewo63jSVG6fRqSAfhTs/gxsipv86ce
        WMMTE0aKj/LnugKmSPFZSSVIbNcT7nPGuyGGHyM=
X-Google-Smtp-Source: APXvYqwAwh2/n1i4NuVW5uAsxogpbIW042xyc4TxAFvgpdV2zzOlqiVBS5WjyrECmmX4hgWDAyvEBDjRs70R+IfKGsY=
X-Received: by 2002:a05:6402:1858:: with SMTP id v24mr5075017edy.130.1569443011324;
 Wed, 25 Sep 2019 13:23:31 -0700 (PDT)
MIME-Version: 1.0
References: <CAMzzPGLKmjvTMJV=VAbi_Vz79Y3dSsNKDY4toJk4pRnUgg93eA@mail.gmail.com>
In-Reply-To: <CAMzzPGLKmjvTMJV=VAbi_Vz79Y3dSsNKDY4toJk4pRnUgg93eA@mail.gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Wed, 25 Sep 2019 22:23:20 +0200
Message-ID: <CAKgNAkhiCe7EAWRbhAtvEus=jsMDr_DrD0cM_j0CN7z5Nuuz5A@mail.gmail.com>
Subject: Re: https://www.manpagez.com/man/5/launchd.plist/
To:     Dick Guertin <dick.guertin@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Sorry Dirk, this is still not the right place to report this bug. This
manual page is part of *some* other project.

On Wed, 25 Sep 2019 at 22:15, Dick Guertin <dick.guertin@gmail.com> wrote:
>
> I'm reporting a deficiency in 'launchd.plist(5)' for
> 'StartCalendarInterval'.  The numeric ranges are NOT shown, as they
> were for 'crontab(5)'.  I'm referring to HOUR, MINUTE, MONTH, and
> DAY-OF-MONTH and DAY-OF-WEEK.  Some of these ranges begin with 0,
> and some with 1.  That's why it's important to SHOW THE RANGES in the
> documentation.  Dick.Guertin



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
