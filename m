Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5FD97BB71A
	for <lists+linux-man@lfdr.de>; Mon, 23 Sep 2019 16:49:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2438382AbfIWOtd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 23 Sep 2019 10:49:33 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:43032 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2438376AbfIWOtd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 23 Sep 2019 10:49:33 -0400
Received: by mail-wr1-f68.google.com with SMTP id q17so14292689wrx.10
        for <linux-man@vger.kernel.org>; Mon, 23 Sep 2019 07:49:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=18TXqJVZA46IiJ2yl3oWdHbbfbFQqUgac+LhU0iRfxY=;
        b=GKKIr+eufLPO2kHr7Od7KXmTSQ01WpUjI6raRJ80FzcU/bLqmxvMLj1/YZiySyiydj
         luIxBoaQWr/arcgEVrYqq1QEFNj0F4Eify1OXpD7SlGbHfyGODwpe1NN9Sn1kaI2nUBP
         nhNUPkJUOiWXebuED5yU9yOf31fGYxcp00sZZQo+15W0qOQRdaU4S6qzOGqKpfH2HJ09
         Yohb4L37d5t9JnvgqQH3Jns+VWJMzr2KCFVUEmqrE1KcEkKlf34XRK6laKIAsTTv3QtE
         IX28uvLibCGJW+o3eycoxTZ9bcxQZmyMB/+srpv/YNrZQwQzOVTLJBrcbieR5nTe0tpE
         +L0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=18TXqJVZA46IiJ2yl3oWdHbbfbFQqUgac+LhU0iRfxY=;
        b=SHj0aW1sDMdKOfrE6CIikI5+KnqoQAVgi2YRDLhxXSd+nGKeu2KAWZvnmYVxTlQEqK
         uunwgEpAvRplERkvd65zMBg3ZgCl8QnYV29u1cHvI8mQkJNF7AT6QmKAh2it+AkwZQXN
         LAVkPHMqEyCLh6P8fR2KGS39xKuQWtPWwNBgoj+/xgPIaYrJ5I6scU1XrSvkvdVN6+dr
         z8Zjj8lWS0g4o5btJczAhpLLaHfk5Ha7Kzs9l/fu6cOLaQCJFeH5h1XWNiNWtSpRytwh
         S/gTmaPbGGOxhNenkgvN00oiEPJla6iFTpg59BQV0fjgc/RlkdzoJsp46fFrlayNJ1tu
         Ou/w==
X-Gm-Message-State: APjAAAUGJpWQMcjdGh9pzCcMLH/eI8RU5dHA4t4Z1bUhR6QgDrisg3Ai
        eerlin0g6Jis1c/f4ECecLZsUgHw
X-Google-Smtp-Source: APXvYqxat61b5oWOvCkEDYva8uk5DJy4nxQ9O9a82FfrY6YF9W2QRi6sWX2GsTR9EGFfqcW4LhtgLQ==
X-Received: by 2002:a5d:66cb:: with SMTP id k11mr20700218wrw.174.1569250170693;
        Mon, 23 Sep 2019 07:49:30 -0700 (PDT)
Received: from [10.0.20.253] ([95.157.63.22])
        by smtp.gmail.com with ESMTPSA id z3sm9989166wmi.30.2019.09.23.07.49.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Sep 2019 07:49:30 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/1] signalfd.2: Note about interactions with epoll & fork
To:     Andrew Clayton <andrew@digital-domain.net>
References: <20190920234211.57596-1-andrew@digital-domain.net>
 <20190920234211.57596-2-andrew@digital-domain.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <99e8bcda-c6f2-18bb-d28d-56d65693f233@gmail.com>
Date:   Mon, 23 Sep 2019 16:49:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190920234211.57596-2-andrew@digital-domain.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Andrew,

On 9/21/19 1:42 AM, Andrew Clayton wrote:
> Using signalfd(2) with epoll(7) and fork(2) can lead to some
> head scratching.
> 
> It seems that when a signalfd file descriptor is added to epoll you will
> only get notifications for signals sent to the process that added the
> file descriptor to epoll.
> 
> So if you have a signalfd fd registered with epoll and then call
> fork(2), perhaps by way of daemon(3) for example. Then you will find
> that you no longer get notifications for signals sent to the newly
> forked process.
> 
> User kentonv on ycombinator[0] explained it thus
> 
>     "One place where the inconsistency gets weird is when you use
>      signalfd with epoll. The epoll will flag events on the signalfd
>      based on the process where the signalfd was registered with epoll,
>      not the process where the epoll is being used. One case where this
>      can be surprising is if you set up a signalfd and an epoll and then
>      fork() for the purpose of daemonizing -- now you will find that
>      your epoll mysteriously doesn't deliver any events for the signalfd
>      despite the signalfd otherwise appearing to function as expected."
> 
> And another post from the same person[1].
> 
> And then there is this snippet from this kernel commit message[2]
> 
>     "If you share epoll fd which contains our sigfd with another process
>      you should blame yourself. signalfd is "really special"."
> 
> So add a note to the man page that points this out where people will
> hopefully find it sooner rather than later!
> 
> [0]: https://news.ycombinator.com/item?id=9564975
> [1]: https://stackoverflow.com/questions/26701159/sending-signalfd-to-another-process/29751604#29751604
> [2]: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=d80e731ecab420ddcb79ee9d0ac427acbc187b4b

Thanks for all of the detail in the commit message! That's funky! But I
suppose in the end it's not completely surprising, because of the fact
that epoll is really notifying events on the open file description,
and there may be multiple file descriptors that refer to that description
(as for example, after fork()). It is however, still surprising to users 
that you can read() from the FD, even though epoll doesn't say it's ready.


> Signed-off-by: Andrew Clayton <andrew@digital-domain.net>
> ---
>  man2/signalfd.2 | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
> 
> diff --git a/man2/signalfd.2 b/man2/signalfd.2
> index 497ee4cbd..a96ff6441 100644
> --- a/man2/signalfd.2
> +++ b/man2/signalfd.2
> @@ -261,6 +261,23 @@ itself and the signals that are directed to the process
>  (i.e., the entire thread group).
>  (A thread will not be able to read signals that are directed
>  to other threads in the process.)
> +.SS epoll(7) semantics
> +If you add a signalfd file descriptor to
> +.BR epoll(7)
> +then
> +.BR epoll_wait(2)
> +will only return events for signals received by the process that did
> +the
> +.BR epoll_ctl(2).
> +If you then
> +.BR fork(2),
> +say by calling
> +.BR daemon(3),
> +then you will find that you don't get any notifications for sent
> +signals. For this to work, you need to add the signalfd file
> +descriptor to
> +.BR epoll(7)
> +after forking.
>  .SH RETURN VALUE
>  On success,
>  .BR signalfd ()

Thanks for the proposed text. But I prefer to avoid mentioning 
daemon(3), which has a longstanding bug described in its manual
page). Also, I think we need to bring out the fact that the
signalfd still makes signals available for reading, even though
epoll does not say the FD is ready. Also, your text might
lead the reader to think that this sequence might be possible:

create signalfd
create epoll instance
add signalfd to epoll instance
fork()
       In child: add signalfd to epoll instance

That last step will of course give an EEXIST error from
epoll_ctl(), because  that FD is already in the epoll
instance.

So, I've applied your patch, but then done a fairly major rewrite,
so that the text now looks like:

   epoll(7) semantics
       If a process adds (via epoll_ctl(2)) a signalfd file descriptor to
       an epoll(7) instance, then epoll_wait(2) returns events  only  for
       signals  sent to that process.  In particular, if the process then
       uses fork() to create a child process, then the child will be able
       to  read(2)  signals  that  are sent to it using the signalfd file
       descriptor, but epoll_wait(2) will not indicate that the  signalfd
       file descriptor is ready.  In this scenario, a possible workaround
       is that after the fork(2), the child process can  close  the  sig‐
       nalfd  file  descriptor  that it inherited from the parent process
       and then create another signalfd file descriptor and add it to the
       epoll  instance.   Alternatively,  the  parent and the child could
       delay creating their  (separate)  signalfd  file  descriptors  and
       adding them to the epoll instance until after the call to fork(2).

Seem okay to you?

I also verified this weirness using the program shown below:

$ ./epoll_signalfd
PID of parent: 5661
PID of child:  5662
epoll_wait() returned 0
PID 5662: got signal 10
Successfully read signal, even though epoll_wait() didn't say FD was ready!

8x----8x----8x----8x----8x----8x----8x----8x----8x----8x----8x----8x----
/* epoll_signalfd.c */

#include <sys/signalfd.h>
#include <signal.h>
#include <sys/epoll.h>
#include <sys/wait.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#define errExit(msg)    do { perror(msg); exit(EXIT_FAILURE); \
                        } while (0)

static void
signalTest(int sfd, int epfd)
{
    struct signalfd_siginfo fdsi;
    struct epoll_event rev;
    int ready;
    ssize_t s;

    usleep(50000);
    ready = epoll_wait(epfd, &rev, 1, 0);
    if (ready == -1)
        errExit("epoll_wait");

    printf("epoll_wait() returned %d\n", ready);

    s = read(sfd, &fdsi, sizeof(struct signalfd_siginfo));
    if (s != sizeof(struct signalfd_siginfo))
        errExit("read");

    printf("PID %ld: got signal %d\n", (long) getpid(), fdsi.ssi_signo);

    if (ready == 0 && s > 0)
        printf("Successfully read signal, even though epoll_wait() "
                "didn't say FD was ready!\n");
}

int
main(int argc, char *argv[])
{
    struct epoll_event ev;
    sigset_t mask;
    int sfd, epfd;

    sigfillset(&mask);
    sigdelset(&mask, SIGINT);

    if (sigprocmask(SIG_BLOCK, &mask, NULL) == -1)
        errExit("sigprocmask");

    sfd = signalfd(-1, &mask, SFD_NONBLOCK);
    if (sfd == -1)
        errExit("signalfd");

    epfd = epoll_create(5);
    if (epfd == -1)
        errExit("epoll_create");

    ev.data.fd = sfd;
    ev.events = EPOLLIN;
    if (epoll_ctl(epfd, EPOLL_CTL_ADD, sfd, &ev) == -1)
        errExit("epoll_ctl");

    switch (fork()) {
    case -1:
        errExit("fork");
    case 0:
        printf("PID of child:  %ld\n", (long) getpid());
        raise(SIGUSR1);
        signalTest(sfd, epfd);
        break;
    default:
        printf("PID of parent: %ld\n", (long) getpid());
        wait(NULL);
        break;
    }

    exit(EXIT_SUCCESS);
}
8x----8x----8x----8x----8x----8x----8x----8x----8x----8x----8x----8x----

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
