Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BE26B2FC07C
	for <lists+linux-man@lfdr.de>; Tue, 19 Jan 2021 21:01:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730044AbhASUAy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Jan 2021 15:00:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39518 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2392122AbhASUA3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Jan 2021 15:00:29 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E208EC061573
        for <linux-man@vger.kernel.org>; Tue, 19 Jan 2021 11:59:48 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id d26so20928555wrb.12
        for <linux-man@vger.kernel.org>; Tue, 19 Jan 2021 11:59:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=9iLLFvQNtp7OY0EgUlDo+UylSoQSpMRcJs6hpr9jtAg=;
        b=fCw1rQRyjFpvID3TS30BDp73X8YLC5djXqgGGnh1Alo2t4iFBqivLtCuVSlmfrZROp
         VbTYjtUnm+3l6oJtaASHp8eAiujamlOJXn0p1rA2CWT73z82QiPSUkPlVwYN9xUG+aru
         EUrN0LmU2efv4JNco6bqFYhvZ44sz4/sxB/qaX4SyjjlUjGN4Ec9oBRw37U7vvPWOLeG
         sNZMUf0Kr1I3ZsVL9NtsKnPskaSQY+nD4CN4xZ6oIE0oAiOLm5DOYOaM99eq18HRvWZX
         Z1O4vsGJZerMDVx8QFZJpK5dPZASaiI2ODGXUjYFEWj1JWM0KdEULcRtxKNLDOILlfxg
         /pXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=9iLLFvQNtp7OY0EgUlDo+UylSoQSpMRcJs6hpr9jtAg=;
        b=hurkBsGnJSQaQFYLlSfthYjUgjAxtk0GU4aPW4hL2DL6Jv8SFsQ1tOFA+WGl22+o2Q
         vxvrHExMB2A9I9nfCkg4RC+qWN/HvFODktU1FEUcoPTg6QE8JUuK5ZDZAhkaIqj+JrET
         FVzhdVuFOYloqSu6ktliRD3wOvH4ggvgmZjDSG61QcBO578A0SXCCMvYlQU96kTtuX/I
         2swlkjzbx0THMcMTu2BjvjEvC/xpc8oALvsN/qZRnRAhc7aGgnMzWbbSIynA98T7rSWR
         8aQ2KXvLgppmcRHTr1Zk0k6vGD+XJl47a3qoKvyQJilMDLHARg3mAKd9Ax+4L/u446hZ
         5TdQ==
X-Gm-Message-State: AOAM531UXzvD9pK7h46Ud1TQayE4HmhB8bLHx+kMhEenekCbhWYU1QPp
        f0lx5mWidXHRCfwnLzLSVSgxpH6gfyg=
X-Google-Smtp-Source: ABdhPJyGcfqPSz20zxbpDraW1g7ra/5r4iWXJRQcJyZFFEljTCM03FY6L9HaAL1aXxQlxPHQxu3XaQ==
X-Received: by 2002:a5d:540f:: with SMTP id g15mr5911228wrv.397.1611086387745;
        Tue, 19 Jan 2021 11:59:47 -0800 (PST)
Received: from [192.168.0.160] ([170.253.49.0])
        by smtp.gmail.com with ESMTPSA id y6sm35708498wrp.6.2021.01.19.11.59.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Jan 2021 11:59:47 -0800 (PST)
Subject: Ping: [PATCH v2] posix.py: ffix: Correctly format URIs
To:     mtk.manpages@gmail.com
Cc:     "G . Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
References: <af78792f-9758-e3e6-9c65-c2f93f0fcfdd@gmail.com>
 <20210110145745.4360-1-alx.manpages@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <133982ca-26ba-a81a-09e7-3565bf8a5499@gmail.com>
Date:   Tue, 19 Jan 2021 20:59:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210110145745.4360-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Ping!

On 1/10/21 3:57 PM, Alejandro Colomar wrote:
> $ man 7 uri 2>/dev/null \
>   |sed -n '/Writing a URI/,/^$/p';
>    Writing a URI
>        When  written, URIs should be placed inside double quotes
>        (e.g., "http://www.kernel.org"), enclosed in angle brack‐
>        ets  (e.g.,  <http://lwn.net>),  or  placed  on a line by
>        themselves.  A warning for those who  use  double-quotes:
>        never  move  extraneous  punctuation  (such as the period
>        ending a sentence or the comma in a list) inside  a  URI,
>        since  this  will  change the value of the URI.  Instead,
>        use angle brackets instead, or switch to a quoting system
>        that  never  includes extraneous characters inside quota‐
>        tion marks.  This latter  system,  called  the  'new'  or
>        'logical'  quoting  system by "Hart's Rules" and the "Ox‐
>        ford Dictionary for Writers and  Editors",  is  preferred
>        practice  in Great Britain and hackers worldwide (see the
>        Jargon  File's   section   on   Hacker   Writing   Style,
>        ⟨http://www.fwi.uva.nl/~mes/jargon/h
>        /HackerWritingStyle.html⟩, for more information).   Older
>        documents  suggested inserting the prefix "URL:" just be‐
>        fore the URI, but this form has never caught on.
> 
> Enclose URIs in .UR/.UE,
> which encloses the URIs in between <> (or similar characters).
> It is especially important in this case,
> as the URIs are followed by '.'.
> 
> This also fixes the extraneous space that was used to
> separate the URIs from the final period.
> In some cases, the period ended in a line of its own.
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  posix.py | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/posix.py b/posix.py
> index 55e401a..60271cc 100755
> --- a/posix.py
> +++ b/posix.py
> @@ -337,14 +337,16 @@ for file in sys.argv[2:]:
>        "Electrical and Electronics Engineers, Inc and The Open Group.\n"
>        "In the event of any discrepancy between this version and the original IEEE and\n"
>        "The Open Group Standard, the original IEEE and The Open Group Standard\n"
> -      "is the referee document. The original Standard can be obtained online at\n"
> -      "http://www.opengroup.org/unix/online.html .\n"
> +      "is the referee document.  The original Standard can be obtained online at\n"
> +      ".UR http://www.opengroup.org/unix/online.html\n"
> +      ".UE .\n"
>        ".PP\n"
>        "Any typographical or formatting errors that appear\n"
>        "in this page are most likely\n"
>        "to have been introduced during the conversion of the source files to\n"
> -      "man page format. To report such errors, see\n"
> -      "https://www.kernel.org/doc/man-pages/reporting_bugs.html .\n"
> +      "man page format.  To report such errors, see\n"
> +      ".UR https://www.kernel.org/doc/man-pages/reporting_bugs.html\n"
> +      ".UE .\n"
>        )
>  
>      text = "".join(lines)
> 
