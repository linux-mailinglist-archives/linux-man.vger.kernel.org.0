Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EAC7F250C50
	for <lists+linux-man@lfdr.de>; Tue, 25 Aug 2020 01:25:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728247AbgHXXZH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 24 Aug 2020 19:25:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60998 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726090AbgHXXZF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 24 Aug 2020 19:25:05 -0400
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com [IPv6:2607:f8b0:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8CEBC061574
        for <linux-man@vger.kernel.org>; Mon, 24 Aug 2020 16:25:04 -0700 (PDT)
Received: by mail-pf1-x443.google.com with SMTP id m71so5829206pfd.1
        for <linux-man@vger.kernel.org>; Mon, 24 Aug 2020 16:25:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mbobrowski-org.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=XMAW5uOgAylcLyp8Jn6MnPI/HRmfUlDk+WapLQUXI1o=;
        b=kDrOGA8AsSdwlrp7T/aD7wvYFjM45SGe1iaYbJYjuRfaIgK5HZX7cRdiQM7aLK0LEA
         dj8gulQ6h3OsDwM8fudCXQ/33H/ZwSjyQDAvufYAp+xif1CUwPgixdkJ+X4gcry38RRZ
         9jYlXzq5Qx2juIglmXRtngEtDgP7hXtFP61eyNitvDRKYK+hU4usmGPCJ8nJt09TM5qQ
         WrCyt/C0+w8YXan0rQnflz/4oOdCm8d9sQ7UYco35CHZBtNo3KUbTCaJlw+TGrLz+nj6
         t9ZMfGiVuFUbci4EOfe3f4IipoxwXxCwXWHWWPuDhfQf0iseZO6of76aO/HkwkWsxiz9
         HeRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=XMAW5uOgAylcLyp8Jn6MnPI/HRmfUlDk+WapLQUXI1o=;
        b=t8fwytmtrxKCvuFKOaglU96J+iXdo96slvHqIJ5ZVRL+Juo1ABkzEkZzT4aG3hlN5I
         SX2lBAd1EUreN1j1gxg7NRUy9ACqePXgRPQX6cehzRWjx83B5RxmwdBjETqKtX+oc8s/
         +H99Ioeg0LN8X5YansodmBEuqn1lOMz+CrWyHCVISZoEL6Fr8kyLiBIanJJq+JfkyhQv
         poHnRmkREqrtBLRGrox2I6LLqKq8LMZndZg4dAe1BHlafImhqL8H0QMA4NHIBcPQG8xC
         Av/dwChaWwHsOyTMegMvQxleEXj3Ew30Z8aEUlNitcbrwJJTA8UFEi3D9zVBzVEoMuIs
         WRYQ==
X-Gm-Message-State: AOAM532l1L0M6LpoP/6cynfdPKtLDgBHr2q6iAbT+j2LvAa/hSpHA9Mc
        c21PcNA7mrSiX0P7Zhc6X6qr
X-Google-Smtp-Source: ABdhPJx/c+WLXnTc0vFeOPiFyIIHMlQrOKlf5yyLgBjWsV0okcrgTzNGmI296cqubuXI80iTIieZ5Q==
X-Received: by 2002:a17:902:7048:: with SMTP id h8mr5210182plt.225.1598311504182;
        Mon, 24 Aug 2020 16:25:04 -0700 (PDT)
Received: from mail.bobrowski.net (mail.bobrowski.net. [112.213.34.247])
        by smtp.gmail.com with ESMTPSA id x1sm7698885pfn.178.2020.08.24.16.25.01
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 24 Aug 2020 16:25:03 -0700 (PDT)
Date:   Tue, 25 Aug 2020 09:24:58 +1000
From:   Matthew Bobrowski <mbobrowski@mbobrowski.org>
To:     Amir Goldstein <amir73il@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, Jan Kara <jack@suse.cz>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 2/3] fanotify.7, fanotify_init.2: Document
 FAN_REPORT_DIR_FID
Message-ID: <20200824232458.GA28622@mail.bobrowski.net>
References: <20200824080326.5012-1-amir73il@gmail.com>
 <20200824080326.5012-3-amir73il@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200824080326.5012-3-amir73il@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Aug 24, 2020 at 11:03:25AM +0300, Amir Goldstein wrote:
> Document fanotify_init(2) flag FAN_REPORT_DIR_FID and event info type
> FAN_EVENT_INFO_TYPE_DFID.
> 
> Signed-off-by: Amir Goldstein <amir73il@gmail.com>

I've made one minor suggestion below. Other than that, this patch
looks healthy to me.

Reviewed-by: Matthew Bobrowski <mbobrowski@mbobrowski.org>

> ---
>  man2/fanotify_init.2 | 35 +++++++++++++++++++++++++++++++++--
>  man7/fanotify.7      | 30 ++++++++++++++++++++++++++----
>  2 files changed, 59 insertions(+), 6 deletions(-)
> 
> diff --git a/man2/fanotify_init.2 b/man2/fanotify_init.2
> index 54646e3c6..c58ae4493 100644
> --- a/man2/fanotify_init.2
> +++ b/man2/fanotify_init.2
> @@ -1,4 +1,4 @@
> -.\" Copyright (C) 2013, Heinrich Schuchardt <xypron.glpk@gmx.de>
> +\" Copyright (C) 2013, Heinrich Schuchardt <xypron.glpk@gmx.de>
>  .\"
>  .\" %%%LICENSE_START(VERBATIM)
>  .\" Permission is granted to make and distribute verbatim copies of this
> @@ -191,7 +191,38 @@ is not permitted with this flag and will result in the error
>  .BR EINVAL .
>  See
>  .BR fanotify (7)
> -for additional information.
> +for additional details.
> +.TP
> +.BR FAN_REPORT_DIR_FID " (since Linux 5.9)"
> +Events for fanotify groups initialized with this flag will contain
> +(see exceptions below) additional information about a directory object
> +correlated to an event.
> +An additional record of type
> +.BR FAN_EVENT_INFO_TYPE_DFID
> +encapsulates the information about the directory object and is included
> +alongside the generic event metadata structure.
> +For events that occur on a non-directory object, the additional structure
> +includes a file handle that identifies the parent directory filesystem object.
> +Note that there is no guarantee that the directory filesystem object will be
> +found at the location described by the file handle information at the time
> +the event is received.
> +In combination with the flag

I think it would read a lot nicer if we used:
When combined with the flag

> +.BR FAN_REPORT_FID ,
> +two records may be reported with events that occur on a non-directory object,
> +one to identify the non-directory object itself and one to identify the parent
> +directory object.
> +Note that in some cases, a filesystem object does not have a parent,
> +for example, when an event occurs on an unlinked but open file.
> +In that case, with the
> +.BR FAN_REPORT_FID
> +flag, the event will be reported with only one record to identify the
> +non-directory object itself, because there is no directory associated with
> +the event. Without the
> +.BR FAN_REPORT_FID
> +flag, no event will be reported.
> +See
> +.BR fanotify (7)
> +for additional details.
>  .PP
>  The
>  .I event_f_flags
> diff --git a/man7/fanotify.7 b/man7/fanotify.7
> index a7b219168..00fc56368 100644
> --- a/man7/fanotify.7
> +++ b/man7/fanotify.7
> @@ -140,12 +140,13 @@ until either a file event occurs or the call is interrupted by a signal
>  (see
>  .BR signal (7)).
>  .PP
> -The use of the
> -.BR FAN_REPORT_FID
> -flag in
> +The use of one of the flags
> +.BR FAN_REPORT_FID ,
> +.BR FAN_REPORT_DIR_FID
> +in
>  .BR fanotify_init (2)
>  influences what data structures are returned to the event listener for each
> -event. Events reported to a group initialized with this flag will
> +event. Events reported to a group initialized with one of these flags will
>  use file handles to identify filesystem objects instead of file descriptors.
>  .TP
>  After a successful
> @@ -412,6 +413,19 @@ a single information record is expected to be attached to the event with
>  .I info_type
>  field value of
>  .BR FAN_EVENT_INFO_TYPE_FID .
> +When an fanotify file descriptor is created using the combination of
> +.BR FAN_REPORT_FID
> +and
> +.BR FAN_REPORT_DIR_FID ,
> +there may be two information records attached to the event. One with
> +.I info_type
> +field value of
> +.BR FAN_EVENT_INFO_TYPE_DFID ,
> +identifying a parent directory object, and one with
> +.I info_type
> +field value of
> +.BR FAN_EVENT_INFO_TYPE_FID ,
> +identifying a non-directory object.
>  The
>  .I fanotify_event_info_header
>  contains a
> @@ -469,6 +483,14 @@ field is
>  the
>  .IR file_handle
>  identifies the object correlated to the event.
> +If the value of
> +.I info_type
> +field is
> +.BR FAN_EVENT_INFO_TYPE_DFID ,
> +the
> +.IR file_handle
> +identifies the directory object correlated to the event or the parent directory
> +of the non-directory object correlated to the event.
>  .PP
>  The following macros are provided to iterate over a buffer containing
>  fanotify event metadata returned by a
> -- 
> 2.17.1
> 
/M
