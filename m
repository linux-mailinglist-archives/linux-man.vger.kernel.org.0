Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B7726314EE2
	for <lists+linux-man@lfdr.de>; Tue,  9 Feb 2021 13:28:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229626AbhBIM2Z (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 9 Feb 2021 07:28:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43522 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229503AbhBIM2Y (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 9 Feb 2021 07:28:24 -0500
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5DD30C061786
        for <linux-man@vger.kernel.org>; Tue,  9 Feb 2021 04:27:44 -0800 (PST)
Received: by mail-ej1-x629.google.com with SMTP id jj19so31013699ejc.4
        for <linux-man@vger.kernel.org>; Tue, 09 Feb 2021 04:27:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=BOwyYXqV408vrsQ0qObVRTVlkAluUIzudoJs4Zic1K4=;
        b=HsrXJFmGuMrdEjhPfC8wubXUT1rJKUF9UZcoMCtZktbDn7xmAlVtAbEkn6VpsFfBLY
         lzEsfbhQxIIPZOgEmCjuQY9kFVJEppJdP1M8L7i2yQQaNV7Qwt97F1ooGXOIr2W7NC27
         Ks22x8YxmoB/X53ylklp70dQBIaoAS+tMzQzm+Mj2auoUgTnjgjR4FvqjfYLxW5Ytzqy
         siCO9IUvl9xNMGWY4wPuSzm9saXbOK74/u4wYHB142bSD4boCwo2vaWWOUkF/qcj+4xi
         0Tpjs4INVefedMEZNkMfmlr3M2YGGW0D6+BgSsO20zlu8jgF4C9q6DGCYpY2TZdY/sIB
         40hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=BOwyYXqV408vrsQ0qObVRTVlkAluUIzudoJs4Zic1K4=;
        b=etgA1Ir5FzslmEG4QMTpBfM3HM+3dAv+2VOXF1oHHdJmO9ggue7L8n4kBycgSFPjuR
         og+TtgwCCcj3GRpza0Fu8HeXYwvmKbBBLzpBJK3KDF2xkly4rW9HpIrH5iOr523KxhRn
         1szZbh/68SzKPnnyNjohnChpjKgZ3kJj8b/wNePvJGbMTQWDZjzETuEjNxGi4Xz4+zYd
         Uh49xoIkVPPvpKNnaAnvtLogwcQOqN+OArVGuYZ1kZGWzqAgFZ/lViKwQFwQVPl5Y9gH
         wIHNYhUzD3SqoVn7P5sZgjEHlxz5AnKvx/EHIMYNxefSKFzLqcrPeRD36MRMSl3TjCiu
         5rWw==
X-Gm-Message-State: AOAM532nFCbHr57Rd1wm1Ft7DICitnAiq4cFi2RYSjs5kbmE/4ZWefI2
        5pOFxbyVed//01ITflEK7Ew=
X-Google-Smtp-Source: ABdhPJxzIakx3/AoqDngLL4kFwf9iEYn/Gcc6Jo8EUtiMypTcDH41T75DQ+MrrwmUYYajn3ATnxkaw==
X-Received: by 2002:a17:906:7689:: with SMTP id o9mr22426866ejm.324.1612873662858;
        Tue, 09 Feb 2021 04:27:42 -0800 (PST)
Received: from ?IPv6:2001:a61:24ca:4d01:a815:d0d9:f754:e0ef? ([2001:a61:24ca:4d01:a815:d0d9:f754:e0ef])
        by smtp.gmail.com with ESMTPSA id b17sm11366218edv.56.2021.02.09.04.27.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Feb 2021 04:27:42 -0800 (PST)
Cc:     mtk.manpages@gmail.com, Alejandro Colomar <alx.manpages@gmail.com>
Subject: Re: Why does stat(2) say <unistd.h> is needed?
To:     Jonathan Wakely <jwakely@redhat.com>, linux-man@vger.kernel.org
References: <20210209110912.GX3008@redhat.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <cb10752b-3036-67d3-41c5-b9ef0954f7f9@gmail.com>
Date:   Tue, 9 Feb 2021 13:27:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210209110912.GX3008@redhat.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jonathan!

On 2/9/21 12:09 PM, Jonathan Wakely wrote:
> The stat(2) man page says:
> 
> SYNOPSIS
>         #include <sys/types.h>
>         #include <sys/stat.h>
>         #include <unistd.h>
> 
>         int stat(const char *pathname, struct stat *statbuf);
>         int fstat(int fd, struct stat *statbuf);
>         int lstat(const char *pathname, struct stat *statbuf);
> 
> But I don't see anything there that would require <unistd.h>. POSIX
> doesn't require it (and since POSIX.1-2001 no longer requires
> <sys/types.h>, saying "Although <sys/types.h> was required for
> conforming implementations of previous POSIX specifications, it was
> not required for UNIX applications.")
> 
> Is the inclusion of <unistd.h> there a mistake?

I do not know the reasons for it, but it has been there in
the manual page since 1993, and the reasons are thus lost
in the mists of the VCS and mailing list that the project
did not have back then :-}. By now, I'm prepared to classify
it as a mistake.

Thanks,

Michael

> I've been trying to track down why a libstdc++ header includes
> <unistd.h> for no apparent reason, and my best guess is that it's a
> result of this man page saying to do it.
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
