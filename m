Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AC4F431C307
	for <lists+linux-man@lfdr.de>; Mon, 15 Feb 2021 21:33:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229608AbhBOUcp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 15 Feb 2021 15:32:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46866 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229796AbhBOUcl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 15 Feb 2021 15:32:41 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0880C061756
        for <linux-man@vger.kernel.org>; Mon, 15 Feb 2021 12:32:00 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id v15so10531526wrx.4
        for <linux-man@vger.kernel.org>; Mon, 15 Feb 2021 12:32:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=z1DzNld3xDeT0xMdu2koXPwqzhRDPbzb1j6g/o3wVYo=;
        b=ISrsuyDbcUxQa8sRsONBwOGAeNj9xqvLBD7bHE6rvf2gfj5Aje0etCuHobnKKz38w1
         oAKTs+BefkfxS0DBhZyVMcTshWY2m17rxtdy5/6poN0O1KI88oknYaxzI4U+OqvEMF9p
         8i2YUGCDD50GpIAKoKwDwlI2lxcZkfK5YmTeXRLPmuyEMTcwltDJnxN7c4w5n4lirbrx
         dTrrJGYTfPNIg1znfVxpFzmNHczUAkOmiFmGUzQdZYy9KyG2D57MqhnhQaFJ+AsnZgnN
         SCdDic5W+wkQE7fUFlWfYXY0pAao0f4XYYSxn2iYudcS50zCaDo7VHdy1fc6bS08o/gi
         sP6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=z1DzNld3xDeT0xMdu2koXPwqzhRDPbzb1j6g/o3wVYo=;
        b=PL34TevJVGIpWf9wCfL0LuJIM/Xs43M3UU57PggD1YlEJVrJluxxHKWeKwLgi0jArB
         X648xxQ8H73gGw9NaiJkPGcXbKPZbFCJIuJxgudRFeEEYCw/oIiMQBRbc9AFX8ZlP7a8
         O+2Rgvr5TE53GvqNnpY6f5My/Nv6rwagpSZGHAZDzH7LS0i05KFbxEH1Hfj45Uq8KeEl
         NoGovHpvzBXWmyT0aEoOHbK4THABKZEFnGdsvnekKUJkO4t7QD9k1wJ/hICqJG47I1Oz
         ri5gA4eyM0LmucEda5KN3QAKYNflI3FsoKGrGu55qp14p5Pf79VDy67MaLQzzwhNdZ4w
         ed/w==
X-Gm-Message-State: AOAM530qBSjugxiEJhGRWIdf6veVh7bZFevZG9MlWQXotfHTqWj1vIvx
        YDkJ3qUCiLg9rLuaH7fkRFk=
X-Google-Smtp-Source: ABdhPJzzBPTusItjoVG/nAHSc3k+fPLHOz7+egBEZhkYM9Xs7osI8uSVAEKCpKPh9iMyjDaLUdTBGw==
X-Received: by 2002:adf:d1cb:: with SMTP id b11mr20720601wrd.118.1613421119548;
        Mon, 15 Feb 2021 12:31:59 -0800 (PST)
Received: from ?IPv6:2001:a61:3a2d:1d01:e14:1e8b:dca4:7d73? ([2001:a61:3a2d:1d01:e14:1e8b:dca4:7d73])
        by smtp.gmail.com with ESMTPSA id r12sm466092wmg.44.2021.02.15.12.31.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Feb 2021 12:31:59 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH v3] simpleq.3, stailq.3, queue.7, SIMPLEQ_*.3: Document
 SIMPLEQ_*() as an alias to STAILQ_*() macros
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210215161243.517608-1-alx.manpages@gmail.com>
 <20210215163236.518482-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <ecba4a9f-d246-e8f3-d22d-9fd184b87bf3@gmail.com>
Date:   Mon, 15 Feb 2021 21:31:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210215163236.518482-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 2/15/21 5:32 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
> 
> v2: Add link: simpleq.3 -> stailq.3 (for symmetry)

Thanks. Patch applied.

Cheers,

Michael

> 
> v3: Resend (typo in email)
> 
> ---
>  man3/SIMPLEQ_EMPTY.3            |  1 +
>  man3/SIMPLEQ_ENTRY.3            |  1 +
>  man3/SIMPLEQ_FIRST.3            |  1 +
>  man3/SIMPLEQ_FOREACH.3          |  1 +
>  man3/SIMPLEQ_HEAD.3             |  1 +
>  man3/SIMPLEQ_HEAD_INITIALIZER.3 |  1 +
>  man3/SIMPLEQ_INIT.3             |  1 +
>  man3/SIMPLEQ_INSERT_AFTER.3     |  1 +
>  man3/SIMPLEQ_INSERT_HEAD.3      |  1 +
>  man3/SIMPLEQ_INSERT_TAIL.3      |  1 +
>  man3/SIMPLEQ_NEXT.3             |  1 +
>  man3/SIMPLEQ_REMOVE.3           |  1 +
>  man3/SIMPLEQ_REMOVE_HEAD.3      |  1 +
>  man3/simpleq.3                  |  1 +
>  man3/stailq.3                   | 31 +++++++++++++++++++++++++++++++
>  man7/queue.7                    |  9 +++++++++
>  16 files changed, 54 insertions(+)
>  create mode 100644 man3/SIMPLEQ_EMPTY.3
>  create mode 100644 man3/SIMPLEQ_ENTRY.3
>  create mode 100644 man3/SIMPLEQ_FIRST.3
>  create mode 100644 man3/SIMPLEQ_FOREACH.3
>  create mode 100644 man3/SIMPLEQ_HEAD.3
>  create mode 100644 man3/SIMPLEQ_HEAD_INITIALIZER.3
>  create mode 100644 man3/SIMPLEQ_INIT.3
>  create mode 100644 man3/SIMPLEQ_INSERT_AFTER.3
>  create mode 100644 man3/SIMPLEQ_INSERT_HEAD.3
>  create mode 100644 man3/SIMPLEQ_INSERT_TAIL.3
>  create mode 100644 man3/SIMPLEQ_NEXT.3
>  create mode 100644 man3/SIMPLEQ_REMOVE.3
>  create mode 100644 man3/SIMPLEQ_REMOVE_HEAD.3
>  create mode 100644 man3/simpleq.3
> 
> diff --git a/man3/SIMPLEQ_EMPTY.3 b/man3/SIMPLEQ_EMPTY.3
> new file mode 100644
> index 000000000..fbb71f02c
> --- /dev/null
> +++ b/man3/SIMPLEQ_EMPTY.3
> @@ -0,0 +1 @@
> +.so man3/stailq.3
> diff --git a/man3/SIMPLEQ_ENTRY.3 b/man3/SIMPLEQ_ENTRY.3
> new file mode 100644
> index 000000000..fbb71f02c
> --- /dev/null
> +++ b/man3/SIMPLEQ_ENTRY.3
> @@ -0,0 +1 @@
> +.so man3/stailq.3
> diff --git a/man3/SIMPLEQ_FIRST.3 b/man3/SIMPLEQ_FIRST.3
> new file mode 100644
> index 000000000..fbb71f02c
> --- /dev/null
> +++ b/man3/SIMPLEQ_FIRST.3
> @@ -0,0 +1 @@
> +.so man3/stailq.3
> diff --git a/man3/SIMPLEQ_FOREACH.3 b/man3/SIMPLEQ_FOREACH.3
> new file mode 100644
> index 000000000..fbb71f02c
> --- /dev/null
> +++ b/man3/SIMPLEQ_FOREACH.3
> @@ -0,0 +1 @@
> +.so man3/stailq.3
> diff --git a/man3/SIMPLEQ_HEAD.3 b/man3/SIMPLEQ_HEAD.3
> new file mode 100644
> index 000000000..fbb71f02c
> --- /dev/null
> +++ b/man3/SIMPLEQ_HEAD.3
> @@ -0,0 +1 @@
> +.so man3/stailq.3
> diff --git a/man3/SIMPLEQ_HEAD_INITIALIZER.3 b/man3/SIMPLEQ_HEAD_INITIALIZER.3
> new file mode 100644
> index 000000000..fbb71f02c
> --- /dev/null
> +++ b/man3/SIMPLEQ_HEAD_INITIALIZER.3
> @@ -0,0 +1 @@
> +.so man3/stailq.3
> diff --git a/man3/SIMPLEQ_INIT.3 b/man3/SIMPLEQ_INIT.3
> new file mode 100644
> index 000000000..fbb71f02c
> --- /dev/null
> +++ b/man3/SIMPLEQ_INIT.3
> @@ -0,0 +1 @@
> +.so man3/stailq.3
> diff --git a/man3/SIMPLEQ_INSERT_AFTER.3 b/man3/SIMPLEQ_INSERT_AFTER.3
> new file mode 100644
> index 000000000..fbb71f02c
> --- /dev/null
> +++ b/man3/SIMPLEQ_INSERT_AFTER.3
> @@ -0,0 +1 @@
> +.so man3/stailq.3
> diff --git a/man3/SIMPLEQ_INSERT_HEAD.3 b/man3/SIMPLEQ_INSERT_HEAD.3
> new file mode 100644
> index 000000000..fbb71f02c
> --- /dev/null
> +++ b/man3/SIMPLEQ_INSERT_HEAD.3
> @@ -0,0 +1 @@
> +.so man3/stailq.3
> diff --git a/man3/SIMPLEQ_INSERT_TAIL.3 b/man3/SIMPLEQ_INSERT_TAIL.3
> new file mode 100644
> index 000000000..fbb71f02c
> --- /dev/null
> +++ b/man3/SIMPLEQ_INSERT_TAIL.3
> @@ -0,0 +1 @@
> +.so man3/stailq.3
> diff --git a/man3/SIMPLEQ_NEXT.3 b/man3/SIMPLEQ_NEXT.3
> new file mode 100644
> index 000000000..fbb71f02c
> --- /dev/null
> +++ b/man3/SIMPLEQ_NEXT.3
> @@ -0,0 +1 @@
> +.so man3/stailq.3
> diff --git a/man3/SIMPLEQ_REMOVE.3 b/man3/SIMPLEQ_REMOVE.3
> new file mode 100644
> index 000000000..fbb71f02c
> --- /dev/null
> +++ b/man3/SIMPLEQ_REMOVE.3
> @@ -0,0 +1 @@
> +.so man3/stailq.3
> diff --git a/man3/SIMPLEQ_REMOVE_HEAD.3 b/man3/SIMPLEQ_REMOVE_HEAD.3
> new file mode 100644
> index 000000000..fbb71f02c
> --- /dev/null
> +++ b/man3/SIMPLEQ_REMOVE_HEAD.3
> @@ -0,0 +1 @@
> +.so man3/stailq.3
> diff --git a/man3/simpleq.3 b/man3/simpleq.3
> new file mode 100644
> index 000000000..fbb71f02c
> --- /dev/null
> +++ b/man3/simpleq.3
> @@ -0,0 +1 @@
> +.so man3/stailq.3
> diff --git a/man3/stailq.3 b/man3/stailq.3
> index b43f9c60b..22582eeae 100644
> --- a/man3/stailq.3
> +++ b/man3/stailq.3
> @@ -31,6 +31,26 @@
>  .\"
>  .TH STAILQ 3 2020-10-21 "GNU" "Linux Programmer's Manual"
>  .SH NAME
> +.\"SIMPLEQ_CONCAT,
> +SIMPLEQ_EMPTY,
> +SIMPLEQ_ENTRY,
> +SIMPLEQ_FIRST,
> +SIMPLEQ_FOREACH,
> +.\"SIMPLEQ_FOREACH_FROM,
> +.\"SIMPLEQ_FOREACH_FROM_SAFE,
> +.\"SIMPLEQ_FOREACH_SAFE,
> +SIMPLEQ_HEAD,
> +SIMPLEQ_HEAD_INITIALIZER,
> +SIMPLEQ_INIT,
> +SIMPLEQ_INSERT_AFTER,
> +SIMPLEQ_INSERT_HEAD,
> +SIMPLEQ_INSERT_TAIL,
> +.\"SIMPLEQ_LAST,
> +SIMPLEQ_NEXT,
> +SIMPLEQ_REMOVE,
> +.\"SIMPLEQ_REMOVE_AFTER,
> +SIMPLEQ_REMOVE_HEAD,
> +.\"SIMPLEQ_SWAP,
>  STAILQ_CONCAT,
>  STAILQ_EMPTY,
>  STAILQ_ENTRY,
> @@ -96,6 +116,8 @@ STAILQ_REMOVE_HEAD,
>  .\" .BI "void STAILQ_SWAP(STAILQ_HEAD *" head1 ", STAILQ_HEAD *" head2 ,
>  .\" .BI "                          STAILQ_ENTRY " NAME );
>  .fi
> +.IR Note :
> +Identical macros prefixed with SIMPLEQ instead of STAILQ exist; see NOTES.
>  .SH DESCRIPTION
>  These macros define and operate on singly linked tail queues.
>  .PP
> @@ -299,6 +321,15 @@ fixes this limitation by allowing
>  .I var
>  to safely be removed from the list and freed from within the loop
>  without interfering with the traversal.
> +.SH NOTES
> +Some BSDs provide SIMPLEQ instead of STAILQ.
> +They are identical, but for historical reasons
> +they were named differently on different BSDs.
> +STAILQ originated on FreeBSD, and SIMPLEQ originated on NetBSD.
> +For compatibility reasons, some systems provide both sets of macros.
> +Glibc provides both STAILQ and SIMPLEQ,
> +which are identical except for a missing SIMPLEQ equivalent to
> +.BR STAILQ_CONCAT ().
>  .SH EXAMPLES
>  .EX
>  #include <stddef.h>
> diff --git a/man7/queue.7 b/man7/queue.7
> index f92887a36..c3facafd0 100644
> --- a/man7/queue.7
> +++ b/man7/queue.7
> @@ -138,6 +138,15 @@ Not in POSIX.1, POSIX.1-2001, or POSIX.1-2008.
>  Present on the BSDs.
>  .I <sys/queue.h>
>  macros first appeared in 4.4BSD.
> +.SH NOTES
> +Some BSDs provide SIMPLEQ instead of STAILQ.
> +They are identical, but for historical reasons
> +they were named differently on different BSDs.
> +STAILQ originated on FreeBSD, and SIMPLEQ originated on NetBSD.
> +For compatibility reasons, some systems provide both sets of macros.
> +Glibc provides both STAILQ and SIMPLEQ,
> +which are identical except for a missing SIMPLEQ equivalent to
> +.BR STAILQ_CONCAT ().
>  .SH SEE ALSO
>  .BR circleq (3),
>  .BR insque (3),
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
