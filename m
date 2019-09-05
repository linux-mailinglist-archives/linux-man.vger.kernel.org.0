Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3AF62AA4F0
	for <lists+linux-man@lfdr.de>; Thu,  5 Sep 2019 15:46:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727900AbfIENpx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Sep 2019 09:45:53 -0400
Received: from mail-lj1-f196.google.com ([209.85.208.196]:40922 "EHLO
        mail-lj1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725975AbfIENpo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Sep 2019 09:45:44 -0400
Received: by mail-lj1-f196.google.com with SMTP id 7so2533723ljw.7
        for <linux-man@vger.kernel.org>; Thu, 05 Sep 2019 06:45:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=A6AkctShjNdcC76X0qT1I65bC1mn92ozULEmFncNb4g=;
        b=s78Gy2NhTy8Wk3es2yUhxqPhslz4q+yODGam3Zj4uVw9LBxuCPm/m0XEuyf262338z
         45vwbscnpy14AaD0wvffufhm8F7KOIBqEOvpSR6ykXJyxuSjWNIE+iqMky+DDEjBiHnO
         AZFnayLfAGI8Rk+RgX9Dh15mLxkDrvGDsvLfEVc7ckkMdPZ4xJ5Ql/N6oN3PTT9UtZTv
         RMiXx3VxmePzPGVG0YVB3B6lX14OEiajIFfLAKPb0MtmZGjFxCcf5VnAmMVWF5bpQHTT
         X/BWHJPt54pptUxp75gEWqyITeJ3GMsnlAAHdgtifYEgiaH2seWH+HYHAsa401x3j4sx
         2USw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=A6AkctShjNdcC76X0qT1I65bC1mn92ozULEmFncNb4g=;
        b=ssb7P1SJix2XHBO0M1YtE/hvrd/Q5OMZ019Bh/QHGzMMmgPeyk+hwWOV3ZsKpWdndK
         uapotBR5+alGXuEEQ/EXWOhKIJm8O+7abqknAC0IhPJbSFTlB3j7EshAF/M7cyXGC3I2
         cFd5wDaQ3v3M3cBUPjTI58ssc87J0Jto0y4a5cHD1OIP6MEIEHDo3/b4ZXCxGM2MbSwo
         RhlFWggeliZA4eNefq9EQsskSHk7rr/rjcRwYNOAUSD6hd2MKsZnIE483Z+n186wjQAy
         OL7d6j5Ti/mgLDnJiuwY3YEEB/ipgT3kv3yeMBP1ufhDwOoObIVIPvsWkUq3+tCkUnWE
         9LPg==
X-Gm-Message-State: APjAAAVfju0DZp3BFAtndMEBy+Deu3bL/Yx+8GGtvV4LmlkMDOrRk/FQ
        D+7vwUQHiTaT/gEYJ6DtKMuEIfxTcqE=
X-Google-Smtp-Source: APXvYqy+Jlt8N5+icYQnlSEMEc281Pyu2/aqh8U+XbkDZ/x0PInSuAdXCeOHC6rbRpLoaaPuf/iMVg==
X-Received: by 2002:a2e:91d9:: with SMTP id u25mr2183769ljg.85.1567691141469;
        Thu, 05 Sep 2019 06:45:41 -0700 (PDT)
Received: from [192.168.101.104] ([138.62.237.153])
        by smtp.gmail.com with ESMTPSA id t3sm451448lfd.92.2019.09.05.06.45.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Sep 2019 06:45:40 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/4] fanotify.7: tfix
To:     Jakub Wilk <jwilk@jwilk.net>
References: <20190902065536.4878-1-jwilk@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <4cfb8f0f-72e3-13ea-ef59-4b85ae8ea134@gmail.com>
Date:   Thu, 5 Sep 2019 15:45:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190902065536.4878-1-jwilk@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Jakub,

On 9/2/19 8:55 AM, Jakub Wilk wrote:
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>

Thanks. Nice set if clean-ups! Patch applied.

Cheers,

Michael

> ---
>  man7/fanotify.7 | 26 +++++++++++++-------------
>  1 file changed, 13 insertions(+), 13 deletions(-)
> 
> diff --git a/man7/fanotify.7 b/man7/fanotify.7
> index b8e0755aa..fb64f06c1 100644
> --- a/man7/fanotify.7
> +++ b/man7/fanotify.7
> @@ -927,7 +927,7 @@ and waits until an event of type
>  .B FAN_CREATE
>  has occurred.
>  The event mask indicates which type of filesystem object\(emeither
> -a file or a directory\(emwas created".
> +a file or a directory\(emwas created.
>  Once all events have been read from the buffer and processed accordingly,
>  the program simply terminates.
>  .PP
> @@ -1008,7 +1008,7 @@ main(int argc, char **argv)
>      struct fanotify_event_info_fid *fid;
>  
>      if (argc != 2) {
> -        fprintf(stderr, "Invalid number of command line arguments.\e\n");
> +        fprintf(stderr, "Invalid number of command line arguments.\en");
>          exit(EXIT_FAILURE);
>      }
>  
> @@ -1031,7 +1031,7 @@ main(int argc, char **argv)
>          exit(EXIT_FAILURE);
>      }
>  
> -    printf("Listening for events.\e\n");
> +    printf("Listening for events.\en");
>  
>      /* Read events from the event queue into a buffer */
>  
> @@ -1047,22 +1047,22 @@ main(int argc, char **argv)
>              FAN_EVENT_OK(metadata, len);
>              metadata = FAN_EVENT_NEXT(metadata, len)) {
>          fid = (struct fanotify_event_info_fid *) (metadata + 1);
> -        file_handle = (struct file_handle *) fid->handle;
> +        file_handle = (struct file_handle *) fid\->handle;
>  
>          /* Ensure that the event info is of the correct type */
>  
> -        if (fid->hdr.info_type != FAN_EVENT_INFO_TYPE_FID) {
> -            fprintf(stderr, "Received unexpected event info type.\e\n");
> +        if (fid\->hdr.info_type != FAN_EVENT_INFO_TYPE_FID) {
> +            fprintf(stderr, "Received unexpected event info type.\en");
>              exit(EXIT_FAILURE);
>          }
>  
> -        if (metadata->mask == FAN_CREATE)
> +        if (metadata\->mask == FAN_CREATE)
>              printf("FAN_CREATE (file created):");
>  
> -        if (metadata->mask == FAN_CREATE | FAN_ONDIR)
> +        if (metadata\->mask == FAN_CREATE | FAN_ONDIR)
>              printf("FAN_CREATE | FAN_ONDIR (subdirectory created):");
>  
> -        /* metadata->fd is set to FAN_NOFD when FAN_REPORT_FID is enabled.
> +        /* metadata\->fd is set to FAN_NOFD when FAN_REPORT_FID is enabled.
>             To obtain a file descriptor for the file object corresponding to
>             an event you can use the struct file_handle that\(aqs provided
>             within the fanotify_event_info_fid in conjunction with the
> @@ -1074,7 +1074,7 @@ main(int argc, char **argv)
>          if (ret == \-1) {
>              if (errno == ESTALE) {
>                  printf("File handle is no longer valid. "
> -                        "File has been deleted\e\n");
> +                        "File has been deleted\en");
>                  continue;
>              } else {
>                  perror("open_by_handle_at");
> @@ -1093,15 +1093,15 @@ main(int argc, char **argv)
>              exit(EXIT_FAILURE);
>          }
>  
> -        path[path_len] = \(aq\e\0\(aq;
> -        printf("\etDirectory \(aq%s\(aq has been modified.\e\n", path);
> +        path[path_len] = \(aq\e0\(aq;
> +        printf("\etDirectory \(aq%s\(aq has been modified.\en", path);
>  
>          /* Close associated file descriptor for this event */
>  
>          close(event_fd);
>      }
>  
> -    printf("All events processed successfully. Program exiting.\e\n");
> +    printf("All events processed successfully. Program exiting.\en");
>      exit(EXIT_SUCCESS);
>  }
>  .EE
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
