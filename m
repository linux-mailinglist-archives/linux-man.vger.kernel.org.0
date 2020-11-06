Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 43F072A98FA
	for <lists+linux-man@lfdr.de>; Fri,  6 Nov 2020 17:00:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726697AbgKFQAp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 6 Nov 2020 11:00:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58096 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726507AbgKFQAp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 6 Nov 2020 11:00:45 -0500
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E4B9CC0613CF
        for <linux-man@vger.kernel.org>; Fri,  6 Nov 2020 08:00:44 -0800 (PST)
Received: by mail-ed1-x535.google.com with SMTP id q3so1758499edr.12
        for <linux-man@vger.kernel.org>; Fri, 06 Nov 2020 08:00:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:subject:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=q55Kyg93vcDfuNxXTEdPGPgPHG+sWd+RXQYi9+foG74=;
        b=o+K9Tz7W28/b/Vq+mKS8ymIe0SFGhFk+x8PqcNK+6ZrLvyzM87Qf2/tRWVF7JUEJQk
         HWFqpI4yV85/ULlW6X4f5zcC9iXXYLTpEdN7HiBKCjQ2+JpL08UBzOXZZhId6YX+pysu
         okiUpIgtTXhcgs2X5tjl6Sp6nNAu5etGwQqyPbjoYll1y1/IP0J1BEuvRFD1lo8NAFsG
         pNjo6i5xarKNoJXEueiYiB1FX8v7jSPvH6AM8DbZL73ewhEc3pbKBINabbIhANNJz/24
         srgvmfU6YEc1JALT9weI8/gIG7uU3/kuYqyw0rVqSXQ1KS4FlCYukQNEUcRwr3t3vhYb
         iWLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=q55Kyg93vcDfuNxXTEdPGPgPHG+sWd+RXQYi9+foG74=;
        b=qIHhpDBnMWs9GIS8dOGmilP+n31bUhQOia/Tr6IjleJr3EPRHOrVvih9h0DaE0oZJS
         YozWkAtmi61Uc27zF4+QNa0KGGUISgMALvYfnYUdo/XsWVTrhz+cciIwWqSMFANLu6BU
         iYI1BQNw3nNCgeumJL3tRNwaYrESwMLRigBuJ/umxXqSw3/GBQ6JL/t8hej+wRT9TSlP
         ZKqPYkufhPG4uTkqGOS9iAErBqX36gDwz6y0SyBob1hO+QX6UaW0tMYN4DBhbGrxkPDY
         jB1QYdcYzUbGGWmK16Nvl35vnOox70+PpW+BHrv4rYGG8584wWL/8VsqE8DROQRpVEkE
         vg0A==
X-Gm-Message-State: AOAM533WxPVjWJV8NgDcWRialQudr/iH9dLdhadwxziG6OBhEFCk+T2j
        qmYaY9SIjkzHjJkb0D0s3+//0yj7Bxzpbg==
X-Google-Smtp-Source: ABdhPJytuP41gaw3EjsyzAYmyvzvfgUMWkzCdODm1eNtqRTe9+4Le/7NY5Q0y/5SLPbYdr4mvcZZ8A==
X-Received: by 2002:a50:8d48:: with SMTP id t8mr2760471edt.228.1604678443106;
        Fri, 06 Nov 2020 08:00:43 -0800 (PST)
Received: from ?IPv6:2001:a61:245a:d801:2e74:88ad:ef9:5218? ([2001:a61:245a:d801:2e74:88ad:ef9:5218])
        by smtp.gmail.com with ESMTPSA id l25sm1322720eds.65.2020.11.06.08.00.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Nov 2020 08:00:42 -0800 (PST)
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: Re: Format inline code
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     mtk.manpages@gmail.com,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org
References: <f10acb37-f929-c1fd-9827-c33aaf2955a1@gmail.com>
 <20201106093845.12897-1-colomar.6.4.3@gmail.com>
Message-ID: <3f041e44-c5c7-f17a-9e99-125eeb6ccb0c@gmail.com>
Date:   Fri, 6 Nov 2020 17:00:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201106093845.12897-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 11/6/20 10:38 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
> 
> Hi Michael,
> 
> This is not a patch.
> But I sent you a full page to better see what we're talking about.

Thanks. The "patch" was helpful.

> Here are, as subsections of EXAMPLES,
> A (.RS/.RE after first .TP paragraph) and
> B (.RS/.RE Always)
> from last email.
> 
> As for using .RS/.RE for single paragraphs,
> we could do as in C:
> {} for multi-line ifs/loops -> .RS/.RE for multiple paragraphs.

With the important caveat that {} plus indentation is a lot more
visually comprehensible than a .RS/.RE pair.

> just indent for single-line ifs/loops -> .IP for single paragraphs.

So., I think the choice is really down to something like
this:

* For .TP with single paragraph, no extra markup
* For .TP with multiple paragraphs/examples, I would probably prefer:

        .TP
        .RS
        [paragraphs started by .PP]
        .RE

rather than:

        .TP
        [first para]
        .RS
        [paragraphs started by .PP]
        .RE

But I still wonder, do we want to do this? The advantages:

* Consistent use of .PP everywhere.

The disadvantages:
* A bit more mark-up required. Perhaps the source is also
  a little harder to understand.
* What to do with existing pages? Do we convert them? Scripting
  will probably help, but still there's probably a decent
  amount of work required.
 
Thanks,

Michael

>  man7/test_man_format.7 | 132 +++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 132 insertions(+)
>  create mode 100644 man7/test_man_format.7
> 
> diff --git a/man7/test_man_format.7 b/man7/test_man_format.7
> new file mode 100644
> index 000000000..6fc7ae974
> --- /dev/null
> +++ b/man7/test_man_format.7
> @@ -0,0 +1,132 @@
> +.\" %%%LICENSE_START(VERBATIM)
> +.\" Do whatever the heck you want with it.
> +.\" %%%LICENSE_END
> +.\"
> +.\"
> +.TH TEST_MAN_FORMAT 7 2020-11-06 "Linux" "Linux Programmer's Manual"
> +.SH NAME
> +test_man_format \- playground page to test formatting
> +.SH DESCRIPTION
> +Please, modify the source of this page to see the output changes.
> +.SH EXAMPLES
> +.SS .RS/.RE after first .TP paragraph
> +.TP
> +HEADW
> +Lorem ipsum dolor sit amet, consectetur adipiscing elit,
> +sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
> +Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
> +nisi ut aliquip ex ea commodo consequat.
> +.RS
> +.PP
> +Augue interdum velit euismod in pellentesque.
> +Tristique senectus et netus et malesuada fames ac turpis egestas.
> +Gravida arcu ac tortor dignissim convallis.
> +.PP
> +.RS +4n
> +.EX
> +int
> +main(int argc, char *argv[])
> +{
> +     return 0;
> +}
> +.EE
> +.RE
> +.RE
> +.TP
> +HEADW
> +Lorem ipsum dolor sit amet, consectetur adipiscing elit,
> +sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
> +Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
> +nisi ut aliquip ex ea commodo consequat.
> +.RS
> +.PP
> +Augue interdum velit euismod in pellentesque.
> +Tristique senectus et netus et malesuada fames ac turpis egestas.
> +Gravida arcu ac tortor dignissim convallis.
> +.IP +4n
> +.EX
> +int
> +main(int argc, char *argv[])
> +{
> +     return 0;
> +}
> +.EE
> +.RE
> +.TP
> +HEADW
> +Lorem ipsum dolor sit amet, consectetur adipiscing elit,
> +sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
> +Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
> +nisi ut aliquip ex ea commodo consequat.
> +.IP
> +.\" We could use .RS+.PP/.RE here, but as an analogy to C's one-line if's,
> +.\" we could also use .IP for simplicity when there is only one
> +.\" paragraph affected.
> +Augue interdum velit euismod in pellentesque.
> +Tristique senectus et netus et malesuada fames ac turpis egestas.
> +Gravida arcu ac tortor dignissim convallis.
> +.TP
> +HEADW
> +Lorem ipsum dolor sit amet, consectetur adipiscing elit,
> +sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
> +Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
> +nisi ut aliquip ex ea commodo consequat.
> +.SS .RS/.RE Always
> +.TP
> +HEADW
> +.RS
> +Lorem ipsum dolor sit amet, consectetur adipiscing elit,
> +sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
> +Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
> +nisi ut aliquip ex ea commodo consequat.
> +.PP
> +Augue interdum velit euismod in pellentesque.
> +Tristique senectus et netus et malesuada fames ac turpis egestas.
> +Gravida arcu ac tortor dignissim convallis.
> +.PP
> +.RS +4n
> +.EX
> +int
> +main(int argc, char *argv[])
> +{
> +     return 0;
> +}
> +.EE
> +.RE
> +.RE
> +.TP
> +HEADW
> +.RS
> +Lorem ipsum dolor sit amet, consectetur adipiscing elit,
> +sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
> +Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
> +nisi ut aliquip ex ea commodo consequat.
> +.PP
> +Augue interdum velit euismod in pellentesque.
> +Tristique senectus et netus et malesuada fames ac turpis egestas.
> +Gravida arcu ac tortor dignissim convallis.
> +.IP 4
> +.EX
> +int
> +main(int argc, char *argv[])
> +{
> +     return 0;
> +}
> +.EE
> +.RE
> +.TP
> +HEADW
> +.RS
> +Lorem ipsum dolor sit amet, consectetur adipiscing elit,
> +sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
> +Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
> +nisi ut aliquip ex ea commodo consequat.
> +.RE
> +.SH SEE ALSO
> +.BR man (1),
> +.BR man2html (1),
> +.BR groff (7),
> +.BR groff_man (7),
> +.BR man (7),
> +.BR man-pages (7),
> +.BR mdoc (7)
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
