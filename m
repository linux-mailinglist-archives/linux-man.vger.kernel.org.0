Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 34A402F6AEF
	for <lists+linux-man@lfdr.de>; Thu, 14 Jan 2021 20:29:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726874AbhANT2W (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 14 Jan 2021 14:28:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44918 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725781AbhANT2V (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 14 Jan 2021 14:28:21 -0500
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com [IPv6:2607:f8b0:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 14F22C061575
        for <linux-man@vger.kernel.org>; Thu, 14 Jan 2021 11:27:41 -0800 (PST)
Received: by mail-oi1-x233.google.com with SMTP id s2so7104319oij.2
        for <linux-man@vger.kernel.org>; Thu, 14 Jan 2021 11:27:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=5aGjPzumCjBohFyKbglvadLKzBHgdT2cSaTJaS3WVL8=;
        b=Gwj0iTAs22fAv18XgfunsVlKDEMZqOWWAZrDlqSPZtZZEl7eToYGo/KA7+2mU/aDgX
         7e+PMh5Vkfy7lZiQnecoHzcumfC8wte7wt8oyNuupcCos6dJNpPeUsRzL0KUKl6ce+3c
         saM8Sp8jht/2w+2VgKwQknQHrT77oSkIB+zjPxOtYS7Dezlb3hNgULw6UhVc7WjsikNa
         AwTdI/w6mJugMp7wnF8acWZT4nyCTbi3MHkVInyaKmig9PK6+fzvuQyMmc7FKyvsDuaw
         ZGQcep1sMPuEmoVg84BL8CJwiRY+33Xk1NnHbolP9RfaQMpdIGKDMZXYEyOpRapgb+IJ
         KjCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=5aGjPzumCjBohFyKbglvadLKzBHgdT2cSaTJaS3WVL8=;
        b=sBkWdtM9KBEPtR27sKErk7po2vgmZ5Eu6ZyTrFfsEFyrh6NGKp9lPUlafsFl3abY4S
         SKfORa8WGC46aTE+FXvy5FCskkmkZEb2TakT1EL6HEkj7+BQhTYB+sx6eK4tNk4uMaGK
         AloOqe/r9oSPsZOmMh6/wkZkxAQK0P5O1TqYWFCjMvGgASQnYPKbT2pNvQ8KcZ96V7JR
         nq0UkWIGYG5tiha0J/t6q4YysbPhEQwsFboVOZpdazDdvY+Nn1RELqd7Jk/rbJJ66SKG
         H/U2k6xT0QONP4mMOVFi0FUIgqOi9cyAVON4+fVQtuKfHejepEwxEJ9wMT2JrzAH33Tz
         an0A==
X-Gm-Message-State: AOAM533JHKyRExONUArBpxmWRkIxdyr+2A52A6FFYZB67wIfVzlG76SR
        A8YG+KttoBASAuDTskA0KAA=
X-Google-Smtp-Source: ABdhPJxlH0xA8DbMOr0PqnDSILvMpvEmCpc4sCS2lgQyxB8nicElIBB5dOIfR0+Lmd5vQtahTbbiLQ==
X-Received: by 2002:aca:d4c4:: with SMTP id l187mr3522456oig.49.1610652460563;
        Thu, 14 Jan 2021 11:27:40 -0800 (PST)
Received: from localhost.localdomain (99-6-134-177.lightspeed.snmtca.sbcglobal.net. [99.6.134.177])
        by smtp.gmail.com with ESMTPSA id w4sm1246165otj.3.2021.01.14.11.27.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Jan 2021 11:27:40 -0800 (PST)
Date:   Thu, 14 Jan 2021 11:27:38 -0800
From:   Enke Chen <enkechen2020@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     Eric Dumazet <edumazet@google.com>,
        linux-man <linux-man@vger.kernel.org>, enkechen2020@gmail.com
Subject: Re: Documentation revision for TCP_USER_TIMEOUT in man7/tcp7
Message-ID: <20210114192738.GA6021@localhost.localdomain>
References: <20210109051946.GA4015@localhost.localdomain>
 <CAKgNAkiNyPyUWrEZEW_uvi9LJ41YEwRzQ+qkehDRWMcFOeZAGw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKgNAkiNyPyUWrEZEW_uvi9LJ41YEwRzQ+qkehDRWMcFOeZAGw@mail.gmail.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Michael:

It is the latter, better documentation of longstanding behavior.

There is a bug, however, that broke the functionality two years ago.
The bug is being fixed.

Thanks.  -- Enke

On Thu, Jan 14, 2021 at 01:08:26PM +0100, Michael Kerrisk (man-pages) wrote:
> Hello Enke (and Eric),
> 
> Thank you for the patch. Is this a change in behavior, or a better
> documentation of longstanding behavior?
> 
> Eric, do you have an Ack/Review for this patch?
> 
> Thanks,
> 
> Michael
> 
> On Sat, 9 Jan 2021 at 06:21, Enke Chen <enkechen2020@gmail.com> wrote:
> >
> > diff --git a/man7/tcp.7 b/man7/tcp.7
> > index 6c91f058b..2ce831c90 100644
> > --- a/man7/tcp.7
> > +++ b/man7/tcp.7
> > @@ -1161,7 +1161,8 @@ This option takes an
> >  as an argument.
> >  When the value is greater than 0,
> >  it specifies the maximum amount of time in milliseconds that transmitted
> > -data may remain unacknowledged before TCP will forcibly close the
> > +data may remain unacknowledged, or bufferred data may remain untransmitted
> > +(due to zero window size) before TCP will forcibly close the
> >  corresponding connection and return
> >  .B ETIMEDOUT
> >  to the application.
> 
> 
> 
> -- 
> Michael Kerrisk
> Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
> Linux/UNIX System Programming Training: http://man7.org/training/
