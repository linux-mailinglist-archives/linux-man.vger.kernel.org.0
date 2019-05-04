Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6D77A13C3F
	for <lists+linux-man@lfdr.de>; Sun,  5 May 2019 00:55:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727327AbfEDWzu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 4 May 2019 18:55:50 -0400
Received: from mail-vk1-f196.google.com ([209.85.221.196]:39453 "EHLO
        mail-vk1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727259AbfEDWzt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 4 May 2019 18:55:49 -0400
Received: by mail-vk1-f196.google.com with SMTP id s80so2297546vke.6
        for <linux-man@vger.kernel.org>; Sat, 04 May 2019 15:55:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=XtNIzCExPsHQPMvGhQWIcOWvtatcRaLJHe2Aimy56ek=;
        b=l/m/3AtdkRRKCumKuo9pYZcAOZXaMGsI9itLnTAEAL3/ru1Rfrs7haBMZq14RWQqnu
         VE92Cpi/MsSPkYFxvIzdxYu21NZd8EUg2fFtnOpOmksW5iiZvjhM5+v+32WRPLhsMzfO
         Mw+lIUl7jz95rl6VCz3+i6UaRjV+VbSMCE+aR6wZESvG1lB4QoZ3EzJrodRHD2jOQIEP
         4v3c7DQIE8EEopWXvqSlun/3HTrYt0RpaDvg/Xxq5LxSLyVDO97ULf9WwK0P022tDbaU
         CVm21weungdkHPHZYwDA/a5yHcawlCBXH+CYVQSEUUpFUyoKmDRJ+z1RUVNC51dHqeW4
         2bkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=XtNIzCExPsHQPMvGhQWIcOWvtatcRaLJHe2Aimy56ek=;
        b=CEqN8nht8mwCGwI3f+JrWheRZQ/DgqReoDyG87K7sBtuSIwvB2R3qmp9OATh1cv46U
         /UomTpBVggkSDlAyu2FHzbnplm9tzpDu2By7qn+s+FhoDY3Kd8CxPIdHTXedRrrRb0G5
         YaeLvIR/DgsdyxD9O69/1gmC5oJevoM0nuVAPr28FrXvppc1ZBWJP3uwMKt5hAoUo3MH
         LKBmfJ7OqLEJ4ZbhTU7U7w+0cKkfUsypNqC38U68obHuFWuoe2Ojnf2gRtfovdix87+g
         LWgx0mQkpMBTnrXkBvtIY8GKMwXk/I0CxJN6PBRLBXfPx8vv+wDjuAYPlJeAaFfBNoEs
         Qu0Q==
X-Gm-Message-State: APjAAAX6l6lx9uuxigBSpTF9t1haNgl9fsK0s6x9AjZskeYaOWbPevH1
        w3xscjfd6pwqFfVSP5MicmI3qaN6
X-Google-Smtp-Source: APXvYqwT46Mh/r5arIpow0ePgBjQZCWfcVOgXyKstGaNKRls3PjJqj6HaRIVMi4qzUKnEzjD80o03A==
X-Received: by 2002:a1f:ff0b:: with SMTP id p11mr2214804vki.83.1557010548554;
        Sat, 04 May 2019 15:55:48 -0700 (PDT)
Received: from [192.168.0.8] (dynamic-190-25-35-141.dynamic.etb.net.co. [190.25.35.141])
        by smtp.gmail.com with ESMTPSA id 143sm2019216vki.20.2019.05.04.15.55.46
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 May 2019 15:55:47 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] tsearch.3: Document twalk_r function added in glibc 2.30
To:     Florian Weimer <fweimer@redhat.com>
References: <87a7g3ua55.fsf@oldenburg2.str.redhat.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <c2f118de-990e-96d3-e555-9eaa9ab8a885@gmail.com>
Date:   Sat, 4 May 2019 17:55:45 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <87a7g3ua55.fsf@oldenburg2.str.redhat.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Florian,

I've applied this patch in a local branch, and made various minor
tweaks.

I have one or two questions below.

On 5/3/19 5:01 AM, Florian Weimer wrote:
> ---
>   man3/tsearch.3 | 26 ++++++++++++++++++++++++--
>   1 file changed, 24 insertions(+), 2 deletions(-)
> 
> diff --git a/man3/tsearch.3 b/man3/tsearch.3
> index b64c9c6b7..c832b7009 100644
> --- a/man3/tsearch.3
> +++ b/man3/tsearch.3
> @@ -40,6 +40,10 @@ tsearch, tfind, tdelete, twalk, tdestroy \- manage a binary search tree
>   .PP
>   .BI "void twalk(const void *" root ", void (*" action ")(const void *" nodep ,
>   .BI "                                   VISIT " which ", int " depth "));"
> +.PP
> +.BI "void twalk_r(const void *" root ", void (*" action ")(const void *" np ,
> +.BI "                                   VISIT " which ", void *" closure "),
> +.BI "                                   void *" closure);"
>   
>   .BR "#define _GNU_SOURCE" "         /* See feature_test_macros(7) */"
>   .B #include <search.h>
> @@ -151,6 +155,16 @@ Thus, the choice of name
>   .B post\%order
>   is rather confusing.)
>   .PP
> +.BR twalk_r ()
> +is similar to
> +.BR twalk (),
> +but instead of the leval argument, the

Why is the 'level' argument deemed unnecessary for twalk_r()?
Is it worth adding some text to say why that argument is dropped?

Cheers,

Michael

> +.I closure
> +argument pointer is passed to each invocation of the action callback,
> +unchanged.  This pointer can be used to pass information to and from
> +to the callback function in a thread-safe fashion, without resorting
> +to global variables.
> +.PP
>   .BR tdestroy ()
>   removes the whole tree pointed to by
>   .IR root ,
> @@ -191,6 +205,9 @@ also
>   return NULL if
>   .I rootp
>   was NULL on entry.
> +.SH VERSIONS
> +.BR twalk_r ()
> +is available since glibc 2.30.
>   .SH ATTRIBUTES
>   For an explanation of the terms used in this section, see
>   .BR attributes (7).
> @@ -209,14 +226,19 @@ T{
>   .BR twalk ()
>   T}	Thread safety	MT-Safe race:root
>   T{
> +.BR twalk_r ()
> +T}	Thread safety	MT-Safe race:root
> +T{
>   .BR tdestroy ()
>   T}	Thread safety	MT-Safe
>   .TE
>   .SH CONFORMING TO
>   POSIX.1-2001, POSIX.1-2008, SVr4.
> -The function
> +The functions
>   .BR tdestroy ()
> -is a GNU extension.
> +and
> +.BR twalk_r ()
> +are GNU extensions.
>   .SH NOTES
>   .BR twalk ()
>   takes a pointer to the root, while the other functions
> 
