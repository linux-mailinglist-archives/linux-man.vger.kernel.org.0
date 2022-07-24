Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 83DC357F4C3
	for <lists+linux-man@lfdr.de>; Sun, 24 Jul 2022 13:09:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230197AbiGXLJ2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 24 Jul 2022 07:09:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229618AbiGXLJ2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 24 Jul 2022 07:09:28 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8848C17E10
        for <linux-man@vger.kernel.org>; Sun, 24 Jul 2022 04:09:26 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id a11so5170134wmq.3
        for <linux-man@vger.kernel.org>; Sun, 24 Jul 2022 04:09:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=70WJJ3VdF8jRbogbHHf6DZWFdmEbbQaHUOysfM13Xqo=;
        b=igux1TADsFiJrFsfB66D2nvtuXZUo708C09956FPatWFEth0UQd8+vuCGKKsBnXjul
         7GbuPq970sVBx18sYH+2MxOhZJhKBV/mb16aMClwbSbW1nau3oNJLkFp9ea+dJJu0oex
         PdNGrYaAldzfX/fCVOf0XL74QWmHRuZF6BpfrwjNKkGdOIteiVlcGGK44cgEONZ8nwWM
         3llPwQZ9W15hkv5K+vcvTwy9ap2uj/JP9fwNs9bzYwu3kKI81Cd1xN/suss7ywfHKReK
         GEixuJ3+Yqg4TuMAtZAQwDIwnUE5Y00xqaFGZfVpRv4dNhd6rbxd5kpC0vsNX8BGkULz
         x8Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=70WJJ3VdF8jRbogbHHf6DZWFdmEbbQaHUOysfM13Xqo=;
        b=c5GeUjXf/kZ5vy+Z6ue7URhNACX65ApnQDQ9tSDDGzyJFszWVkPYeh6Jkjbo5scI5L
         us5zF1OqdMFwLtPXWvJvvjgd8/r2G2E435yGDh2XQb20CYaQdTn2VOLhXVe1q4yWLBzO
         OVrnKOv7Yk0frzcvT8jZa6LKQXpYGWH5gy1bZHab/zPyF70u0RkGowiXtTREqznx6Yu9
         uYz/ELnFnRU348CBBlySor0JYBH7NwpmnT7X1P7uUlrei9sqXpEzU+fdnNpnSAfd5h+7
         X5JRkCToyIYreFuAr1eh0kW6GmaGOzhKl/D1aVnLvD51L4u4yb1WOEdjP1Up0VpOsMcE
         T+gw==
X-Gm-Message-State: AJIora/5HkGY+dMf6+d9wYjumSrWVwUjtd2cSe6ZEfGdFjOen+wIQBXV
        9y9kg3BGs0zXMPLIWzZ628wr8jaLn/4=
X-Google-Smtp-Source: AGRyM1v/O+hevDo/PKbT+Hsa55Pk6kN5GxLYQFkHdU5YI2OoSWeFk4P2m9dFwWDPRQgvbiMXUaJtDg==
X-Received: by 2002:a05:600c:3641:b0:3a2:df38:7ec8 with SMTP id y1-20020a05600c364100b003a2df387ec8mr5243049wmq.34.1658660965057;
        Sun, 24 Jul 2022 04:09:25 -0700 (PDT)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id t3-20020a1c4603000000b003a2d87aea57sm14652975wma.10.2022.07.24.04.09.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 Jul 2022 04:09:24 -0700 (PDT)
Message-ID: <ff01b98c-563f-dfd3-4996-65ff5e5f44ce@gmail.com>
Date:   Sun, 24 Jul 2022 13:09:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: Linux man-pages Makefile portability
Content-Language: en-US
To:     Ingo Schwarze <schwarze@usta.de>,
        Colin Watson <cjwatson@debian.org>
Cc:     linux-man@vger.kernel.org, g.branden.robinson@gmail.com,
        man-db-devel@nongnu.org
References: <d8646de0-e4f0-3d4b-e763-92355162a405@gmail.com>
 <Yq+P39bpy2QEeaSd@asta-kit.de>
 <8b9daa0e-6f08-dd55-5772-51f5052ed8bb@gmail.com>
 <YrB66rgFZqryrmpt@asta-kit.de>
 <6e294373-2661-286c-09c4-e67cd84103d7@gmail.com>
 <fdde7402-5e69-b6ff-60fc-74ad9c9054f1@gmail.com>
 <YtrXbDo5NVxNT/cb@asta-kit.de>
 <80553a14-8f39-d4ad-def3-35d6551a31f3@gmail.com>
 <Ytw65nGl1qouSU5R@asta-kit.de>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <Ytw65nGl1qouSU5R@asta-kit.de>
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

[TO += Colin; CC += man-dv-devel@;
there's a bug in man(1)'s autocomplete]

Hi Ingo (and Colin),

On 7/23/22 20:16, Ingo Schwarze wrote:
> [...]
>>> The system making the heaviest use of section suffixes i'm aware of
>>> is Solaris:
>>>
>>>     > uname -a
>>>     SunOS unstable11s 5.11 11.3 sun4u sparc SUNW,SPARC-Enterprise
>>>     > ls /usr/share/man/
>>>     entities      man3dat       man3mvec      man3sysevent    man4b
>>>     fr            man3dax       man3nsl       man3tcl         man5
>>>     fr.ISO8859-1  man3devid     man3nvpair    man3tecla       man5oldap
>>>     fr.UTF-8      man3devinfo   man3oldap     man3tiff        man5openssl
>>>     it            man3dlpi      man3openssl   man3tsol        man7
>>>     it.ISO8859-1  man3dns_sd    man3p         man3uuid        man7d
>>>     it.UTF-8      man3elf       man3pam       man3volmgt      man7fs
>>>     ja_JP.UTF-8   man3exacct    man3pcap      man3x           man7i
>>>     man-index     man3ext       man3perl      man3x11         man7ipp
>>>     man.cf        man3f         man3pi        man3xau         man7m
>>>     man1          man3fcoe      man3picl      man3xaw         man7openssl
>>>     man1b         man3fm        man3picltree  man3xcb         man7p
>>>     man1c         man3fstyp     man3plot      man3xcomposite  man8
>>>     man1m         man3gen       man3pool      man3xcurses     man8oldap
>>>     man1oldap     man3gss       man3proc      man3xcursor     man8s
>>>     man1openssl   man3hbaapi    man3project   man3xevie       man9
>>>     man1s         man3head      man3rad       man3xext        man9e
>>>     man1t         man3iscsit    man3reparse   man3xi          man9f
>>>     man2          man3kstat     man3resolv    man3xinerama    man9p
>>>     man3          man3kvm       man3rpc       man3xmu         man9s
>>>     man3archive   man3layout    man3sasl      man3xnet        pl
>>>     man3c         man3ldap      man3scf       man3xrandr      pl.ISO8859-2
>>>     man3c_db      man3lgrp      man3sec       man3xss         pl.UTF-8
>>>     man3cc4       man3lib       man3sip       man3xt          ru.KOI8-R
>>>     man3cfgadm    man3m         man3slp       man3xtsol       ru.UTF-8
>>>     man3cmi       man3mail      man3snmp      man3xtst        zh_CN.UTF-8
>>>     man3commputil man3malloc    man3socket    man3xv
>>>     man3contract  man3mlib      man3srpt      man3xxf86vm
>>>     man3cpc       man3mp        man3ssh2      man3zonestat
>>>     man3curses    man3mpapi     man3stmf      man4
> 
>> Wow!
>> Although it's interesting to know that this list exists:
>> I can check it when trying to come up with a section name.
> 
> I would somewhat advise against that.  While i do think that consistency
> is good *if* you decide to use a section suffix, i'd still recommend
> to use section suffixes sparingly, at least in operating systems
> that use them sparingly now.  They provide relatively little value,
> make the top directory of the manpath larger and less readable,

I don't think there's any benefit of keeping $(mandir) contain only the 
standard man? subdirs.  Everybody already knows about them, so nobody 
needs to read the output of ls(1) in such a system.  On the other hand, 
reading the output of ls(1) in a system with free use of subsections 
provides useful information.  If one needs to filter a bit, standard 
Unix tools come into play.

> and they are in particular *not* well suited to moving stuff out of
> the non-suffix directories that users may not wish to see by default.
> For example, suppose you created a directory man3py to document
> python library functions.  As explained above, these pages will *still*
> show up even when people type "man 3" or "man 3p" rather than "man 3py".

But the good thing is they can be put the last in the list of pages to 
be shown by man(1), so they won't hide another page.

In my Debian system, man(1) shows:

  1 n l 8 3 0 2 3posix 3pm 3perl 3am 5 4 9 6 7

3type and 3const could go at the end of that, to avoid hiding pages in 
section 7.

While testing some related stuff to add to my arguments, I just 
understood of a bug that I knew existed but never thought too much about 
it, and related to one that Branden reported to me recently:

man 3 foo[TAB]

autocomplete is smart enough to only search pages in section 3 (I don't 
know if it finds pages in subsections from 3; I guess it does).

man [-s]3type foo[TAB]

autocomplete should search in 3type, but it doesn't quite work.
However, I noticed there's a difference in behavior between 3posix and 
3type (3posix only exists as a suffix, but pages live in man3; 3type is 
a correct subsection, using man3type and .3type), so maybe my work can 
help fix that bug in the autocomplete scripts.


I know you don't use autocomplete for those things, but it comes in 
handy to me :)

> 
>> I guess Illumos shares this subsectioning scheme.
> 
> More or less, according to
> https://src.illumos.org/source/xref/illumos-gate/usr/src/man/ -
> it's not identical though.
> 
>> Do you know from the top of your head if any of those is dedicated to
>> constants such as NULL, PATH_MAX, or BUFSIZ?
> 
> I doubt it, for two reasons.  On the one hand, my impression is that
> at least in Solaris, section suffixes are not so much used for
> logical subdivision of sections but more according to provenance;
> for example, man1b is for BSD compat features, man1s is for commands
> specific to SunOS, man3c is for libc, man3ext is for an "extended
> library", man3p is for the Sun performance library (available for
> both C and FORTRAN 95), and so on.
> 
> On the other hand, naming manual pages after symbolic constants
> or after type names is so unsual that i doubt any scheme exists
> for that.

Actually, man3type exists in several systems.  Solaris has it (I guess 
Illumos too), and I've seen it in other systems (something from Oracle, 
IIRC).  libbsd(7) also documents types, although they put them in the 
global namespace, which I think you and I agree that it's not quite 
right because of "documentation about a non-function in man3".

>  The most widely used way to look up manual pages
> by the names of symbolic constants or type names probably is
> using macro keys as implemented in the mandoc version of apropos(1).
> That is used by most FreeBSD, OpenBSD, Alpine Linux, and Void Linux.
> I admit that doesn't qualify as "widely used", but "most widely used"
> is probably true all the same.  ;-)

That leaves out man(7).  And types tend to be not very well documented 
if they are documented as part of a function page.  And they also tend 
to be documented several times (out of sync, of course).


Cheers,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
