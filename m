Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DC4A144C4D
	for <lists+linux-man@lfdr.de>; Thu, 13 Jun 2019 21:39:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727427AbfFMTjt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 13 Jun 2019 15:39:49 -0400
Received: from mail-io1-f68.google.com ([209.85.166.68]:46911 "EHLO
        mail-io1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725809AbfFMTjt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 13 Jun 2019 15:39:49 -0400
Received: by mail-io1-f68.google.com with SMTP id i10so407702iol.13
        for <linux-man@vger.kernel.org>; Thu, 13 Jun 2019 12:39:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=x89+4lDj+kTw8WLjeL1PlQvPvhvox2MqDv/wqT0EqUM=;
        b=C8N5uVGZ+Zi/Gs73MTvfDPku1zqTiz24ffsoBK7j6XZ8V+CWiq8EXpJan5R1Hvkdeg
         SLDGnpH3tNsVDOh7So5k5766W1I/xQklJnrv5vdrwG3tt4yOL1952vxhVr4d1KqnHe95
         J4CjDWTUI5vzbyr/W8JJbtp8vAHWVeBcj3GM9obU9zYlBM/1bf1xJpxiouxfCsK8upfC
         TnQ3uZTLbtso8prmB8w679n7BSGA08KndWlAJNQxM7TARyoSCU1FS4YIfjLq1bpYxoC8
         WdUGb4847T7js52+d0js9Y3gAq0Ze5yqe7tjBJRfS1toryWQwiHDzuPjyvdT8HPXCpoe
         dWow==
X-Gm-Message-State: APjAAAUF9eSFHC7ZqIGLqTGG+MIkCIiwhjmLHuDSR4rgqya0pIJaXPKl
        vz/ekZjAclCNgjkjKJHXwCU03LoTBFWx+372tls=
X-Google-Smtp-Source: APXvYqxeT1ijjgXD5feTMRqMG7O2HA5i6mAncWIVx6IsMovR5nyzt9MfHDCQZhQUSfl9M2uojEy3T2iYCW+POJDOUzE=
X-Received: by 2002:a6b:5115:: with SMTP id f21mr1813257iob.173.1560454788315;
 Thu, 13 Jun 2019 12:39:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190507211735.31785-1-kerolasa@iki.fi> <CAKgNAkjArBeBeYU4A7OPFi5jx7aVfAbxN7kb7E-vcDpkMsYrnA@mail.gmail.com>
In-Reply-To: <CAKgNAkjArBeBeYU4A7OPFi5jx7aVfAbxN7kb7E-vcDpkMsYrnA@mail.gmail.com>
Reply-To: kerolasa@gmail.com
From:   Sami Kerola <kerolasa@iki.fi>
Date:   Thu, 13 Jun 2019 20:39:37 +0100
Message-ID: <CAG27Bk1HN5Ku93ZU9hv0+Te=rt5f5JKOFe5RmRf45=xex5P0NA@mail.gmail.com>
Subject: Re: [patch] on_exit.3: Add example code
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, 12 Jun 2019 at 23:20, Michael Kerrisk (man-pages)
<mtk.manpages@gmail.com> wrote:
> On Tue, 7 May 2019 at 23:17, Sami Kerola <kerolasa@iki.fi> wrote:
> >
> > Example tries to clarify one should not refer to variables that are not in
> > on_exit() scope.  Such variables include heap in main().  In short only
>
> I must confess I never thought about this one at length. Why are heap
> variable not in scope for fcuntions registered with
> on_exit()/atexit()?

Hello Michael,

To be honest I do not know why heap variables do not work.  If I must guess
I would say probably something to do with when during execution main() heap
is returned back to free memory - that is before on_exit() runs.

Any way the following shell script will print 42 when on_exit() refers
variable that is allocated.  At least with up to date (2019-06-13) arch
linux (glibc 2.29-1) compiled either gcc or clang will print 0 when
executing broken version.  I suppose zero is just co-incident.  More
probably value does not have any guarantees.

Whether on_exit() update should example code showing how to use function
properly, or a warning in BUGS section is matter of taste.  Either way it
would be nice if others would not need wonder what is this function doing.

-- snip
#!/bin/sh

cat > ./broken.c <<EOF
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

static void run_on_exit(int exit_val, void *arg)
{
        int *i = (int *)arg;

        printf("%d\n", *i);
        _exit(exit_val);
}

int main(int argc, char **argv)
{
        int i = 42;

        on_exit(run_on_exit, &i);
        return 0;
}
EOF

cat > ./works.c <<EOF
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

static void run_on_exit(int exit_val, void *arg)
{
        int *i = (int *)arg;

        printf("%d\n", *i);
        free(i);
        _exit(exit_val);
}

int main(int argc, char **argv)
{
        int *i = malloc(sizeof(int));

        *i = 42;
        on_exit(run_on_exit, i);
        return 0;
}
EOF

gcc -Wall -pedantic -o broken broken.c
gcc -Wall -pedantic -o works works.c
set -x
./broken
./works
-- snip

$ ./snip.sh
+ ./broken
0
+ ./works
42

-- 
Sami Kerola
http://www.iki.fi/kerolasa/
