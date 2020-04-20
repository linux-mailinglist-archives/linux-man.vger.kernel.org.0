Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 66B221B03FD
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 10:13:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725886AbgDTINm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 04:13:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47770 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725773AbgDTINl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 04:13:41 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F280C061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 01:13:41 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id b11so10928193wrs.6
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 01:13:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=pd+HVcDz4fG47lS8acU95j/DLRY4zDL0GReeI8g+fZw=;
        b=Q6ZRB2mJGwlhTVR7b6ID8TB0ND9A1l4RzP5/CrUYghB4gmZ8a6+K5iZg6uOjY1g9Oq
         JiotQ4goNqqOMeozdGp87eA0VA1EAvdqh9phyTdkqFuWpTbpPBdXoLo8jhHlM0FuBE5z
         Wjhge27um5mdCCcY4ulISqJ/2+twEeZPvyqs8O6EMcIjytx53RE35FYqFDlXOj6rNGcH
         kB382GuKMnN3ZG5iVircSnKTRquzlUoN+umv4Ldt+oh4FK/mdlb8PQR44Mxzq3YQSo4k
         vvG5mGig0oyrzeI8Dc0/aArDLQwtbvy/AB++cVJAJ8LXVzxW94gX+w+QsBgkjp8YJONJ
         XLcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=pd+HVcDz4fG47lS8acU95j/DLRY4zDL0GReeI8g+fZw=;
        b=JRc+fFZp7G/e/YhcxoZP53jOgICN1IIBoyL0SW5rSfkQOLhfAr0i8DCyUyDC4+GDZq
         H9pxH0rw0ACPulXgB1gEWoNjCPhi+Czk9qQddaNVjnxdu/mqGr2GeeggYKJUp0oallXO
         rHCUw7Z1aQn/6ScwL2dInKbZ0j6rKtsN4Q0D6DXwsJ5xGoWDXIK/m4njhX8A6XpXsjLY
         zvLgnDdcvbSAJ+IZYciJl3ewwW/3bV4ehkwlvs9y3c0F++lKCuoOP8qKRLmYkm885cHf
         X4TbI1zDSAqTNVVF337wIAm3RcFJ7IICibcy60//in2vYrR7yKvAJ4BdKfdnc3lvYU2U
         oE+g==
X-Gm-Message-State: AGi0PuZIkmPTJkatuZlYAs9UahvI4GUqKvYhua7HEpMywzRbNErbluVT
        wKvX1Xs4RWdKSHs7qWhJR30=
X-Google-Smtp-Source: APiQypJ+d1OOY/hVkT1vseBa6ipj9ITn6tWumiko2eLdVCDfl4YMQzt1sL+vLf8U+rd5bocRrklijg==
X-Received: by 2002:a05:6000:10c2:: with SMTP id b2mr18629517wrx.118.1587370419798;
        Mon, 20 Apr 2020 01:13:39 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id 17sm358797wmo.2.2020.04.20.01.13.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 01:13:39 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        =?UTF-8?Q?Kai_M=c3=a4kisara?= <kai.makisara@kolumbus.fi>
Subject: Re: Errors in man pages, here: st(4): Content
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064827.GA32117@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <dd5fdce8-8329-5951-43da-34aeafae542f@gmail.com>
Date:   Mon, 20 Apr 2020 10:13:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064827.GA32117@Debian-50-lenny-64-minimal>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

[CC += Kai]

(Kai, I got a pile of queries from a downstream translation project)

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
> We cannot understand the last sentence. What is "forward spacing"?
> 
> "This option causes the B<MTEOM> operation to be sent directly to the drive, "
> "potentially speeding up the operation but causing the driver to lose track "
> "of the current file number normally returned by the B<MTIOCGET> request.  If "
> "B<MT_ST_FAST_EOM> is false, the driver will respond to an B<MTEOM> request "
> "by forward spacing over files."

Perhaps Kai can help. I do not have a good explanation.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
