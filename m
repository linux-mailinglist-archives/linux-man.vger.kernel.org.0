Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7353F1B155B
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 21:06:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726791AbgDTTGL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 15:06:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36824 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726435AbgDTTGL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 15:06:11 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ABD34C061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 12:06:10 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id z6so806346wml.2
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 12:06:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=0tX7adJuw9Q652XNOs6H9gkdv3xOsr7vb6fuF2vJBaA=;
        b=rwmb3QoQyx0aexVUBO0KdHWa9jtQyX937lnY8Bn/DkgqMOp6Bexe0p9/lRY9OevWRG
         LD4GocP2hAa57DsMDQDmtVgnFjb5sgqnKEnqWPyl52QD6ncivRMNiMBSFEDN+qUAGB1x
         A8G1jIx9LcyLMfQA0aNXPfNh1J+Zd1sMBXE4iUId6enWBAk/4xmMHgCDwcJuThbrVyQ3
         TAMKwTDccOEFLtSVqp3uFXEIUeif7fMBP2YNv4TeyGSqJ/4bYSe/VzAHH5rMLvRvfXwM
         T/7R84YUyEpFo68J5RStXjDQ2+2ynPN6PBKgV4N6bpjwzlkGteZr0wYadfFh0qH7AJsm
         zSzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=0tX7adJuw9Q652XNOs6H9gkdv3xOsr7vb6fuF2vJBaA=;
        b=KK2+YyQD5GdGcyQpzpFgMHhr/20mXyAwhSbjpUEKT01eqUnxmg/fpKYimxnE57zOhc
         ZbFVwl5lbdQLQzkArB0/F+AsbrqdaLRWNZpDZ6QOmw4dbHW5ffyQmQWgGiZX25uDuK6n
         MPALPiSz/Qi49MUUEqfUrjHHzQE1zFywnNTEWTJFHQ0maO3A1XBTDkcB+ZgdBedSCxUb
         oh8oNTwfqjkI3B0wZdfLopeRguGWJArWZ8SBBghwwaWwd7TKpN4pOqFAp8FnHRIlB55K
         FR2sA0FVgOUYwZeLUP+niluhnxKJUf97Feax950weyj+TIEt7XLPYkCsN08MGE1Mt8R9
         GHaA==
X-Gm-Message-State: AGi0PuYUTqezy6vloBWm61HNh4sh5I1vQGal7mHhLMqfn7pNwoWk2QEn
        hC5OU/skCHpjzTUFUsO45ztUskwF
X-Google-Smtp-Source: APiQypIqYmi29El+3HqlKg4vgHinLDqg+llcsBlpPSZtRqLhAsP6TBZnKz1Dnn45u2fV6gPb4GvBEA==
X-Received: by 2002:a1c:a7d7:: with SMTP id q206mr792275wme.45.1587409569179;
        Mon, 20 Apr 2020 12:06:09 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id 138sm458741wmb.14.2020.04.20.12.06.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 12:06:08 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <mbobrowski@mbobrowski.org>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 3/4] fanotify.7: Fix fanotify_fid.c example
To:     Amir Goldstein <amir73il@gmail.com>
References: <20200420184259.29406-1-amir73il@gmail.com>
 <20200420184259.29406-4-amir73il@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <6ff6c52a-bd6b-754b-2efd-9f63b91b554e@gmail.com>
Date:   Mon, 20 Apr 2020 21:06:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200420184259.29406-4-amir73il@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 4/20/20 8:42 PM, Amir Goldstein wrote:
> - The condition for printing "subdirectory created" was always true.
> - The arguments and error check of open_by_handle_at() were incorrect.
> - Fix example description inconsistencies.
> - Nicer indentation of example output.

Thanks, Amir. Patch applied.

Cheers,

Michael

> 
> Signed-off-by: Amir Goldstein <amir73il@gmail.com>
> Reviewed-by: Matthew Bobrowski <mbobrowski@mbobrowski.org>
> Reviewed-by: Jan Kara <jack@suse.cz>
> ---
>  man7/fanotify.7 | 38 ++++++++++++++++++++++----------------
>  1 file changed, 22 insertions(+), 16 deletions(-)
> 
> diff --git a/man7/fanotify.7 b/man7/fanotify.7
> index eaf2acf25..72e7e4fb9 100644
> --- a/man7/fanotify.7
> +++ b/man7/fanotify.7
> @@ -938,21 +938,20 @@ This is followed by the creation of a regular file,
>  .IR /home/user/testfile.txt .
>  This results in a
>  .B FAN_CREATE
> -event being created and reported against the file's parent watched
> +event being generated and reported against the file's parent watched
>  directory object.
>  Program execution ends once all events captured within the buffer have
>  been processed.
> -Program execution ends once all events captured within the buffer are
> -processed.
>  .PP
>  .in +4n
>  .EX
>  # \fB./fanotify_fid /home/user\fP
>  Listening for events.
> -FAN_CREATE (file created): Directory /home/user has been modified.
> +FAN_CREATE (file created):
> +        Directory /home/user has been modified.
>  All events processed successfully. Program exiting.
>  
> -$ \fBtouch /home/user/testing\fP              # In another terminal
> +$ \fBtouch /home/user/testfile.txt\fP              # In another terminal
>  .EE
>  .in
>  .PP
> @@ -960,11 +959,11 @@ The second session shows a mark being placed on
>  .IR /home/user .
>  This is followed by the creation of a directory,
>  .IR /home/user/testdir .
> -This specific action results in the program producing a
> +This specific action results in a
>  .B FAN_CREATE
> -and
> +event being generated and is reported with the
>  .B FAN_ONDIR
> -event.
> +flag set.
>  .PP
>  .in +4n
>  .EX
> @@ -974,7 +973,7 @@ FAN_CREATE | FAN_ONDIR (subdirectory created):
>          Directory /home/user has been modified.
>  All events processed successfully. Program exiting.
>  
> -$ \fBmkdir \-p /home/user/testing\fP          # In another terminal
> +$ \fBmkdir \-p /home/user/testdir\fP          # In another terminal
>  .EE
>  .in
>  .SS Program source: fanotify_fid.c
> @@ -996,7 +995,7 @@ $ \fBmkdir \-p /home/user/testing\fP          # In another terminal
>  int
>  main(int argc, char **argv)
>  {
> -    int fd, ret, event_fd;
> +    int fd, ret, event_fd, mount_fd;
>      ssize_t len, path_len;
>      char path[PATH_MAX];
>      char procfd_path[PATH_MAX];
> @@ -1010,6 +1009,13 @@ main(int argc, char **argv)
>          exit(EXIT_FAILURE);
>      }
>  
> +    mount_fd = open(argv[1], O_DIRECTORY | O_RDONLY);
> +    if (mount_fd == \-1) {
> +        perror(argv[1]);
> +        exit(EXIT_FAILURE);
> +    }
> +
> +
>      /* Create an fanotify file descriptor with FAN_REPORT_FID as a flag
>         so that program can receive fid events. */
>  
> @@ -1055,10 +1061,10 @@ main(int argc, char **argv)
>          }
>  
>          if (metadata\->mask == FAN_CREATE)
> -            printf("FAN_CREATE (file created):");
> +            printf("FAN_CREATE (file created):\en");
>  
> -        if (metadata\->mask == FAN_CREATE | FAN_ONDIR)
> -            printf("FAN_CREATE | FAN_ONDIR (subdirectory created):");
> +        if (metadata\->mask == (FAN_CREATE | FAN_ONDIR))
> +            printf("FAN_CREATE | FAN_ONDIR (subdirectory created):\en");
>  
>          /* metadata\->fd is set to FAN_NOFD when FAN_REPORT_FID is enabled.
>             To obtain a file descriptor for the file object corresponding to
> @@ -1068,8 +1074,8 @@ main(int argc, char **argv)
>             to accommodate for the situation where the file handle for the
>             object was deleted prior to this system call. */
>  
> -        event_fd = open_by_handle_at(AT_FDCWD, file_handle, O_RDONLY);
> -        if (ret == \-1) {
> +        event_fd = open_by_handle_at(mount_fd, file_handle, O_RDONLY);
> +        if (event_fd == \-1) {
>              if (errno == ESTALE) {
>                  printf("File handle is no longer valid. "
>                          "File has been deleted\en");
> @@ -1077,7 +1083,7 @@ main(int argc, char **argv)
>              } else {
>                  perror("open_by_handle_at");
>                  exit(EXIT_FAILURE);
> -	    }
> +            }
>          }
>  
>          snprintf(procfd_path, sizeof(procfd_path), "/proc/self/fd/%d",
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
