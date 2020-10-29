Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E96E529E9F2
	for <lists+linux-man@lfdr.de>; Thu, 29 Oct 2020 12:04:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727191AbgJ2LER (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Oct 2020 07:04:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33376 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726071AbgJ2LEQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 29 Oct 2020 07:04:16 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C9BFC0613CF;
        Thu, 29 Oct 2020 04:04:16 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id 13so1955100wmf.0;
        Thu, 29 Oct 2020 04:04:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:references:cc:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=zcPYz8S2wXEmW4dS41Qn2A338/K8CGnPDRkKEY4clDQ=;
        b=d65dGmhZDEcE3Mesu4orSPWJobICIQDaoPNQvxtUoqopsrkhJ2PR0/BumksGcgfEZW
         RiTqznlgwnYxBrakQQJr4RV8Mm+J+X1sWhLpTBVrMczQfC5mahOfYTA+2eYqt97sVuKM
         g+ghZK420PwYHtXEJEnh2AJu+aWrbaWW/Ia3muFAdtmxPnQloZiwTmVFMFS/dgEoRjUj
         eCKOgAYt+7lGNqohKgoWu/dtjzZ/jsFaKPJbP5IMWyk/IX/YNX0O6kiIsooo18hudpk7
         juLPJjTQ3b/Op6JjVlElvswMDoBok7BW+wVimVC3SEf2PofUUofhsQnUu8BP9i8ugYmd
         sqww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:references:cc:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=zcPYz8S2wXEmW4dS41Qn2A338/K8CGnPDRkKEY4clDQ=;
        b=LsVR4+DfY6zUpuyKIdyCM6B1KdIMFy7Kq4Gmzf18P/kh+fC0FQst9I14+RuEgMlsrl
         Djnsx+agnrUns18I1d0J/+I4CslEo1f+H5m/8M0aYySbzg6D9dxGynL/6MSvMqDx5iCq
         IWOqn/c8QX7qb04HZpOSspQ/vSBSbiMrHGypIPzz+1YB13PcC0+4FLKf0KMU4fuGc3Pt
         6lSmqjvcAnbgSE9svyHwzf2qFfutu8fCwxhlrqx5nqju7PBYD3bliMEwfNdQGBIzwivf
         u/RF+SOKzKElAS/TBeZumtWYdN1E7225dbWjZOW8oZbSqjflSB9dvrHDKa2e+WqId/I3
         EbRg==
X-Gm-Message-State: AOAM533kcWPKNlFXnDtjYLeR/vQYvZ8xwLwV1l/eZC8Dgy/MZ9OJNNe0
        P5ZvbGUBTtpGRxT3u5CKsSM=
X-Google-Smtp-Source: ABdhPJyYJNttqjwzD4T5vJ3/Y0blARIcaT4t1esjg+fT6Gfym4cbM+jsgXNMVKURDaywJYuwRkthGQ==
X-Received: by 2002:a1c:2d8f:: with SMTP id t137mr3713521wmt.26.1603969455284;
        Thu, 29 Oct 2020 04:04:15 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id l16sm4460532wrx.5.2020.10.29.04.04.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Oct 2020 04:04:14 -0700 (PDT)
Subject: Re: Possible bug in getdents64()?
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     libc-help@sourceware.org
References: <829387c9-50d7-3d29-83bf-c4fec17cf9dd@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <01065580-8602-52e6-0cca-22d1aa20a540@gmail.com>
Date:   Thu, 29 Oct 2020 12:04:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <829387c9-50d7-3d29-83bf-c4fec17cf9dd@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

[[ CC += linux-man, linux-kernel, libc-alpha, mtk ]]

On 2020-10-28 20:26, Alejandro Colomar wrote:
> The manual page for getdents64() says the prototype should be the 
> following:
> 
>         int getdents64(unsigned int fd, struct linux_dirent64 *dirp,
>                      unsigned int count);
> 
> 
> Note the type of 'count': 'unsigned int'
> (usually a 32-bit unsigned integer).
> And the Linux kernel seems to use those types (fs/readdir.c:351):
> 
> SYSCALL_DEFINE3(getdents64, unsigned int, fd,
>          struct linux_dirent64 __user *, dirent,
>          unsigned int, count)
> {
> ...
> }
> 
> But glibc uses 'size_t' (usually a 64-bit unsigned integer)
> for the parameter 'count' (sysdeps/unix/linux/getdents64.c:25):
> 
> 
> /* The kernel struct linux_dirent64 matches the 'struct dirent64' type.  */
> ssize_t
> __getdents64 (int fd, void *buf, size_t nbytes)
> {
>    /* The system call takes an unsigned int argument, and some length
>       checks in the kernel use an int type.  */
>    if (nbytes > INT_MAX)
>      nbytes = INT_MAX;
>    return INLINE_SYSCALL_CALL (getdents64, fd, buf, nbytes);
> }
> libc_hidden_def (__getdents64)
> weak_alias (__getdents64, getdents64)
> 
> 
> 
> Isn't it undefined behavior to pass a variable of a different (larger) 
> type to a variadic function than what it expects?
> 
> Is that behavior defined in this implementation?
> 
> Wouldn't a cast to 'unsigned int' be needed?
> 
> 
> Thanks,
> 
> Alex
