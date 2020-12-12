Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 508912D88D6
	for <lists+linux-man@lfdr.de>; Sat, 12 Dec 2020 18:59:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2439604AbgLLR7N (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Dec 2020 12:59:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2436681AbgLLR7N (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Dec 2020 12:59:13 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 464F1C0613CF;
        Sat, 12 Dec 2020 09:58:33 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id q75so11517709wme.2;
        Sat, 12 Dec 2020 09:58:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=pGBq0gS9Tvo+AD3qRB5qrYqHg9rdP4UpBRTiGVfHgMQ=;
        b=n3nX4RXUt0Y1qFxq5Y7ajmnaB01WSbjce38Le5nGxY1ex0QajFzqkBJj+wq8xwHzR9
         kApk2MDuYvdaP34XRvNZkkAMMnaypaDk2GbHTLPP1AQqLuQW0UyKyXQUPUZZNDfIf1J7
         hby7+sWa34J0X/kbqO9SDfkfWpAtpRUV+CmaqvEHYZFEzT+NNbrXHxzNrID3zTEWmRzJ
         8orC9HaKfqw8XK/+SHIq+or0E3UQAU40LT2Lnoo9uvAI/QXPqyPAfrUcEJPaVdS+9wV+
         07Q+QqjTEXHDOd3txtZK4jDqmv8udgzulj0dsyG6yucK1MkPGWIDrTgEqNTJit2A1qSK
         voOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=pGBq0gS9Tvo+AD3qRB5qrYqHg9rdP4UpBRTiGVfHgMQ=;
        b=BwpI/Ky084gt7rQNLrScDAOUiEGYflHeqnWNfwkN/7fidqilCNVuX8Kz7bMOX4LlMg
         e9RbKd6nx2r0K6RMSm8X167eNgRknyN1JTarhtmD8TnmHuVkiNbo2oxdX5hE7ifsa6VT
         olrN4CdytISwNlnDtGhmqzCqLfpaH2klHfvDCa4ixJqN/0CbwVpZ0GLx8SmrlvBjXybD
         9vbxtQqAiIP6vPfRnBQSYHUrEU3g7xc0GPjf0hxO9UlXfBSxN0b3goWl8bMgJQ1dEzGd
         u0YyS50SmtINBSH7BVGiE6j1oP/lmmljGj/4Hye5oArH/fr9xCfu9oSDDF3quAJ2w8Vm
         nU7g==
X-Gm-Message-State: AOAM533fUDGJDQebLlgm7KQgRGhvzesUCVoL6kNvP82pje7brAdjsGGB
        4DoJjDvfVVqc4sSeyCPaYgYiii77UUVZTA==
X-Google-Smtp-Source: ABdhPJyMY+cJlY/szbTAn6DDiJ9IIGgqR3RS1KVEOB55NyBzfUPpeaMGz4aEv7ia+ODU1rKnEbYKlQ==
X-Received: by 2002:a1c:a912:: with SMTP id s18mr19088413wme.26.1607795911156;
        Sat, 12 Dec 2020 09:58:31 -0800 (PST)
Received: from [192.168.0.160] ([170.253.49.0])
        by smtp.gmail.com with ESMTPSA id z8sm20894522wmg.17.2020.12.12.09.58.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Dec 2020 09:58:30 -0800 (PST)
Subject: Re: [patch] close_range.2: new page documenting close_range(2)
To:     Christian Brauner <christian.brauner@ubuntu.com>
Cc:     Stephen Kitt <steve@sk2.org>, linux-man@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-kernel@vger.kernel.org
References: <20201208215133.30575-1-steve@sk2.org>
 <20201209095817.7ksihhftmnd3c3hi@wittgenstein>
 <5f69d42d-c36d-b98a-3d00-7a5e7f489a07@gmail.com>
 <20201209105618.okw5lgcdikg5bvae@wittgenstein>
 <0ea38a7a-1c64-086e-3d64-38686f5b7856@gmail.com>
 <20201212121419.odpgbaigrjhpkjnm@wittgenstein>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <47a388ca-bcd8-d917-0a0a-cdbd185d6998@gmail.com>
Date:   Sat, 12 Dec 2020 18:58:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201212121419.odpgbaigrjhpkjnm@wittgenstein>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Christian,

Makes sense to me.

Thanks,

Alex

On 12/12/20 1:14 PM, Christian Brauner wrote:
> On Thu, Dec 10, 2020 at 03:36:42PM +0100, Alejandro Colomar (man-pages) wrote:
>> Hi Christian,
> 
> Hi Alex,
> 
>>
>> Thanks for confirming that behavior.  Seems reasonable.
>>
>> I was wondering...
>> If this call is equivalent to unshare(2)+{close(2) in a loop},
>> shouldn't it fail for the same reasons those syscalls can fail?
>>
>> What about the following errors?:
>>
>> From unshare(2):
>>
>>        EPERM  The calling process did not have the  required  privi‐
>>               leges for this operation.
> 
> unshare(CLONE_FILES) doesn't require any privileges. Only flags relevant
> to kernel/nsproxy.c:unshare_nsproxy_namespaces() require privileges,
> i.e.
> CLONE_NEWNS
> CLONE_NEWUTS
> CLONE_NEWIPC
> CLONE_NEWNET
> CLONE_NEWPID
> CLONE_NEWCGROUP
> CLONE_NEWTIME
> so the permissions are the same.
> 
>>
>> From close(2):
>>        EBADF  fd isn't a valid open file descriptor.
>>
>> OK, this one can't happen with the current code.
>> Let's say there are fds 1 to 10, and you call 'close_range(20,30,0)'.
>> It's a no-op (although it will still unshare if the flag is set).
>> But souldn't it fail with EBADF?
> 
> CLOSE_RANGE_UNSHARE should always give you a private file descriptor
> table independent of whether or not any file descriptors need to be
> closed. That's also how we documented the flag:
> 
> /* Unshare the file descriptor table before closing file descriptors. */
> #define CLOSE_RANGE_UNSHARE	(1U << 1)
> 
> A caller calling unshare(CLONE_FILES) and then an emulated close_range()
> or the proper close_range() syscall wants to make sure that all unwanted
> file descriptors are closed (if any) and that no new file descriptors
> can be injected afterwards. If you skip the unshare(CLONE_FILES) because
> there are no fds to be closed you open up a race window. It would also
> be annoying for userspace if they _may_ have received a private file
> descriptor table but only if any fds needed to be closed.
> 
> If people really were extremely keen about skipping the unshare when no
> fd needs to be closed then this could become a new flag. But I really
> don't think that's necessary and also doesn't make a lot of sense, imho.
> 
>>
>>        EINTR  The close() call was interrupted by a signal; see sig‐
>>               nal(7).
>>
>>        EIO    An I/O error occurred.
>>
>>        ENOSPC, EDQUOT
>>               On NFS, these errors are not normally reported against
>>               the first write which exceeds  the  available  storage
>>               space,  but  instead  against  a  subsequent write(2),
>>               fsync(2), or close().
> 
> None of these will be seen by userspace because close_range() currently
> ignores all errors after it has begun closing files.
> 
> Christian
> 
