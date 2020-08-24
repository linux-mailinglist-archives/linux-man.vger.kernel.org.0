Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2FD04250C57
	for <lists+linux-man@lfdr.de>; Tue, 25 Aug 2020 01:28:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726531AbgHXX2l (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 24 Aug 2020 19:28:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726090AbgHXX2k (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 24 Aug 2020 19:28:40 -0400
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com [IPv6:2607:f8b0:4864:20::1042])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F852C061574
        for <linux-man@vger.kernel.org>; Mon, 24 Aug 2020 16:28:40 -0700 (PDT)
Received: by mail-pj1-x1042.google.com with SMTP id g6so241487pjl.0
        for <linux-man@vger.kernel.org>; Mon, 24 Aug 2020 16:28:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mbobrowski-org.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=8on7CKBvLYm+s4k35k6FORWCVcfbVnXwVGWp4ife0uU=;
        b=jVcNKruCeRai98Sl+THLwNGSS8JF/Us6hu5mbXB5Ld1SjGnJvH+cdjdAzrhho2bgj7
         +RbZLFesM25LoQXSFgZcOXd9pUJnl/F6TpQQAgdmUyq9zHWECMeQBWYrVgChNh+kkKev
         0rzECGtaymFp032ZgS2bwEt4RcnhzcFMQ8eidZ/kQfJnt4L0HYAhkdCvKJQSPtMcxb9m
         Mxe0w9qeHYvX35hMlH6+/6OT+Ee52poKH9ZNQQZq4z16BDtiA2ZALZzzIPY3FGydQiax
         bje4VYDmkvsxyyCf5sRlpp8T5QpPG/MHGckSjf2inq7aacIEpgvMOod5xuoGqpedu1d/
         t7BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=8on7CKBvLYm+s4k35k6FORWCVcfbVnXwVGWp4ife0uU=;
        b=e3h8dkZhUKr4Xp4LC6jL50Q6IqNWtE0kCbWPB5a2dEVV8i8SkFP1tR1Fq/FneWPnQ5
         EldcfAOX+YUI7trqE9/YuaDrM2U4ZjGAbRrLAgammfnoqVEmF32f/LIG40eHPg8qVDv1
         dBB69B0u+kVxM+XnnL4zc8YMUPtpJbAd1gkeLHvjO4sZXkGeMQncmFwQrMKk+jkzZwb2
         5dEOHQmofhUUcVXHzyjYVhNtiqRZLvDaILFLiWDo3vVAqiBu3issi7wcTMPeGlZhA64t
         c5BjcZlfzVCP+6CkeemHTz+s9/PmbGZ+9P6jP7sU36VEQ98DV3rC8fsJYaJaSaNSu4gx
         7YCw==
X-Gm-Message-State: AOAM533N7ILLQQVBYAwLYjM04qOc072hPwXgoiEnLPzRX/VufGMSz+Sr
        k1gffEr0fiO1jz/O1Mq5fOSP
X-Google-Smtp-Source: ABdhPJxy2IpOe0RLXngfYWKID0r3goV8PxpLTiTwH/peifyEQ0jhaCZb7rn3vrfrDEPbWDFuKy+SUw==
X-Received: by 2002:a17:90a:a50d:: with SMTP id a13mr1286887pjq.180.1598311719424;
        Mon, 24 Aug 2020 16:28:39 -0700 (PDT)
Received: from mail.bobrowski.net (mail.bobrowski.net. [112.213.34.247])
        by smtp.gmail.com with ESMTPSA id 65sm7790769pfc.218.2020.08.24.16.28.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 24 Aug 2020 16:28:38 -0700 (PDT)
Date:   Tue, 25 Aug 2020 09:28:34 +1000
From:   Matthew Bobrowski <mbobrowski@mbobrowski.org>
To:     Amir Goldstein <amir73il@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, Jan Kara <jack@suse.cz>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 3/3] fanotify.7, fanotify_init.2: Document FAN_REPORT_NAME
Message-ID: <20200824232834.GA29070@mail.bobrowski.net>
References: <20200824080326.5012-1-amir73il@gmail.com>
 <20200824080326.5012-4-amir73il@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200824080326.5012-4-amir73il@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Aug 24, 2020 at 11:03:26AM +0300, Amir Goldstein wrote:
> Document fanotify_init(2) flag FAN_REPORT_NAME and the format of the
> event info type FAN_EVENT_INFO_TYPE_DFID_NAME.

These names sure are becoming a little bit of a mouth full. :)
 
> The fanotify_fid.c example is extended to also report the name of the
> created file or sub-directory.
> 
> Signed-off-by: Amir Goldstein <amir73il@gmail.com>

Other than what Jan has already mentioned in regards to the spelling
correction, the patch looks good to me!  Feel free to add:

Reviewed-by: Matthew Bobrowski <mbobrowski@mbobrowski.org>

> ---
>  man2/fanotify_init.2 | 54 +++++++++++++++++++++++++++++
>  man7/fanotify.7      | 81 ++++++++++++++++++++++++++++++++++----------
>  2 files changed, 118 insertions(+), 17 deletions(-)
> 
> diff --git a/man2/fanotify_init.2 b/man2/fanotify_init.2
> index c58ae4493..a2e2a17fc 100644
> --- a/man2/fanotify_init.2
> +++ b/man2/fanotify_init.2
> @@ -223,6 +223,60 @@ flag, no event will be reported.
>  See
>  .BR fanotify (7)
>  for additional details.
> +.TP
> +.BR FAN_REPORT_NAME " (since Linux 5.9)"
> +Events for fanotify groups initialized with this flag will contain additional
> +information about the name of the directory entry correlated to an event.
> +This flag must be provided in conjunction with the flag
> +.BR FAN_REPORT_DIR_FID .
> +Providing this flag value without
> +.BR FAN_REPORT_DIR_FID
> +will result in the error
> +.BR EINVAL .
> +This flag may be combined with the flag
> +.BR FAN_REPORT_FID .
> +An additional record of type
> +.BR FAN_EVENT_INFO_TYPE_DFID_NAME ,
> +which encapsulates the information about the directory entry is included
> +alongside the generic event metadata structure and substitutes the additional
> +information record of type
> +.BR FAN_EVENT_INFO_TYPE_DFID .
> +The additional record includes a file handle that identifies a directory
> +filesystem object followed by a name that identifies an entry in that
> +directory.
> +For the directory entry modification events
> +.BR FAN_CREATE ,
> +.BR FAN_DELETE ,
> +and
> +.BR FAN_MOVE ,
> +the reported name is that of the created/deleted/moved directory entry.
> +For other events that occur on a directory object, the reported file handle
> +is that of the directory object itself and the reported name is '.'.
> +For other events that occur on a non-directory object, the reported file handle
> +is that of the parent directory object and the reported name is the name of a
> +directory entry where the object was located at the time of the event.
> +The rational behind this logic is that the reported directory file handle can
> +be passed to
> +.BR open_by_handle_at (2)
> +to get an open directory file descriptor and that file descriptor along with
> +the reported name can be used to call
> +.BR fstatat (2).
> +The same rule that applies to record type
> +.BR FAN_EVENT_INFO_TYPE_DFID
> +also applies to record type
> +.BR FAN_EVENT_INFO_TYPE_DFID_NAME \ -
> +if a non-directory object has no parent, either the event will not be reported
> +or it will be reported without the directory entry information.
> +Note that there is no guarantee that the filesystem object will be found at the
> +location described by the directory entry information at the time the event is
> +received.
> +See
> +.BR fanotify (7)
> +for additional details.
> +.TP
> +.B FAN_REPORT_DFID_NAME
> +This is a synonym for
> +.RB ( FAN_REPORT_DIR_FID | FAN_REPORT_NAME ).
>  .PP
>  The
>  .I event_f_flags
> diff --git a/man7/fanotify.7 b/man7/fanotify.7
> index 00fc56368..5046fce02 100644
> --- a/man7/fanotify.7
> +++ b/man7/fanotify.7
> @@ -470,6 +470,12 @@ the
>  .IR file_handle
>  identifies the modified directory and not the created/deleted/moved child
>  object.
> +If the value of
> +.I info_type
> +field is
> +.BR FAN_EVENT_INFO_TYPE_DFID_NAME ,
> +the file handle is followed by a null terminated string that identifies the
> +created/deleted/moved directory entry name.
>  For other events such as
>  .BR FAN_OPEN ,
>  .BR FAN_ATTRIB ,
> @@ -490,7 +496,18 @@ field is
>  the
>  .IR file_handle
>  identifies the directory object correlated to the event or the parent directory
> -of the non-directory object correlated to the event.
> +of a non-directory object correlated to the event.
> +If the value of
> +.I info_type
> +field is
> +.BR FAN_EVENT_INFO_TYPE_DFID_NAME ,
> +the
> +.IR file_handle
> +identifies the same directory object that would be reported with
> +.BR FAN_EVENT_INFO_TYPE_DFID
> +and the file handle is followed by a null terminated string that identifies the
> +name of a directory entry in that directory, or '.' to identify the directory
> +object itself.
>  .PP
>  The following macros are provided to iterate over a buffer containing
>  fanotify event metadata returned by a
> @@ -675,12 +692,17 @@ events for the monitored directory itself.
>  Fanotify monitoring of directories is not recursive:
>  to monitor subdirectories under a directory,
>  additional marks must be created.
> -(But note that the fanotify API provides no way of detecting when a
> -subdirectory has been created under a marked directory,
> -which makes recursive monitoring difficult.)
> -Monitoring mounts offers the capability to monitor a whole directory tree.
> +The
> +.B FAN_CREATE
> +event can be used for detecting when a subdirectory has been created under
> +a marked directory.
> +An additional mark must then be set on the newly created subdirectory.
> +This approach is racy, because it can lose events that occurred inside the
> +newly created subdirectory, before a mark is added on that subdirectory.
> +Monitoring mounts offers the capability to monitor a whole directory tree
> +in a race free manner.
>  Monitoring filesystems offers the capability to monitor changes made from
> -any mount of a filesystem instance.
> +any mount of a filesystem instance in a race free manner.
>  .PP
>  The event queue can overflow.
>  In this case, events are lost.
> @@ -964,9 +986,8 @@ main(int argc, char *argv[])
>  .EE
>  .\"
>  .SS Example program: fanotify_fid.c
> -The second program is an example of fanotify being used with
> -.B FAN_REPORT_FID
> -enabled.
> +The second program is an example of fanotify being used with a group that
> +identifies objects by file handles.
>  The program marks the filesystem object that is passed as
>  a command-line argument
>  and waits until an event of type
> @@ -987,7 +1008,7 @@ This is followed by the creation of a regular file,
>  This results in a
>  .B FAN_CREATE
>  event being generated and reported against the file's parent watched
> -directory object.
> +directory object and with the created file name.
>  Program execution ends once all events captured within the buffer have
>  been processed.
>  .PP
> @@ -997,6 +1018,7 @@ been processed.
>  Listening for events.
>  FAN_CREATE (file created):
>          Directory /home/user has been modified.
> +        Entry 'testfile.txt' is not a subdirectory.
>  All events processed successfully. Program exiting.
>  
>  $ \fBtouch /home/user/testfile.txt\fP              # In another terminal
> @@ -1011,7 +1033,7 @@ This specific action results in a
>  .B FAN_CREATE
>  event being generated and is reported with the
>  .B FAN_ONDIR
> -flag set.
> +flag set and with the created directory name.
>  .PP
>  .in +4n
>  .EX
> @@ -1019,6 +1041,7 @@ flag set.
>  Listening for events.
>  FAN_CREATE | FAN_ONDIR (subdirectory created):
>          Directory /home/user has been modified.
> +        Entry 'testdir' is a subdirectory.
>  All events processed successfully. Program exiting.
>  
>  $ \fBmkdir \-p /home/user/testdir\fP          # In another terminal
> @@ -1051,6 +1074,8 @@ main(int argc, char **argv)
>      struct file_handle *file_handle;
>      struct fanotify_event_metadata *metadata;
>      struct fanotify_event_info_fid *fid;
> +    const char *file_name;
> +    struct stat sb;
>  
>      if (argc != 2) {
>          fprintf(stderr, "Invalid number of command line arguments.\en");
> @@ -1064,10 +1089,10 @@ main(int argc, char **argv)
>      }
>  
>  
> -    /* Create an fanotify file descriptor with FAN_REPORT_FID as a flag
> -       so that program can receive fid events. */
> +    /* Create an fanotify file descriptor with FAN_REPORT_DFID_NAME as a flag
> +       so that program can receive fid events with directory entry name. */
>  
> -    fd = fanotify_init(FAN_CLASS_NOTIF | FAN_REPORT_FID, 0);
> +    fd = fanotify_init(FAN_CLASS_NOTIF | FAN_REPORT_DFID_NAME, 0);
>      if (fd == \-1) {
>          perror("fanotify_init");
>          exit(EXIT_FAILURE);
> @@ -1103,7 +1128,13 @@ main(int argc, char **argv)
>  
>          /* Ensure that the event info is of the correct type */
>  
> -        if (fid\->hdr.info_type != FAN_EVENT_INFO_TYPE_FID) {
> +        if (fid\->hdr.info_type == FAN_EVENT_INFO_TYPE_FID ||
> +            fid\->hdr.info_type == FAN_EVENT_INFO_TYPE_DFID) {
> +            file_name = NULL;
> +        } else if (fid\->hdr.info_type == FAN_EVENT_INFO_TYPE_DFID_NAME) {
> +            file_name = file_handle->f_handle +
> +                        file_handle->handle_bytes;
> +        } else {
>              fprintf(stderr, "Received unexpected event info type.\en");
>              exit(EXIT_FAILURE);
>          }
> @@ -1114,8 +1145,8 @@ main(int argc, char **argv)
>          if (metadata\->mask == (FAN_CREATE | FAN_ONDIR))
>              printf("FAN_CREATE | FAN_ONDIR (subdirectory created):\en");
>  
> -        /* metadata\->fd is set to FAN_NOFD when FAN_REPORT_FID is
> -           enabled.  To obtain a file descriptor for the file object
> +        /* metadata\->fd is set to FAN_NOFD when the group identifies objects
> +           by file handles.  To obtain a file descriptor for the file object
>             corresponding to an event you can use the struct file_handle
>             that\(aqs provided within the fanotify_event_info_fid in
>             conjunction with the open_by_handle_at(2) system call.
> @@ -1149,6 +1180,22 @@ main(int argc, char **argv)
>          path[path_len] = \(aq\e0\(aq;
>          printf("\etDirectory \(aq%s\(aq has been modified.\en", path);
>  
> +        if (file_name) {
> +            ret = fstatat(event_fd, file_name, &sb, 0);
> +            if (ret == \-1) {
> +                if (errno != ENOENT) {
> +                    perror("fstatat");
> +                    exit(EXIT_FAILURE);
> +                }
> +                printf("\etEntry \(aq%s\(aq does not exist.\en", file_name);
> +            } else if ((sb.st_mode & S_IFMT) == S_IFDIR) {
> +                printf("\etEntry \(aq%s\(aq is a subdirectory.\en", file_name);
> +            } else {
> +                printf("\etEntry \(aq%s\(aq is not a subdirectory.\en",
> +                        file_name);
> +            }
> +        }
> +
>          /* Close associated file descriptor for this event */
>  
>          close(event_fd);
> -- 
> 2.17.1
> 
/M
