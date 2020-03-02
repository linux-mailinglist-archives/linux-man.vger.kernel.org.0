Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B15D9175432
	for <lists+linux-man@lfdr.de>; Mon,  2 Mar 2020 08:01:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726282AbgCBHB1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 2 Mar 2020 02:01:27 -0500
Received: from mail-ed1-f46.google.com ([209.85.208.46]:37779 "EHLO
        mail-ed1-f46.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725773AbgCBHB1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 2 Mar 2020 02:01:27 -0500
Received: by mail-ed1-f46.google.com with SMTP id t7so12021493edr.4
        for <linux-man@vger.kernel.org>; Sun, 01 Mar 2020 23:01:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=g4JauDoENR2BH0XMcUymXYBknIlJrIYrh8f35ZCBOAE=;
        b=bKC504Ul+e5Y20SnMxMNGwqs0bJRsagl0FAc9Dr5I6QWhaQ1bMySwP3ga9SEMm8MjW
         6PrXCajVIo+ggE67YjuiNWpvZP0ViNQBhPC9X+YvMjD3wh90zY6cXnxltoxsuJuI+M9C
         fO/fMLWYGGaQtk/M3JZEVvj+5wjllIbkYtPY6t3/suCPiVNBilS6jv1ZEyKRc9QQq+h7
         pc6xiEesj2LQeWWIR6KQaCmAyYcNsfq9zRBc8g1x23EWt39Dr0ZLCVqwbp2ffqqDrMUh
         XOBON/WTr8MCYQ7HOJr9u3Hl/qeBYsrY0mocglTfC+U8eJDNPVXCYGmlidiypNl7aM1v
         E23g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=g4JauDoENR2BH0XMcUymXYBknIlJrIYrh8f35ZCBOAE=;
        b=kJN5sMjPmVaGkxYQM4uXs5EVMt3Kc5GoXckUHHjW6i9gcsBatR+NHMI7v3A7ZsvqBj
         sAa1xRPk/ONO6ebw/KC2rjmCU974B02OMXqtDT6S8EE3xpa4q1/p343itamHUGtWla6u
         eY5UUYN0doVQIeO/qR1fJB36OiTsolcb1/a0GXbleIbF7R3u/L5/zM7y3P5WO3DmnIlI
         9C6SiOWBLd7WfLsSzmoCG1bnJpCsBmpftQEjrlsKiDwdt69ic/Xdt5SbSDWgEbF9phoj
         /p+SurX5azdCIRUtXgRmNT5l9PHSkFJKJ/xrEvsmVbLsGjvejo/mnBgOnRD6tmUe2xGr
         SYAA==
X-Gm-Message-State: APjAAAWn/mXZD5akOPQTavqOIUblRJSXSZKcHICPlgLH7qPamPv4o5PR
        SETwPJxfqEtCW7ltPuJwXjXlVrg+pmi5iBvn4nJFwA==
X-Google-Smtp-Source: APXvYqxzNlYYiswNaXB3piuA0kCLrhIaGnMwmt4CiCcLCzl7hKQjabhB7UWdOWRUWtbzFNE+DLIb9UfVKkVQrCQbVVo=
X-Received: by 2002:a17:907:2084:: with SMTP id pv4mr14065885ejb.150.1583132485469;
 Sun, 01 Mar 2020 23:01:25 -0800 (PST)
MIME-Version: 1.0
References: <CADFiD2+vbh-rhbj3G8z5F46R6cP1BSOVfpFiJju=EM00Q15-Ug@mail.gmail.com>
In-Reply-To: <CADFiD2+vbh-rhbj3G8z5F46R6cP1BSOVfpFiJju=EM00Q15-Ug@mail.gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 2 Mar 2020 08:00:00 +0100
Message-ID: <CAKgNAkhnu4LDf5fprcqLSft5q3YrvoQRi9XjCoxqSEF5BMxGrg@mail.gmail.com>
Subject: Re: small issue in getifaddrs(3) man page
To:     Michael Galassi <michael@galassi.us>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Michael,

On Fri, 28 Feb 2020 at 16:34, Michael Galassi <michael@galassi.us> wrote:
>
> Hi,
>
> The getifaddrs(3) man page has some sample code which includes a for
> loop wich initializes and increments an in named "n" which is never
> used.  This is slightly confusing (but in no way wrong).  The page
> would be clearer if this variable declaration, initialization, and
> increment were removed.

Agreed. (And mea culpa.) I've made the change as you suggest. Thanks
for the report!

Cheers,

Michael

>
> The two lines in question are:
>            int family, s, n;
> ...
>            for (ifa = ifaddr, n = 0; ifa != NULL; ifa = ifa->ifa_next, n++) {
>
> Thanks.
>
> -michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
