Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 06ACE44DC67
	for <lists+linux-man@lfdr.de>; Thu, 11 Nov 2021 21:14:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229539AbhKKURH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 11 Nov 2021 15:17:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50056 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231934AbhKKURG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 11 Nov 2021 15:17:06 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5032DC061766
        for <linux-man@vger.kernel.org>; Thu, 11 Nov 2021 12:14:17 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id r8so11697796wra.7
        for <linux-man@vger.kernel.org>; Thu, 11 Nov 2021 12:14:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language
         :from:to:cc:references:in-reply-to:content-transfer-encoding;
        bh=vxMpoe+HA5cJYhqHSiBhlEWyRlRLsD+tcGwRQ9lQR7w=;
        b=dFJx9yvINmmqJA3zcbuKdGF66UC+ObaiIZonb9F6KPWnZ0O5cRriseM0OjbPKMXZYQ
         2JYOoEgCZtkewMlSciWzbzpdLIUsM9Qgs/UNStmxMmQG2DeuQQt2fIqZ/WE9Bef8ZfnY
         s3u8MP/TMCDIGDS7//RrqSNMkC58O8BvCGkwv2qVXW1FhNeNtosvXql0BylwOg9q109E
         RG5A775X7XUSA0IBYqw7t0vAmrvNceDJ1qokndS0IJNtUPV2lkbw8mr5rm28AP5qQw3t
         ji9K8h34Sqbw/T3NE7P0JhyJXSmwgmzhPmpCbtAqFRiA0Syzu75M50qnL4yrsm7d0VXS
         U6jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:from:to:cc:references:in-reply-to
         :content-transfer-encoding;
        bh=vxMpoe+HA5cJYhqHSiBhlEWyRlRLsD+tcGwRQ9lQR7w=;
        b=DlgGgChYHQGSoV6V/2ywOih8wegJVKhUchXshI0lufHZZ0UpYZ8wRLu793jpdQ3GLN
         M6kbg/j5H1ayS041jfOv57b6LCvld/4E0Sw6/TfSXfy7BFK01wiKemBawZz8sAfRcUeB
         hBkah9WcnQQHOOGp3DpivZmle5q1zX6EwEEGZg6nOJIU/VYtozesGKi+cR4FSa164rfp
         nnC8BL5Lb/ewhWhnrhS9pBXq668TH49KB4WR7XQGpAPA1jvfP6UlGr1hIfVqDvqAGTLi
         gzOr5PW0RNAGNBlwlNht9MvvK/+3y/8iybz4oxY2E42DeO8g6JsRoO3TyL+Yc2ca9u9a
         klxw==
X-Gm-Message-State: AOAM531FWNuiVTE9YFcxFDZG+jHgLEjnDgrq8i+lX5MgppapLeHdBVe8
        3cHEmydDSdIHEL9b/MLIlso=
X-Google-Smtp-Source: ABdhPJydFLmqm7ws1IG2dGya1SNELU8FnTMsM4P4FwXgKF6CPWD6OwZA2LyNWT9M/uexvgOJUIH5vg==
X-Received: by 2002:a5d:6d0b:: with SMTP id e11mr12290004wrq.16.1636661655941;
        Thu, 11 Nov 2021 12:14:15 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id g13sm3597763wmk.37.2021.11.11.12.14.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Nov 2021 12:14:15 -0800 (PST)
Message-ID: <e73dd9e5-889f-648e-fdba-81e9905caba9@gmail.com>
Date:   Thu, 11 Nov 2021 21:14:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Subject: Re: [PATCH] man7: unify socket examples
Content-Language: en-US
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     Jeremy Kerr <jk@codeconstruct.com.au>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
References: <20211111020307.3542693-1-jk@codeconstruct.com.au>
 <c960b3c8-e079-12c8-df58-907a7e767d4a@gmail.com>
In-Reply-To: <c960b3c8-e079-12c8-df58-907a7e767d4a@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 11/11/21 21:13, Alejandro Colomar (man-pages) wrote:
> Hi, Jeremy!
> 
> On 11/11/21 03:03, Jeremy Kerr wrote:
>> The udp, tcp and x25 man pages' synopses list the socket() example as
>> all bold, but the socket varname should be italicised. This change
>> unifies these with the example in socket.7
>>
>> Signed-off-by: Jeremy Kerr <jk@codeconstruct.com.au>
> 
> Thanks for these consistency fixes!

And I forgot to explicitly say: patch applied :)

> 
> Cheers,
> 
> Alex
> 
>> ---
>>   man7/tcp.7 | 2 +-
>>   man7/udp.7 | 2 +-
>>   man7/x25.7 | 2 +-
>>   3 files changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/man7/tcp.7 b/man7/tcp.7
>> index 0a7c61a37..c08bc7dcc 100644
>> --- a/man7/tcp.7
>> +++ b/man7/tcp.7
>> @@ -102,7 +102,7 @@ tcp \- TCP protocol
>>   .B #include <netinet/in.h>
>>   .B #include <netinet/tcp.h>
>>   .PP
>> -.B tcp_socket = socket(AF_INET, SOCK_STREAM, 0);
>> +.IB tcp_socket " = socket(AF_INET, SOCK_STREAM, 0);"
>>   .fi
>>   .SH DESCRIPTION
>>   This is an implementation of the TCP protocol defined in
>> diff --git a/man7/udp.7 b/man7/udp.7
>> index a66e475cc..cd0937c53 100644
>> --- a/man7/udp.7
>> +++ b/man7/udp.7
>> @@ -18,7 +18,7 @@ udp \- User Datagram Protocol for IPv4
>>   .B #include <netinet/in.h>
>>   .B #include <netinet/udp.h>
>>   .PP
>> -.B udp_socket = socket(AF_INET, SOCK_DGRAM, 0);
>> +.IB udp_socket " = socket(AF_INET, SOCK_DGRAM, 0);"
>>   .fi
>>   .SH DESCRIPTION
>>   This is an implementation of the User Datagram Protocol
>> diff --git a/man7/x25.7 b/man7/x25.7
>> index 561ed0519..e07e5f7a7 100644
>> --- a/man7/x25.7
>> +++ b/man7/x25.7
>> @@ -17,7 +17,7 @@ x25 \- ITU-T X.25 / ISO-8208 protocol interface
>>   .B #include <sys/socket.h>
>>   .B #include <linux/x25.h>
>>   .PP
>> -.B x25_socket = socket(AF_X25, SOCK_SEQPACKET, 0);
>> +.IB x25_socket " = socket(AF_X25, SOCK_SEQPACKET, 0);"
>>   .fi
>>   .SH DESCRIPTION
>>   X25 sockets provide an interface to the X.25 packet layer protocol.
>>
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
