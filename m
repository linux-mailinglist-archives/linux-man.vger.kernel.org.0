Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2D85A4A5166
	for <lists+linux-man@lfdr.de>; Mon, 31 Jan 2022 22:23:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1380825AbiAaVXa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 31 Jan 2022 16:23:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1379577AbiAaVXa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 31 Jan 2022 16:23:30 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1518C06173B
        for <linux-man@vger.kernel.org>; Mon, 31 Jan 2022 13:23:29 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id l129-20020a1c2587000000b0035394fedf14so230586wml.5
        for <linux-man@vger.kernel.org>; Mon, 31 Jan 2022 13:23:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=M5ux8fQq0SfM+RqGZHrwHMRK8RrOqK3JmqgPfHTiCEU=;
        b=NR+4VT/Jd9lr/ynJXyHaD5t2jav2Hd+Na9OCZVoRsLHwuukd/igvRaXaHPSoUYCksE
         lM/uGMTwVSvPfxjOijeOcugyybJAm/GyVszQTm5pUqFmaiYIlt09krfW26kbLzrh+B17
         eZNk7P0j/qebZpkopQnLGfW56kj94xCrA+5/YOXMclWECSSfvyXVRAuVsUm96s4zk4Ro
         lMoep6AfC3NuE+7CzttEzKX81aZ1IziAVMsoIojnSGIg3ogiDXoogqS+8+i2sYX8zhVS
         de0vf5JIgtPwaPQ512pMZ0O8cquqfMB4J6ImmwLUTyjNQaTAr8lXotyPipCC7PRWhoP/
         6c6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=M5ux8fQq0SfM+RqGZHrwHMRK8RrOqK3JmqgPfHTiCEU=;
        b=Dzfz58xRyfyIasjQBQfLzEJaE21Sa5r9nxY6JHNC5kX1qLFIAa9XCWiD09/vNFIhHY
         oA9oM9rB5q2vuBXRQKOvYyQh6Rj6Z6olo54L2kafzuxpQ4Wl9VqtSXPW5YanPe9sqjcj
         4O+42LcA9JZ49ivLixMODuqiP3g07dfDLyNb7t6L4fL7uPjJztS1poR2H0UQ2BAXDLzL
         SwAOQpwTIWJ4wBExslRHRYdNTjqCMnq/lReqeztC4FQOr4UGepMSCyrVEE4mE2j3LKOl
         seyNeoVsM0+cW+nVpDl8L857Zvc25kNEPE2xIwM7UtHxxht5zqU1LUlgDbAJiWbMVRy+
         x3DQ==
X-Gm-Message-State: AOAM533np8jkzd87bj6E1Jsuvc+gb/F/mGJvLoNzFtT1CXYetFmkTcFa
        zmfHm3SSmKL/pzl4xHc57IDS/5AjaJk=
X-Google-Smtp-Source: ABdhPJwOUA1hF/Jvgr1bZdLCzToZvLziP6hm0IFDeuOHZmGFGbOEoTatRkZNb5tiFEdjTdBcJt5MuQ==
X-Received: by 2002:a7b:c20d:: with SMTP id x13mr27851934wmi.47.1643664208165;
        Mon, 31 Jan 2022 13:23:28 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id n15sm374581wmr.26.2022.01.31.13.23.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Jan 2022 13:23:27 -0800 (PST)
Message-ID: <5cfb23b8-de77-3eec-92d0-da29fededf4c@gmail.com>
Date:   Mon, 31 Jan 2022 22:23:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.1
Subject: Re: SA_ONSTACK: man page and glibc reference manual in conflict
Content-Language: en-US
To:     GNU C Library <libc-alpha@sourceware.org>,
        Ivan Zuboff <anotherdiskmag@gmail.com>
Cc:     linux-man@vger.kernel.org, mtk.manpages@gmail.com
References: <CAL-cVegvPvu6kZgn5x=6gimzuSTfCErKzTL+8+1UgQxM3fiNQQ@mail.gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <CAL-cVegvPvu6kZgn5x=6gimzuSTfCErKzTL+8+1UgQxM3fiNQQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi all,

On 1/31/22 10:29, Ivan Zuboff wrote:
> Hello!
> 
> Man page says:
> SA_ONSTACK
>               Call the signal handler on an alternate signal stack
>               provided by sigaltstack(2).  *If an alternate stack is not
>               available, the default stack will be used.*  This flag is
>               meaningful only when establishing a signal handler.
> https://man7.org/linux/man-pages/man2/sigaction.2.html
> 
> glibc reference manual says:
> Macro: int SA_ONSTACK
> If this flag is set for a particular signal number, the system uses
> the signal stack when delivering that kind of signal. See Signal
> Stack. *If a signal with this flag arrives and you have not set a
> signal stack, the system terminates the program with SIGILL.*
> https://www.gnu.org/software/libc/manual/html_node/Flags-for-Sigaction.html
> 
> As far as I understand, statements in *stars* are in conflict. glibc
> documentation says that "While the glibc manual remains the canonical
> source for API descriptions, the man-pages are an excellent
> reference.", so I decided to mail you supposing that man page is
> incorrect in this regard.
> https://www.gnu.org/software/libc/documentation.html
> 
> Please correct me if I'm wrong. Also, sorry for my bad English, this
> is not my native language.
> 
> Best regards,
> Ivan

I received this bug report on linux-man@.  The report is about a text
that predates git in the man-pages.  Could you please confirm the bug,
and check if anything else needs to be fixed too?

Thanks,

Alex

Ivan:  Thanks for the report!  In non-trivial cases such as this one,
it's useful to CC the glibc mailing list, since they probably know more
than I about details such as this one. ;)

Cheers,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
