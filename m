Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 593CCF50FF
	for <lists+linux-man@lfdr.de>; Fri,  8 Nov 2019 17:23:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726039AbfKHQXr convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Fri, 8 Nov 2019 11:23:47 -0500
Received: from mail-pg1-f193.google.com ([209.85.215.193]:34382 "EHLO
        mail-pg1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726438AbfKHQXr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 8 Nov 2019 11:23:47 -0500
Received: by mail-pg1-f193.google.com with SMTP id e4so4292393pgs.1
        for <linux-man@vger.kernel.org>; Fri, 08 Nov 2019 08:23:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:user-agent:in-reply-to:references
         :mime-version:content-transfer-encoding:subject:reply-to:to:cc:from
         :message-id;
        bh=G0YYGdSy9+/i4yshEfnYyXom6zFvQZy4oD6/LrWGDhw=;
        b=GxS4/KPk8dnMz+RW4BoyBeUWr5aje+Rkh7hW/n8qXodzLkGezbxhV0lcc2ETDQ+7Mo
         Sxg7GYiusHQxjiW8GivyEqTEk0yphkB8N1/kenood0eC+S/SqRKOSXh3BQd5Wf4dmXFk
         nDRVIaFMq0VrWmtPtscpW8+w3g5n2s9eKBaVgnZpwrH+ftdDGFDGsMToLIdhbwUerkmd
         qvSKuYIzcGMuEc1ffqlLXfchFTuTTeBQyDXDqFe5YYaRDWCxG6LwQsNZGXnNtBsMXXGX
         xeupgr09FJeIguStsrYdpHSNeZUD7JG6sygYt3EGOiYCBrbb9OocWRji+qiFeJv0irjF
         Et0Q==
X-Gm-Message-State: APjAAAVlOwB+2zmL7iVpevRYs6joZnD1vkGmmKj9xWHeheXHylJ6Wej5
        r17uWRVWienmsd6BFg+ghx83zw3GQX+7Yw==
X-Google-Smtp-Source: APXvYqzCz6HLQWpy7PIVpbRf2LlIWVojFXdMRPHm+liQ7etXAfv2Cbjt0BJmmWtruOJWrsjduZOOYQ==
X-Received: by 2002:a63:d70e:: with SMTP id d14mr12814951pgg.10.1573230226586;
        Fri, 08 Nov 2019 08:23:46 -0800 (PST)
Received: from [25.170.231.160] ([172.58.27.137])
        by smtp.gmail.com with ESMTPSA id w5sm6718938pfd.31.2019.11.08.08.23.44
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Nov 2019 08:23:45 -0800 (PST)
Date:   Fri, 08 Nov 2019 17:23:37 +0100
User-Agent: K-9 Mail for Android
In-Reply-To: <874kze1gt8.fsf@oldenburg2.str.redhat.com>
References: <87k18a62xe.fsf@oldenburg2.str.redhat.com> <20191108141149.GB20533@altlinux.org> <87v9ru1l6d.fsf@oldenburg2.str.redhat.com> <c4001320-2d3f-9523-c93f-60f799545654@linaro.org> <e3486649-58fa-c1b5-7913-9e9f098972db@arm.com> <874kze1gt8.fsf@oldenburg2.str.redhat.com>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: 8BIT
Subject: Re: glibc in master is incompatible with systemd-nspawn
Reply-to: christian.brauner@ubuntu.com
To:     libc-alpha@sourceware.org, Florian Weimer <fweimer@redhat.com>,
        Szabolcs Nagy <Szabolcs.Nagy@arm.com>
CC:     Adhemerval Zanella <adhemerval.zanella@linaro.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
        nd <nd@arm.com>, linux-man <linux-man@vger.kernel.org>
From:   Christian Brauner <christian.brauner@ubuntu.com>
Message-ID: <52705C67-9908-4074-A5B2-4389FBDBA461@ubuntu.com>
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On November 8, 2019 5:19:47 PM GMT+01:00, Florian Weimer <fweimer@redhat.com> wrote:
>* Szabolcs Nagy:
>
>> it's of course broken whenever the application is
>> run on a newer kernel+libc than what was used for
>> creating the filter, may be the seccomp manual should
>> warn against the use of EPERM (there is already a
>> caveats section)?
>
>On this topic (ENOSYS vs PERM), I wrote earlier today:
>
>| They serve different purposes. EPERM is appropriate if you want
>things
>| to fail (so that applications break), ENOSYS is appropriate if you
>| want to trigger fallback (like utimensat_time64 → utime) or just
>| disable the feature (because the application assumes the kernel is
>too
>| old to support it). For a generic container runtime, there either
>have
>| to be no filters by default (my preference), or filters for unknown
>| system calls need to return ENOSYS. Everything else will break too
>| many applications.
>|
>| If you have specific knowledge of the system call, you can return
>| EPERM instead in a few cases (e.g. for clock_settime). But that's not
>| really possible for an unknown system call.
>
><https://bugzilla.redhat.com/show_bug.cgi?id=1769299>
>
>I don't know how controversial this position is.  People seem rather
>opinionated about EPERM.
>
>Thanks,
>Florian

Fwiw, with LXC and LXD we use ENOSYS.
I chatted with Lennart about this a few minutes ago.
