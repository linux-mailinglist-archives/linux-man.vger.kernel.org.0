Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8AD211F2084
	for <lists+linux-man@lfdr.de>; Mon,  8 Jun 2020 22:13:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726566AbgFHUNg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 8 Jun 2020 16:13:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39096 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726446AbgFHUNg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 8 Jun 2020 16:13:36 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18F63C08C5C2
        for <linux-man@vger.kernel.org>; Mon,  8 Jun 2020 13:13:36 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id g10so748920wmh.4
        for <linux-man@vger.kernel.org>; Mon, 08 Jun 2020 13:13:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=g//cl99LhYUQTUtm0WtZnCwIHdENUldfAbdxhdM5x2k=;
        b=YFFRiLq2WoONwuP1Z8BnbYxijoT+w9O0GsFXgFFnjDla8BKn22UWe4KsT6OWuXObrF
         gpeiWT25InDSc5ml8VcKQa86uREMicNFWxQdPyRV0e4tyaQgrBTG1TlqFxLtL40rBaT9
         7HGuvt74xTM0ZFJpUwkikAYPAH+cHN5mt0I4mfAP6lTRgQ8m51fdG9M0aCMLjvwod/Um
         FM1+HmWrxh+uBYFdxQCYelLwGyXUXK5OG0Ggfp7aRAE+5N9FDmM/B/WtPCuIcf6Z9FDr
         +UKpS1f12TWaaDsQ6oyOHogXlefEIuxO3DCUwWQ2cu7HO7ChCOyE68JLkadA6Lvf4GdF
         veDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=g//cl99LhYUQTUtm0WtZnCwIHdENUldfAbdxhdM5x2k=;
        b=nr+gTS+5h/gwzMopl6m7PchWneLQJW3LKs/MRxJWg2Ci8QtVLJDMfMoW0A4B0MdyG/
         UK92sWE3SwrPT0i9ZIQJ2z9/wLgmKM62yw+tfIAf9PNjbmEE0kHHOmGkupH1mqCZcFF7
         bH1lqsg+amW3X0kgEkGCFiKUj0Gkhu9E/fAosH4FX9uyynYAm+bWBuehAh2EiE3asXYd
         PRVQJu0ajqC5EXEHM6r2b1rGIRzlZh/i496bx7ZsvtjZtSu2Z1IXI03qss1N7fRuETLr
         DYgARAFW44T7usv0U4AGhz/LuOlFp0RoTBK4hjB06PyDeFIRuxlUfMXROZjOJYQiUxtl
         NYrA==
X-Gm-Message-State: AOAM530Jcrmjb966zQNHvzE0t4RmzaNqNEpkxAKR4v++bj4lFHesK2J3
        gr1+k3osGEOUmi3livCL6MziUj0WlSU=
X-Google-Smtp-Source: ABdhPJxvhUFWNnnEUjUaupx2QDe3yRokzSjEWzl3aHYTEjOf4c1wlvDNkcYmSbC12Vk8mDsbt9FShQ==
X-Received: by 2002:a1c:4143:: with SMTP id o64mr341487wma.157.1591647214383;
        Mon, 08 Jun 2020 13:13:34 -0700 (PDT)
Received: from ?IPv6:2001:a61:253c:8201:b2fb:3ef8:ca:1604? ([2001:a61:253c:8201:b2fb:3ef8:ca:1604])
        by smtp.gmail.com with ESMTPSA id p7sm787897wro.26.2020.06.08.13.13.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Jun 2020 13:13:33 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <mbobrowski@mbobrowski.org>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 1/3] Revert "fanotify.7, fanotify_mark.2: Document
 FAN_DIR_MODIFY"
To:     Amir Goldstein <amir73il@gmail.com>
References: <20200529092530.25207-1-amir73il@gmail.com>
 <20200529092530.25207-2-amir73il@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <ac1249e9-52e9-e42d-6141-4f569c8a89dd@gmail.com>
Date:   Mon, 8 Jun 2020 22:13:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200529092530.25207-2-amir73il@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 5/29/20 11:25 AM, Amir Goldstein wrote:
> This reverts commit a93e5c9593a95d09a1c9deb94dfdecbb970b8162.
> 
> FAN_DIR_MODIFY was disabled for v5.7 release by kernel commit
> f17936993af0 ("fanotify: turn off support for FAN_DIR_MODIFY").

Thanks, Amir. Patch applied.

@ Matthew, thanks of the review (and likewise for the other patches).

Cheers,

Michael

> Signed-off-by: Amir Goldstein <amir73il@gmail.com>
> ---
>  man2/fanotify_mark.2 | 33 --------------------
>  man7/fanotify.7      | 73 ++++++--------------------------------------
>  2 files changed, 10 insertions(+), 96 deletions(-)
> 
> diff --git a/man2/fanotify_mark.2 b/man2/fanotify_mark.2
> index bc8120fb2..f3ebb0208 100644
> --- a/man2/fanotify_mark.2
> +++ b/man2/fanotify_mark.2
> @@ -244,38 +244,6 @@ An fanotify file descriptor created with
>  .B FAN_REPORT_FID
>  is required.
>  .TP
> -.BR FAN_DIR_MODIFY " (since Linux 5.7)"
> -.\" commit 44d705b0370b1d581f46ff23e5d33e8b5ff8ec58
> -Create an event when one of the entries in a marked directory has been created,
> -deleted, or moved.
> -This event will encapsulate additional information about the name of the
> -modified directory entry.
> -It is intended for applications that want to monitor the content of a large
> -directory without having to reiterate the directory each time it is modified.
> -The directory entry name will follow the directory file handle information in
> -the reported event.
> -See
> -.BR fanotify (7)
> -for additional details about the reported event format.
> -The
> -.BR FAN_DIR_MODIFY
> -event will be generated in addition to the events
> -.BR FAN_CREATE ,
> -.BR FAN_DELETE ,
> -.BR FAN_MOVED_FROM ,
> -.BR FAN_MOVED_TO
> -and will never be merged with the aforementioned events.
> -An application receiving this event must not assume that the reported entry name
> -exists in the marked directory at the time the event is received and should call
> -.BR fstatat (2)
> -with the entry name to learn about the current content of the directory entry.
> -See
> -.BR fanotify (7)
> -for an example of its usage.
> -An fanotify file descriptor created with
> -.BR FAN_REPORT_FID
> -is required.
> -.TP
>  .B FAN_OPEN_PERM
>  Create an event when a permission to open a file or directory is requested.
>  An fanotify file descriptor created with
> @@ -341,7 +309,6 @@ The flag has no effect when marking mounts and filesystems.
>  Note that events are not generated for children of the subdirectories
>  of marked directories.
>  More specifically, the directory entry modification events
> -.BR FAN_DIR_MODIFY ,
>  .BR FAN_CREATE ,
>  .BR FAN_DELETE ,
>  .BR FAN_MOVED_FROM ,
> diff --git a/man7/fanotify.7 b/man7/fanotify.7
> index ac6fbbcae..3c49d67a9 100644
> --- a/man7/fanotify.7
> +++ b/man7/fanotify.7
> @@ -324,9 +324,6 @@ A watched file or directory was moved.
>  .B FAN_MODIFY
>  A file was modified.
>  .TP
> -.B FAN_DIR_MODIFY
> -A directory entry was created, deleted or moved.
> -.TP
>  .B FAN_CLOSE_WRITE
>  A file that was opened for writing
>  .RB ( O_WRONLY
> @@ -398,11 +395,9 @@ For example, when an fanotify file descriptor is created using
>  the
>  .I info_type
>  field of this header is set to
> -.BR FAN_EVENT_INFO_TYPE_FID
> -or
> -.BR FAN_EVENT_INFO_TYPE_DFID_NAME .
> -Event listeners can use this field to check what additional information
> -is received for an event.
> +.BR FAN_EVENT_INFO_TYPE_FID .
> +Event listeners can use this field to check that the additional
> +information received for an event is of the correct type.
>  Additionally, the
>  .I fanotify_event_info_header
>  also contains a
> @@ -448,14 +443,6 @@ and
>  will carry the
>  .IR file_handle
>  information for the child object if the child object is being watched.
> -For the event
> -.BR FAN_DIR_MODIFY ,
> -the
> -.I info_type
> -field of this header is set to
> -.BR FAN_EVENT_INFO_TYPE_DFID_NAME .
> -The file handle describes the modified directory and a null terminated
> -name of the modified entry follows directly after the file handle buffer.
>  .PP
>  The following macros are provided to iterate over a buffer containing
>  fanotify event metadata returned by a
> @@ -640,11 +627,9 @@ events for the monitored directory itself.
>  Fanotify monitoring of directories is not recursive:
>  to monitor subdirectories under a directory,
>  additional marks must be created.
> -The
> -.B FAN_DIR_MODIFY
> -event can be used for detecting when a subdirectory has been created under
> -a marked directory.
> -An additional mark must then be set on the newly created subdirectory.
> +(But note that the fanotify API provides no way of detecting when a
> +subdirectory has been created under a marked directory,
> +which makes recursive monitoring difficult.)
>  Monitoring mounts offers the capability to monitor a whole directory tree.
>  Monitoring filesystems offers the capability to monitor changes made from
>  any mount of a filesystem instance.
> @@ -938,8 +923,6 @@ The program marks the filesystem object that is passed as
>  a command-line argument
>  and waits until an event of type
>  .B FAN_CREATE
> -or
> -.B FAN_DIR_MODIFY
>  has occurred.
>  The event mask indicates which type of filesystem object\(emeither
>  a file or a directory\(emwas created.
> @@ -956,9 +939,7 @@ This is followed by the creation of a regular file,
>  This results in a
>  .B FAN_CREATE
>  event being generated and reported against the file's parent watched
> -directory object and a
> -.B FAN_DIR_MODIFY
> -event being generated and reported with the created file name.
> +directory object.
>  Program execution ends once all events captured within the buffer have
>  been processed.
>  .PP
> @@ -968,9 +949,6 @@ been processed.
>  Listening for events.
>  FAN_CREATE (file created):
>          Directory /home/user has been modified.
> -FAN_DIR_MODIFY (entry changed):
> -        Directory /home/user has been modified.
> -        Entry 'testfile.txt' is not a subdirectory.
>  All events processed successfully. Program exiting.
>  
>  $ \fBtouch /home/user/testfile.txt\fP              # In another terminal
> @@ -985,9 +963,7 @@ This specific action results in a
>  .B FAN_CREATE
>  event being generated and is reported with the
>  .B FAN_ONDIR
> -flag set and a
> -.B FAN_DIR_MODIFY
> -event being generated and reported with the created directory name.
> +flag set.
>  .PP
>  .in +4n
>  .EX
> @@ -995,9 +971,6 @@ event being generated and reported with the created directory name.
>  Listening for events.
>  FAN_CREATE | FAN_ONDIR (subdirectory created):
>          Directory /home/user has been modified.
> -FAN_DIR_MODIFY (entry changed):
> -        Directory /home/user has been modified.
> -        Entry 'testdir' is a subdirectory.
>  All events processed successfully. Program exiting.
>  
>  $ \fBmkdir \-p /home/user/testdir\fP          # In another terminal
> @@ -1030,8 +1003,6 @@ main(int argc, char **argv)
>      struct file_handle *file_handle;
>      struct fanotify_event_metadata *metadata;
>      struct fanotify_event_info_fid *fid;
> -    const char *file_name;
> -    struct stat sb;
>  
>      if (argc != 2) {
>          fprintf(stderr, "Invalid number of command line arguments.\en");
> @@ -1057,7 +1028,7 @@ main(int argc, char **argv)
>      /* Place a mark on the filesystem object supplied in argv[1]. */
>  
>      ret = fanotify_mark(fd, FAN_MARK_ADD | FAN_MARK_ONLYDIR,
> -                        FAN_DIR_MODIFY | FAN_CREATE | FAN_ONDIR,
> +                        FAN_CREATE | FAN_ONDIR,
>                          AT_FDCWD, argv[1]);
>      if (ret == \-1) {
>          perror("fanotify_mark");
> @@ -1084,19 +1055,11 @@ main(int argc, char **argv)
>  
>          /* Ensure that the event info is of the correct type */
>  
> -        if (fid\->hdr.info_type == FAN_EVENT_INFO_TYPE_FID) {
> -            file_name = NULL;
> -        } else if (fid\->hdr.info_type == FAN_EVENT_INFO_TYPE_DFID_NAME) {
> -            file_name = file_handle->f_handle +
> -                        file_handle->handle_bytes;
> -        } else {
> +        if (fid\->hdr.info_type != FAN_EVENT_INFO_TYPE_FID) {
>              fprintf(stderr, "Received unexpected event info type.\en");
>              exit(EXIT_FAILURE);
>          }
>  
> -        if (metadata\->mask == FAN_DIR_MODIFY)
> -            printf("FAN_DIR_MODIFY (entry changed):\en");
> -
>          if (metadata\->mask == FAN_CREATE)
>              printf("FAN_CREATE (file created):\en");
>  
> @@ -1138,22 +1101,6 @@ main(int argc, char **argv)
>          path[path_len] = \(aq\e0\(aq;
>          printf("\etDirectory \(aq%s\(aq has been modified.\en", path);
>  
> -        if (file_name) {
> -            ret = fstatat(event_fd, file_name, &sb, 0);
> -            if (ret == \-1) {
> -                if (errno != ENOENT) {
> -                    perror("fstatat");
> -                    exit(EXIT_FAILURE);
> -                }
> -                printf("\etEntry %\(aqs\(aq does not exist.\en", file_name);
> -            } else if ((sb.st_mode & S_IFMT) == S_IFDIR) {
> -                printf("\etEntry \(aq%s\(aq is a subdirectory.\en", file_name);
> -            } else {
> -                printf("\etEntry \(aq%s\(aq is not a subdirectory.\en",
> -                        file_name);
> -            }
> -        }
> -
>          /* Close associated file descriptor for this event */
>  
>          close(event_fd);
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
