Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A7E53169A3A
	for <lists+linux-man@lfdr.de>; Sun, 23 Feb 2020 22:23:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727149AbgBWVXu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 23 Feb 2020 16:23:50 -0500
Received: from mail-wr1-f65.google.com ([209.85.221.65]:42488 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727100AbgBWVXu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 23 Feb 2020 16:23:50 -0500
Received: by mail-wr1-f65.google.com with SMTP id p18so4424667wre.9
        for <linux-man@vger.kernel.org>; Sun, 23 Feb 2020 13:23:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=1Usvtr8oZKgqh1dkFXnJ6wb7uSewjCS3keli6MTCA2o=;
        b=iERqCO/+Dek988qFyjhBAbw0Dv9dBUcjqtuJBEotKRMjQ6NoiWJcuCFpNI6Z2IL2Pw
         oXKM9mc+CtPDYPGGjFjGv1Ijcfp8J9YBXZ1hHRIlA5REnPkqU0lEmYZpkxSReis3b4ws
         G+6xSrjh407Cr5KM1RuD7lTVvyeZGA5Wm9+JS1hJHdsR3JaBVlfY64atzMThw10FST2J
         4iYUITvB5K+gfzkhvtluZsz09dRTQFlb6zHz83SIiOG5f+mmXcMvx6HhhNoBReQudX63
         HeBAD+RXvaFP05cEz2aDQ6fkebVd/scS3V40Og+O8cJdL7t/WKyZOAsPnh758ScZXdWL
         EQgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=1Usvtr8oZKgqh1dkFXnJ6wb7uSewjCS3keli6MTCA2o=;
        b=lMiMNSMg7bfQZAIlwewt3BHF4/DStLN7adL/8O8zsEIayVzagB8i8TVYxcb9RAXTHB
         aide255pl6IXykYFs6MVRFysTVODyqxFv3o9pYB80oMCCzk4/BAS4iXJdI4wGOnucDk/
         RCOWXV8akqcOHK6JSR1rJ8MRE9eyB6HTzx8SbTGCCJ47H4tbKY+V2jS4JGnv/VhzIkHd
         wXffHuVHGQQPT4W4++E85IePPKYYZAo2rqFlrCf+FI+o361ZixKGTAiWSWcUxS4TCfqO
         cbJ99Xzmi9niBE5d7RyRh6RIgqgYruDHItSRKJP01RKq1oh1/93rQS7G88HVsYyDtHvR
         OwwA==
X-Gm-Message-State: APjAAAWeXyyQskEvxGMeDRhBPNJZePMWqguFgy3lMVj+kttyTRV4NkBO
        M31DBE5sDkvzq2r7b2hacoDVkPgE
X-Google-Smtp-Source: APXvYqz1gLhsc2+fG3QM9rF3jL5BvWuhUiK9m76DD4bJ77Y/58wxMu+BFq0Vf+UCQTy/PEobMLqKLg==
X-Received: by 2002:a5d:4a04:: with SMTP id m4mr63056991wrq.104.1582493027393;
        Sun, 23 Feb 2020 13:23:47 -0800 (PST)
Received: from ?IPv6:2001:a61:3ab0:601:eabf:519f:11af:545d? ([2001:a61:3ab0:601:eabf:519f:11af:545d])
        by smtp.gmail.com with ESMTPSA id a9sm15037671wmm.15.2020.02.23.13.23.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Feb 2020 13:23:46 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] nl_langinfo.3: document era-related locale elements
To:     Eugene Syromyatnikov <evgsyr@gmail.com>
References: <cover.1581693624.git.evgsyr@gmail.com>
 <75355e111c4f5bb5f2f0034b0aa02eae71b9cc0b.1581693625.git.evgsyr@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <b859154b-a6b3-119c-1303-923f6384b51d@gmail.com>
Date:   Sun, 23 Feb 2020 22:23:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <75355e111c4f5bb5f2f0034b0aa02eae71b9cc0b.1581693625.git.evgsyr@gmail.com>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Eugene,

On 2/14/20 4:28 PM, Eugene Syromyatnikov wrote:
> Information is mostly taken from POSIX[1], GNU C Library documentation[2],
> glibc strftime implementation[3], and Japanese locale definition[4].

Thanks. Patch applied.

Cheers,

Michael

 
> [1] https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/V1_chap07.html#tag_07_03_05_02
> [2] https://www.gnu.org/software/libc/manual/html_node/The-Elegant-and-Fast-Way.html
> [3] https://sourceware.org/git/?p=glibc.git;a=blob;f=time/strftime_l.c
> [4] https://sourceware.org/git/?p=glibc.git;a=blob;f=localedata/locales/ja_JP
> 
> * man3/nl_langinfo.3 (.SH DESCRIPTION): Add information about ERA,
> ERA_D_T_FMT, ERA_D_FMT, and ERA_T_FMT locale elements.
> 
> Signed-off-by: Eugene Syromyatnikov <evgsyr@gmail.com>
> ---
>  man3/nl_langinfo.3 | 84 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 84 insertions(+)
> 
> diff --git a/man3/nl_langinfo.3 b/man3/nl_langinfo.3
> index e16b094..3c4541a 100644
> --- a/man3/nl_langinfo.3
> +++ b/man3/nl_langinfo.3
> @@ -119,6 +119,90 @@ to represent a time in a.m. or p.m. notation a locale-specific way
>  .RB ( %r
>  conversion specification).
>  .TP
> +.BR ERA \ (LC_TIME)
> +Return era description, that contains information how years are counted
> +and displayed for each era in a locale.
> +Each era description segment shall have the format:
> +.RS
> +.IP
> +.IR direction : offset : start_date : end_date : era_name : era_format
> +.RE
> +.IP
> +according to the definitions below:
> +.RS
> +.TP 12
> +.I direction
> +Either a
> +.RB \[dq] + "\[dq] or a \[dq]" - \[dq]
> +character.
> +The
> +.RB \[dq] + \[dq]
> +means that years increase from the
> +.I start_date
> +towards the
> +.IR end_date ,
> +.RB \[dq] - \[dq]
> +means the opposite.
> +.TP
> +.I offset
> +The epoch year of the
> +.IR start_date .
> +.TP
> +.I start_date
> +A date in the form
> +.IR yyyy / mm / dd ,
> +where
> +.IR yyyy ", " mm ", and " dd
> +are the year, month, and day numbers respectively of the start of the era.
> +.TP
> +.I end_date
> +The ending date of the era, in the same format as the
> +.IR start_date ,
> +or one of the two special values
> +.RB \[dq] -* \[dq]
> +(minus infinity) or
> +.RB \[dq] +* \[dq]
> +(plus infinity).
> +.TP
> +.I era_name
> +The name of the era, corresponding to the
> +.B %EC
> +.BR strftime (3)
> +conversion specification.
> +.TP
> +.I era_format
> +The format of the year in the era, corresponding to the
> +.B %EY
> +.BR strftime (3)
> +conversion specification.
> +.RE
> +.IP
> +Era description segments are separated by semicolons.
> +Most locales do not define this value.
> +Examples of locales that do define this value are the Japanese and the Thai
> +locales.
> +.TP
> +.BR ERA_D_T_FMT \ (LC_TIME)
> +Return a string that can be used as a format string for
> +.BR strftime (3)
> +for alternative representation of time and date in a locale-specific way
> +.RB ( %Ec
> +conversion specification).
> +.TP
> +.BR ERA_D_FMT \ (LC_TIME)
> +Return a string that can be used as a format string for
> +.BR strftime (3)
> +for alternative representation of a date in a locale-specific way
> +.RB ( %Ex
> +conversion specification).
> +.TP
> +.BR ERA_T_FMT \ (LC_TIME)
> +Return a string that can be used as a format string for
> +.BR strftime (3)
> +for alternative representation of a time in a locale-specific way
> +.RB ( %EX
> +conversion specification).
> +.TP
>  .BR DAY_ "{1\(en7} (LC_TIME)"
>  Return name of the \fIn\fP-th day of the week. [Warning: this follows
>  the US convention DAY_1 = Sunday, not the international convention
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
