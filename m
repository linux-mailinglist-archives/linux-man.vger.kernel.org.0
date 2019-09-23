Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5BAF0BBDD2
	for <lists+linux-man@lfdr.de>; Mon, 23 Sep 2019 23:24:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2503035AbfIWVYS convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Mon, 23 Sep 2019 17:24:18 -0400
Received: from mu.digital-domain.net ([108.61.197.113]:33504 "EHLO
        mu.digital-domain.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388395AbfIWVYR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 23 Sep 2019 17:24:17 -0400
Received: from kappa.digital-domain.net (kappa.digital-domain.net [IPv6:2001:8b0:36c:cc91::ac])
        (authenticated bits=0)
        by mu.digital-domain.net (8.14.7/8.14.7) with ESMTP id x8NLOE3o012503
        (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
        Mon, 23 Sep 2019 22:24:14 +0100
Date:   Mon, 23 Sep 2019 22:24:13 +0100
From:   Andrew Clayton <andrew@digital-domain.net>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH 1/1] signalfd.2: Note about interactions with epoll &
 fork
Message-ID: <20190923222413.5c79b179@kappa.digital-domain.net>
In-Reply-To: <99e8bcda-c6f2-18bb-d28d-56d65693f233@gmail.com>
References: <20190920234211.57596-1-andrew@digital-domain.net>
        <20190920234211.57596-2-andrew@digital-domain.net>
        <99e8bcda-c6f2-18bb-d28d-56d65693f233@gmail.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, 23 Sep 2019 16:49:29 +0200
"Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com> wrote:

> Hello Andrew,

Hi Michael,

Thanks for the extensive reply!

[...]
 
> Thanks for all of the detail in the commit message! That's funky! But I
> suppose in the end it's not completely surprising, because of the fact
> that epoll is really notifying events on the open file description,
> and there may be multiple file descriptors that refer to that description
> (as for example, after fork()). It is however, still surprising to users 
> that you can read() from the FD, even though epoll doesn't say it's ready.

Ah, I gotta remember there's a distinction between descriptors &
descriptions ;) 

[...]

> Thanks for the proposed text. But I prefer to avoid mentioning 
> daemon(3), which has a longstanding bug described in its manual
> page). Also, I think we need to bring out the fact that the
> signalfd still makes signals available for reading, even though

Yes, true.

> epoll does not say the FD is ready. Also, your text might
> lead the reader to think that this sequence might be possible:
> 
> create signalfd
> create epoll instance
> add signalfd to epoll instance
> fork()
>        In child: add signalfd to epoll instance
> 
> That last step will of course give an EEXIST error from
> epoll_ctl(), because  that FD is already in the epoll
> instance.

Yup.
 
> So, I've applied your patch, but then done a fairly major rewrite,
> so that the text now looks like:
> 
>    epoll(7) semantics
>        If a process adds (via epoll_ctl(2)) a signalfd file descriptor to
>        an epoll(7) instance, then epoll_wait(2) returns events  only  for
>        signals  sent to that process.  In particular, if the process then
>        uses fork() to create a child process, then the child will be able
>        to  read(2)  signals  that  are sent to it using the signalfd file
>        descriptor, but epoll_wait(2) will not indicate that the  signalfd
>        file descriptor is ready.  In this scenario, a possible workaround
>        is that after the fork(2), the child process can  close  the  sig‐
>        nalfd  file  descriptor  that it inherited from the parent process
>        and then create another signalfd file descriptor and add it to the
>        epoll  instance.   Alternatively,  the  parent and the child could
>        delay creating their  (separate)  signalfd  file  descriptors  and
>        adding them to the epoll instance until after the call to fork(2).
> 
> Seem okay to you?

Yes, looks good.
 
> I also verified this weirness using the program shown below:

Nice example.

[...]

Cheers,
Andrew
