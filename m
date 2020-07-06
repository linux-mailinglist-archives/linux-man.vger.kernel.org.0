Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B85D6215507
	for <lists+linux-man@lfdr.de>; Mon,  6 Jul 2020 11:54:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728413AbgGFJyD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Jul 2020 05:54:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41340 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728354AbgGFJyC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Jul 2020 05:54:02 -0400
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com [IPv6:2607:f8b0:4864:20::244])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A381C061794
        for <linux-man@vger.kernel.org>; Mon,  6 Jul 2020 02:54:02 -0700 (PDT)
Received: by mail-oi1-x244.google.com with SMTP id r8so31531801oij.5
        for <linux-man@vger.kernel.org>; Mon, 06 Jul 2020 02:54:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=u+h6brC4fQJJT07RiDoGc87Wszom5FQiPqI3dS1H5wM=;
        b=GyGHrdIGE41QRdwvv7tkiGLBWJs5MjupH6j/m2hhA2nj4E5zXUFN7GxxjFHn5wsSgC
         PT7eujaJCSqybU9J11eWkeVtllHIkGxQKaJZqRdtXsHMgS7d719cJL9cRvvDVqGS1rNj
         K+DrKDYhHy9nG4HCyhEYwwje6HgAfxrd4ZryI1TPAAjRGgsdvml3QXAyazqwN8sGMKMx
         LUnnFSsvuehwkUKhGeCMB6eNUqrQykcjQnPVzuK11HnD0M3KtVyaQLLBiZsbfj3pCJav
         eXoIeDdpYmM0BJPBzW/Cb6MCmR3ETpDr83FKoQ2gJfjWoTZDh+s54yf5Zstaqf0LzyvJ
         CJTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=u+h6brC4fQJJT07RiDoGc87Wszom5FQiPqI3dS1H5wM=;
        b=BMfNt7xYnfQVYsUkQokSguusY0xHbItA6g2LfJZT+m5EDh+9FeAaVVWABSBKHHLO2+
         ohkeOKWs/f4bnO1T0Rvlnge8+ZZgd1SchB1SlvQcyaLomiVLmy2ZON4L2HFiC4QPbLhT
         MwQwzIeMvpOkByS/Mkd1Sd0E6R+KMiHvVbH1E0akaxdMCcHEYBzEkESMU3omtKYZToIT
         OfbMTG+ZKOLjjBPC1sI4V7C/TEUQlF9saN2FG45usMEaYsHIQUBuIvg3nqI7pU1lTQoc
         jsx9jHK8SXz6/E8uHCp2WEHjfh5AUx0Fprn6bJWvvGfKaIFJGsFrsCA0xPtK4/0kt8hq
         1fLA==
X-Gm-Message-State: AOAM532YlQ//j3LkyO3QD8OZFdFekkkxKZ+q2ruv7+w6upQfpjPZeZ+R
        qYhIue4CbMyjzfMBKQtsU7JhF8Xjn3s+DZPUjUC0HQ==
X-Google-Smtp-Source: ABdhPJwDrnWQSX2IlBUvZtSDXRIMIINZS8jdV05SwTsiEMWf6I+yPz5izB8KGhlJjNhXzoFNdExuvNwytoJ1WC/ZK24=
X-Received: by 2002:aca:5683:: with SMTP id k125mr16573210oib.159.1594029241887;
 Mon, 06 Jul 2020 02:54:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200705132529.GA9922@rhi.hi.is>
In-Reply-To: <20200705132529.GA9922@rhi.hi.is>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 6 Jul 2020 11:53:50 +0200
Message-ID: <CAKgNAkjG6mov6to301WzOznPB1WVAOtXytid5PF7iPk7eb3PGg@mail.gmail.com>
Subject: Re: [PATCH] man1/*: srcfix: remove superfluous quotes around
 space-free arguments
To:     Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Bjarni,

On Sun, 5 Jul 2020 at 15:25, Bjarni Ingi Gislason <bjarniig@rhi.hi.is> wrote:
>
>   Remove quotes around a space-free argument for the single-font macros.

Your commit message doesn't explain why this patch/this series is
useful. Please explain.

Thanks,

Michael

> Signed-off-by: Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
> ---
>  man1/getent.1    |  2 +-
>  man1/iconv.1     |  6 +++---
>  man1/intro.1     |  2 +-
>  man1/localedef.1 |  2 +-
>  man1/time.1      | 10 +++++-----
>  5 files changed, 11 insertions(+), 11 deletions(-)
>
> diff --git a/man1/getent.1 b/man1/getent.1
> index 8f89a933b..5b6b9265a 100644
> --- a/man1/getent.1
> +++ b/man1/getent.1
> @@ -366,7 +366,7 @@ Disables IDN encoding in lookups for
>  .BR \-? ", " \-\-help
>  Print a usage summary and exit.
>  .TP
> -.B "\-\-usage"
> +.B \-\-usage
>  Print a short usage summary and exit.
>  .TP
>  .BR \-V ", " \-\-version
> diff --git a/man1/iconv.1 b/man1/iconv.1
> index 3649e6dbe..6b728ead1 100644
> --- a/man1/iconv.1
> +++ b/man1/iconv.1
> @@ -86,7 +86,7 @@ transliterated are replaced with a question mark (?) in the output.
>  .BR \-l ", " \-\-list
>  List all known character set encodings.
>  .TP
> -.B "\-c"
> +.B \-c
>  Silently discard characters that cannot be converted instead of
>  terminating when encountering such characters.
>  .TP
> @@ -98,14 +98,14 @@ for output.
>  .BR \-s ", " \-\-silent
>  This option is ignored; it is provided only for compatibility.
>  .TP
> -.B "\-\-verbose"
> +.B \-\-verbose
>  Print progress information on standard error when processing
>  multiple files.
>  .TP
>  .BR \-? ", " \-\-help
>  Print a usage summary and exit.
>  .TP
> -.B "\-\-usage"
> +.B \-\-usage
>  Print a short usage summary and exit.
>  .TP
>  .BR \-V ", " \-\-version
> diff --git a/man1/intro.1 b/man1/intro.1
> index 63fcf5dea..dbef34622 100644
> --- a/man1/intro.1
> +++ b/man1/intro.1
> @@ -189,7 +189,7 @@ Here it finds Maja's telephone number.
>  .SS Pathnames and the current directory
>  Files live in a large tree, the file hierarchy.
>  Each has a
> -.I "pathname"
> +.I pathname
>  describing the path from the root of the tree (which is called
>  .IR / )
>  to the file.
> diff --git a/man1/localedef.1 b/man1/localedef.1
> index dcd4ff90d..552b126f7 100644
> --- a/man1/localedef.1
> +++ b/man1/localedef.1
> @@ -280,7 +280,7 @@ Print a usage summary and exit.
>  Also prints the default paths used by
>  .BR localedef .
>  .TP
> -.B "\-\-usage"
> +.B \-\-usage
>  Print a short usage summary and exit.
>  .TP
>  .BR \-V ", " \-\-version
> diff --git a/man1/time.1 b/man1/time.1
> index f274aa9d8..476359c6c 100644
> --- a/man1/time.1
> +++ b/man1/time.1
> @@ -137,7 +137,7 @@ All of those used by
>  .BR tcsh (1)
>  are supported.
>  .PP
> -.B "Time"
> +.B Time
>  .TP
>  .B %E
>  Elapsed real time (in [hours:]minutes:seconds).
> @@ -156,7 +156,7 @@ Total number of CPU-seconds that the process spent in user mode.
>  .B %P
>  Percentage of the CPU that this job got, computed as (%U + %S) / %E.
>  .PP
> -.B "Memory"
> +.B Memory
>  .TP
>  .B %M
>  Maximum resident set size of the process during its lifetime, in Kbytes.
> @@ -209,7 +209,7 @@ Number of times the process was context-switched involuntarily
>  Number of waits: times that the program was context-switched voluntarily,
>  for instance while waiting for an I/O operation to complete.
>  .PP
> -.B "I/O"
> +.B I/O
>  .TP
>  .B %I
>  Number of filesystem inputs by the process.
> @@ -262,13 +262,13 @@ is terminated by a signal) or nonzero exit status.
>  .\"
>  .SS GNU standard options
>  .TP
> -.B "\-\-help"
> +.B \-\-help
>  Print a usage message on standard output and exit successfully.
>  .TP
>  .B "\-V, \-\-version"
>  Print version information on standard output, then exit successfully.
>  .TP
> -.B "\-\-"
> +.B \-\-
>  Terminate option list.
>  .SH BUGS
>  Not all resources are measured by all versions of UNIX,
> --
> 2.27.0



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
