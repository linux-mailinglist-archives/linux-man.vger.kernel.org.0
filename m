Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EEFD5251841
	for <lists+linux-man@lfdr.de>; Tue, 25 Aug 2020 14:07:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726158AbgHYMHd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 25 Aug 2020 08:07:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39116 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729681AbgHYMHc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 25 Aug 2020 08:07:32 -0400
Received: from mail-il1-x144.google.com (mail-il1-x144.google.com [IPv6:2607:f8b0:4864:20::144])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49D9BC061574
        for <linux-man@vger.kernel.org>; Tue, 25 Aug 2020 05:07:32 -0700 (PDT)
Received: by mail-il1-x144.google.com with SMTP id k4so10145384ilr.12
        for <linux-man@vger.kernel.org>; Tue, 25 Aug 2020 05:07:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=tH8lAqlAHNGazfQKajNimwscNbt+1qqQVHxFc++e/zQ=;
        b=SdEbi6t1YhYuIxtdjmmBsbvoqFvhKY+oW+W1+AtKDoBfWTOgAvXLuuvjsTCTKyEAge
         Dm6/ksJAurBJDREv9dmHU45lZadJm7ZaHSWMzxnIdczQLhz9NyWvAZds+ToerY9n9nW5
         Xe26hbfuqDXg57dEmEsLIAWMidGZr4mYQ9ms8XoQYJiNbd+yZqKV/90xr1DbG1ni/Ws4
         KEuCBkK0hS4QdAtFZz9/RS9SQ2lNXk1pcYtTe21UMmOTJH8QQixpXxg67UOYbty6mciw
         cnviNB2d9aX9ZRg8zG9HMkiM5hmURqwKIfKYFGypyFXePqS514XVZzPHHZLSGLu5lqiK
         NnCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=tH8lAqlAHNGazfQKajNimwscNbt+1qqQVHxFc++e/zQ=;
        b=b8n+pUMixckDTtVt+KclZ76P50ybu0tqZNa707nF4+ZR8omS6Dk+S38hhVPPv3uQNZ
         bIAzD7IdSK6npLZUBnP32jycdKTz4JqrrAAF0iXGBaYQeZCDnimNRHGAfinM2gwxv6Ca
         AM4ebNuTiMvpec275k/BIwlEoHSrHR7uLIsKTi5Hm4fZqTVQq3dYZr2VMQ3SM9RBYs+V
         /Xm7btDuLYf4ZbN1mAob2iMXfz2zZfX33rapdf948EZclqxBs/p8DvYyrrW+JjJ+J71O
         QPxs++1VowRWK1WMGoHTvBctxcPmeCVBpBQQzWdL5YxmIRtijFHOoJfYUzZG0HX+sYz+
         Y59Q==
X-Gm-Message-State: AOAM530EcePc+5BKuY208PsqDv4cmqyovV8JVRPqRWoVNXFVGdTglZ9w
        kxvZdnIUPPiHTYfB5IQvko3tHedtq+2epaTQccA=
X-Google-Smtp-Source: ABdhPJzsyImpSNSFwg/pBpqufPeiCHXxuvyDXeyMb9qhNCa9ednLPu5sptuxENhLynW8zeceEXIM8D17jhdE1OaUPkI=
X-Received: by 2002:a92:5209:: with SMTP id g9mr9053779ilb.72.1598357248743;
 Tue, 25 Aug 2020 05:07:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200824080326.5012-1-amir73il@gmail.com> <20200824080326.5012-2-amir73il@gmail.com>
 <CAKgNAkg55kB0PXW6epUs_m0VQLpj=bsvkjAwpmVSuzLrAnwz+w@mail.gmail.com>
In-Reply-To: <CAKgNAkg55kB0PXW6epUs_m0VQLpj=bsvkjAwpmVSuzLrAnwz+w@mail.gmail.com>
From:   Amir Goldstein <amir73il@gmail.com>
Date:   Tue, 25 Aug 2020 15:07:17 +0300
Message-ID: <CAOQ4uxgOwMmt+T5QF0-doO-RPiPcU0W40Hb=a6GhjR3i9nN-0w@mail.gmail.com>
Subject: Re: [PATCH 1/3] fanotify.7, fanotify_mark.2: Generalize documentation
 of FAN_REPORT_FID
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <mbobrowski@mbobrowski.org>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, Aug 25, 2020 at 2:45 PM Michael Kerrisk (man-pages)
<mtk.manpages@gmail.com> wrote:
>
> Hi Amir,
>
> On Mon, 24 Aug 2020 at 10:03, Amir Goldstein <amir73il@gmail.com> wrote:
> >
> > With fanotify_init(2) flag FAN_REPORT_FID, the group identifies
> > filesystem objects by file handles in a single event info record of type
> > FAN_EVENT_INFO_TYPE_FID.
> >
> > We indend to add support for new fanotify_init(2) flags for which the
> > group identifies filesystem objects by file handles and add more event
> > info record types.
> >
> > To that end, start by changing the language of the man page to refer
> > to a "group that identifies filesystem objects by file handles" instead
> > of referring to the FAN_REPORT_FID flag and document the extended event
> > format structure in a more generic manner that allows more than a single
> > event info record and not only a record of type FAN_EVENT_INFO_TYPE_FID.
> >
> > Clarify that the object identified by the file handle refers to the
> > directory in directory entry modification events.
> >
> > Remove a note about directory entry modification events and monitoring
> > a mount point that I found to be too confusing and out of context.
>
> If I understand correctly, this patch is just about improving the
> description of existing behavior, in preparation for later patches
> that describe new behavior (to be added in 5.9), and once you've
> revised after Matthew's comments I can apply immediately, right?
>

That is correct.

Thanks,
Amir.
