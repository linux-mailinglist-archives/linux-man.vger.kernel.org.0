Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0347A488586
	for <lists+linux-man@lfdr.de>; Sat,  8 Jan 2022 20:06:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231258AbiAHTGA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Jan 2022 14:06:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229538AbiAHTF7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Jan 2022 14:05:59 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B78EC06173F
        for <linux-man@vger.kernel.org>; Sat,  8 Jan 2022 11:05:59 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id e9so16596891wra.2
        for <linux-man@vger.kernel.org>; Sat, 08 Jan 2022 11:05:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=9kALw+jmcp1j4DZ7XJupyrUHQQRD+4hWaIUA5GampyI=;
        b=UN9IKiLgvvNT6CgSdwgubvQ2GG6xKJtSTcPUsiKNYJAAon2N059rBcDIDie+4UPxjr
         0tVJZlTTiZoeIlHIkFkc1rOIvxqO7tFuDS1CpzfBki1yHYIlvsq8r+psLBGb9nv+6J3C
         xyTDB3H59/af8zXire8PP6ZA9RpTxiuccxEqWetGyyWvYpDz4R7oanzGwc+6Rd/6RB5M
         VFYCbS00FTCOqb3dzp/Zit4hKPyTQtAZWjQmV7DNTuOD2v8BF8G+IMHOgcg4/vx1MPSI
         sDbfws4WLVQYmiioF/hX0l4Tfq7rlYvk5Q8yNyS53uYHxnQ6rE001K05I042kTNSIqWv
         X4QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=9kALw+jmcp1j4DZ7XJupyrUHQQRD+4hWaIUA5GampyI=;
        b=3DN2m2nc7kOQxqNTjL8QmMEzprkqDzXKTppnxzWE+1aFGhGseYg0kPq8knmiuMtzvF
         g/IQS9Ux/DGRvV/vDHy5Nh3xJtyfIMtvjPX9aXdPuWRR06YKChRS2G6v1RN2cJ3yxREv
         0SQMlqdCdIEiSNqXsXAoPdQjkACH7S5rPLzIP5Y19x7fa950hb3gsIh2LUIsY//9fhXn
         FihpBkjNqp/XdlpHFeLWBRcTOq6lWxQwI0zTJIIlhvgi7neSYd6NJOz8/enOgCv13/jt
         Rp1qEKGfg1Ujvz3csQX5wteCOAhi6BSjfiWP2O1/tGIbTW5n3ksMPyisq2RubNxOAeKZ
         UipQ==
X-Gm-Message-State: AOAM531thVuLtUvUThCkNlwEIkb0SkiTatReYeL+of5hPv7JB2723rEt
        jnBCKMdjVNWchYdyZIdFTgs8avIDvT0=
X-Google-Smtp-Source: ABdhPJxZ4OLENpVJW9tDTcbd8dr+wTOMuzc4FinZhIw4TH5Wccc1n4l30Y3oSNn6/zjZQNcs/2KpZw==
X-Received: by 2002:a5d:6848:: with SMTP id o8mr652444wrw.2.1641668758095;
        Sat, 08 Jan 2022 11:05:58 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id u11sm2300485wmq.2.2022.01.08.11.05.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Jan 2022 11:05:57 -0800 (PST)
Message-ID: <cca8c14a-f740-fcf9-5407-9db348076e9f@gmail.com>
Date:   Sat, 8 Jan 2022 20:05:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.1
Subject: Re: [PATCH 1/9] Add a target to check example programs
Content-Language: en-US
To:     Stephen Kitt <steve@sk2.org>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <20220107164621.275794-1-steve@sk2.org>
 <7edd4ab8-a417-17b4-aadf-4c63293bc210@gmail.com>
 <20220108102230.31788318@heffalump.sk2.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20220108102230.31788318@heffalump.sk2.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 1/8/22 10:22, Stephen Kitt wrote:
>> Something like the above would be nice.
>> That would also remove the call to mktemp(1).
> 
> Yes, that’s along the lines of what I was thinking too; in particular,
> something like that would be necessary to handle man pages with multiple
> example files (e.g. unix.7).
> 
> The main purpose of this patch was to get the conversation started and to
> show how I’d identified the problems I was fixing in the rest of the series.
> I wanted to have something simple to get going, just to measure how likely it
> was that there actually were problems in the example programs before
> embarking on a more complex process ;-).

Okay.  I tried to come up with something the last time you mentioned 
this (IIRC it was you a few months ago that mentioned this plan, 
right?), but didn't have good ideas.  After reading this email of yours 
I have the feeling that this will be simpler than I thought back then.

> 
>> - This expects pages to have 'Program source' just before the source.
>>     Few pages do have that currently.
>>     Do you have plans to standardize some convention in the man pages?
>>     I'd be happy to see that.
>>     I think a good approach would be to use C comments,
>>     one line before the code, and one line after the code,
>>     so that there's no doubts about the limits of the code
>>     (we should decide the format of the comment).
>>     The comment should be something not too noisy, but very reliable.
>>
>>     I think I'd also first restrict to the EXAMPLES sections,
>>     even before reading that hypothetical comment (or whatever we put),
>>     to avoid mistakes.
> 
> At first I’d tried going with troff comments in the man page sources, but
> that doesn’t work because we rely on the troff *output* being correct C, not
> the troff input. So we need something that can be processed from the output,
> and “Program source” was available for a first stab.

No.  You had a point with that of the troff comments.  I think that's 
the key.  See man_section(), defined in <scripts/bash_aliases>.  There I 
did something similar to read junks from the man pages (that was for 
efficiently printing just specific sections of the manpages).  We can 
get something very similar for printing just specific parts that aren't 
necessarily sections.  Let me write some (untested) draft:

function man_example_program()
{
	if (($# < 3)); then
		>&2 echo "Usage: ${FUNCNAME[0]} <manpage> <begin-pattern> <end-pattern>";
		return ${EX_USAGE};
	fi;

	local page="$1";
	local begin="$2";
	local end="$3";

	cat \
	<(<$f sed -n '/^\.TH/,/^\.SH/{/^\.SH/!p}') \
	<(<$f sed -n "/$begin/,/$end/p") \
	|man -P cat -l - \
	|tail -n +2 \
	|head -n -1;
}


We could write something based on that.

> 
> Ultimately though, as you say, we’d probably need C comments to start and
> finish the code. That would fit in nicely with a Make-based approach: we
> could have one target to generate the “dependencies” (C files generated from
> man pages), then include that — that way we’d only update C files when the
> corresponding man page changes.

Yes, an intermediate file could be the .c files.  The C comment I don't 
like it so much, since it's noisy for the reader (although we could 
maybe use a C comment if it improves readability of the page).  Let's 
start with your idea of the groff comment, and if we see that C comments 
might help we could change.

> 
>> - Logs should go to stdout/stderr,
>>     as in any other standard Unix command,
>>     so just let the compiler print wherever it wants to print,
>>     and let the user redirect them to wherever the user wants to too.
>>
>>     I know there was the groff-warnings test.  But I don't like it.
>>     It's there because it predates me,
>>     and I yet have to understand how and if it works,
>>     and then I'll rewrite it properly.
> 
> And I was basing my code on the groff-warnings test ;-). From running a
> number of variants, what I liked about this is that it provides output
> (including the name of the file being processed) only when an error occurs.
> If we only rely on the regular output going to stderr, we also need to output
> something for every file being processed, which clutters the output IMO.

That's why on the seventh day god invented >/dev/null and went to sleep :p

I'm used to having a line per file for makefiles.  It goes a bit against 
the Unix thing of muting until something goes wrong, but compilation is 
usually slow enough to make people unhappy if there's no progress 
indicator.  A line per file is usually not too noisy.

> 
> But anyone serious about working on this could be expected to redirect the
> output to a file!
> 
> For follow-up revisions of the patches, should I target
> https://github.com/alejandro-colomar/man-pages instead of
> https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git?

Normally, I'd say follow kernel.org.  But now, there's too much of a 
difference between them, so you'll be better following my main branch, 
which has many changes that will some day be pushed to the kernel.org 
repo.  However, be warned that my branches aren't stable at all, and I 
may rebase them against Michael's master branch when it's updated (and 
branches other than my main branch are even more unstable to the point 
that I may remove them).  Just consider my main to be Debian's testing, 
and the others sid/experimental.  But kernel.org is oldoldstable at the 
moment ;)

Also, I've recently started serving my own git at home, and will some 
day remove the github repo, but for the moment you can still rely on it.

If you prefer, however, you could already use 
<git://www.alejandro-colomar.es/src/linux/man-pages.git>.  There, I've 
only uploaded my main branch for the moment.  There's no browsing yet, 
but I plan to add it.  For the moment it's just git:// (and SSH for me).

Regards,

Alex

-- 
Alejandro Colomar
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
