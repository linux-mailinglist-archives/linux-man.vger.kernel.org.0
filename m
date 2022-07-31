Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 60A59585EE9
	for <lists+linux-man@lfdr.de>; Sun, 31 Jul 2022 14:38:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236967AbiGaMig (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 31 Jul 2022 08:38:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47254 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236985AbiGaMif (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 31 Jul 2022 08:38:35 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35BEEE01F
        for <linux-man@vger.kernel.org>; Sun, 31 Jul 2022 05:38:33 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id v5so4573225wmj.0
        for <linux-man@vger.kernel.org>; Sun, 31 Jul 2022 05:38:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=w8cFldCUyRMsj9gPiqbF8G3OmTCw3Ypjsa8xEzsWrcw=;
        b=BYLQa7xLGSmsGBBbsvUOvzT/bLSbSVdeyVM+xpFbE+tT0pb5asFb+QZyTuEwe+f0+U
         oKlQSW+20t1g1mSjP1cnqw/Qe2BrBjF+Erwemz7a/o/q0DuSJED5ZPQQKpYqeiugbmsY
         pUqb8W2nkLsWUkartgXN1zQZBeVcNvG7wIIbHM/EiwA/4CXAQbiVhQTlmL/d3ATavJzn
         2BqSzNLWTVUHt4Kofl23Z8JqD6+D8OuglCMS8EMTw+1uxPyE6EvusaquaXWPbbvgyhFk
         XgfJZxt/rRxvC2FcS7yQI/yHUzFbbL3CeQtYfNsjijFEecqBb9znGq4f2hg4QdPvKWrl
         ekWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=w8cFldCUyRMsj9gPiqbF8G3OmTCw3Ypjsa8xEzsWrcw=;
        b=CxfaL9eiWpIIgL8te26WhG/jsuI72ZujRggUeKv6ssogXpdiEUUvMdazdPFyo10XsB
         w3hzbtKjaShQ59GwEqRhMCTvDjYK05kwlsBkwSvbjQ6EZe893tP6lT7vjKob4TE529I5
         iqfAGkiHSqjplByQ2WosbhULt1AdK2o4tWNIoml7YbqnLnu544VqQezw/255a8u05C9s
         zXBFCekdqAgHeG/+AIfgwLSdCCLAIQGuo3yGAs6z0yozUZACFYcu9IqFKqc/Ht5+EMJI
         znUeI/TxnJirbrUOxlXYmjYrD7Zbgk+bSIrXKES0YNnJCEK4BRtFdy7KKvdS98Wuilb8
         8C9Q==
X-Gm-Message-State: AJIora9h3DSb5jLmew+rVfd9PfPGIs3GqFqST8RcFEFdAMbE/8CSoXfH
        3mxPDHBlF7dG77hhJz0hn7Q7ZoSmJTY=
X-Google-Smtp-Source: AGRyM1vhayBd7zPzNdQMsOtiReJEsire1x4wZwTfuYx0CgQyN2yR2j0pj9ELrG1PPIz2vTteTg1Rdw==
X-Received: by 2002:a05:600c:5024:b0:3a3:4b67:b238 with SMTP id n36-20020a05600c502400b003a34b67b238mr8092692wmr.97.1659271111475;
        Sun, 31 Jul 2022 05:38:31 -0700 (PDT)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id f18-20020a05600c4e9200b003a320b6d5eesm13591361wmq.15.2022.07.31.05.38.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 31 Jul 2022 05:38:31 -0700 (PDT)
Message-ID: <ca864af1-e4d1-8042-4f50-1633b301a8be@gmail.com>
Date:   Sun, 31 Jul 2022 14:38:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: .so colophon.man
Content-Language: en-US
To:     Ingo Schwarze <schwarze@usta.de>
Cc:     g.branden.robinson@gmail.com, groff@gnu.org,
        linux-man@vger.kernel.org
References: <f179ea51-9b03-3e18-2377-0a39a7647267@gmail.com>
 <YuZzh7w4d5y9b/Jf@asta-kit.de>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <YuZzh7w4d5y9b/Jf@asta-kit.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Ingo,

On 7/31/22 14:20, Ingo Schwarze wrote:
> Hi Alejandro,
> 
> Alejandro Colomar wrote on Sat, Jul 30, 2022 at 10:45:42PM +0200:
> 
>> I'm wondering if it wouldn't be easier to have a constant '.so
>> man-pages-colophon.man' line at the end of all of the Linux man-pages,
>> instead of appending a COLOPHON at every release.  The
>> man-pages-colophon.man file would be shiped together with the pages,
>> and it would be created by `make dist`.
> 
> I seem to very dimly recall that once in the past, i encountered a
> tool that assumed each manual page either consists of a single .so
> line, or does not contain .so at all.

I myself wrote tools (the Makefile I think assumes that) that assume 
files containing .so are link pages.  Maybe you recall my code.

I [cw]ould fix that, of course.

[...]
> Now the bug is that when finding a .so link, this version treats
> the .so link with priority, assuming getent(1) is just a
> symbolic link for "man-pages-colophon.man".  So it looks up
> its own entry for man-pages-colophon.man in its own database,
> intending to add the information found in getent.1 to that
> entry.  When a file contains nothing but .so, that of course
> makes sense because you don't want two database entries for the
> same manual page, even if that page documents more than of
> function or utility.  But in this case, it realizes there is
> no database entry for "man-pages-colophon.man" - no wonder because
> it already decided earlier that's not a manual page.
> 
> And here is the bug: not finding "man-pages-colophon.man"
> in the manual page database, it ends up setting
> 
>    meta->macroset = MACROSET_NONE;
> 
> because it wrongly thinks this probably is merely a dead link.
> That results in completely ignoring the content of the manual
> page (even though there was no problem parsing it whatsoever)
> and instead only using the information from the file name
> as indicated by these three messages:
> 
>    No one-line description, using filename "getent"
>    Name missing in NAME section
>    Adding to database
> 
> (The reason for adding the file to the database anyway is that
> even if it is a dead link, adding it to the database makes sense
> such that the user realizes the system *intends* to supply a
> manual page for the name but only provides a dead link, such
> that the user can report the dead link to the package maintainer
> rather than thinking the software author failed to write any
> manual page at all and never intended to write one.
> 
> Of course i need to fix this bug in makewhatis(8).

Okay.

[...]
>> Do you think it would be a good idea?
> 
> Not really.
> 
> First, putting this information into every single manual page
> IMHO is a bad idea.  Such information ought to be part of
> packaging information and not displayed with each and every
> page.  If users want to find the version of some package,
> they should use commands like
> 
>    # Debian
>     $ dpkg-query -S bunzip2.1
>    bzip2: /usr/share/man/man1/bunzip2.1.gz
>     $ dpkg-query -s bzip2
>    [...]
>    Version: 1.0.6-9.2~deb10u1
> 
> or
> 
>    # OpenBSD
>     $ pkg_locate bunzip2.1
>    bzip2-1.0.8p0:archivers/bzip2:/usr/local/man/man1/bunzip2.1
>     $ grep HOMEPAGE /usr/ports/archivers/bzip2/Makefile
>    HOMEPAGE=       https://sourceware.org/bzip2/

I agree with this.  The version information is better served by dpkg, 
and the "reporting bugs" information is better served by apt-cache.  In 
general, distributors provide that info, and providing it ourselves 
hardcoded in the page is multiplicating the information.

I guess it was good for publicity of the project back when mtk took 
maintainership of it, but I think there's no such need anymore, and I 
prefer simplicity and conventions.

I think I'll remove the COLOPHON.  One less problem.

> 
> Repeating that informtion in every manual page is embarassingly
> verbose; users normally don't want to see that.
> 
> If you do want the COLOPHON nonetheless, using .so is clearly
> more fragile than including it outright.
> 
> If you do want to use .so nonetheless, putting the included file
> into the root of the manpath is ugly; imagine the mess if more
> projects did that, in particular if you also start creating more
> section suffixes.  If the file man-pages-colophon.man belongs
> anywhere, then it belongs into man0/ - that's just what AT&T
> originally used that directory for: front matter, support files,
> scripts, and snippets.
> 
> You might perhaps argue that you want to COLOPHON included with every
> page such that if anybony tears out a single manual page from the
> package and reuses it somewhere else, that information is retained.
> But *if* that is your argument, using .so defeats that particular
> purpose, too.
> 
>> I was making the COLOPHON be part of the `make dist` command (to avoid
>> having to generate it separately), and this would simplify things a lot.
>> Not having to append to files controlled by make(1) would avoid having
>> to rerun many recipes.
> 
> Your choice what matters more: convenience for upstream package
> maintainers or robustness for users.
> 
> For downstream package maintainers, having to handle files
> included by manual pages is also an unusual task that might
> confuse some.  Besides, a few may have get used to how some
> POSIX manual page packages are abusing man0/ for the wrong
> purpose and may consequently feel even more confused.
> 
> Yours,
>    Ingo

Agreed.

Cheers,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
