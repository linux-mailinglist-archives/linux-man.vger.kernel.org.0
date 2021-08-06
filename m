Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DE7283E2DB3
	for <lists+linux-man@lfdr.de>; Fri,  6 Aug 2021 17:23:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244921AbhHFPX3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 6 Aug 2021 11:23:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42924 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244660AbhHFPXK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 6 Aug 2021 11:23:10 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D1F9C061388
        for <linux-man@vger.kernel.org>; Fri,  6 Aug 2021 08:22:10 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id k4so11600336wrc.0
        for <linux-man@vger.kernel.org>; Fri, 06 Aug 2021 08:22:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=rdz4PAFALitP03HwxfMEAe4mXcPwQf6JoOemmHf2HBU=;
        b=nhvn6UyEmaS5Vb/qGtWLMCgGgwKa7FYsvIFeHp2eDPD3MxsD6zZkYrub3L9HHyIegJ
         UxoW4p9qxtOZ+Z9HsxtQnkuqcV0cxA37Ojl+mV2MwHLbAC3t67FnfJ01OkSjXDRDAfKG
         QIpGSREmWC0hAy45JJh/hDThB93kIEtMEszF0ZVp7XcQfIbngrisbC8gv0CM4bQLbLJI
         65vvVD0pAmWFqHKdiMFguQN45KoMk5etfjweEwOF7DOcVgKjY28vOAw8i0CpTzfB7fXa
         GjARZjVj5jaQSlGsLMw2rUp9QMzDlp/EhTtjKIcbr6S2T0hGA5GC2m7FK6WIp/j+/uQi
         Bx8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=rdz4PAFALitP03HwxfMEAe4mXcPwQf6JoOemmHf2HBU=;
        b=KxrGaLqJQUOGqFVBx5l6NEJlda+Y7ZYnxupGOv4DH+e71p1Y6Lee+K3hlrbctOyd+J
         5dET1bkFN4cfiUslG80yRL8JeWYwRXZVtiMxqCFv+qhz+YebL3nOFDm5QR9y0tNFDpD/
         H0PF99LdR0VtfkoYOAvorHcHVOTt2uB1IoH2uiSZ2bOt0V5xaZMcPVoz900lPXKchrRA
         F/qpVi9QYYHVDzYFlSktNmSjWow0ELHxxW8Xxl45mk9xYxKpUrwVXaqTjF/+D+ngVpde
         X9IdcAOjsChdPFG1ISE1U+11crFUsJU3fuDXQlqmgorZoIzbtABc1QC+NPbHZSamjpJw
         BUfA==
X-Gm-Message-State: AOAM5321+NTA1m8c8hDuiZXI0qaYuKc3zp4olvbnAO/1qsK7fZRjcx8s
        94nkeOb84d/+LUi41/TrUal4XSdcwoY=
X-Google-Smtp-Source: ABdhPJwyBw3f6KucUJ/m65mIUW62tfhkHHbcpXHgaR1VPm1xLyFhQ0uOfDpVXiy7uKzlnck/qSzBfw==
X-Received: by 2002:a5d:4e87:: with SMTP id e7mr11131019wru.188.1628263328687;
        Fri, 06 Aug 2021 08:22:08 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id t186sm5082568wma.39.2021.08.06.08.22.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Aug 2021 08:22:08 -0700 (PDT)
Subject: Re: [man-pages] Misleading example in ldd(1).
To:     Emanuele Torre <torreemanuele6@gmail.com>
Cc:     linux-man@vger.kernel.org, mtk.manpages@gmail.com
References: <CAA7hNqc8gExU=OfsoqY3Cw78J1BOCXrMfFmg+fUaCDt54wDrBQ@mail.gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <6788a215-74c4-e078-b480-a9a13842e5bb@gmail.com>
Date:   Fri, 6 Aug 2021 17:22:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <CAA7hNqc8gExU=OfsoqY3Cw78J1BOCXrMfFmg+fUaCDt54wDrBQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Emanuele,

On 8/6/21 4:26 PM, Emanuele Torre wrote:
> I was reading the man page for ldd(1)[1]; and I read this in the first
> paragraph of the DECRIPTION section:
> 
>   ldd prints the shared objects (shared libraries) required by each
>   program or shared object specified on the command line.  An
>   example of its use and output (using sed(1) to trim leading white
>   space for readability in this page) is the following:
> 
>       $ ldd/bin/ls | sed 's/^ */    /'
>           linux-vdso.so.1 (0x00007ffcc3563000)
>           libselinux.so.1 => /lib64/libselinux.so.1 (0x00007f87e5459000)
>           libcap.so.2 => /lib64/libcap.so.2 (0x00007f87e5254000)
>           libc.so.6 => /lib64/libc.so.6 (0x00007f87e4e92000)
>           libpcre.so.1 => /lib64/libpcre.so.1 (0x00007f87e4c22000)
>           libdl.so.2 => /lib64/libdl.so.2 (0x00007f87e4a1e000)
>           /lib64/ld-linux-x86-64.so.2 (0x00005574bf12e000)
>           libattr.so.1 => /lib64/libattr.so.1 (0x00007f87e4817000)
>           libpthread.so.0 => /lib64/libpthread.so.0 (0x00007f87e45fa000)
> 
> This is a little confusing though since that sed(1) command does not
> seem to work. (and also potentially misleading for someone who is trying
> figure out how to parse ldd(1)'s output.)
> 
> ldd(1) prepends a TAB character (0x09) to each line, not spaces:
> 
>   $ ldd /bin/ls | xxd | head -1
>   00000000: 096c 696e 7578 2d76 6473 6f2e 736f 2e31  .linux-vdso.so.1
> 
> I read ldd(1)'s source code[2] (it is part of glibc) and it seems to be
> a bash script that tries to use different rtld programs ( ld.so(8) )
> from an RTLDLIST.
> 
> Those, on my system, are:
> 
>   * /usr/lib/ld-linux.so.2
>   * /usr/lib64/ld-linux-x86-64.so.2
>   * /usr/libx32/ld-linux-x32.so.2
> 
> And they all seem to also be part of glibc.
> 
> I have tried to follow the git history of glibc to see when the switch
> from spaces to the TAB character occured, but, to me, it seems like
> glibc.git/elf/rtld.c has always used '\t'; at since
> 6a76c115150318eae5d02eca76f2fc03be7bd029[3] (358th commit since glibc
> started using the git repository repository - Nov 18th 1995): before
> that commit there are not any results for `git grep '\\t'` in the elf
> directory and I did not investigate further.
> 
> Still, at the time of that commit, glibc did not seem to have an ldd(1)
> utility.
> 
> Perhaps the man page is old and its original author was using and
> documenting an ldd(1) utility that was not part of glibc when he was
> writing it.
> 
> Anyhow, since I think that sed(1) command will not work on any system
> that uses, at least, the most recent version of glibc (because lld(1)
> and the ld.so(8) programs it depends on are all part of glibc), I think
> that that example should be changed to avoid confusions.
> 
> The output format of ldd(1) does not seem to be clearly defined, so I
> think this would be a good option:
> 
>   $ ldd/bin/ls | sed 's/^[[:space:]]*/    /'
> 
> NB: ^\s* should also work on most GNU/Linux systems, but \s is
>      non-standard or documented so I don not suggest using it in the man
>      page.
> 
> Another option could be to remove "the pipe to sed(1)" part and the note
> in parentheses that explains why it was used by the original author.

Thanks for the report!  I decided to remove the pipe for simplicity.

Cheers,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
