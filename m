Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D21EF155A83
	for <lists+linux-man@lfdr.de>; Fri,  7 Feb 2020 16:19:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726674AbgBGPTI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Feb 2020 10:19:08 -0500
Received: from mail-ed1-f48.google.com ([209.85.208.48]:34032 "EHLO
        mail-ed1-f48.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726899AbgBGPTH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Feb 2020 10:19:07 -0500
Received: by mail-ed1-f48.google.com with SMTP id r18so2788184edl.1
        for <linux-man@vger.kernel.org>; Fri, 07 Feb 2020 07:19:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=rvWLGbtdY1Gf0eDN93rwlESogU8DTWwaOsB62sO0tgY=;
        b=QYa7yVAOFzBJnB2YPce5c8bOmLDa63HDi2r93bdP0X/RLdhEFlEojTDVLgMRQ4Rr6v
         TvUbb69mdrxICyfmOTubBXJnw79on59el7TrTCU4E2x9sczX1UBVLhx34ZZpDOUQg3ON
         q3UsTnawPFuGC9F1fxuDUAhcFt1aRz5yR7fbF8BJWgX1coFx8UvN//Bga/eN6VgFLvrs
         Gl4KxQoLvyTrKzXRawjpQmxdnXcfDd+9IufGVcBm8lX/qF6dE145yfW2LtPUxcSmplka
         +Twwbd7AjJhXmxjxsItPDqmJ/9iGJFRNOHvsGc7UMjFA2z1lgzlEuVP/VuVMvwcgsMDm
         zmvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=rvWLGbtdY1Gf0eDN93rwlESogU8DTWwaOsB62sO0tgY=;
        b=jScqKiiV4kZft2SU//O2MMPrqag9VQ9yD2rbyKNae6chzITqjxefdjrovtIrmDCLu4
         WGmwjdqx69q7iU2n5RGYkXbXifv1J8rYorHHTxNh5rS4WZpmc4JCNBVMlzoxLycRskMs
         5m0LmhjLRWwaND1y3jCfk0rSFFBV7zlJm1rwDhAbp6jFtuAnDUA0M0sQshMzqRNKMBT1
         nB3Djv9rT6MGtIcSPTbytOs37sKKm7WNcK+a8KfSDPAwlJnAZzpVowTrEuSp9DJgq6GW
         wwZEYkVO2PRFRuYYnrINUf3L4iwoxkdCAeqXLYJvr4zahx86cdKty91fKc7QRDy2asxE
         4zCQ==
X-Gm-Message-State: APjAAAXAavRZ7TNYIuJ7YrUbZZKBJhOPtGWgM4oc3sIYURLMPG1bKbYG
        q/hm4dRBKNLtWomYs6cEYKGzwuIvjnJGY/Pq2/8bmT0h
X-Google-Smtp-Source: APXvYqzc4LH/PBehZnTZTNrabaLLleIsxioAVKcWJWb/VTzWqVRytiHTXYY1wja6FNYHaBbOkIsigTA9BqdVv6XDw8k=
X-Received: by 2002:a17:906:f0d6:: with SMTP id dk22mr8708165ejb.307.1581088746028;
 Fri, 07 Feb 2020 07:19:06 -0800 (PST)
MIME-Version: 1.0
References: <CAEQewpoNS=ZmxuYHhQ-O8+5Qsgk5aYxW8eu4LKzJj9SDzaUXwg@mail.gmail.com>
In-Reply-To: <CAEQewpoNS=ZmxuYHhQ-O8+5Qsgk5aYxW8eu4LKzJj9SDzaUXwg@mail.gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Fri, 7 Feb 2020 16:18:55 +0100
Message-ID: <CAKgNAkhMWu2MRgpNZqmHRfXxKS5G0gfsmPw0vfFdM51HpGAteA@mail.gmail.com>
Subject: Re: Typo in epoll.7 man page
To:     Jona Christopher Sahnwaldt <jc@sahnwaldt.de>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Jona,

On Mon, 27 Jan 2020 at 20:45, Jona Christopher Sahnwaldt
<jc@sahnwaldt.de> wrote:
>
> http://man7.org/linux/man-pages/man7/epoll.7.html
>
> "waiting on the same the same"
>
> should be
>
> "waiting on the same"

Thanks for the report. By chance someone else reported the same issue
just a few days earlier, and it has already been fixed in the Git
repo.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
