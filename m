Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 028362A2B3D
	for <lists+linux-man@lfdr.de>; Mon,  2 Nov 2020 14:09:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728729AbgKBNJY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 2 Nov 2020 08:09:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36262 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728511AbgKBNJY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 2 Nov 2020 08:09:24 -0500
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com [IPv6:2607:f8b0:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26013C0617A6
        for <linux-man@vger.kernel.org>; Mon,  2 Nov 2020 05:09:24 -0800 (PST)
Received: by mail-ot1-x341.google.com with SMTP id g19so3074792otp.13
        for <linux-man@vger.kernel.org>; Mon, 02 Nov 2020 05:09:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=Q4BmgWtYqlO2Xa4+kQ9v8Zo76TtS4aKfIw3/rDWjfIw=;
        b=BWRKcLPk07iMvkA0s5K2LqNw/EYsbwW86A/SWHKi4CX4FfJFvW+RCv9r7fkTlbjX/j
         NvBYTia4nD2SS40pkg8pGa7tt4r0ofWPMnzzsL+juTwrKKRM3O5VPsCpp5etHxNEPUpn
         GGhfAVnA7ZfkA3yqJ2h311JxDZM+l1bt120fofGVxqRWEj+0wlUpcjjnlbGrzAD0co00
         /aHxmVrtYizyFJxIqsnFtlOkabAiC5Vy4B8HxH9HEn0pK1SBgZ0pAG381SzEK/iltRb2
         Le9VVGOE3DxQLwldwn0V2/ut5044PQK3F3EGDQJvJMY2lhv/YKLJ/MyFxFTtPNNMOQ0X
         VpmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=Q4BmgWtYqlO2Xa4+kQ9v8Zo76TtS4aKfIw3/rDWjfIw=;
        b=YdNcz6g1nJf68IhC8WKISLoIosS7VW7jH7zcsRpqJC+E16xx6VCTu4J32YXfrTVJL+
         A0v5Ae5mKsE1rsvlm4CI/BGrWgaXtCCwdYFmjn3Z1zYwCbtaov5oTH7Hl8DvRZmGpFOW
         h2l0HFTP9agUYDiMN7CKQpwRyNRlep7y9hE5rbOwG7m/lVcsXUv1ztoD2bIwOVMa2EtI
         xfiVinfxEdaL+jRXKa8Z6ffIqKnR0HaDcs3JRLk1vM+pALkZaSpMXDZeGowNfcHWsKZc
         o2HDB7GP13GsbddUrPhcSxxPtMKLWSAWPTJrWF0Q/9ZZ6Gl/GQ53eykvAv1aX3cLQjZ7
         +DEw==
X-Gm-Message-State: AOAM533nC6u0+PSg/CzC85NvoSiI9dXrH3VPHygIOvTmjBgiTE88WL8H
        M6FOVWdvQO75pDTGyHkOj/9bPjLjk7UE56sNlWk=
X-Google-Smtp-Source: ABdhPJzn48rVTSeMdaICgI7SpzO3QXas+c03T+w+afjvy/cf3i0g1Z/JO2H5Fhlhqa7y3LW/M6nXwciMrmRz3hxW7h0=
X-Received: by 2002:a9d:5183:: with SMTP id y3mr12589608otg.308.1604322563472;
 Mon, 02 Nov 2020 05:09:23 -0800 (PST)
MIME-Version: 1.0
References: <20201101135957.90237-1-colomar.6.4.3@gmail.com>
 <6362993f-88d7-5dd4-91b2-03d31ebc8bab@gmail.com> <4de611f0-27e7-164a-bd40-21d276c015be@gmail.com>
In-Reply-To: <4de611f0-27e7-164a-bd40-21d276c015be@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 2 Nov 2020 14:09:12 +0100
Message-ID: <CAKgNAkjcXEY+Gjstpg-038QeApEaGvW=Z803ZbmSmJ5KXz7vNQ@mail.gmail.com>
Subject: Re: [PATCH] io_setup.2: SYNOPSIS: return long
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On Mon, 2 Nov 2020 at 13:20, Alejandro Colomar <colomar.6.4.3@gmail.com> wrote:
>
> On 2020-11-02 08:37, Michael Kerrisk (man-pages) wrote:
>  > Hi Alex,
>  >
>  > On 11/1/20 2:59 PM, Alejandro Colomar wrote:
>  >> The Linux kernel uses a long as the return type for this syscall.
>  >> As glibc provides no wrapper, use the same types the kernel uses.
>  >
>  > I think we need this patch for all of the io* pages, right?
>
> Hi Michael,
>
> For some reason, no.  AFAICS, only io_setup() really uses 'long'.

But is not SYSCALL_DEFINEX() producing a prototype with return value
'long' in all the cases? (I have not checked, I just presume so.)

Thanks,

Michael




-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
