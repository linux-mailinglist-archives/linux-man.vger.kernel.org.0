Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6472A25F683
	for <lists+linux-man@lfdr.de>; Mon,  7 Sep 2020 11:32:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728356AbgIGJcr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 7 Sep 2020 05:32:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53634 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727122AbgIGJcp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 7 Sep 2020 05:32:45 -0400
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com [IPv6:2607:f8b0:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB5E0C061573
        for <linux-man@vger.kernel.org>; Mon,  7 Sep 2020 02:32:33 -0700 (PDT)
Received: by mail-ot1-x342.google.com with SMTP id y5so11768500otg.5
        for <linux-man@vger.kernel.org>; Mon, 07 Sep 2020 02:32:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=L12hKJJtG/zDn5vn4EsM+dSjbl8j3hEjvFxaYl8RMZs=;
        b=IDHzkNrUEplxuWsqSOeFhPegd9KWqYhjSYo2dAFcbh/0yuj1xJNKduGoyiHWPseen9
         8h8ySn/8CWWJrekuQQO9yovnE31V4CnCqT0huYuwRT7yU8C+HkwH7AHT20LsGnxDpJ0Q
         j+OQfeSMGqpEeDJpBe10Ehh/Op4WgPeF73pfawXvH7HqKVGDUks9pr9nr6GWQtegV+Ot
         Fps3hkJfauHw/c1/2Xv8V4P6i8O2ADQG7Mtl3/SYqDbH761FcEUFa7A438OBdJXrLuW5
         8W6C2lhZft7Ys5w1zbGS9izTzpB26jiEtIwvdm2fnr2unqYy1jcFLMTqPb1mzgDTVOhJ
         L9YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=L12hKJJtG/zDn5vn4EsM+dSjbl8j3hEjvFxaYl8RMZs=;
        b=Oy/pPupz90SIwcoF5eRO5b6hhRmxnSqZHA6b3ddCGvsn6lbRotsxgUxc7uaWRupvbH
         Pl5k88roL/zbiuoDeoSq6VxSvcVVuf7oLn7gxKRLN3uE5aAJ7I70N6YP1+1AxbRF1mKG
         AFHszWJgdZPl2/PZhPOygzCEa3Kyq9UWvG0E2dEDydKSRUiA46suDBF/lBFDl0SPan4y
         wBAkyVGkCLoZw8hMA+JIcfaqdf9enKMqMOGq1sDkEvpBFgTEgwq7SO68w3kqUZYFGpfo
         REAEtbOSN+z67ohHKLNTnAQsEN+lJ0/doW0qvdlwADD7avxYSvrTSM6GaQQP/dWmGyOq
         1tnw==
X-Gm-Message-State: AOAM532gQe0eCawIQ/KWg7LeyJpk9pGP3CDOSVlDMFPe9U4upgl37zeG
        EB+33VdvbK7zW9JY7t4KVcqgWlumRJZOdaSMTD0=
X-Google-Smtp-Source: ABdhPJyIkoMbs8uuWnpKr6pRHdOskysUGjoJcqZimDCDOkvQxDAxXWNbJm/+u732Z1bmomj3R5kIXLHuNPZtsIsVXvo=
X-Received: by 2002:a9d:7745:: with SMTP id t5mr13777076otl.114.1599471120852;
 Mon, 07 Sep 2020 02:32:00 -0700 (PDT)
MIME-Version: 1.0
References: <486f9d85-2828-2b60-990c-3499b2a89559@gmail.com> <87sgbu7xcu.fsf@oldenburg2.str.redhat.com>
In-Reply-To: <87sgbu7xcu.fsf@oldenburg2.str.redhat.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 7 Sep 2020 11:31:50 +0200
Message-ID: <CAKgNAkjq8_nd_xPbSwzXLduCQO_r=WZpVbe4neXPAk_bi8UCXw@mail.gmail.com>
Subject: Re: Bug or misdocumented feature in pthread_setaffinity_np.3
To:     Florian Weimer <fweimer@redhat.com>
Cc:     Alejandro Colomar via Libc-alpha <libc-alpha@sourceware.org>,
        Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, 7 Sep 2020 at 11:24, Florian Weimer <fweimer@redhat.com> wrote:
>
> * Alejandro Colomar via Libc-alpha:
>
> > pthread_setaffinity_np() and pthread_getaffinity_np(), "on error,
> > return a non-zero error number".  Usually that kind of library
> > functions return -1, and I don't know if this case is different.  The
> > RETURN VALUE section doesn't specify. Actually the words "error
> > number" hint that it is an `errno` value, because it's the same words
> > in errno.3, but it could be clearer, and maybe also point to errno(3)
> > in that page.
>
> Most libpthread functions return errno codes instead of in addition to
> setting errno.  This is something that POSIX requires.  The asymmetry is
> annoying.  I think it dates back to the days where libpthread was purely
> a library in some implementations, to be used with a C library that was
> not even aware of threads and did not have a per-thread errno variable.
> (Of course, that didn't work too well, but people tried.)

I had always understood that it was POSIX's attempt to address the
design fault inherent in traditional APIs whereby there weresometimes
conflicts in the dual purpose of the return value to indicate both
success/failure and to return valid information. Thus, for example,
the mess with getpriority(2) and one or other APIs where a return
value of -1 becomes ambiguous. See also posix_fadvise(),
posix_fallocate(), posix_madvise(), which are APIs created by POSIX
that do the same thing (though on the other hand, posix_openpt() does
not).

But, your explanation also sounds plausible, Florian. I wonder which is correct.

Cheers,

Michael
