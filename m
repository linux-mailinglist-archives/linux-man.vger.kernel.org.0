Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0E5691B0461
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 10:28:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725896AbgDTI2o (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 04:28:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50106 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725773AbgDTI2o (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 04:28:44 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8577C061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 01:28:43 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id x18so11024549wrq.2
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 01:28:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=YvH7z0IhCdIaIHmqi8qvPztnYCKCdXAM+cpy3LYnGJk=;
        b=ImhdMOt4iRRo8CCs//jIpfNWCq8zrh/tsu4IDMU9QiAVFw4KK0zLpWmwc4ej2QgRFH
         7H/zfSuSgd+Xt4IZPsidMfV1VEWCL7W7CRFycJS5HdSWe1TTlThOZor0ooimK5xjVktP
         TJsBzt3fbAQDgSek59HTO0+KGkXDXvg5OP78oTmYoWvzr/h0IvfQyJ+V/mAsUGnYevu4
         Gge1PpVyTGfNuGwBNvx6QpHWE3UbL/Hu/44iZyOAsllAQtyM5GgZwGA3L06e603N8iEY
         ThAhw+PBXVppe/IcXlGLf+dQ3lmOf7ZrbKdxZFavP/vc6jv6WcYzJA+UJVts6etBJE2V
         v1Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=YvH7z0IhCdIaIHmqi8qvPztnYCKCdXAM+cpy3LYnGJk=;
        b=c8mvGQGh+Y+amKaw+b3F1yFwLv4wyARsv8vRpYTKy4tb6Tn7hYSkDk2aYBJH+xrf7M
         A7oTyjWilJAW5Mze0MzHxQDdOIwZX8Zr18xNpd1HC6W1Cjj2epEy3qBT9p8i5VNFO3fu
         fezOwq340OiXadaQWHORIWRq+r5OOCS95xnuRnXWF1oMFXLi817ucyEHUGF6hTNk6iln
         sgPyw8OMfrbrzZeU+dUfYWmPETgeiEjnCJznunmi9zM0L7/TrMdZxd9FpSsFVddgBEYk
         XLAlAF7sohCvsHjn3FTAf0yHADq854XBsCgUyM37wZET83ryMYbXyGFhPyYF2xBNCrPr
         bZ/A==
X-Gm-Message-State: AGi0PuZEOuybGMet821IW+LdPQFTkMKhyqfwYXAop81Z0adooObEnA0X
        ACQq1IzPD+G83+h2yBgClVnC/eTJ
X-Google-Smtp-Source: APiQypK7Scf/qI46Ai0LPn6gPz7enlwvfsCoWsQblWoN1A8vIdmTdOxYsOfRelsbSdfDibdkA7QAdw==
X-Received: by 2002:adf:f1cd:: with SMTP id z13mr18663403wro.166.1587371322330;
        Mon, 20 Apr 2020 01:28:42 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id x6sm207015wrg.58.2020.04.20.01.28.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 01:28:41 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: signal(7): Wrong constants?
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064824.GA31933@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <0f9c7479-73f3-9913-8e3f-ca726d24c3bb@gmail.com>
Date:   Mon, 20 Apr 2020 10:28:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064824.GA31933@Debian-50-lenny-64-minimal>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 4/19/20 8:48 AM, Helge Kreutzmann wrote:
> Dear manpages maintainers.
> the manpage-l10n project maintains a large number of translations of
> man pages both from a large variety of sources (including manpages) as
> well for a large variety of target languages.
> 
> During their work translators notice different possible issues in the
> original (english) man pages. Sometiems this is a straightforward
> typo, sometimes a hard to read sentence, sometimes this is a convention
> not held up and sometimes we simply do not understand the original.
> 
> We use several distributions as sources and update regularly (at
> least every 2 month). This means we are fairly recent (some
> distributions like archlinux also update frequently) but might miss
> the latest upstream version once a while, so the error might be
> already fixed. We apologize and ask you to close the issue immediately
> if this should be the case, but given the huge volume of projects and
> the very limited number of volunteers we are not able to double check
> each and every issue.
> 
> Secondly we translators see the manpages in the neutral po format,
> i.e. converted and harmonized, but not the original source (be it man,
> groff, xml or other). So we cannot provide a true patch (where
> possible), but only an approximation which you need to translate into
> your source format.
> 
> Finally the issues I'm reporting have accumulated over time and are
> not always discovered by me, so sometimes my description of the
> problem my be a bit limited - do not hesitate to ask so we can clarify
> them.
> 
> I'm now reporting the errors for your project. As requested, each
> issue is sent in an unique mail for easier tracking on your side. If
> future reports should use another channel, please let me know.
> 
> **
> 
> POSIX_TRSIG_MAX -> MIN
> 
> "Starting with version 2.2, Linux supports real-time signals as originally "
> "defined in the POSIX.1b real-time extensions (and now included in "
> "POSIX.1-2001).  The range of supported real-time signals is defined by the "
> "macros B<SIGRTMIN> and B<SIGRTMAX>.  POSIX.1-2001 requires that an "
> "implementation support at least B<_POSIX_RTSIG_MAX> (8) real-time signals."
> --
> 
> _POSIX_SIGQUEUE_MAX → MIN
> 
> "According to POSIX, an implementation should permit at least "
> "B<_POSIX_SIGQUEUE_MAX> (32) real-time signals to be queued to a process.  "
> "However, Linux does things differently.  In kernels up to and including "
> "2.6.7, Linux imposes a system-wide limit on the number of queued real-time "
> "signals for all processes.  This limit can be viewed and (with privilege) "
> "changed via the I</proc/sys/kernel/rtsig-max> file.  A related file, I</proc/"
> "sys/kernel/rtsig-nr>, can be used to find out how many real-time signals are "

The constants are correct.

Quoting myself: "The use of the string _MAX in the limit names 
defined by SUSv3 can appear confusing, given their description as minimum 
values. The rationale for the names becomes clear when we consider that each 
of these constants defines an upper limit on some resource or feature, and
the standards are saying that this upper limit must have a certain 
minimum value."

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
