Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A4849250C89
	for <lists+linux-man@lfdr.de>; Tue, 25 Aug 2020 01:50:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726617AbgHXXu6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 24 Aug 2020 19:50:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36776 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726027AbgHXXuz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 24 Aug 2020 19:50:55 -0400
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com [IPv6:2607:f8b0:4864:20::543])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7DC4C061574
        for <linux-man@vger.kernel.org>; Mon, 24 Aug 2020 16:50:54 -0700 (PDT)
Received: by mail-pg1-x543.google.com with SMTP id 67so2382545pgd.12
        for <linux-man@vger.kernel.org>; Mon, 24 Aug 2020 16:50:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mbobrowski-org.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=8SnJf9hTQvQZY2DtvxucjDw6I2+gmbClS8wcEEbNA3Q=;
        b=y8fIxzg2fVqsBCuhve4qOx1VB6ql5Dut6Y8usFec40Y7lJiax+JeepG5Ic8s2PVyEJ
         DT2PfbcCTLQU++xJ9gt8EmdDhMTJ55VxMMQqDiWabx4Wdtr+zP0ElLAbRTS8+RIKN7Cb
         eZK90zV9c4hNkEn7y3P8p17lhG1ZCimQ6pKJt7LdDxMF41JbaCZ1PMshCfY8lam/l+Wh
         Hp3Cl17QOlvRD8v7hCDc1IkRMg2JJBkzSYS2EXKf/MNJkgf3NQOhUdCx632E2J1q6j7s
         nqU8r4AorqhnZahxRh8E4LHbgw5K7k53KKE0mYrjn0cIhFUcJOgJJYqPUExTWCWvYXdd
         wENw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=8SnJf9hTQvQZY2DtvxucjDw6I2+gmbClS8wcEEbNA3Q=;
        b=a8H0tlgHjhvY0eFMAnLP1h2Jrd3vdmDfytJRPWWepJzZ8dyCyANesgvEiY2ULkHIQa
         +CwUPjTb3Az91bzT2t71OZ8TLWEIxbBfM8N6ioJy7F0gSLGIMBfHVhZ6EFAuI9i6OG8t
         UjW0BvtybAieGevEIyCnDqGCj1D8u7hu6zlFr8Rc7KftRgiYm7eqY6qBmPJkbBqhCIM5
         89Vr2Mjny3RAraBsvKT/TwIcMP3b7qEcgDX5HG54hgHjddipbPXgQfuJ3N9RYvkV8Cyo
         zwTKfbdCk6G7VjQ3WtAPHzFaMYjCEk8d3Xz3mC/pfJTTjfMTaCNWaJlwjLaF3eULc/ON
         1WLw==
X-Gm-Message-State: AOAM530149HWwmTcMLMq8rc+iby+IkQvBifrg8XcWnAt3ix+UiTHmsJQ
        T3pNXk5quhuWakCz4lxe8FSR
X-Google-Smtp-Source: ABdhPJxVGOWWjyru5+czZaW680O8fvpqanV7083vCRj1Fwd1FL8wR0y6jwozdZnUeS+P/CtWtAen9A==
X-Received: by 2002:a63:85c2:: with SMTP id u185mr4737520pgd.157.1598313054338;
        Mon, 24 Aug 2020 16:50:54 -0700 (PDT)
Received: from mail.bobrowski.net (mail.bobrowski.net. [112.213.34.247])
        by smtp.gmail.com with ESMTPSA id gm8sm625839pjb.13.2020.08.24.16.50.51
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 24 Aug 2020 16:50:53 -0700 (PDT)
Date:   Tue, 25 Aug 2020 09:50:48 +1000
From:   Matthew Bobrowski <mbobrowski@mbobrowski.org>
To:     Amir Goldstein <amir73il@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, Jan Kara <jack@suse.cz>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 1/3] fanotify.7, fanotify_mark.2: Generalize
 documentation of FAN_REPORT_FID
Message-ID: <20200824235048.GA29428@mail.bobrowski.net>
References: <20200824080326.5012-1-amir73il@gmail.com>
 <20200824080326.5012-2-amir73il@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200824080326.5012-2-amir73il@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Aug 24, 2020 at 11:03:24AM +0300, Amir Goldstein wrote:
> With fanotify_init(2) flag FAN_REPORT_FID, the group identifies
> filesystem objects by file handles in a single event info record of type
> FAN_EVENT_INFO_TYPE_FID.
> 
> We indend to add support for new fanotify_init(2) flags for which the
> group identifies filesystem objects by file handles and add more event
> info record types.
> 
> To that end, start by changing the language of the man page to refer
> to a "group that identifies filesystem objects by file handles" instead
> of referring to the FAN_REPORT_FID flag and document the extended event
> format structure in a more generic manner that allows more than a single
> event info record and not only a record of type FAN_EVENT_INFO_TYPE_FID.
> 
> Clarify that the object identified by the file handle refers to the
> directory in directory entry modification events.
> 
> Remove a note about directory entry modification events and monitoring
> a mount point that I found to be too confusing and out of context.
> 
> Signed-off-by: Amir Goldstein <amir73il@gmail.com>

...

> diff --git a/man7/fanotify.7 b/man7/fanotify.7
> index a7d60b2b9..a7b219168 100644
> --- a/man7/fanotify.7
> +++ b/man7/fanotify.7
> @@ -110,13 +110,11 @@ Two types of events are generated:
>  events and
>  .I permission
>  events.
> -Notification events are merely informative
> -and require no action to be taken by
> -the receiving application with the exception being that the file
> -descriptor provided within a generic event must be closed.
> -The closing of file descriptors for each event applies only to
> -applications that have initialized fanotify without using
> -.BR FAN_REPORT_FID
> +Notification events are merely informative and require no action to be taken
> +by the receiving application with one exception - if a valid file descriptor
> +is provided within a generic event, the file descriptor must be closed.

Changes read well up until this point.

> +File descriptors are not provided with event to applications that have
> +created fanotify group so that it identifies filesystem objects by file handles
>  (see below).

Then there's this sentence, which doesn't really read overly smoothly
as if there was a few words missing or something. Or, quite possibly
it's just me not understanding something?

/M
