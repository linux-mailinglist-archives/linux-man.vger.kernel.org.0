Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 01AD71AFDF0
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2020 22:07:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726389AbgDSUHJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Apr 2020 16:07:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49112 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726123AbgDSUHJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 19 Apr 2020 16:07:09 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B679FC061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 13:07:08 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id s10so418124wrr.0
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 13:07:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=mijrRzniSQwNUpqFqByDP045xqfqEvhrHCPfZPba+K4=;
        b=dJ6H8Hs7xkWTAFneZv+t8+2RoSmrez9/pDhOav2xrhcOxDFiTxIV+i+e3J8bHQ9kOX
         /rpA/yb8kqS2XcrE5QaXR0Entv5xAsrI+mYbfI16jsaiL6WSTaDwryJQcP0lfA43ws+7
         Fivv+ld2uboYFMnRdJgEnGzeUFnWTmJfXmAndLVeaz74x4Rjs/vbehRTNnGSP/yOxaK/
         pumjxeVdm/7+/MB/ahessmvox+1h62PgrDIn7aoZ0ZGl7TMuEKZUtvOKF6FbOYQYaea5
         0Getx+/M4VBTlQ+g04EFcSHAUDczl1vJ9z1qVPGjL4YXVl2vt6748HDMvXIfmLKga0/a
         eqIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=mijrRzniSQwNUpqFqByDP045xqfqEvhrHCPfZPba+K4=;
        b=rgxVqV0fExgj82+i8gB6CurPH5zC/ZO4Qj+VI94CF9tp3x4thMCLJRGjXSAt08r9bP
         lDsFffRg9qzUy4mS+I5v3QJGsxz3PX03wwvSsp8pyVLH/7IKPcs/WXv2TNBWETle3g1e
         J6fDYK26Wwj9v2zr06KYRxmrQE/IO6JY6dHtPALHO/jqP8Y3zJL4Nf4rUpoLl0mJmLBq
         icC22o824c8b/9VZ3aAtCf02Co1LrVbkeFhPGy5Q7OIR3A27EoqwL283s/gSlcw0IQFt
         qk6DH5Y0DVWD1tdsmu9FJtbtx5j22YW2m6fUvkPtd7LlEY1HJQqKh+NWjws6BfscOGAL
         wPWg==
X-Gm-Message-State: AGi0PuawfGOs4vtA9mF94WI/eo5mKRAXg0bL4TXAxuWok9GH3VmsC83U
        ASd7wzVGDVtRJeXf9OpxbqrPLTcT
X-Google-Smtp-Source: APiQypJSmsVdj3zqAvZJAJgkiRmxwVeo1rSKaW1hzDPSSKNJcVKDk8jUWyhyfR7TZnDfReBzbRja4w==
X-Received: by 2002:a5d:62cc:: with SMTP id o12mr14666914wrv.75.1587326827374;
        Sun, 19 Apr 2020 13:07:07 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id u127sm9019182wme.8.2020.04.19.13.07.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 13:07:07 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: filesystems(5): Superfluous comma
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064759.GA30538@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <928111a7-3dae-d01c-6485-631ff34cd4cc@gmail.com>
Date:   Sun, 19 Apr 2020 22:07:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064759.GA30538@Debian-50-lenny-64-minimal>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 4/19/20 8:47 AM, Helge Kreutzmann wrote:
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
> List ends in a (superfluous) comma
> 
> "filesystems - Linux filesystem types: ext, ext2, ext3, ext4, hpfs, iso9660, "
> "JFS, minix, msdos, ncpfs nfs, ntfs, proc, Reiserfs, smb, sysv, umsdos, vfat, "
> "XFS, xiafs,"

Fixed.

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
