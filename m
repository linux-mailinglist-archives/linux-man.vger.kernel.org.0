Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2C39A338885
	for <lists+linux-man@lfdr.de>; Fri, 12 Mar 2021 10:24:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232808AbhCLJXd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 12 Mar 2021 04:23:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232806AbhCLJXT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 12 Mar 2021 04:23:19 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E040C061574
        for <linux-man@vger.kernel.org>; Fri, 12 Mar 2021 01:23:19 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id d191so3340871wmd.2
        for <linux-man@vger.kernel.org>; Fri, 12 Mar 2021 01:23:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=XN+kgXiaee9ET7pLxKsHu6g3d9jnqizdIw4qPXxbTmY=;
        b=gj8aUyR0cXIbK1OVty5najmzIk2NY1baDIk61MfabyVzvy7CObw3qw4A+2PAcbjcrh
         /O9Y0fZcFreDTnURF0u/9AsOHjkBQB6ktf9+wFW6JWHaGrwJIvDeZ50N5CoTMfA0UqpS
         ZSCpXY3mRRm17fmTKhrH6dAyt56Q0tGBDNz3GLooZZyL9sqKD3WS/6vp/goMPc8wNuTA
         X7qNanaHauORJfcj/zNyZVqjUQlj4pc7mKceqrBa4ukDAhwIiAOdvysmbcOGYHQ7n1XO
         +lxDTNSLq5aUmWvbJr8XamQmE37Fe47NYO1GsJZcD0gZJJFLPbh2ZujZowDXlUgDIyAf
         475g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:cc:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=XN+kgXiaee9ET7pLxKsHu6g3d9jnqizdIw4qPXxbTmY=;
        b=rZ756aWUvDtGgr+wGnmldOZKFu0OhwpvtJrlWzcGNyZ4SClflcZd94+wECRbgZA4VB
         B6CLIpa9R9k8AJ+Tau7D4PyZyy1EINtWsGASe+4rvHOafte2wxjdMs3NWyx7EE2UgLy0
         xLL0NaEQVIUZE6lHoMyIa2KX1GFK7F0v78d/1w5dFE2IArbCAEgrd/myd84paR+g5Zh0
         HgiLEHxx9UtayAVNAc5Mlz+xhowj+jCLETNCjhB2l8p8M5d/9YrPqlq4hPIu3v7XGkTd
         4ryd8xcrDuOiwUi7k19j3JgGl5Gmsj4gEJhcJNJPx7Bt+x0xbRWoCy9toO6PUMLvdWn2
         7gYw==
X-Gm-Message-State: AOAM533pM0danCt32/9OSfUgpqi10r+IVXRPrArj2p/uba4q+5ecuYqr
        S/q2rvHJh4pvwwVqxPBF4KQr8rznddE=
X-Google-Smtp-Source: ABdhPJwx6Tg59bEDv1vsVztAOlIQp0Y5n7z7V7LxSFJerlT/KdFpQV26r6J1CHz+4Kq6SW+c9MLMVA==
X-Received: by 2002:a1c:f404:: with SMTP id z4mr12370066wma.39.1615540997806;
        Fri, 12 Mar 2021 01:23:17 -0800 (PST)
Received: from [10.8.0.206] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id a131sm1489833wmc.48.2021.03.12.01.23.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Mar 2021 01:23:17 -0800 (PST)
Subject: Re: open.3p: Query regarding section reference
To:     Utkarsh Singh <utkarsh190601@gmail.com>
References: <87a6r87umg.fsf@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <2c59de9b-bd9e-ee07-6d39-f8e510e7bb6f@gmail.com>
Date:   Fri, 12 Mar 2021 10:23:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <87a6r87umg.fsf@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

[CC += linux-man@]

Hi Utkarsh,

On 3/12/21 7:29 AM, Utkarsh Singh wrote:
> Hi Alex,
> 
> Some man-pages contain section reference such as(open.3p):
> Section 2.14, File Descriptor Allocation
> 
> Are these from POSIX.1 standards or some more exhaustive documentation?
> 

Yes, those are from the POSIX.1 standard.  If you have a look at the top 
of 'man 3posix open' (or 'man 3p open' for short), which reads from the 
file 'open.3p', you'll see:

[
OPEN(3POSIX)         POSIX Programmer's Manual        OPEN(3POSIX)

PROLOG
        This  manual page is part of the POSIX Programmer's Manual.
        The Linux implementation of this interface may differ (con‐
        sult  the  corresponding  Linux  manual page for details of
        Linux behavior), or the interface may not be implemented on
        Linux.

NAME
        open, openat — open file

SYNOPSIS
        #include <sys/stat.h>
        #include <fcntl.h>

        int open(const char *path, int oflag, ...);
        int openat(int fd, const char *path, int oflag, ...);

]

And at the bottom of the page:

[
COPYRIGHT
        Portions of this text are reprinted and reproduced in elec‐
        tronic  form from IEEE Std 1003.1-2017, Standard for Infor‐
        mation Technology -- Portable  Operating  System  Interface
        (POSIX),  The  Open Group Base Specifications Issue 7, 2018
        Edition, Copyright (C) 2018 by the Institute of  Electrical
        and  Electronics Engineers, Inc and The Open Group.  In the
        event of any discrepancy between this version and the orig‐
        inal  IEEE  and  The Open Group Standard, the original IEEE
        and The Open Group Standard is the  referee  document.  The
        original    Standard    can    be    obtained   online   at
        http://www.opengroup.org/unix/online.html .

        Any typographical or formatting errors that appear in  this
        page  are  most  likely  to have been introduced during the
        conversion of the source files to man page format.  To  re‐
        port   such   errors,  see  https://www.kernel.org/doc/man-
        pages/reporting_bugs.html .

IEEE/The Open Group            2017                   OPEN(3POSIX)
]

As you can see, these .3p files are created with scripts, from the 
original POSIX HTML files.

We have them in this separate repository:
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages-posix.git/about/>

Regards,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
