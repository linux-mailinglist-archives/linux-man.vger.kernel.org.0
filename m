Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 34CC31444F8
	for <lists+linux-man@lfdr.de>; Tue, 21 Jan 2020 20:21:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727360AbgAUTVN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 21 Jan 2020 14:21:13 -0500
Received: from mail-pj1-f49.google.com ([209.85.216.49]:50527 "EHLO
        mail-pj1-f49.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726926AbgAUTVN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 21 Jan 2020 14:21:13 -0500
Received: by mail-pj1-f49.google.com with SMTP id r67so1841332pjb.0
        for <linux-man@vger.kernel.org>; Tue, 21 Jan 2020 11:21:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=oZnLoixBWew0WvNIB7K+qyRUb/nXGHGp5H8je4t4lD8=;
        b=RmiZ5KwnPNTn+ce0EVsdvdqx9HQDDg2cFDqZ2qDYq5FDoSgxX7X+7fH5HbjEbhoSFl
         543IpuCJO98/NCPWoVjWPcHBvqzNA+Tt9o5k3ghuXkCpAr9Tf0IEZZ+96dZDIDQpfYZ4
         ulvcne6zdeXbCvLKLTSofzeDpNn/twRia0ahkaTp50CzVhyrjGfRHGrESTOi57OZZIE+
         mu9PnnrJsARdrMWbBd0BCUG1T6crDFt72qF3NYVvW8yx0BDfYsDNBkJhcPlEH0sw9UAL
         Z3mEgYy/AkgAN+4FI5beyLO/v5XTXFdkyCPxcOOqBzxV5Fi5Hw+kpWiVHhmYFq/9tgvF
         czxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=oZnLoixBWew0WvNIB7K+qyRUb/nXGHGp5H8je4t4lD8=;
        b=a2+wMVOiA+8HBA/VNv1a6neG6+t23/F/Br3Csug3tA9ajBRdsfAGmDGzdQMsnpYsgM
         Ra9OlT3TDD48vbIQssrXMy2uN7N2FoD1JZVvIHoBe2aMGmFP+NpjEFUuNNyQuyAalP2z
         awtB2b+e9TrTeHhTMjBaBZwuAe/Et4P335UvasL6VAWktuC10FsPwngvaSj3GqOIY2u8
         awjf3OPP8AjiLE2Skk8fGcCQdhuTFi/cpv8ArqpgStgqblzkt9KBw/tWc8HW9xY1XrEo
         auivDRJ81TT+Eo8AddgWu1EskQbrfBFRfId51U2SLWnzNPR6k2e1J/JsElQGbdIqgx6Y
         Jtkg==
X-Gm-Message-State: APjAAAVX1UcnzNV/UK4kaXxNxE2eRxsRMbwgW7jbcR1DYnVdwQ4912dd
        OYwrlvB8OckrCeC2LmuNu5pxFjes
X-Google-Smtp-Source: APXvYqxkraKIs87IH4xE+m8T6puiy4BgQysQtkdfwUBl9jaEEIHeE4gg15dlWiHo/2mj9oyJPGt90g==
X-Received: by 2002:a17:90a:8545:: with SMTP id a5mr22717pjw.43.1579634472240;
        Tue, 21 Jan 2020 11:21:12 -0800 (PST)
Received: from [192.168.1.72] (122-58-99-230-adsl.sparkbb.co.nz. [122.58.99.230])
        by smtp.gmail.com with ESMTPSA id z14sm12723247pgj.43.2020.01.21.11.21.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jan 2020 11:21:11 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Small typo in man page "epoll"
To:     John Jones <jmjatlanta@gmail.com>
References: <fae37d64-11e3-9441-0ffe-3bc3aac38825@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <f1e60fff-3854-bb50-895a-972ab9c92759@gmail.com>
Date:   Tue, 21 Jan 2020 20:21:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <fae37d64-11e3-9441-0ffe-3bc3aac38825@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 1/20/20 12:10 PM, John Jones wrote:
> Thank you for your efforts.
> 
> http://man7.org/linux/man-pages/man7/epoll.7.html
> 
> In the section "Level-triggered and edge-triggered note that it says 
> "waiting on the same the same..."

Thanks, John. Fixed.

Cheers,

Michael

> If multiple threads (or processes, if child processes have inherited
>         the*epoll *file descriptor acrossfork(2)  <http://man7.org/linux/man-pages/man2/fork.2.html>) are blocked in
>         epoll_wait(2)  <http://man7.org/linux/man-pages/man2/epoll_wait.2.html>  waiting on the same the same epoll file descriptor and
>         a file descriptor in the interest list that is marked for edge-
>         triggered (*EPOLLET*) notification becomes ready, just one of the
>         threads (or processes) is awoken fromepoll_wait(2)  <http://man7.org/linux/man-pages/man2/epoll_wait.2.html>.  This provides a
>         useful optimization for avoiding "thundering herd" wake-ups in some
>         scenarios.
> 
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
