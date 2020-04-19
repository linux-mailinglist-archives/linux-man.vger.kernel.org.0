Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E1EFB1AFDDB
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2020 21:54:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726124AbgDSTyX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Apr 2020 15:54:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726022AbgDSTyX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 19 Apr 2020 15:54:23 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D81AFC061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 12:54:21 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id j2so9524406wrs.9
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 12:54:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=rrAu4w3qrXqu2oSMzyVOKYixQe0ggVLTQcY5f17R00o=;
        b=LWg6eRjgMhCZ3PFczWHBghvbcarU+lgi4GUig0noqDmBxAk9XG0tb/X9NXa52W0uBs
         d2hSeu/T9O0U8pICKjeAYjLuaQQnvTly+Nr0jSJrsOi9dWZMvu/9UOtHmmFME8NvZ1sx
         Wlr5CeU6X94IlEYSfH/4QIAFA4NGTTBgpq7tdoabthND5C6gmXinJaCRaeTF18ePntVC
         0ObD00htalCsJc+ZsEXfGVIB0NxqrNnYOCLDWijrHNoaWDbobmpGfOjG5tw+LO8urnqK
         qaQ+97vvC2ZaXoxbbwWtxdissGSJ4Z4jz8A0knJ1oo5ILBuJzfx/2Ru29IJoPQR6ksZ9
         OsNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=rrAu4w3qrXqu2oSMzyVOKYixQe0ggVLTQcY5f17R00o=;
        b=g+W0w6uox4rYjbYJjrrKPuCE5+E6erBOSiGCPxy+o+B6Z64UvLqUJgrP76FFQ2+yB+
         8+3bmN6VRsrIpy6DtoxzatyBRqyv3VsUJgzMqdwQ9OhCQe5oVK8OB5X/MliE7nt1+KDN
         25vTQMRLOYxUDuplSZ60z1c4ivKUGPY9+0LDP1ghPyCe5u4vH5+yya1cZfNtBwrM7W7q
         75C68FG7mUhuxlZGK5lue1B4ZAOjng2qzbAHBiVNmhdpz+cMVumiDhS/bQhqLqKD3sbW
         l4hQ+2es42b5xrEX6LoY5pLEwYVAWJBmH8ieta/Yd2UN1wGZIXWBqnj2CsONryO9+sMQ
         794A==
X-Gm-Message-State: AGi0PuafFzfaXnMWt1+VDNiOJvvyiixTajVijo8Q06Cx8ecVfmcw8oNp
        8R9g5fBKspeuuhF+e7QBjqC803u+
X-Google-Smtp-Source: APiQypJ4PvDATYnSOC1oLmJm9DvM9lFHoakCzdXowV1GC5igr4W2M7z4QCOBDZ3hreuzl57iIN9x6Q==
X-Received: by 2002:adf:d4ce:: with SMTP id w14mr14206627wrk.232.1587326059920;
        Sun, 19 Apr 2020 12:54:19 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id y70sm12398027wmc.36.2020.04.19.12.54.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 12:54:19 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: mknod(2): Missing comma
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064810.GA31139@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <26c3f850-6e97-e1b7-9a7d-23cc20781922@gmail.com>
Date:   Sun, 19 Apr 2020 21:54:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064810.GA31139@Debian-50-lenny-64-minimal>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
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
> Missing comma after B<acl>(5)
> 
> "B<mknod>(1), B<chmod>(2), B<chown>(2), B<fcntl>(2), B<mkdir>(2), "
> "B<mount>(2), B<socket>(2), B<stat>(2), B<umask>(2), B<unlink>(2), "
> "B<makedev>(3), B<mkfifo>(3), B<acl>(5)  B<path_resolution>(7)"
> 

Fixed.

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
