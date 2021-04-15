Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A621A360882
	for <lists+linux-man@lfdr.de>; Thu, 15 Apr 2021 13:48:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232512AbhDOLtO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 15 Apr 2021 07:49:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59482 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232705AbhDOLtN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 15 Apr 2021 07:49:13 -0400
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com [IPv6:2607:f8b0:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFE0CC061574
        for <linux-man@vger.kernel.org>; Thu, 15 Apr 2021 04:48:50 -0700 (PDT)
Received: by mail-pl1-x629.google.com with SMTP id u15so3358486plf.10
        for <linux-man@vger.kernel.org>; Thu, 15 Apr 2021 04:48:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=JbCPSO1fSbgH01SSzNd1dj/u3z8wcO7Gv0HOD04E6S0=;
        b=cnLVS7AJUI2I8MwaU13+5TdMoVRIF/m9sCVwK9PVGWC3Jd88m2McD+OfCHrGEaaVQ3
         oLUen/V4pjPVWwwKN1PKbthHH/KPML/I2yXak6Bx0TLZY2nmrbI8U/ditjltuhDgTnv7
         05zoXqo/sFgfHuyrTe5mntQ+6t3adlvcd72Nk2ULVY2bB8+/tdBPAtkT2YDXYg/wFvjc
         s2aGOl3OZFRcfshNwJrJrw8Q5Czy1lb7r9NB7x8GzgpkQaxM7oD9IGGveUERTC6PQxRP
         rkzmpsDpFdV5rtYYMZRXLHLv1ETyMiL+h77xWaFMmL/cL4MbTk/DHyYzvR66s4jPKmgd
         rNtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=JbCPSO1fSbgH01SSzNd1dj/u3z8wcO7Gv0HOD04E6S0=;
        b=d3P2PIGTbQxzWxGOD0/wqfv861oJB6cRjH35KzrRrI5So6fg4pxSAlYqFGWuHU8Kdn
         km04OBe57VwqS479OxYyTR5zb5mCfdyAiKOgFtMqg5HuMtXlnOhclBbGjayE6tDRzcWf
         A3xkLqZPudvfvVMdAdqk36hj3/h6hJPCTS1JRGACAu2hiJa46ZNcbkMV91NnEQJyWGX/
         p0sP1rw/l9DPfncHvnY0jWqrSjMAwk/CS+JhQR/3FiNLaDnD4E1y/EhUBqa+f3nBHfpk
         kM1PD1oSZJMHtebiANqYSXaQnC24qmQ7vRdAALGjP4WRqZnA//FJfdmpczulEzrc47nc
         swrQ==
X-Gm-Message-State: AOAM5329KWQwrkGxtfery2DJBNA2FSrmA2YFPKyZrtXAdFXc5NNvhCaK
        d/bnozcix1GjVFVauIqTDSGvm8rGhJZFCzbc9SPK0Nl8MdnSMw==
X-Google-Smtp-Source: ABdhPJzTapWGB/WLdTADnFZUY44QW+/8/+9m8k1/0/v5FU2l7Yt14Eu/R4n8sqOYHRru48OYg4NrT0x+o2xBUzahsXk=
X-Received: by 2002:a17:903:20ca:b029:eb:6c72:fdbb with SMTP id
 i10-20020a17090320cab02900eb6c72fdbbmr3551458plb.18.1618487330404; Thu, 15
 Apr 2021 04:48:50 -0700 (PDT)
MIME-Version: 1.0
References: <20210412074443.15363-1-phoenix_lzh@sina.com> <67c8cd43-4a0e-570a-4e4d-7539a3cd3ec8@gmail.com>
 <37c86142-a8a1-55ec-de3c-0fe48876860b@sina.com>
In-Reply-To: <37c86142-a8a1-55ec-de3c-0fe48876860b@sina.com>
From:   Stefan Puiu <stefan.puiu@gmail.com>
Date:   Thu, 15 Apr 2021 14:48:39 +0300
Message-ID: <CACKs7VDhYRbGAvuvr3C_2nyBD1QR--9XCcjDzXucbv-=VYFgaQ@mail.gmail.com>
Subject: Re: [PATCH] setbuf.3: fix the error in section BUGS
To:     Zhiheng Li <phoenix_lzh@sina.com>
Cc:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Zhiheng,

On Thu, Apr 15, 2021 at 2:01 PM Zhiheng Li <phoenix_lzh@sina.com> wrote:
>
> Hello Alex,
>
> Section BUGS in setbuf.3 says the space that buf points must be exist at
> program termination. And it says that the example is invalid. It wants
> to express that the example cannot print "Hello, world!". Because the
> stack space that buf points to is released when the program terminates
> by return.
> But the example prints "Hello, world!". So i say there is something
> wrong with this example.
> The original author should have made two mistakes:
> 1. The typo of 'stdout';
> 2. The return is used. The original author did not know that the return
> would close all file streams before terminating the program. Because
> this program uses setbuf(3), the "Hello, world!" printed by printf(3)
> will be saved in the buffer first. When the file stream is closed, buf
> is exist, and the buffer is flushed, so the "Hello, world!" in the
> buffer is printed(This knowledge comes from APUE 7.3).

I've tried a slightly modified example on my Ubuntu 20.04 x86-64 VM
(with just the stdout change but without _exit):

#include <stdio.h>

int main()
{
    char buf[100];
    setbuf(stdout, buf);
    printf("Hello, world\n!");
    return 0;
}

I've built it with '-Wall -g'. I get garbage in the output:

stefan@spuiu-vm:~/src/test/man_pages$ ./setbuf
=EF=BF=BD=EF=BF=BD=EF=BF=BDYstefan@spuiu-vm:~/src/test/man_pages$

So I would say the buffer flushing happens outside of main(). If I
remove the setbuf(), I see "Hello, world" printed as expected.
I've also tried building with -O2 - it simply prints a different kind
of garbage:
stefan@spuiu-vm:~/src/test/man_pages$ ./setbuf
=C8=BF
 Qstefan@spuiu-vm:~/src/test/man_pages$

So I would say the code is invalid as is (if stdout is used instead of stdi=
n).

Just my 2 cents,
Stefan.

> And returning an integer value from the main function is equivalent to
> calling exit(3) with the same value(This knowledge also comes from APUE
> 7.3). So return and exit(3) cannot be used.
> _exit(3) and _Exit(3) terminate the program immediately, and they don't
> close the file stream(This knowledge also comes from APUE 7.3), So using
> _exit(3) and _Exit(3) does not print "Hello, world".
> I'm using Thunderbird to send this email. It's very easy to use. Thank yo=
u.
>
> This is what I was going to send. When I was about to press the send
> button, I thought again that it would be inappropriate to use _exit(2).
> When using _exit(2), the file stream will not be flushed, but buf still
> exists when the program terminates (the program terminates at the end of
> main function, and buf exists at this time, which is in line with the
> author's requirements, but the author wants to give a counter example).
> So is the following example more appropriate?
> #include <stdio.h>
> void setmybuf(FILE *fp)
> {
>         char buf[BUFSIZ];
>         setbuf(fp, buf);
> }
> int main(void)
> {
>         setmybuf(stdout);
>         printf("Hello, world!\n");
>         return 0;
> }
> When the setmybuf returns, the buf stack space is released. When the
> program close the file stream by return, buf does not exist for the main
> function, which is in line with the author's original intention(This is
> a invalid example).
> Although the above program can still print "Hello, world!" in my
> environment(ubuntu18.04, gcc5.5.0, glibc2.27), that's because the
> address pointing to buf can still be used illegally(dangling pointer).
> You can add some code to the source code to make the program produce
> exceptions, like this:
> #include <stdio.h>
> void setmybuf(FILE *fp)
> {
>         char buf[BUFSIZ];
>         setbuf(fp, buf);
> }
> int test(int i)
> {
>         if (i > 0) {
>                 i--;
>                 test(i);
>         } else {
>                 printf("zzzzz\n");
>                 return 0;
>         }
> }
> int main(void)
> {
>         setmybuf(stdout);
>         printf("Hello, world!\n");
>         test(1000);
>         return 0;
> }
> Recursively called functions test use the stack space of buf in
> setmybuf, which can cause segmentation fault in my evironment.
>
>
> Sincerely,
> Zhiheng Li
>
>
>
> On 4/12/21 5:22 PM, Alejandro Colomar (man-pages) wrote:
> > On 4/12/21 9:44 AM, Zhiheng Li wrote:
> >> ---
> >>   man3/setbuf.3 | 5 +++--
> >>   1 file changed, 3 insertions(+), 2 deletions(-)
> >>
> >> diff --git a/man3/setbuf.3 b/man3/setbuf.3
> >> index 5e5d57f89..e6d41b2a9 100644
> >> --- a/man3/setbuf.3
> >> +++ b/man3/setbuf.3
> >> @@ -224,14 +224,15 @@ For example, the following is invalid:
> >>   .PP
> >>   .EX
> >>   #include <stdio.h>
> >> +#include <unistd.h>
> >>   int
> >>   main(void)
> >>   {
> >>       char buf[BUFSIZ];
> >> -    setbuf(stdin, buf);
> >> +    setbuf(stdout, buf);
> >>       printf("Hello, world!\en");
> >> -    return 0;
> >> +    _exit(0);
> >>   }
> >>   .EE
> >>   .SH SEE ALSO
> >>
> >
> > Hello Zhiheng Li,
> >
> > I never used setbuf(3), so I don't know much about this example and why
> > it is "invalid", and therefore also don't know why it is wrong in being
> > invalid.
> >
> > As far as I can see, 'stdin' just seems to be a typo because it's not
> > being used, and probably 'stdout' was meant instead, as you point out.
> >
> > What about _exit(0)?  Why _exit(2) and not return (or equivalently
> > exit(3))?  Could you explain that a bit more?
> >
> > BTW, Could you please use a mailer that allows you to write plain text
> > emails?  Mozilla Thunderbird may be easy to use for you, and it comes
> > with most Linux distros.
> >
> > Thanks,
> >
> > Alex
> >
