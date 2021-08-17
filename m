Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B2A883EF5AD
	for <lists+linux-man@lfdr.de>; Wed, 18 Aug 2021 00:20:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235845AbhHQWUm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 17 Aug 2021 18:20:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52244 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229729AbhHQWUl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 17 Aug 2021 18:20:41 -0400
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com [IPv6:2607:f8b0:4864:20::102d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B531C061764
        for <linux-man@vger.kernel.org>; Tue, 17 Aug 2021 15:20:08 -0700 (PDT)
Received: by mail-pj1-x102d.google.com with SMTP id 28-20020a17090a031cb0290178dcd8a4d1so4060347pje.0
        for <linux-man@vger.kernel.org>; Tue, 17 Aug 2021 15:20:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=tn3Gos6Y19+2YgecCdYQONoyYMMol3/Y/gXz1/9zNMY=;
        b=pOOUl2PlT1lqq5WXH4ux9mdHm7UhRaP6vtlR3hc9oYqTRv0MxA4GWtKkIfmM2Wk06B
         WvbnnrCWNEMa8WW9oeG/6f7+ZZORTcQHcBUFHYfn9wbudcWXGgRJVQzuQkj6ATjsaBYX
         J9I6l3mZJm02EL2hagenBr7uZS3mC464/DaAPB5m/9gtkChB9UnAigsuzJJ6f1aPNQsv
         AMi9t54T3RpdAbgKXWenGlLpGpDbxVTiVQ2eFEX16+kSAGqpAPb29mmMOkEmLCqOX5zd
         FC8St46lUbsSRbVx6jnuIhwUYUV5cgTPjkBFojSYrWsiMFknbpvDcpxWa30UzOhShDNr
         je8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=tn3Gos6Y19+2YgecCdYQONoyYMMol3/Y/gXz1/9zNMY=;
        b=clukRtBWS+EkarVWgmBZoprToEpJVx6CV44ofbR6gMxisxhSeoHHdOt0RewRkA14fU
         krVKtkr76vqxVVGAEGU2OojExUGX2hlLaukEBnlnUhgRu0cp2UsJob1l+3xQz8X1iYIO
         uWWXNv7eS4Gm6UF8Dogi474DKHdbsO+5biQDsMOJ0cciePhKWQJGNM8fmAEPmgfhcdQ6
         90WAO1C4AqsAztOij3RpCeZDUFy+RFQVSyNIrTPfBetbaxtHt7276kJ+4zOyL3UHioCs
         YCSCrvFmaxettFx1ELEfjiDQ43X1kLYJB3r7S5RKUdBrUtxbJgUxO70UH6PSYlvS8Ui/
         upTg==
X-Gm-Message-State: AOAM532M7CZi64mpVfJkLrX980uOa6OE73ONb4mU5RUzqut32SYdgSC/
        45xGvqt8KpL8RIfTKTEAZb9REQ4gmRw=
X-Google-Smtp-Source: ABdhPJxNxCkyc26bHEP5B+YRP7tuMF4n3yDLgG5z27SKiRaaKEfX2AVseP027CmRzTgud9802Hd2cg==
X-Received: by 2002:a17:90a:d245:: with SMTP id o5mr5738858pjw.57.1629238807457;
        Tue, 17 Aug 2021 15:20:07 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id r18sm4331823pgk.54.2021.08.17.15.20.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 15:20:06 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>
Subject: Re: Errors in man pages, here: shmop.2
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20210725170914.GA16816@Debian-50-lenny-64-minimal>
 <CAKgNAkizm0xZ3vr=mGRDgMOBZwps2RSkQxfR3vP-6Z8x_6MEJw@mail.gmail.com>
 <20210817135116.GD12220@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <144bc32d-4519-918d-b41e-895275baa754@gmail.com>
Date:   Wed, 18 Aug 2021 00:20:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210817135116.GD12220@Debian-50-lenny-64-minimal>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Helge,

On 8/17/21 3:51 PM, Helge Kreutzmann wrote:
> Hello Michael,
> On Mon, Jul 26, 2021 at 01:02:10AM +0200, Michael Kerrisk (man-pages) wrote:
>>> Man page: shmop.2
>>> Issue: file → files
>>>
>>> "The following header file is included by the \"reader\" and \"writer\" "
>>> "programs."
>>
>> The existing text looks correct to me. Please let me know further
>> details if you still think there's a problem after reviewing.
> 
> Probably we do not understand the sentence correctly, so bear with me.
> Currently, the man page reads as follows:
> 
>    Program source: svshm_string.h
>        The following header file is included by the "reader" and "writer" programs.
> 
>            #include <sys/types.h>
>            #include <sys/ipc.h>
>            #include <sys/shm.h>
>            #include <sys/sem.h>
>            #include <stdio.h>
>            #include <stdlib.h>
>            #include <string.h>
> 
>            #define errExit(msg)    do { perror(msg); exit(EXIT_FAILURE); \
>                                    } while (0)
> 
> The sentence in question seems to refer to the next paragraph, i.e.
> the beginning of the program source. There 7 header files (from
> types.h up to string.h) are mentioned. In the translation we also
> replaced the full stop by a colon. Since there are 7 header files, we
> assume that it needs to be plural.
> 
> Now explaining this and reading it again, I think I understand the
> sentence now (better). The header file is "svshm_string.h" and thus
> singular. So logically (but it does not work in the overall formatting
> of the man page), the first two lines above would need to be read in a
> different order. 
> 
>        The following header file is included by the "reader" and "writer" programs.
>    Program source: svshm_string.h
> 
> If this interpetation is correct, maybe the following change could be
> made:
> 
>    Program source: svshm_string.h
>        This header file is included by the "reader" and "writer" programs:
>        ~~~~~~~~~~                                                       ~~
> 
> Once I've your confirmation, I'll align the translation.

Thanks for the clarification. I have applied the following patch.

Cheers,

Michael

diff --git a/man2/shmop.2 b/man2/shmop.2
index c9bd92986..2cc49933c 100644
--- a/man2/shmop.2
+++ b/man2/shmop.2
@@ -324,10 +324,14 @@ Hello, world
 .in
 .\"
 .SS Program source: svshm_string.h
-The following header file is included by the "reader" and "writer" programs.
+The following header file is included by the "reader" and "writer" programs:
 .PP
 .in +4n
 .EX
+/* svshm_string.h
+
+   Licensed under GNU General Public License v2 or later.
+*/
 #include <sys/types.h>
 #include <sys/ipc.h>
 #include <sys/shm.h>

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
