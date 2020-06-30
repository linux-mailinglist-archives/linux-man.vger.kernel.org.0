Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1391A20FCD0
	for <lists+linux-man@lfdr.de>; Tue, 30 Jun 2020 21:35:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728173AbgF3Tfc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 30 Jun 2020 15:35:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44366 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727883AbgF3Tfb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 30 Jun 2020 15:35:31 -0400
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com [IPv6:2a00:1450:4864:20::543])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7259CC061755
        for <linux-man@vger.kernel.org>; Tue, 30 Jun 2020 12:35:31 -0700 (PDT)
Received: by mail-ed1-x543.google.com with SMTP id d16so10653324edz.12
        for <linux-man@vger.kernel.org>; Tue, 30 Jun 2020 12:35:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=2aZINYr4K3nH2zog4yglEUIaDqDIvyl2Z3vEvZ/dnWY=;
        b=V2hrhyAKCFVQxkOjXToBLlg72cmugDymt0PsZSu1LT1PDQVw5+mG3npwDqW0I/722Z
         YV5A4EK4ZRHfHSFIUWMMqOuOk51qh7ss3VfxXmh2UaYH0oYO4JQ0JsUjo6BHRyelz6+S
         dVEOGkoh5sfMop+RMCJXft9O6+CjXNNf5mxRtXh9qCuSiWb3AtgnNf1N1eEaNZVtafTn
         ttWpuT+801HRLJZN8h7Xv7aSs22OTF7cZHJ7KJ5ZSABR+5+glw7O9Ozn0RhZiJOIpM9x
         YEdo/peNNxMBjVnx6cv52Q/15q21oo/HdL4oMsSQ/S+sVmRTS4m+EgQ0VKC2VbsQL4Eh
         m9MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=2aZINYr4K3nH2zog4yglEUIaDqDIvyl2Z3vEvZ/dnWY=;
        b=jIImv8recatrZdvHx5QPea/bRU1qBG4DgG9N2cCo4rTDUrVHugSOYmiUMRGtOrQeWo
         /qLrFZAI4J3kHjWbyDN9RFJ5vM7jpfrZa7rHsOqErQKQ5XGqvVK5O4ynMZp6WQEPf3Tk
         yTdJ14Kg+nnlrjOxSXQ8oB+KneO3Q+pTEbr1+Op99PO9lt6nmv68Lz8qd33yqo+568L2
         KGBCRtWqr9Jn2NfkdXzIH3m6n37o5eekMiT1uHVAkOTPmAC4ajFSd+lWobGtzjbCHfI3
         RUmsC1Qdzc66d0lEFDcPYEd4158l1eb999IzW4oX8+7ChKPhHeuIBmgS5wqe0wOLwFJj
         7FdQ==
X-Gm-Message-State: AOAM531PpoPTpUzAccEdgXPy5Xxq7aGi1NH/MxpAdPGvSOQcZGiVOlkg
        Tx5wzyVSJJPs2BYd+LCf9BWTYJ2ROqRK48fh7WU=
X-Google-Smtp-Source: ABdhPJw+aHZJ03LOjVb8+l5S2Irg1P3g10mNQcxeAFN/2htO13jOt6AclXnOhKTk6t4Ej72iGqXmoTV5muZHT+PPAY8=
X-Received: by 2002:a05:6402:3048:: with SMTP id bu8mr25566376edb.367.1593545728551;
 Tue, 30 Jun 2020 12:35:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200630141703.GB12757@laura.suse.cz>
In-Reply-To: <20200630141703.GB12757@laura.suse.cz>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Tue, 30 Jun 2020 21:35:17 +0200
Message-ID: <CAKgNAki+Zh-D_eYLsF_yryYF+BStLdUj=ROWKO2MRb+Yvp4PHA@mail.gmail.com>
Subject: Re: openat2.h location (openat2.2)
To:     pgajdos <pgajdos@suse.cz>
Cc:     eppers@posteo.de, Aleksa Sarai <cyphar@cyphar.com>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

[CC += Aleksa, linux-man@]

Hello Petr,

I'm bringing Aleksa, the creator of the system call, into CC.

Aleksa, the issue is that the header file (<openat2.h>) documented in
the manual page that you sent does not (yet) exist (and the bug
reporter therefore suggests that the manual page should say to include
<linux/openat2.h>.

I'm guessing that there is (or was) a plan to add a <openat2.h> header
file to glibc. What is the status?

With best regards,

Michael

On Tue, 30 Jun 2020 at 16:17, pgajdos <pgajdos@suse.cz> wrote:
>
> Hello Michael,
>
> https://bugzilla.suse.com/show_bug.cgi?id=1173382
>
> reporter proposes
>
> Index: man-pages-5.07/man2/openat2.2
> ===================================================================
> --- man-pages-5.07.orig/man2/openat2.2  2020-06-09 14:45:54.000000000 +0200
> +++ man-pages-5.07/man2/openat2.2       2020-06-30 16:07:09.655352702 +0200
> @@ -29,7 +29,7 @@ openat2 \- open and possibly create a fi
>  .B #include <sys/types.h>
>  .B #include <sys/stat.h>
>  .B #include <fcntl.h>
> -.B #include <openat2.h>
> +.B #include <linux/openat2.h>
>  .PP
>  .BI "int openat2(int " dirfd ", const char *" pathname ,
>  .BI "            struct open_how *" how ", size_t " size ");
>
> Thanks,
> Petr
>
> --
> Have a lot of fun!



--
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
