Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 264BB251640
	for <lists+linux-man@lfdr.de>; Tue, 25 Aug 2020 12:07:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729205AbgHYKHT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 25 Aug 2020 06:07:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48112 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726000AbgHYKHT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 25 Aug 2020 06:07:19 -0400
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com [IPv6:2607:f8b0:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A90EC061574
        for <linux-man@vger.kernel.org>; Tue, 25 Aug 2020 03:07:18 -0700 (PDT)
Received: by mail-pf1-x441.google.com with SMTP id u20so6956459pfn.0
        for <linux-man@vger.kernel.org>; Tue, 25 Aug 2020 03:07:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mbobrowski-org.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=pqARcOkeKM72Lunm5ihAjhRMKzkLtxtyZlXh3SPJ1io=;
        b=Yq1p8xXMKDulgAFQ5cP1iZ20fsu+S+1az7DZn5DDVfNoakIptHxRBlEuw9Fxgt7T+8
         uuZ5/cLvyKZ+rMY+mQ3jCGavKZr/ecXedds0A0bqx83Yn1r5vv5/mDMfm9EuhJVtm5A6
         XlCBwBAHZACteY56P9t3gLDrMoMTZc9RnAXzv7ahlHQsU6Z+9he9mXrk0gKhgy3e38Fe
         1Sn7BWbIAMYV4wXX/ig67TKMbLhhN2myY7sXs0nhjBaLRhch7Zms+kNWhybHOBgrhylY
         HWIM8wAI8ZQfoJhxdtJS7FzQol8ZyGcfa5hK2L0jXe/yXFHl6Ju+vkQH/x2W6tzrMrfG
         BghQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=pqARcOkeKM72Lunm5ihAjhRMKzkLtxtyZlXh3SPJ1io=;
        b=eMl7Ki2wS+BdiEtTAXU7NMewpOwPYa5jEolHU3bvnLP+Ch+2lBFsVLDrrswYgps9CN
         hZO3WaH0qdsy3adl0c+gmO73dRQyMUOE5wo0M0PS3P0/ep12XJS8KByAnwuMBaxgkTgG
         GdYAj1sWZ74b+lIna7jiO/7ZsjPzhEUJnfTw0I4pcc0xvzxEmjpF9aXd0V/jovFVi3y7
         LPv2SgIsJWVYLhLhf5anZheZt8ONbjdpxPURQmtCiFZaSp0v2hWYa0NgACNek056UkiG
         5DJfypXpmWBShl3L3ERrsKduz5HUpkGKmBBb1eNKN/6drVaszxwS6Lx2XOfusw9R3hSh
         kbDg==
X-Gm-Message-State: AOAM533moMOEAbR1aRkWacWIkjHF5q1wXWTzp4rUT9Pjx7LNAjLzvpLk
        by+AX3YSw4ZGR0fNy/e+Nff/
X-Google-Smtp-Source: ABdhPJyJDg6BSzFLEBweHq6kqE0YpwC2Nh0kyqouup67IzYKYbDaPe+v5anrUH870B99Eo0GinRVrw==
X-Received: by 2002:a62:c5c6:: with SMTP id j189mr7460261pfg.145.1598350037654;
        Tue, 25 Aug 2020 03:07:17 -0700 (PDT)
Received: from mail.bobrowski.net (mail.bobrowski.net. [112.213.34.247])
        by smtp.gmail.com with ESMTPSA id f18sm12109199pgv.84.2020.08.25.03.07.15
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 25 Aug 2020 03:07:17 -0700 (PDT)
Date:   Tue, 25 Aug 2020 20:07:12 +1000
From:   Matthew Bobrowski <mbobrowski@mbobrowski.org>
To:     Amir Goldstein <amir73il@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, Jan Kara <jack@suse.cz>,
        linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH 1/3] fanotify.7, fanotify_mark.2: Generalize
 documentation of FAN_REPORT_FID
Message-ID: <20200825100712.GA11597@mail.bobrowski.net>
References: <20200824080326.5012-1-amir73il@gmail.com>
 <20200824080326.5012-2-amir73il@gmail.com>
 <20200824235048.GA29428@mail.bobrowski.net>
 <CAOQ4uxitp36zeid9WLgDjvQS=4pDbGZa0GRZOotooNcshy4D0w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOQ4uxitp36zeid9WLgDjvQS=4pDbGZa0GRZOotooNcshy4D0w@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, Aug 25, 2020 at 11:19:35AM +0300, Amir Goldstein wrote:
> On Tue, Aug 25, 2020 at 2:50 AM Matthew Bobrowski
> > > +File descriptors are not provided with event to applications that have
> > > +created fanotify group so that it identifies filesystem objects by file handles
> > >  (see below).
> >
> > Then there's this sentence, which doesn't really read overly smoothly
> > as if there was a few words missing or something. Or, quite possibly
> > it's just me not understanding something?
> >
> 
> Yeh. I think this sentence doesn't serve anything in this context.
> I will remove it.
> 
> So can I add your reviewed-by on this patch as well?

Sure, you can add the Reviewed-by tag. 

/M
