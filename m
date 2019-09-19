Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DB4E0B7257
	for <lists+linux-man@lfdr.de>; Thu, 19 Sep 2019 06:44:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729098AbfISEoD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 19 Sep 2019 00:44:03 -0400
Received: from mail-ed1-f66.google.com ([209.85.208.66]:45338 "EHLO
        mail-ed1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725320AbfISEoC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 19 Sep 2019 00:44:02 -0400
Received: by mail-ed1-f66.google.com with SMTP id h33so1884089edh.12
        for <linux-man@vger.kernel.org>; Wed, 18 Sep 2019 21:44:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=11AuSpnRMcnkCO5GscpGoLwofh+zE9xIVmTCYDtvRxw=;
        b=iO4br3E53U5oKIsMeE7CuzkGugdK3nculmf3Hda6Il6fCsC/Z2OTs70/lS1rB+0zEH
         22Jg46XtvDH22mlbWCRH60XRSVkfg19C2W+iEJBS4lLf2LyE7eI5Z+gQ0wxVnQM0RZ8t
         WmKEjj0JZr7LhdwLCRaqJg8RMWALMnQ7LvpxyJc3HNE914NzidbNZEHapr6nXxRZRZGI
         M3YxnOh52cTbT6yiREswiL7UcB6ijxspWLwrfjbWnMBVf01XVAdtYk+N6UfltAgGu8IK
         gvC4PYW1ZJ1+A2N7KJ+PXxHtcYFrF951ZU4/PLwes9hTM3wCwl4UJaMLkfhSuCPuilNx
         Kvfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=11AuSpnRMcnkCO5GscpGoLwofh+zE9xIVmTCYDtvRxw=;
        b=Ockf6S/QeSMqONTrr4hQpFgi9S8gDYoLIdMVUbPS8zQiUqgoG4hIDeAe/14ncvKlsy
         jVW3vn4NcalgLQRskSKKXRQ0n+c7gz9na7xPcez4PuujW67RGuokJB0TF+3oLu5gK4ww
         V0dkMq2BnT9oCCnzRxbEFyq/BpS2pYS5oUHsGzA79C0nAavwvYWsN7qIX95ZX75Duve1
         AHvu87qGLy9GVp24EDOKcI2tl94PU2Wh7hBTbph8QUIR1pvNlDRxREEJQ5QUrB9HJMXA
         2Rwjj2iPdkubE06Clc6wFVMV4BO6vlbVxyCusb3ef+boTSvkh51TB5LYeNRjra500IYh
         UZ1A==
X-Gm-Message-State: APjAAAUB4SKk772xoGqQWzBbVWzQc2CgrMi4yD7FYlDi7K7aZoTWVDoQ
        H8dsAhksvuM2xmRZG5yR84I=
X-Google-Smtp-Source: APXvYqxtE6IQ1Ii5Nrf5urcxUTL/fLJ9DWRekZFutG4kaQv8nejdPTq4uoO0oJOeexM3k2CkudsQTg==
X-Received: by 2002:a05:6402:346:: with SMTP id r6mr13799524edw.124.1568868239650;
        Wed, 18 Sep 2019 21:43:59 -0700 (PDT)
Received: from [10.59.0.159] (h87-253-79-154.cust.a3fiber.se. [87.253.79.154])
        by smtp.gmail.com with ESMTPSA id v4sm1328444edy.54.2019.09.18.21.43.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Sep 2019 21:43:58 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        jannh@google.com, oleg@redhat.com
Subject: Re: [PATCH] clone.2: add CLONE_PIDFD entry
To:     Christian Brauner <christian.brauner@ubuntu.com>
References: <20190511064908.21956-1-christian.brauner@ubuntu.com>
 <fdc276ee-cf28-0a3b-3fd3-6f5033dae7d6@gmail.com>
 <20190916074012.dpsfqfwcxh2pyyt7@wittgenstein>
 <7f115550-c7e6-c803-e47b-a37b7cdfb0a9@gmail.com>
 <20190918071415.gmxvovgiwgsi62tn@wittgenstein>
 <6a863c6a-3e61-f0b6-963e-a3545d9935d6@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <91e5e4fe-e09e-7f9b-1a53-0bc31c63ddce@gmail.com>
Date:   Thu, 19 Sep 2019 06:43:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <6a863c6a-3e61-f0b6-963e-a3545d9935d6@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Christian,

A tweak to one point from my mail of a few minutes ago...

On 9/19/19 6:04 AM, Michael Kerrisk (man-pages) wrote:

> A further question... We now have three ways of getting a
> process file descriptor [*]:
> 
> open() of /proc/PID
> pidfd_open()
> clone()/clone3() with CLONE_PIDFD
> 
> I thought the FD was supposed to be equivalent in all three cases.
> However, if I try (on kernel 5.3) poll() an FD returned by opening
> /proc/PID, poll() tells me POLLNVAL for the FD. Is that difference
> intentional? (I am guessing it is not.)

Okay -- I made a misstep there, although my question remains.
I got the POLLNVAL return because I had opened /proc/PID with
the O_PATH flag. When I open /proc/PID with O_RDONLY, then poll()
on the FD always returns immediately (i.e., before the target
process has terminated), and the returned events are
POLLIN+POLLOUT.

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
