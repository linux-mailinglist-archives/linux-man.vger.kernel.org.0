Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 02D162E7D2F
	for <lists+linux-man@lfdr.de>; Thu, 31 Dec 2020 00:29:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726388AbgL3X2w (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 30 Dec 2020 18:28:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51362 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726292AbgL3X2v (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 30 Dec 2020 18:28:51 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57E30C061573
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 15:28:11 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id t16so18811192wra.3
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 15:28:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=YyI+lu3tnACppHoN35T+DXT5afBLUmXYcXabtWWp8go=;
        b=Nx4k87aFd5UJfFs5ZWfNKUGtS2mK/y1BYvNgfMq2WjTrw5JeSEJzDDCC/l8dBn0GAp
         YFAtoB4RfJA9NZaNeqjg0HYF6kx2h5/1dQtVC13yjatCqirDjQ4C7w7vUzWUQ+aERd0k
         NeNcr4PiSB36MxRndRhD85+YK74QMK5BdZeEY62045O3Z0fLL0otdU/zr49CVR1qOFDL
         SakhHCv+Hxg31sHD1ckc+eb7ARSidptyhptEfy1mzVtuBwWT7top1S2InWUxMOwH+axV
         NLG3WO7Ny+tr10Iiy1+WM5jjY8h66Tu4k0x7+NVaXn7Q/TkwAGxBcu5CDE5Q3qlM1HJo
         NTyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=YyI+lu3tnACppHoN35T+DXT5afBLUmXYcXabtWWp8go=;
        b=bZ9dR/wZrfNNRqH3hqQ/JDyWfH3rfr7q4vBFthennlwX2uREt6SZiqyZeKao5XlCCC
         WAbG+WpiqqFNCejgo7fr7QSZi7oUs5D3nhvKB7iSfVYB0HPXHFj9qGy5mjdyStnqLWoi
         Dl6O08ARCJl/s1DbRZp8/A6tcX0zbW/3mhRUMm3iMJfppt2+L0XruP/2UWo7cLnzuzZK
         1LkX1MKkMiMhXVDb484nfQneLOsoSCVtvKz2Qf7p91PyPChkP8tF0jiA6VppQ7fp5Nzl
         LEWql6HJwS1TExW4/UuhIidylkjc4ArUivrj5lDBNA8drl4b/0WZRfcvDcxQgUhZlqnN
         7VBw==
X-Gm-Message-State: AOAM533hJTb4HXwCf0loBia/A9Zu/pZDIG1XEXgQ6Mu9e0anOxddEWFl
        6LTNthpjXP2zi0/jH8tDbAnIORklylo=
X-Google-Smtp-Source: ABdhPJw7AUxhIGR1DHM9bavvG0mFxAYmxA+7RJcBFj7x1IbvJpBCtHoKR4esLw0EQLL+2x+JXVGY0Q==
X-Received: by 2002:adf:d085:: with SMTP id y5mr63722845wrh.41.1609370890069;
        Wed, 30 Dec 2020 15:28:10 -0800 (PST)
Received: from [192.168.0.160] ([170.253.49.0])
        by smtp.gmail.com with ESMTPSA id l8sm9381485wmf.35.2020.12.30.15.28.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Dec 2020 15:28:09 -0800 (PST)
Subject: Re: [PATCH] execveat.2: srcfix
To:     mtk.manpages@gmail.com
Cc:     linux-man <linux-man@vger.kernel.org>
References: <20201230214147.874671-1-alx.manpages@gmail.com>
 <CAKgNAkjf8gS5Av2pzYqt_JHjjnCw-FrjqQicjhr20+MzgsK3Xg@mail.gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <bdda57ff-acdd-9109-5720-ba0db8138d41@gmail.com>
Date:   Thu, 31 Dec 2020 00:28:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <CAKgNAkjf8gS5Av2pzYqt_JHjjnCw-FrjqQicjhr20+MzgsK3Xg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 12/30/20 11:27 PM, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> On Wed, 30 Dec 2020 at 22:41, Alejandro Colomar <alx.manpages@gmail.com> wrote:
>>
>> Use .nf/.fi in the SYNOPSIS.
> 
> I'm not against the patch. But why this particular page?

Hello Michael,

I fixed this while adding the notes about missing headers in that page,
but I felt that it was better as a separate patch.
And the other patch I didn't send it in the last moment as I found a
missing line :p

Would you prefer a global fix about .nf/.fi or just fix as we go?

Cheers,

Alex

> 
> Thanks,
> 
> Michael
> 
>>
>> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
>> ---
>>
>>  man2/execveat.2 | 11 ++++++-----
>>  1 file changed, 6 insertions(+), 5 deletions(-)
>>
>> diff --git a/man2/execveat.2 b/man2/execveat.2
>> index 7c31d8f17..c5cd843f9 100644
>> --- a/man2/execveat.2
>> +++ b/man2/execveat.2
>> @@ -27,13 +27,13 @@
>>  .SH NAME
>>  execveat \- execute program relative to a directory file descriptor
>>  .SH SYNOPSIS
>> +.nf
>>  .B #include <unistd.h>
>>  .PP
>> -.BI "int execveat(int " dirfd ", const char *" pathname ","
>> -.br
>> -.BI "             char *const " argv "[], char *const " envp "[],"
>> -.br
>> +.BI "int execveat(int " dirfd ", const char *" pathname ,
>> +.BI "             char *const " argv "[], char *const " envp [],
>>  .BI "             int " flags );
>> +.fi
>>  .SH DESCRIPTION
>>  .\" commit 51f39a1f0cea1cacf8c787f652f26dfee9611874
>>  The
>> @@ -224,7 +224,8 @@ where scripts recursively employ
>>  .\" For an example, see Michael Kerrisk's 2015-01-10 reply in this LKML
>>  .\" thread (http://thread.gmane.org/gmane.linux.kernel/1836105/focus=20229):
>>  .\"
>> -.\"     Subject: [PATCHv10 man-pages 5/5] execveat.2: initial man page.\"                        for execveat(2
>> +.\"     Subject: [PATCHv10 man-pages 5/5] execveat.2: initial man page
>> +.\"                        for execveat(2)
>>  .\"     Date: Mon, 24 Nov 2014 11:53:59 +0000
>>  .SH SEE ALSO
>>  .BR execve (2),
>> --
>> 2.29.2
>>
> 
> 
