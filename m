Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 08C962B1820
	for <lists+linux-man@lfdr.de>; Fri, 13 Nov 2020 10:21:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726176AbgKMJVs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 13 Nov 2020 04:21:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38304 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726352AbgKMJVp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 13 Nov 2020 04:21:45 -0500
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0ACEC0613D1
        for <linux-man@vger.kernel.org>; Fri, 13 Nov 2020 01:21:44 -0800 (PST)
Received: by mail-wm1-x341.google.com with SMTP id s13so7735037wmh.4
        for <linux-man@vger.kernel.org>; Fri, 13 Nov 2020 01:21:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ujRggEF4DIDMMTHM0DPMBpGFGlHLiWELuJygn+URERI=;
        b=KSMpLmIMhGnoCUC4jqu63NpC4CbkL78aCM58tGXbapxE+7YdtrtUHjmHzy0DY0o//l
         QQkZuJB+cmCHs36FHUrQt6ZwYT2Y6IhEauhEi8ndqEsu44IXlLC/4eWq1HTdlQgS44E6
         pdKcL7iYfcaKDWJe5SioNk9fCzQE8OMotTaqTCnKC4QaZ356K/gnkYpN0lb94pVZ5Rzr
         T7bpxH2Wgs6s/Y2dFVu2JJhmFMbFnwVpMR53vsCTg3AyvtPR+D5zv6Cp/m4cw8M+Kr8i
         SlBN/et6yVdoGJPamhPwK55uD/7rfYz8bfAkYw6UqFQrX/RW3HjouVtlsGm6b6udN+Ss
         Pvvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ujRggEF4DIDMMTHM0DPMBpGFGlHLiWELuJygn+URERI=;
        b=PUzOV0rHMDW62PDXJoVul4TRAp/hS82w5qbhBzE8ySVKZphw6XtP8cOXRW7j9rEF1p
         UVNvDNNzxi2ng2Gh6peIUARfAOwp9IJ8FciRVxE+Jmi9bZuKBNsu5wPNFNKREA6siWYq
         cdOPiFmZGwIR6J6RAZVU8fu2iF2naYH1TlJry7jjGPZ0UA5V8Fbj7Ts8VXm67wigedf4
         9o2t12Z4DaljBptEu314Bku2Dz1hpPacWb6rc69wPkJQvLai1Q7UQhVe5zOYj6ipF41f
         tzAwyiy8bBLwu0FiBrQKM9o3XmyPStzSX+ltMwAaV36GTq8/1+wsoRGqp/57zUWaE8Kh
         oDzA==
X-Gm-Message-State: AOAM533m1rvScFJU0E6qisxLsqFoe3kYAyv4ySqlnFAcdssufRdqNJ5O
        QVBqxrfmD3t8MSlRaizcLQ7ev0slKGc=
X-Google-Smtp-Source: ABdhPJxfEvI7EXvUGGDTKH1HHmLJz0Qs0yepyIVOIJYzH8TmVSXDMfIVaeoZ1WjHgZVbIv7XJJKGQg==
X-Received: by 2002:a1c:96cb:: with SMTP id y194mr1513444wmd.62.1605259303462;
        Fri, 13 Nov 2020 01:21:43 -0800 (PST)
Received: from ?IPv6:2001:a61:24b3:de01:7310:e730:497d:ea6a? ([2001:a61:24b3:de01:7310:e730:497d:ea6a])
        by smtp.gmail.com with ESMTPSA id f16sm10558057wrp.66.2020.11.13.01.21.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Nov 2020 01:21:42 -0800 (PST)
Cc:     mtk.manpages@gmail.com,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org, colomar.6.4.3@gmail.com
Subject: Re: [RFC v1] perf_event_open.2: srcfix + ffix
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <fb71a481-45a1-7511-97cf-bd2017562a16@gmail.com>
 <20201112225528.99397-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <84882898-6208-73cc-cb52-1e1663d025e1@gmail.com>
Date:   Fri, 13 Nov 2020 10:21:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201112225528.99397-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi ALex,

On 11/12/20 11:55 PM, Alejandro Colomar wrote:
> Changes:
> 
> - Use .RS/.RE combined with .PP, instead of .IP.
> 	This adds markup lines,
> 	but allows for more generic constructs that don't depend
> 	on the context.
> 	In case of .TP, add .RS right after the paragraph tag.
> 	Exception: Single-paragraph .TP entries don't use .RS/.RE
> - Separate .B or .I entries on separate lines for each.
> - Fix .BR or .IR where 'R' is not needed.
> - Use the following markup for code between paragraphs:
> 	.PP	((unless .IP is _really_ needed))
> 	.in +4n
> 	.EX
> 	//code
> 	.EE
> 	.in
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
> 
> Hi Michael,
> 
> This is a sample of how I would change the code for indenting.
> I also added some srcfixes that probably don't deserve a separate patch,
> such as splitting lines or removing unnecessary "" or [.IR] -> [.I].

(It would have been simpler for the discussion if those were 
omitted from the current patch.)

> 
> There are 29 net line additions due to splitting lines
> and indenting code with markup instead of hardcoding.
> 
> So it means the remaining 44 net additions are due to [.RS/.RE].
> Not too many considering the ~2800 lines involved.
> 
> Still between 1% and 2% of net additions.
> 
> I've compared side to side the man page from release 5.09,
> and the page after this patch,
> and the changes are minor
> (just a forced new line for .TP entries with multiple paragraphs,
> due to [.RS], as expected).
> 
> What do you think about these changes?

I think I'm *still* not really convinced. See below.

>  man2/perf_event_open.2 | 463 ++++++++++++++++++++++++-----------------
>  1 file changed, 268 insertions(+), 195 deletions(-)
> 
> diff --git a/man2/perf_event_open.2 b/man2/perf_event_open.2
> index eb7ab29ea..b99c9e30d 100644
> --- a/man2/perf_event_open.2
> +++ b/man2/perf_event_open.2

[...]

> @@ -1800,12 +1854,17 @@ by new.
>  In overwrite mode, it might not be possible to infer where the
>  new data began, and it is the consumer's job to disable
>  measurement while reading to avoid possible data races.
> -.IP
> +.PP
>  The
> -.IR aux_head " and " aux_tail
> +.I aux_head
> +and
> +.I aux_tail
>  ring buffer pointers have the same behavior and ordering
>  rules as the previous described
> -.IR data_head " and " data_tail .
> +.I data_head
> +and
> +.IR data_tail .
> +.RE
>  .PP
>  The following 2^n ring-buffer pages have the layout described below.
>  .PP
> @@ -1845,15 +1904,15 @@ the fields with shorter descriptions are presented first.
>  This indicates the size of the record.
>  .TP
>  .I misc
> +.RS
>  The
>  .I misc
>  field contains additional information about the sample.

This renders as:

       size   This indicates the size of the record.

       misc
              The  misc  field  contains additional information about the
              sample.

              The CPU mode can be determined from this value  by  masking
              with  PERF_RECORD_MISC_CPUMODE_MASK  and looking for one of
              the following (note these are not bit masks, only  one  can
              be set at a time):

This is anomalous. We have a newline after "misc", but not after "size",
because of the proposal that we add ".RS/.RE" only in .TP blocks
with multiple paragraphs.

Whats the alternative? I guess we could *always* use .RS/.RE even inside
.TP blocks that have only one paragraph, but:

* That's even more markup
* We end up with even more white space in the rendered output.
* We almost certainly *don't* want to do this for .TP lists
  that consist of multiple items where each list item is a 
  rendered paragraph that is juust a line or two. [1]

[...]

At this point, I feel we are devoting a lot of energy to solving a
problem that has no really good solution. The status quo is not ideal,
but so far I'm not convinced that there's any compellingly better
alternative. And moving to one of those alternatives will require
changes in a lot of pages. I'm in favor of staying with the status quo.

Thanks,

Michael

[1]
I mean, I think this:

[[
HEAD   item text

HEAD   item text

HEAD   item text
]]

is preferable to this:

[[
HEAD
       item text

HEAD
       item text

HEAD
       item text

HEAD
       item text

]]


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
