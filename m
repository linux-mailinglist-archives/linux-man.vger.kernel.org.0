Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 190574608D
	for <lists+linux-man@lfdr.de>; Fri, 14 Jun 2019 16:22:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728522AbfFNOWP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 14 Jun 2019 10:22:15 -0400
Received: from mail-wr1-f43.google.com ([209.85.221.43]:43860 "EHLO
        mail-wr1-f43.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728300AbfFNOWP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 14 Jun 2019 10:22:15 -0400
Received: by mail-wr1-f43.google.com with SMTP id p13so2719843wru.10
        for <linux-man@vger.kernel.org>; Fri, 14 Jun 2019 07:22:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=HRhN2O2YjsjImNUDdNbakk+KGPhd9itwfKEzuIHqBbA=;
        b=TesF97erV4RHa/WCLH5hXW2H8vrUT32S1KLK4HbHJIfgHxApYrn/SlotX9SgBDGLT/
         z0aT8oNejzd5Ygj+q9WOdvQDt12iUzZHwD18cX1ZjbxZcvKIMe2g266eQVgX4zOEdX4p
         HhkVag32g3JjBzappOYTQmc4mCU0A4I3ZO016JUvuCO56WCWO55t+Wp7pZ2kbK3Ybs9p
         2y+hh8gta7q1/twK/8wDXAyfXHcVuAHFXKDGkRdvlaXjIhwOpeaTU3gPU7ue0o5DbZVy
         DGjdXyaXDdTKpsPfpY6h8THmlvmVbQobxTyhY2Y/w/eZniy2LK4hPyj85va21qtioslq
         ESug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=HRhN2O2YjsjImNUDdNbakk+KGPhd9itwfKEzuIHqBbA=;
        b=W1dPW2aHcZJ+rm+E3Noq860AF2KgfGgxb6X0hKM4b9NLAY3MH0sE5HmNT0/iG4N9l1
         WlW8e5oUczfW8IJ/XFhBufRzcnmDutcCPxacVaPxdXOAFUruRtNix0rM2g6ir8fKuJCS
         R47xaJOHyaJz+KNTGB1l5LlUli6VEmwIOZzO1n9Cqbed+8MUluBZGMm4fDAI40PNY3T9
         UpXbLQXyarFLYuKc3v5CD/HlNwxUnd8SZat105W0HGjdDnxX3DG3EYRhGn7JKkrybNt2
         zxxAnfbj7M/15p6O99WzVPjnZbQrjmJRbfbh+lpzEqzXZPre/kC9W1MbAIZ3b2+2aMXy
         TC1w==
X-Gm-Message-State: APjAAAWMxmb3vB/L0bE6z2upa3d265zpm35UQZYcAA5rKOlS2F6M/mKm
        4sCKDrMqkcAPnWPCgkLRyh7CB4zwUOg=
X-Google-Smtp-Source: APXvYqw8eItqftRR6N8J8gy//mW07JrYx+8srNUX8J/8Rg7VPkql/DVTkjm7TWgSAeVsfRDYISZhqA==
X-Received: by 2002:adf:f34b:: with SMTP id e11mr7644599wrp.230.1560522131005;
        Fri, 14 Jun 2019 07:22:11 -0700 (PDT)
Received: from [192.168.43.179] (x59cc82b9.dyn.telefonica.de. [89.204.130.185])
        by smtp.gmail.com with ESMTPSA id z6sm3499228wrw.2.2019.06.14.07.22.08
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Jun 2019 07:22:10 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>
Subject: Re: [patch] on_exit.3: Add example code
To:     kerolasa@gmail.com
References: <20190507211735.31785-1-kerolasa@iki.fi>
 <CAKgNAkjArBeBeYU4A7OPFi5jx7aVfAbxN7kb7E-vcDpkMsYrnA@mail.gmail.com>
 <CAG27Bk1HN5Ku93ZU9hv0+Te=rt5f5JKOFe5RmRf45=xex5P0NA@mail.gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <6cabac85-5762-d36f-4c74-71683320ba2b@gmail.com>
Date:   Fri, 14 Jun 2019 16:22:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAG27Bk1HN5Ku93ZU9hv0+Te=rt5f5JKOFe5RmRf45=xex5P0NA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Sami,

On 6/13/19 9:39 PM, Sami Kerola wrote:
> On Wed, 12 Jun 2019 at 23:20, Michael Kerrisk (man-pages)
> <mtk.manpages@gmail.com> wrote:
>> On Tue, 7 May 2019 at 23:17, Sami Kerola <kerolasa@iki.fi> wrote:
>>>
>>> Example tries to clarify one should not refer to variables that are not in
>>> on_exit() scope.  Such variables include heap in main().  In short only
>>
>> I must confess I never thought about this one at length. Why are heap
>> variable not in scope for fcuntions registered with
>> on_exit()/atexit()?
> 
> Hello Michael,
> 
> To be honest I do not know why heap variables do not work.  If I must guess
> I would say probably something to do with when during execution main() heap
> is returned back to free memory - that is before on_exit() runs.
> 
> Any way the following shell script will print 42 when on_exit() refers
> variable that is allocated.  At least with up to date (2019-06-13) arch
> linux (glibc 2.29-1) compiled either gcc or clang will print 0 when
> executing broken version.  I suppose zero is just co-incident.  More
> probably value does not have any guarantees.
> 
> Whether on_exit() update should example code showing how to use function
> properly, or a warning in BUGS section is matter of taste.  Either way it
> would be nice if others would not need wonder what is this function doing.
> 
> -- snip
> #!/bin/sh
> 
> cat > ./broken.c <<EOF
> #include <stdio.h>
> #include <stdlib.h>
> #include <string.h>
> #include <unistd.h>
> 
> static void run_on_exit(int exit_val, void *arg)
> {
>          int *i = (int *)arg;
> 
>          printf("%d\n", *i);
>          _exit(exit_val);
> }
> 
> int main(int argc, char **argv)
> {
>          int i = 42;
> 
>          on_exit(run_on_exit, &i);
>          return 0;
> }
> EOF
> 
> cat > ./works.c <<EOF
> #include <stdio.h>
> #include <stdlib.h>
> #include <string.h>
> #include <unistd.h>
> 
> static void run_on_exit(int exit_val, void *arg)
> {
>          int *i = (int *)arg;
> 
>          printf("%d\n", *i);
>          free(i);
>          _exit(exit_val);
> }
> 
> int main(int argc, char **argv)
> {
>          int *i = malloc(sizeof(int));
> 
>          *i = 42;
>          on_exit(run_on_exit, i);
>          return 0;
> }
> EOF
> 
> gcc -Wall -pedantic -o broken broken.c
> gcc -Wall -pedantic -o works works.c
> set -x
> ./broken
> ./works
> -- snip
> 
> $ ./snip.sh
> + ./broken
> 0
> + ./works
> 42

I'm quite confused by your terminology and your example.

Above you've talked about heap variables not being in scope for
the exit handler established by on_exit(). And in your initial mail,
you said "In short only variables allocated from stack make is
sense when calling on_exit()."

But your code examples above demonstrate exactly the opposite, as
far as I can see. 'broken.c' use *a stack variable from main()*
as the argument for the exit handler, and that does not work.
'works.c' used a *heap variable* as as the argument for the
exit handler, and that *does* work, as your example demonstrates.

The fact that stack variable from main() are not in scope for
on_exit() after a return from main() is pretty much expected,
since main() has gone out of scope already.

However, it's not clear to me that heap variables are out of
scope for the exit handler. Your example doesn't demonstrate
that. And, offhand, I can see no reason why heap variables
would have to be out of scope. And my own experiments (see test
program below) seem to indicate that heap variables are in
scope. My only doubt is what the standards have to say on the
issue, but I did not so far spot any relevant text.

Your thoughts on the above?

Thanks,

Michael


$ ./on_exit_scope_expt h       # Heap argument
Argument for exitFunc() is allocated on heap
xp    = 0x69b260 (42)
===
return from main
===
&efloc = 0x7fff390f88fc (0x54)
xp     = 0x69b260 (42)
About to abort
Aborted (core dumped)


$ ./on_exit_scope_expt s       # Stack argument
Argument for exitFunc() is allocated on stack in main()
xp    = 0x7ffc5c02312c (42)
===
return from main
===
&efloc = 0x7ffc5c0230dc (0x54)
xp     = 0x7ffc5c02312c (0)
About to abort


$ cat on_exit_scope_expt.c
#define _GNU_SOURCE
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

char *tos;

static void
exitFunc(int status, void *xp)
{
     int efloc;

     printf("===\n");
     printf("&efloc = %p (0x%llx)\n",
             (void *) &efloc, (long long) (tos - (char *) &efloc));
     printf("xp     = %p (%d)\n", xp, *(int *) xp);

     /* Produce a core dump, which we can examine with GDB to look at the
        frames on the stack, if desired */

     printf("About to abort\n");
     abort();
}

static void
recur(int lev, int *xp)
{
     int rloc;
     int big[65536-12];

     tos = (char *) &rloc;

     big[0] = lev;
     big[0]++;

     printf("&rloc = %p (%d)    (%d)\n", (void *) &rloc, lev, *xp);

     if (lev > 1)
         recur(lev - 1, xp);
     else {
         printf("exit() from recur()\n");
         exit(EXIT_SUCCESS);
     }
}

int
main(int argc, char *argv[])
{
     int lev;
     int *xp;
     int xx;

     if (argc < 2) {
         fprintf(stderr, "Usage: %s {s|h} [how]\n", argv[0]);
         fprintf(stderr, "\ts => exitFunc() arg is in main() stack\n");
         fprintf(stderr, "\th => exitFunc() arg is allocated on heapn");
         fprintf(stderr, "\tIf 'how' is not present, then return from "
                 "main()\n");
         fprintf(stderr, "\tIf 'how' is 0, then exit() from main()\n");
         fprintf(stderr, "\tIf 'how' is > 0, then make 'how' recursive "
                         "function calls, and then exit()\n");
         exit(EXIT_FAILURE);
     }

     tos = (char *) &xp;

     if (argv[1][0] == 'h') {
         xp = malloc(sizeof(int));
         if (xp == NULL) {
             perror("malloc");
             exit(EXIT_FAILURE);
         }
         printf("Argument for exitFunc() is allocated on heap\n");
     } else {
         xp = &xx;
         printf("Argument for exitFunc() is allocated on stack "
                "in main()\n");
     }

     *xp = 42;

     printf("xp    = %p (%d)\n", (void *) xp, *xp);
     printf("===\n");

     on_exit(exitFunc, xp);

     if (argc == 2) {
         printf("return from main\n");
         return 0;
     }

     lev = atoi(argv[2]);

     if (lev < 1) {
         printf("Calling exit() from main\n");
         exit(EXIT_SUCCESS);
     } else {
         recur(lev, xp);
     }
}
