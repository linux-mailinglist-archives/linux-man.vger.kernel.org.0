Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4728A458D4A
	for <lists+linux-man@lfdr.de>; Mon, 22 Nov 2021 12:23:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238297AbhKVL02 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 22 Nov 2021 06:26:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234377AbhKVL01 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 22 Nov 2021 06:26:27 -0500
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com [IPv6:2607:f8b0:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E2F4C061574
        for <linux-man@vger.kernel.org>; Mon, 22 Nov 2021 03:23:21 -0800 (PST)
Received: by mail-pf1-x435.google.com with SMTP id n85so15758419pfd.10
        for <linux-man@vger.kernel.org>; Mon, 22 Nov 2021 03:23:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=R9k8AU4o80qIgSaC98aUtFPqmraIloOWVK7Uz8cEhWw=;
        b=G90P04dgAOBVD1LW2UZJ9bsyjGob1GYAb1Aav4nohR7cUJR55DsG92GZbSqcvZWze+
         EqOiYUwzt2X2uQ8oBBx+CLReLifVVN0pSkAg0vhxIBZ0b6xkTigkqTkAUC/W6hM65/cW
         U9chKdk6Vo6jfIRtcmU/RSittmupl4EZhQZAAZdH/fEXWUfb07uYQzioYR2j3t7U9/ad
         dg3Qyku1BksMh8k+oN+0T54ONTHuDjXrw0T8rO+PEy/K/YdWRGxKrgetvpuvjAYt4iEa
         L0dLRT2r3QEAaEX8nYqRbC88/Qs22UHmUR5MO6Xx154U9OnigI/R6j8So15YwZQaLX2B
         Bm3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=R9k8AU4o80qIgSaC98aUtFPqmraIloOWVK7Uz8cEhWw=;
        b=7wQrX29nHBxd8zmpOYlB3rGFPd81crBcij44qTv6d5/vZdORYGJz1FGuH5u7a4jHQ/
         OBzwTOUqU7lMz9Bh+dw8f4CbCPEn+deXxKYQurq5v+2Yp3f1uMH9zSTuJlpEHTSq2A1U
         bkMM3G6CpohpotCl4WYOTvzOzC3oufxn88/gFZyAYHZyESmCPFs7jYoADw1lAxneiQ4g
         ViliBLWO+4Yb4iCs76t2F+fzVcQrtMpmgM8iswGxeLvTVBEJg96HmtVhO403mdrFniji
         TmFzV7za9cz3Oz+aIjZRk+CdtOtRuLJJGWDVhawLgbruRkm+yIYWCW1UoqbFjwFTMNsL
         YOoQ==
X-Gm-Message-State: AOAM532MMtITVxxS+iwdmjR4aBI2HkYY69BZGLiu9b6Idm64K/Q7nQcq
        Zed0f/Zw+dyMPJKfL9Tgh+bsBw==
X-Google-Smtp-Source: ABdhPJw9pp6r7fjGo8sK7WvWSNhND/DTfA/hgVGamk4qLd8kNE/cDizESinGnRWKEZT8CP7kWtc29w==
X-Received: by 2002:a05:6a00:1145:b0:4a2:6a03:c592 with SMTP id b5-20020a056a00114500b004a26a03c592mr42140028pfm.65.1637580200491;
        Mon, 22 Nov 2021 03:23:20 -0800 (PST)
Received: from google.com ([2401:fa00:9:211:de12:dd5f:8d5c:4e51])
        by smtp.gmail.com with ESMTPSA id h3sm18123596pjz.43.2021.11.22.03.23.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Nov 2021 03:23:20 -0800 (PST)
Date:   Mon, 22 Nov 2021 22:23:10 +1100
From:   Matthew Bobrowski <repnop@google.com>
To:     Amir Goldstein <amir73il@gmail.com>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>, Jan Kara <jack@suse.cz>
Subject: Re: [PATCH 1/1] Document the new fanotify initialization flag
 FAN_REPORT_PIDFD
Message-ID: <YZt9nuSlWYQikaED@google.com>
References: <cover.1635135968.git.repnop@google.com>
 <6ea10a58db3446aabc729b1082611bdadb1ce4ed.1635135968.git.repnop@google.com>
 <CAOQ4uxj4xxp8g6Y0u1XtQ6hBBM=nba2j9XjJKp=Lg3yRzUE-Yg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOQ4uxj4xxp8g6Y0u1XtQ6hBBM=nba2j9XjJKp=Lg3yRzUE-Yg@mail.gmail.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sat, Nov 20, 2021 at 02:19:38PM +0200, Amir Goldstein wrote:
> On Wed, Oct 27, 2021 at 12:28 PM Matthew Bobrowski <repnop@google.com> wrote:
> >
> > This provides an explanation on the kind of additional information that can
> > be returned alongside the generic struct fanotify_event_metadata and in
> > what form this additional contextual information is delievered to a
> > listening application.
> >
> > Signed-off-by: Matthew Bobrowski <repnop@google.com>
> > ---
> >  man2/fanotify_init.2 | 54 +++++++++++++++++++++++++
> >  man7/fanotify.7      | 95 +++++++++++++++++++++++++++++++++++++++++++-
> >  2 files changed, 147 insertions(+), 2 deletions(-)
> >
> > diff --git a/man2/fanotify_init.2 b/man2/fanotify_init.2
> > index 0d83e817f..f65b4fa10 100644
> > --- a/man2/fanotify_init.2
> > +++ b/man2/fanotify_init.2
> > @@ -298,6 +298,60 @@ for additional details.
> >  This is a synonym for
> >  .RB ( FAN_REPORT_DIR_FID | FAN_REPORT_NAME ).
> >  .PP
> > +.TP
> > +.B FAN_REPORT_PIDFD " (since Linux 5.15)"
> 
> Matthew,
> 
> For v2, please document commit id.
> Please also consider including below cleanup patch
> to document commit ids that we missed in v5.9 update.

ACK.

PTAL [0]. BTW, the cleanup patch you referenced appears to be in your
fanotify_unpriv [1] branch, and my fanotify_pidfd_v2 [2] is based off
fanotify_unpriv, so we should be good here.

> 
> --- a/man2/fanotify_init.2
> +++ b/man2/fanotify_init.2
> @@ -213,6 +213,7 @@ See
>  for additional details.
>  .TP
>  .BR FAN_REPORT_DIR_FID " (since Linux 5.9)"
> +.\" commit 83b7a59896dd24015a34b7f00027f0ff3747972f
>  Events for fanotify groups initialized with this flag will contain
>  (see exceptions below) additional information about a directory object
>  correlated to an event.
> @@ -245,6 +246,7 @@ See
>  for additional details.
>  .TP
>  .BR FAN_REPORT_NAME " (since Linux 5.9)"
> +.\" commit 929943b38daf817f2e6d303ea04401651fc3bc05
>  Events for fanotify groups initialized with this flag will contain additional
>  information about the name of the directory entry correlated to an event.
>  This flag must be provided in conjunction with the flag

[0] https://github.com/matthewbobrowski/man-pages/commit/070c144b2f92acffa752ee10ea0c239ee5258b72
[1] https://github.com/amir73il/man-pages/tree/fanotify_unpriv
[2] https://github.com/matthewbobrowski/man-pages/tree/fanotify_pidfd_v2

/M
